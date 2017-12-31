var df16Items = document.getElementsByClassName("df16Toggle");
var df6Items = document.getElementsByClassName("df6Toggle");
var varItems = document.getElementsByClassName("varToggle");
var poems1Items = document.getElementsByClassName("poems1Toggle");
var poems2Items = document.getElementsByClassName("poems2Toggle");
var poems3Items = document.getElementsByClassName("poems3Toggle");
var fpItems = document.getElementsByClassName("fpToggle");
var ceItems = document.getElementsByClassName("ceToggle");
var fhItems = document.getElementsByClassName("fhToggle");
var bmItems = document.getElementsByClassName("bmToggle");
var amItems = document.getElementsByClassName("amToggle");
var lSDItems = document.getElementsByClassName("lSDToggle");
var LETTERItems = document.getElementsByClassName("LETTERToggle");
var DItems = document.getElementsByClassName("DToggle");
var CPItems = document.getElementsByClassName("CPToggle");
var imgModal = document.getElementById("imgModal");

window.addEventListener('DOMContentLoaded',buttons,false);

function buttons() {
    if (document.getElementById("df16Button") != null){
        var df16Button = document.getElementById("df16Button");
        df16Button.onclick = df16Function;
    }
    if (document.getElementById("df6Button") != null){
        var df6Button = document.getElementById("df6Button");
        df6Button.onclick = df6Function;
    }
    if (document.getElementById("poems1Button") != null){
        var poems1Button = document.getElementById("poems1Button");
        poems1Button.onclick = poems1Function;
    }
    if (document.getElementById("poems2Button") != null){
        var poems2Button = document.getElementById("poems2Button");
        poems2Button.onclick = poems2Function;
    }
    if (document.getElementById("poems3Button") != null){
        var poems3Button = document.getElementById("poems3Button");
        poems3Button.onclick = poems3Function;
    }
    if (document.getElementById("fpButton") != null){
        var fpButton = document.getElementById("fpButton");
        fpButton.onclick = fpFunction;
    }
    if (document.getElementById("ceButton") != null){
        var ceButton = document.getElementById("ceButton");
        ceButton.onclick = ceFunction;
    }
    if (document.getElementById("fhButton") != null){
        var fhButton = document.getElementById("fhButton");
        fhButton.onclick = fhFunction;
    }
    if (document.getElementById("bmButton") != null){
        var bmButton = document.getElementById("bmButton");
        bmButton.onclick = bmFunction;
    }
    if (document.getElementById("amButton") != null){
        var amButton = document.getElementById("amButton");
        amButton.onclick = amFunction;
    }
    if (document.getElementById("lSDButton") != null){
        var lSDButton = document.getElementById("lSDButton");
        lSDButton.onclick = lSDFunction;
    }
    if (document.getElementById("LETTERButton") != null){
        var LETTERButton = document.getElementById("LETTERButton");
        LETTERButton.onclick = LETTERFunction;
    }
    if (document.getElementById("DButton") != null){
        var DButton = document.getElementById("DButton");
        DButton.onclick = DFunction;
    }
    if (document.getElementById("CPButton") != null){
        var CPButton = document.getElementById("CPButton");
        CPButton.onclick = CPFunction;
    }
    if (document.getElementById("origImg") != null){
        var modalBtn = document.getElementById("origImg");
        modalBtn.onclick = openFunc;
    }
    if (document.getElementsByClassName("close")[0] != null){
        var modalSpan = document.getElementsByClassName("close")[0];
        modalSpan.onclick = closeFunc;
    }
}

/*FASCICLE 16 FUNCTION*/

function df16Function() {
    var df16Button = document.getElementById("df16Button");
    for (var i = 0; i < df16Items.length; i++) {
       if (df16Items[i].style.display != "none") {
       df16Items[i].style.display = "none";
       df16Button.className += " df16KeyON";
	   }
	   else {
	   df16Items[i].style.display = "inline";
	   df16Button.className = df16Button.className.replace( /(?:^|\s)df16KeyON(?!\S)/g , '' );
	   }
    }
    for (var j = 0; j < varItems.length; j++) {
       if (varItems[j].style.display != "none") {
       varItems[j].style.display = "none";
	   }
	   else {
	   varItems[j].style.display = "inline";
	   }
    }
    var df16img = document.getElementById("dfMap");
    if (df16img.style.display != "none") {
       df16img.style.display = "none";
       }
    else {
        df16img.style.display = "block";
    }
}

/*FASCICLE 6 FUNCTION*/

