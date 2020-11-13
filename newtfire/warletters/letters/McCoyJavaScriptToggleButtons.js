function init() {
    var fieldset = document.getElementsByTagName('input');
    for (var i = 0; i < fieldset.length; i++) {
        fieldset[i].addEventListener('click', toggle, false);
    }
}

function toggle() {
    var id = this.id;
    switch (id) {
        case "high": {
            var high = document.getElementsByClassName("high");
            for (var i = 0; i < high.length; i++) {
                high[i].classList.toggle("on")
            }
        };
        break;
        
        case "low": {
            var low = document.getElementsByClassName("low");
            for (var i = 0; i < low.length; i++) {
                low[i].classList.toggle("on")
            }
        };
        break;
    }
  }

window.onload = init;