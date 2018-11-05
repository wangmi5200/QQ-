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