function df6Function() {
    var df6Button = document.getElementById("df6Button");
    for (var i = 0; i < df6Items.length; i++) {
       if (df6Items[i].style.display != "none") {
       df6Items[i].style.display = "none";
       df6Button.className += " df6KeyON";
	   }
	   else {
	   df6Items[i].style.display = "inline";
	   df6Button.className = df6Button.className.replace( /(?:^|\s)df6KeyON(?!\S)/g , '' );
	   }
    }
    for (var j = 0; j < varItems.length; j++) {
       if (varItems[j].style.display != "none") {
       varItems[j].style.display = "none";
	   }
	   else {
	   varItems[j].style.display = "inline";
	   }
    }
    var df6img = document.getElementById("df6Map");
    if (df6img.style.display != "none") {
       df6img.style.display = "none";
       }
    else {
        df6img.style.display = "block";
    }
}

/*POEMS 1 FUNCTION*/

function poems1Function() {
    var poems1Button = document.getElementById("poems1Button");
    for (var i = 0; i < poems1Items.length; i++) {
       if (poems1Items[i].style.display != "inline") {
       poems1Items[i].style.display = "inline";
       poems1Button.className += " poems1KeyON";
	   }
	   else {
	   poems1Items[i].style.display = "none";
	   poems1Button.className = poems1Button.className.replace( /(?:^|\s)poems1KeyON(?!\S)/g , '' );
	   }
    }
    var poems1img = document.getElementById("poems1Map");
    if (poems1img.style.display != "block") {
       poems1img.style.display = "block";
       }
    else {
        poems1img.style.display = "none";
    }
}

/*POEMS 2 FUNCTION*/

function poems2Function() {
    var poems2Button = document.getElementById("poems2Button");
    for (var i = 0; i < poems2Items.length; i++) {
       if (poems2Items[i].style.display != "inline") {
       poems2Items[i].style.display = "inline";
       poems2Button.className += " poems2KeyON"
	   }
	   else {
	   poems2Items[i].style.display = "none";
	   poems2Button.className = poems2Button.className.replace( /(?:^|\s)poems2KeyON(?!\S)/g , '' )
	   }
    }
    var poems2img = document.getElementById("poems2Map");
    if (poems2img.style.display != "block") {
       poems2img.style.display = "block";
       }
    else {
        poems2img.style.display = "none";
    }
}

/*POEMS 3 FUNCTION*/

function poems3Function() {
    var poems3Button = document.getElementById("poems3Button");
    for (var i = 0; i < poems3Items.length; i++) {
       if (poems3Items[i].style.display != "inline") {
       poems3Items[i].style.display = "inline";
       poems3Button.className += " poems3KeyON"
	   }
	   else {
	   poems3Items[i].style.display = "none";
	   poems3Button.className = poems3Button.className.replace( /(?:^|\s)poems3KeyON(?!\S)/g , '' )
	   }
    }
    var poems3img = document.getElementById("poems3Map");
    if (poems3img.style.display != "block") {
       poems3img.style.display = "block";
       }
    else {
        poems3img.style.display = "none";
    }
}

/*FURTHER POEMS FUNCTION*/

function fpFunction() {
    var fpButton = document.getElementById("fpButton");
    for (var i = 0; i < fpItems.length; i++) {
       if (fpItems[i].style.display != "inline") {
       fpItems[i].style.display = "inline";
       fpButton.className += " fpKeyON"
	   }
	   else {
	   fpItems[i].style.display = "none";
	   fpButton.className = fpButton.className.replace( /(?:^|\s)fpKeyON(?!\S)/g , '' )
	   }
   }
   var fpimg = document.getElementById("fpMap");
    if (fpimg.style.display != "block") {
       fpimg.style.display = "block";
       }
    else {
        fpimg.style.display = "none";
    }
}

/*CENTENARY EDITION FUNCTION*/

function ceFunction() {
    var ceButton = document.getElementById("ceButton");
    for (var i = 0; i < ceItems.length; i++) {
       if (ceItems[i].style.display != "inline") {
       ceItems[i].style.display = "inline";
       ceButton.className += " ceKeyON"
	   }
	   else {
	   ceItems[i].style.display = "none";
	   ceButton.className = ceButton.className.replace( /(?:^|\s)ceKeyON(?!\S)/g , '' )
	   }
   }
   var ceimg = document.getElementById("ceMap");
    if (ceimg.style.display != "block") {
       ceimg.style.display = "block";
       }
    else {
        ceimg.style.display = "none";
    }
}

/*FINAL HARVEST FUNCTION*/

function fhFunction() {
    var fhButton = document.getElementById("fhButton");
    for (var i = 0; i < fhItems.length; i++) {
       if (fhItems[i].style.display != "inline") {
       fhItems[i].style.display = "inline";
       fhButton.className += " fhKeyON"
	   }
	   else {
	   fhItems[i].style.display = "none";
	   fhButton.className = fhButton.className.replace( /(?:^|\s)fhKeyON(?!\S)/g , '' )
	   }
    }
    var fhimg = document.getElementById("fhMap");
    if (fhimg.style.display != "block") {
       fhimg.style.display = "block";
       }
    else {
        fhimg.style.display = "none";
    }
}

