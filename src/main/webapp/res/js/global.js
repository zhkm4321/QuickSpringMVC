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
          console.log("没毛病")
        } else {
          alert(result.message);
        }
      }
    })
  });
});