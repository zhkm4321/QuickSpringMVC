/**
 * Created by zhenghang on 2016/12/14.
 */
function back(){
  $.router.back();
}
function startIntervalBtn(selector, count, oldText){
  window.setTimeout(function(){
    if(count<=1){
      $(selector).removeClass("disabled").text(oldText);
      return;
    }
    count--;
    $(selector).find("em").text(count);
    startIntervalBtn(selector, count, oldText);
  },1000);
}
function setBtnDisableTimeout(selector, count){
  var oldText = $(selector).text();
  var $btn = $(selector).addClass("disabled").html("<em>"+count+"</em>秒后重新发送")
  startIntervalBtn(selector, count, oldText);
}
function showSaveBtn(_this, selector){
  if(_this.value!=""){
    $(selector).addClass("slide_in");
  }else{
    $(selector).removeClass("slide_in");
  }
}
function searchTech(searchText, categId, pageNo, pageSize){
  page.pageNo=pageNo;
  page.pageSize = pageSize;
  
}
$(function() {
  //并不是所有的标签都可以点击所以需要加这个兼容方法
  $(document).on("click",".a-link", function(e){
    var link = $(e.target).attr("href");
    if(null==link){
      e.preventDefault();
      return;
    }
    var ignoreCache = $(e.target).attr('data-no-cache') === 'true';
    $.router.load(link, ignoreCache);
  })
  $(document).on("blur", "newpwd,.pwdrepeat", function() {
    if ($.trim($(this).val()) != "") {
      $.ajax({
        type : 'POST',
        url : BASE+'/user/validNewPwd',
        // post payload:
        data : $("#modifyPwd").serializeArray(),
        dataType : 'json',
        success : function(result) {
          if (result.success) {
            $.toast(result.message);
          } else {
            $.toast(result.message);
          }
        }
      })
    }
  });
  $(document).on("blur",".oldpwd", function() {
    if ($.trim($(this).val()) != "") {
      $.ajax({
        type : 'POST',
        url : BASE+'/user/validOldPwd.json',
        // post payload:
        data : $("#modifyPwd").serializeArray(),
        dataType : 'json',
        success : function(result) {
          if (result.success) {
            $.toast(result.message);
          } else {
            $.toast(result.message);
          }
        }
      })
    }
  });
  $(document).on("click",".sendsms_btn", function(e) {
    if($(".sendsms_btn").hasClass("disable")){
      e.preventDefault();
    }
    $.ajax({
      type : 'POST',
      url : BASE+'/sendSMS.json',
      data : {
        oldphone : $("input[name=oldphone]").val(),
        newphone : $("input[name=newphone]").val()
      },
      dataType : 'json',
      success : function(result) {
        if(!!result.data.timeout){
          setBtnDisableTimeout(".sendsms_btn", result.data.timeout);
        }
        $.toast(result.message);
      }
    })
  });
  $(document).on("click", "#change_phone .submit_btn", function() {
    $.ajax({
      type : 'POST',
      url : BASE+'/user/change_phone.json',
      // post payload:
      data : $("#change_phone_form").serializeArray(),
      dataType : 'json',
      success : function(result) {
        if (result.success) {
          $.toast(result.message);
          $.router.load("#config", true)
        } else {
          $.toast(result.message);
        }
      }
    })
  });
  $(document).on("click", "#change_pwd .submit_btn", function() {
    $.ajax({
      type : 'POST',
      url : BASE+'/user/change_pwd.json',
      // post payload:
      data : $("#change_pwd_form").serializeArray(),
      dataType : 'json',
      success : function(result) {
        if (result.success) {
          $.toast(result.message);
        } else {
          $.toast(result.message);
        }
      }
    })
  });
  //车在行我的——修改车型
  $(document).on("click", ".car_brand .models_btn", function(e) {
    var brand = $(e.target).text();
    $.router.load(BASE+"/user/profile/carModels?brand="+brand, false);
  });
  //车在行我的——修改车型
  $(document).on("click", ".car_models .models_btn", function(e) {
    var id = $(e.target).attr("id").split("_")[2];
    $.ajax({
      type : 'POST',
      url : BASE+'/user/profile/carModels.json',
      // post payload:
      data : {modelsId:id},
      dataType : 'json',
      success : function(result) {
        if (result.success) {
          console.log(result.message);
          $.router.load(BASE+"/user/profile", true);
        } else {
          $.toast(result.message);
        }
      }
    })
  });
  
  //车在行我的——修改车牌号
  $(document).on("click", ".profile .save_num_plates", function(e) {
    $.ajax({
      type : 'POST',
      url : BASE+'/user/profile/numPlates.json',
      // post payload:
      data : {numPlates:$("input[name=numPlates]").val()},
      dataType : 'json',
      success : function(result) {
        if (result.success) {
          console.log(result.message);
          $(".profile .save_num_plates").removeClass("slide_in");
        } else {
          $.toast(result.message);
        }
      }
    })
  });
  
  //车在行我的——修改姓名
  $(document).on("click", ".edit_profile .save_realname", function(e) {
    $.ajax({
      type : 'POST',
      url : BASE+'/user/profile/realname.json',
      // post payload:
      data : {realname:$("input[name=realname]").val()},
      dataType : 'json',
      success : function(result) {
        if (result.success) {
          console.log(result.message);
          $(".edit_profile .save_realname").removeClass("slide_in");
        } else {
          $.toast(result.message);
        }
      }
    })
  });
  
  //车在行我的——修改年龄
  $(document).on("click", ".edit_profile .save_age", function(e) {
    $.ajax({
      type : 'POST',
      url : BASE+'/user/profile/age.json',
      // post payload:
      data : {age:$("input[name=age]").val()},
      dataType : 'json',
      success : function(result) {
        if (result.success) {
          console.log(result.message);
          $(".edit_profile .save_age").removeClass("slide_in");
        } else {
          $.toast(result.message);
        }
      }
    })
  });
  
  $(document).on("click", ".upload_btn", function(){
    $("#file_input").click();
  })
  
  FastClick.attach(document.body);
  $(document).on("pageInit", function(e, id, $page) {
    if(typeof(preInit)!='undefined'){
      preInit();
    }
    console.log(id+"页面展示出来了");
    if(typeof(afterInit)!='undefined'){
      afterInit();
    }
  })
  $.init();
});
/**
 * 改变性别下拉框时事件
 * @returns
 */