/*BOLTS OF MELODY FUNCTION*/

function bmFunction() {
    var bmButton = document.getElementById("bmButton");
    for (var i = 0; i < bmItems.length; i++) {
       if (bmItems[i].style.display != "inline") {
       bmItems[i].style.display = "inline";
       bmButton.className += " bmKeyON"
	   }
	   else {
	   bmItems[i].style.display = "none";
	   bmButton.className = bmButton.className.replace( /(?:^|\s)bmKeyON(?!\S)/g , '' )
	   }
   }
   var bmimg = document.getElementById("bmMap");
    if (bmimg.style.display != "block") {
       bmimg.style.display = "block";
       }
    else {
        bmimg.style.display = "none";
    }
}

/*ATLANTIC MONTHLY FUNCTION*/

function amFunction() {
    var amButton = document.getElementById("amButton");
    for (var i = 0; i < amItems.length; i++) {
       if (amItems[i].style.display != "inline") {
       amItems[i].style.display = "inline";
       amButton.className += " amKeyON"
	   }
	   else {
	   amItems[i].style.display = "none";
	   amButton.className = amButton.className.replace( /(?:^|\s)amKeyON(?!\S)/g , '' )
	   }
   }
   var amimg = document.getElementById("amMap");
    if (amimg.style.display != "block") {
       amimg.style.display = "block";
       }
    else {
        amimg.style.display = "none";
    }
}

/*SUSAN DICKINSON LETTER FUNCTION*/

function lSDFunction() {
    var lSDButton = document.getElementById("lSDButton");
    for (var i = 0; i < lSDItems.length; i++) {
       if (lSDItems[i].style.display != "inline") {
       lSDItems[i].style.display = "inline";
       lSDButton.className += " lSDKeyON"
	   }
	   else {
	   lSDItems[i].style.display = "none";
	   lSDButton.className = lSDButton.className.replace( /(?:^|\s)lSDKeyON(?!\S)/g , '' )
	   }
   }
   var lsdimg = document.getElementById("lSDMap");
    if (lsdimg.style.display != "block") {
       lsdimg.style.display = "block";
       }
    else {
        lsdimg.style.display = "none";
    }
}

/*LETTER FROM EMILY DICKINSON FUNCTION*/

function LETTERFunction() {
    var LETTERButton = document.getElementById("LETTERButton");
    for (var i = 0; i < LETTERItems.length; i++) {
       if (LETTERItems[i].style.display != "inline") {
       LETTERItems[i].style.display = "inline";
       LETTERButton.className += " LETTERKeyON"
	   }
	   else {
	   LETTERItems[i].style.display = "none";
	   LETTERButton.className = LETTERButton.className.replace( /(?:^|\s)LETTERKeyON(?!\S)/g , '' )
	   }
   }
   var LETTERimg = document.getElementById("LETTERMap");
    if (LETTERimg.style.display != "block") {
       LETTERimg.style.display = "block";
       }
    else {
        LETTERimg.style.display = "none";
    }
}

/*DICKINSON FUNCTION*/

function DFunction() {
    var DButton = document.getElementById("DButton");
    for (var i = 0; i < DItems.length; i++) {
       if (DItems[i].style.display != "inline") {
       DItems[i].style.display = "inline";
       DButton.className += " DKeyON"
	   }
	   else {
	   DItems[i].style.display = "none";
	   DButton.className = DButton.className.replace( /(?:^|\s)DKeyON(?!\S)/g , '' )
	   }
   }
   var Dimg = document.getElementById("DMap");
    if (Dimg.style.display != "block") {
       Dimg.style.display = "block";
       }
    else {
        Dimg.style.display = "none";
    }
}

/*COMPLETE POEMS FUNCTION*/

function CPFunction() {
    var CPButton = document.getElementById("CPButton");
    for (var i = 0; i < CPItems.length; i++) {
       if (CPItems[i].style.display != "inline") {
       CPItems[i].style.display = "inline";
       CPButton.className += " CPKeyON"
	   }
	   else {
	   CPItems[i].style.display = "none";
	   CPButton.className = CPButton.className.replace( /(?:^|\s)CPKeyON(?!\S)/g , '' )
	   }
   }
   var CPimg = document.getElementById("CPMap");
    if (CPimg.style.display != "block") {
       CPimg.style.display = "block";
       }
    else {
        CPimg.style.display = "none";
    }
}

/* MODAL JAVASCRIPT*/
function openFunc() {
    var imgModal = document.getElementById("imgModal");
    var modalBtn = document.getElementById("origImg");
    imgModal.style.display = "block";
}
function closeFunc() {
    var imgModal = document.getElementById("imgModal");
    var modalBtn = document.getElementById("origImg");
    imgModal.style.display = "none";
}
