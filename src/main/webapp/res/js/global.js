/**
 * Created by jfengjiang on 2015/9/11.
 */

$(function () {
    $(document).on("click", ".more", function(){
    	var _this = $(this);
    	var _content = $(this).parent().find(".item-text");
    	if(_content.hasClass("expand")){
    		_this.text("展开");
    		_content.removeClass("expand");
    	}else{
    		_this.text("收起");
    		_content.addClass("expand");
    	}
    	
    });
});