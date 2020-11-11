function init()
{
    var anchors = document.getElementsByClassName("anchor");
    for(var i = 0; i < anchors.length; i++)
    {
        anchors[i].onmouseover = show_footnote;
        anchors[i].onclick = show_footnote;
        anchors[i].onmouseout = hide_footnote;
    }
    
   
}

function show_footnote()
{
    var footnote = this.firstElementChild;
    footnote.style.display = "inline";
}
function hide_footnote()
{
    var footnote = this.firstElementChild;
    footnote.style.display = "none";
}
function link_to_footnotes()
{
    var fn_class = this.className;
    document.getElementsByClassName("fn_class");
    var text_body = document.getElementById("text_body");
    var footnotes = text_body.getElementsByClassName(fn_class);
    footnotes[0].style.display="inline";
}

window.onload = init;