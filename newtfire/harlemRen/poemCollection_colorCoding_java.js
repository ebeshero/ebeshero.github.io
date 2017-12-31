window.addEventListener('DOMContentLoaded',init,false);
window.onload = init;

function init() {
    var fieldset = document.getElementsByTagName('input');
    for (var i = 0; i < fieldset.length; i++) {
        fieldset[i].addEventListener('click', toggle, false);}
}

function toggle() {
    var id = this.id;
    switch (id) {
        case "CommasToggle": {
            var commas = document.getElementsByClassName("comma");
            for (var i = 0; i < commas.length; i++) {
                commas[i].classList.toggle("on")}};
        break;
        case "PeriodsToggle": {
            var periods = document.getElementsByClassName("period");
            for (var i = 0; i < periods.length; i++) {
            periods[i].classList.toggle("on")}};
        break;
        case "SemicolonsToggle": {
            var semicolons = document.getElementsByClassName("semicolon");
            for (var i = 0; i < semicolons.length; i++) {
                semicolons[i].classList.toggle("on")}};
        break;
         case "ColonsToggle": {
            var colons = document.getElementsByClassName("colon");
            for (var i = 0; i < colons.length; i++) {
                colons[i].classList.toggle("on")}};
        break;
        case "Open_PsToggle": {
            var open_p = document.getElementsByClassName("open_parenthesis");
            for (var i = 0; i < open_p.length; i++) {
            open_p[i].classList.toggle("on")}};
        break;
        case "Closed_PsToggle": {
            var closed_p = document.getElementsByClassName("closed_parenthesis");
            for (var i = 0; i < closed_p.length; i++) {
                closed_p[i].classList.toggle("on")}};
        break;
        case "Exclamation_PointsToggle": {
            var exclamation_points = document.getElementsByClassName("exclamation_point");
            for (var i = 0; i < exclamation_point.length; i++) {
                exclamation_points[i].classList.toggle("on")}};
        break;
        case "Question_MarksToggle": {
            var question_marks = document.getElementsByClassName("question_mark");
            for (var i = 0; i < question_mark.length; i++) {
            question_marks[i].classList.toggle("on")}};
        break;
        case "DashesToggle": {
            var dashes = document.getElementsByClassName("dash");
            for (var i = 0; i < dashes.length; i++) {
            dashes[i].classList.toggle("on")}};
        break;
        case "MetaphorsToggle": {
            var metaphors = document.getElementsByClassName("metaphor");
            for (var i = 0; i < metaphors.length; i++) {
            metaphors[i].classList.toggle("on")}};
        break;
        case "SimilesToggle": {
            var similes = document.getElementsByClassName("simile");
            for (var i = 0; i < similes.length; i++) {
            similes[i].classList.toggle("on")}};
        break;
        case "PersonToggle": {
            var person = document.getElementsByClassName("personification");
            for (var i = 0; i < person.length; i++) {
            person[i].classList.toggle("on")}};
        break;}     
}
