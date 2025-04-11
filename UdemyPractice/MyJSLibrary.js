function ShowMessage() {
    newwin = window.open("HTMLPage6.html", "win", "menubar=no, scrollbars=no, width=400, height=500, location=no, resizable=yes");
    newwin.focus()
    setTimeout("newwin.close()", 5000);
}