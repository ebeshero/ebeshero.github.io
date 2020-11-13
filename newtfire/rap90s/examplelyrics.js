function init() {
    var fieldset = document.getElementsByTagName('input');
    for (var i = 0; i < fieldset.length; i++) {
        fieldset[i].addEventListener('click', toggle, false);
    }
}

function toggle() {
    var id = this.id;
    var profanity = document.getElementsByClassName("profanity");
    var lifeEvent = document.getElementsByClassName("lifeEvent");
    var dt = document.getElementsByClassName("dt");
    var emotion = document.getElementsByClassName("emotion");
    
    switch (id) {
        case "profanitytoggle": {
            var i;
            for (i = 0; i < profanity.length; i++) {
                profanity[i].classList.toggle("on")
            }
        };
        break;
        case "lifeEventtoggle": {
            var i;
            for (i = 0; i < lifeEvent.length; i++) {
                lifeEvent[i].classList.toggle("on")
            }
        };
        break;
        case "dttoggle": {
            var i;
            for (i = 0; i < dt.length; i++) {
                dt[i].classList.toggle("on")
            }
        };
        break;      
        case "emotiontoggle": {
            var i;
            for (i = 0; i < emotion.length; i++) {
                emotion[i].classList.toggle("on")
            }
        };
        break;
    }
}
window.onload = init;