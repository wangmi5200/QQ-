首先打开说说页面，按下F12打开开发者工具，上方切换到 Console 选项卡，然后粘贴以下代码并回车执行




setInterval(function() {
    var childIframeArr = document.getElementsByTagName('iframe');
    var newDocument = childIframeArr[0].contentWindow.document;
    var del = newDocument.getElementsByClassName("del del_btn author_display");
    if (del.length > 0) {
        del[0].click();
        setTimeout(function() {
            var del_yes = document.getElementsByClassName("qz_dialog_layer_btn qz_dialog_layer_sub");
            if (del_yes.length > 0) {
                del_yes[0].click();
            }
        }, 1000);
    } else {
        var pages = newDocument.getElementsByClassName("mod_pagenav_main")[0];
        var nextId = pages.lastChild.id;
        newDocument.getElementById(nextId).click();
    }
}, 5000);


接着你的说说就会以5秒钟一条的速度被删除，并且删完当前页会自动换页，在后台挂着就行



注意

默认从当前页第一条开始进行删除，因此如果你只需要删除部分说说，请先跳到你要开始删除的那一页再运行 js 语句

如果中途想停止删除可以直接关闭该标签页或者刷新页面

如果想加快删除速度，可以减小代码最后一行5000的值，单位是毫秒，不建议修改至低于3000，否则会容易出现对同一条说说提交数次删除请求的情况

如果你的说说数量大于50条，也不建议修改删除速度，删除过快容易引发验证码问题，js 无法解决，请等待半小时后再尝试继续删除（欲速则不达
