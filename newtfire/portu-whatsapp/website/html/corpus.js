window.addEventListener('DOMContentLoaded', init, false);
function init() {
    var triggers = document.querySelectorAll('section.conversation > h2');
    for (var i = 0, len = triggers.length; i < len; i++) {
        triggers[i].addEventListener('click', toggle, false);
    }
}
function toggle() {
    if (this.nextElementSibling.style.display == 'block') {
        this.nextElementSibling.style.display = 'none';
    } else {
        this.nextElementSibling.style.display = 'block';
    }
}

function textese() {
var chars = document.getElementsByClassName ("textese")
if (chars[0].style.color != "lime") {
for (var i = 0, length = chars.length; i < length; i++) {
            chars[i].style.color = "lime"; }
            }
else {
  for (var i = 0, length = chars.length; i < length; i++) 
{chars[i].style.color = "";}  
}
}

function informal()
{
var chars = document.getElementsByClassName ("informal")
if (chars[0].style.color != "magenta")
{
for (var i = 0, length = chars.length; i < length; i++) {
            chars[i].style.color = "magenta";
}
}
else {
  for (var i = 0, length = chars.length; i < length; i++) 
{chars[i].style.color = "";}  
}
}
function contraction()
{
var chars = document.getElementsByClassName ("contraction")
if (chars[0].style.color != "red")
{
for (var i = 0, length = chars.length; i < length; i++) {
            chars[i].style.color = "red";
}
}
else {
  for (var i = 0, length = chars.length; i < length; i++) 
{chars[i].style.color = "";}  
}
}

function uncorrMist()
{
var chars = document.querySelectorAll('.uncorr, .expcorr, .selfcorr, .imcor')
if (chars[0].style.color != "yellow")
{
for (var i = 0, length = chars.length; i < length; i++) {
            chars[i].style.color = "yellow";
}
}
else {
  for (var i = 0, length = chars.length; i < length; i++) 
{chars[i].style.color = "";}  
}
}

function expanded()
{
var chars = document.getElementsByClassName ("full")
if (chars[0].style.color != "cyan")
{
for (var i = 0, length = chars.length; i < length; i++) {
            chars[i].style.color = "cyan";
}
}
else {
  for (var i = 0, length = chars.length; i < length; i++) 
{chars[i].style.color = "";}  
}
}
function correction()
{
var chars = document.querySelectorAll ('.implicit, .explicit')
if (chars[0].style.color != "navajowhite")
{
for (var i = 0, length = chars.length; i < length; i++) {
            chars[i].style.color = "navajowhite";
}
}
else {
  for (var i = 0, length = chars.length; i < length; i++) 
{chars[i].style.color = "";}  
}
}