function sexOnChange(){
  $.ajax({
    type : 'POST',
    url : BASE+'/user/profile/sex.json',
    // post payload:
    data : {sex:$("select[name=sex]").val()},
    dataType : 'json',
    success : function(result) {
      if (result.success) {
        console.log(result.message);
      } else {
        $.toast(result.message);
      }
    }
  })
}

function uplodFile(uploadUrl) {
  var fileObj = document.getElementById("file_input").files[0]; // js 获取文件对象
  // FormData 对象
  var form = new FormData();
  form.append("file", fileObj); // 文件对象

  // XMLHttpRequest 对象
  var xhr = new XMLHttpRequest();
  xhr.open("post", BASE+uploadUrl, true);
  xhr.onload = function() {
    var rsp = eval("("+this.responseText+")");
    if(rsp.success){
      $(".avatar img").attr("src",rsp.data.path);
    }else{
      $.toast(rsp.data.message);
    }
  };
  document.getElementById("progressBar").style.display="block";
  xhr.upload.addEventListener("progress", progressFunction, false);
  xhr.send(form);
}

function clearProgressInfo()
{
  document.getElementById("progressBar").value = 0;
  document.getElementById("percentage").innerHTML = "";
}

function progressFunction(evt) {
  var progressBar = document.getElementById("progressBar");
  var percentageDiv = document.getElementById("percentage");
  if (evt.lengthComputable) {
      progressBar.max = evt.total;
      progressBar.value = evt.loaded;
      percentageDiv.innerHTML = Math.round(evt.loaded / evt.total * 100) + "%";
  }
}