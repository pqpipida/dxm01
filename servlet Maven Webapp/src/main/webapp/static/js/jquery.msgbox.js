(function () {
    /**
     *
     * @type {{Alert: $.MsgBox.Alert, Confirm: $.MsgBox.Confirm, editDiv: $.MsgBox.editDiv}}
     */
    $.MsgBox = {
        Alert: function (title, msg, callback, flag) {
            GenerateHtml("alert", title, msg, flag);
            btnOk(callback, flag);
            btnNo(flag);
        },
        Confirm: function (title, msg, callback, flag) {
            GenerateHtml("confirm", title, msg, flag);
            btnOk(callback, flag);
            btnNo(flag);
        },
        /**
         * 显示弹窗
         * @param id  (not null)
         * @param width  (not null)
         * @param callback  (not null)
         */
        editDiv: function (id, width, callback) {
            $("#cover").show();
            var editDivEle = $("#" + id);
            editDivEle.show();
            if (width) {
                editDivEle.css("width", width + "px");
            }

//	    var scrollTop=0;

            var dom = window.parent.document;	//修改
            var scrollTop = $(dom).scrollTop();	//修改
            var _width = document.documentElement.clientWidth; //屏幕宽
            var _height = document.documentElement.clientHeight + scrollTop; //屏幕高
            var boxWidth = editDivEle.width();
            var boxHeight = editDivEle.height();
            //让提示框居中
            if (scrollTop <= 500)
                scrollTop = scrollTop / 2;
            else
                scrollTop = scrollTop - 200;
            editDivEle.css({top: (scrollTop) + "px", left: (_width - boxWidth) / 2 + "px"});

            btnOk(callback);
            btnNo();

        },
        Wait: function (title, msg, callback, flag) {
            GenerateHtml("wait", title, msg, flag);
            setTimeout(callback,200);
        }
    };

    //生成Html
    var GenerateHtml = function (type, title, msg, flag) {
        var _html = "";

        _html += '<div id="mb_box"></div><div id="mb_con"><span id="mb_tit">' + title + '</span>';
        _html += '<div id="mb_msg">' + msg + '</div><div id="mb_btnbox">';

        if (type == "alert") {
            _html += '<input id="mb_btn_ok" type="button" value="确定" style="cursor: pointer;"/>';
        }
        if (type == "confirm") {
            _html += '<input id="mb_btn_ok" type="button" value="确定" style="cursor: pointer;" />';
            _html += '<input id="mb_btn_no" type="button" value="取消" style="cursor: pointer;"/>';
        }
        _html += '</div></div>';

        //必须先将_html添加到body，再设置Css样式
        if (window != top && !flag) {
            $("body", window.parent.parent.document).append(_html);
            ParentGenerateCss(window.parent.parent.document);
        } else {
            $("body").append(_html);
            GenerateCss(flag);
        }

    };

    //生成Css
    var ParentGenerateCss = function (dom) {
        $("#mb_box", dom).css({
            width: '100%', height: '100%', zIndex: '99999', position: 'fixed',
            filter: 'Alpha(opacity=60)', backgroundColor: 'black', top: '0', left: '0', opacity: '0.6'
        });

        $("#mb_con", dom).css({
            zIndex: '999999', width: '400px', position: 'fixed',
            backgroundColor: 'White', borderRadius: '15px'
        });

        $("#mb_tit", dom).css({
            display: 'block', fontSize: '14px', color: '#444', padding: '10px 15px',
            backgroundColor: '#DDD', borderRadius: '15px 15px 0 0',
            borderBottom: '3px solid #009BFE', fontWeight: 'bold'
        });

        $("#mb_msg", dom).css({
            padding: '20px', lineHeight: '20px',
            borderBottom: '1px dashed #DDD', fontSize: '13px'
        });

        $("#mb_ico", dom).css({
            display: 'block', position: 'absolute', right: '10px', top: '9px',
            border: '1px solid Gray', width: '18px', height: '18px', textAlign: 'center',
            lineHeight: '16px', cursor: 'pointer', borderRadius: '12px', fontFamily: '微软雅黑'
        });

        $("#mb_btnbox", dom).css({margin: '15px 0 10px 0', textAlign: 'center'});
        $("#mb_btn_ok,#mb_btn_no", dom).css({width: '85px', height: '30px', color: 'white', border: 'none'});
        $("#mb_btn_ok", dom).css({backgroundColor: '#168bbb'});
        $("#mb_btn_no", dom).css({backgroundColor: 'gray', marginLeft: '20px'});


        //右上角关闭按钮hover样式
        $("#mb_ico", dom).hover(function () {
            $(this).css({backgroundColor: 'Red', color: 'White'});
        }, function () {
            $(this).css({backgroundColor: '#DDD', color: 'black'});
        });

        var _width = dom.documentElement.clientWidth; //屏幕宽
        var _height = dom.documentElement.clientHeight; //屏幕高

        var boxWidth = $("#mb_con", dom).width();
        var boxHeight = $("#mb_con", dom).height();

        //让提示框居中
        $("#mb_con", dom).css({top: (_height - boxHeight) / 2 + "px", left: (_width - boxWidth) / 2 + "px"});
    };
    //生成Css
    var GenerateCss = function (flag) {
        $("#mb_box").css({
            width: '100%', height: '100%', zIndex: '99999', position: 'fixed',
            filter: 'Alpha(opacity=60)', backgroundColor: 'black', top: '0', left: '0', opacity: '0.6'
        });

        $("#mb_con").css({
            zIndex: '999999', width: '400px', position: 'fixed',
            backgroundColor: 'White', borderRadius: '15px'
        });

        $("#mb_tit").css({
            display: 'block', fontSize: '14px', color: '#444', padding: '10px 15px',
            backgroundColor: '#DDD', borderRadius: '15px 15px 0 0',
            borderBottom: '3px solid #009BFE', fontWeight: 'bold'
        });

        $("#mb_msg").css({
            padding: '20px', lineHeight: '20px',
            borderBottom: '1px dashed #DDD', fontSize: '13px'
        });

        $("#mb_ico").css({
            display: 'block', position: 'absolute', right: '10px', top: '9px',
            border: '1px solid Gray', width: '18px', height: '18px', textAlign: 'center',
            lineHeight: '16px', cursor: 'pointer', borderRadius: '12px', fontFamily: '微软雅黑'
        });

        $("#mb_btnbox").css({margin: '15px 0 10px 0', textAlign: 'center'});
        $("#mb_btn_ok,#mb_btn_no").css({width: '85px', height: '30px', color: 'white', border: 'none'});
        $("#mb_btn_ok").css({backgroundColor: '#168bbb'});
        $("#mb_btn_no").css({backgroundColor: 'gray', marginLeft: '20px'});


        //右上角关闭按钮hover样式
        $("#mb_ico").hover(function () {
            $(this).css({backgroundColor: 'Red', color: 'White'});
        }, function () {
            $(this).css({backgroundColor: '#DDD', color: 'black'});
        });
        var scrollTop = 0;
        if (window != top && !flag) {
            scrollTop = top.document.documentElement.scrollTop;
        } else {
            //scrollTop = document.documentElement.scrollTop;
        }
        var _width = document.documentElement.clientWidth; //屏幕宽
        var _height = document.documentElement.clientHeight + scrollTop / 2; //屏幕高

        var boxWidth = $("#mb_con").width();
        var boxHeight = $("#mb_con").height();

        //让提示框居中
        $("#mb_con").css({top: (_height - boxHeight) / 2 + "px", left: (_width - boxWidth) / 2 + "px"});
    };


    //确定按钮事件
    var btnOk = function (callback, flag) {
        if (window != top && !flag) {
            $("#mb_btn_ok", window.parent.parent.document).click(function () {
                $("#mb_box,#mb_con", window.parent.parent.document).remove();
                if (typeof (callback) == 'function') {
                    callback();
                }
            });
        } else {
            $("#mb_btn_ok").click(function () {
                $("#mb_box,#mb_con").remove();
                if (typeof (callback) == 'function') {
                    callback();
                }
            });
        }

    };

    //取消按钮事件
    var btnNo = function (flag) {
        if (window != top && !flag) {
            $("#mb_btn_no,#mb_ico", window.parent.parent.document).click(function () {
                $("#mb_box,#mb_con", window.parent.parent.document).remove();
            });
        } else {
            $("#mb_btn_no,#mb_ico").click(function () {
                $("#mb_box,#mb_con").remove();
            });
        }
        $(".switchBtn").removeAttr("disabled");	//去除按钮不能点击属性
    }

})();

$(function () {
    /*$(top).scroll(function() {
     var scrollTop = 0;
     if(window !=top){
     scrollTop = top.document.documentElement.scrollTop;
     }else{
     scrollTop = document.documentElement.scrollTop;
     }
     var _width = document.documentElement.clientWidth; //屏幕宽
     var _height = document.documentElement.clientHeight; //屏幕高

     var boxWidth = $("#mb_con").width();
     var boxHeight = $("#mb_con").height();

     //让提示框居中
     $("#mb_con").css({ top: ((_height - boxHeight) / 2 +scrollTop/2) + "px", left: (_width - boxWidth) / 2 + "px" });
     });*/
});