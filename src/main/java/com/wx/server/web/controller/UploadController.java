package com.wx.server.web.controller;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.util.WebUtils;

import com.wx.server.entity.TbUser;
import com.wx.server.service.ConfigService;
import com.wx.server.service.UserService;
import com.wx.server.shiro.utils.TbUserUtils;
import com.wx.server.utils.AjaxRespUtils;
import com.wx.server.utils.ImageHelper;
import com.wx.server.utils.RandomUtil;

@Controller
public class UploadController {

  private static Logger log = LoggerFactory.getLogger(UploadController.class);

  @Autowired
  private UserService userSvc;

  @Autowired
  private ConfigService configSvc;

  @RequestMapping("/upload/headImg")
  @ResponseBody
  public String headImgUpload(@RequestParam(value = "file", required = true) MultipartFile file,
      @RequestParam(value = "fileName", required = false) String fileName,
      @RequestParam(value = "fileExt", required = false) String fileExt, ModelMap model, HttpSession session,
      HttpServletRequest request) throws Exception {
    Map<String, Object> result = new HashMap<String, Object>();
    String uploadFolder = configSvc.getValue(ConfigService.GROUP_SYSCONFIG, ConfigService.SYSCONFIG_UPLOAD_PATH);
    uploadFolder = uploadFolder + "/avatar/";
    try {
      // 定义解析器去解析request
      CommonsMultipartResolver mutilpartResolver = new CommonsMultipartResolver(
          request.getSession().getServletContext());
      // request如果是Multipart类型、
      if (mutilpartResolver.isMultipart(request)) {
        // 强转成 MultipartHttpServletRequest
        MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
        // 获取文件名
        Iterator<String> it = multiRequest.getFileNames();
        while (it.hasNext()) {
          // 获取MultipartFile类型文件
          MultipartFile fileDetail = multiRequest.getFile(it.next());
          if (fileDetail != null) {
            String ext = fileDetail.getOriginalFilename();
            ext = ext.substring(ext.indexOf('.'));
            File localFile = null;
            String relFilePath = null;
            String absFilePath = null;
            do {
              relFilePath = "/" + uploadFolder + RandomUtil.getNumChar(10) + ext;
              absFilePath = WebUtils.getRealPath(session.getServletContext(), relFilePath);
              localFile = new File(absFilePath);
            }
            while (localFile.exists());// 如果有重名的文件重新随机一个
            // 将上传文件写入到指定文件出、核心！
            fileDetail.transferTo(localFile);
            if (ext.equalsIgnoreCase(".png")) {
              String destPath = absFilePath.substring(0, absFilePath.lastIndexOf(".")) + ".jpg";
              ImageHelper.convertPNG2JPG(absFilePath, destPath);
              deleteFile(absFilePath);
              absFilePath = destPath;
            }
            String destPath = absFilePath.substring(0, absFilePath.lastIndexOf(".")) + "_zoom.jpg";
            relFilePath = relFilePath.substring(0, relFilePath.lastIndexOf(".")) + "_zoom.jpg";
            ImageHelper.cutCenterImage(absFilePath, destPath, 512, 512);
            deleteFile(absFilePath);
            result.put("path", session.getServletContext().getContextPath() + relFilePath);
            updateUserAvatar(relFilePath);
          }
        }
      }
      return AjaxRespUtils.renderSuccess(result, "上传成功");
    }
    catch (Exception e) {
      result.put("message", "该图片文件损坏不能上传");
    }
    return AjaxRespUtils.renderErrors(result, "上传失败");
  }

  private void updateUserAvatar(String headImg) {
    TbUser user = TbUserUtils.currentUser();
    user.setHeadImg(headImg);
    userSvc.update(user);
  }

  private boolean deleteFile(String filePath) {
    File tempFile = new File(filePath);
    return tempFile.delete();
  }
}
