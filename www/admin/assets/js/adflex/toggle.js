/**
 * Script for banner-acl.php frontend
 * Function: Toggle targeting list
 * @author Do Ha Son <sondoha@gmail.com>
 */

function toggleTheList(e) {
    var _this = e.target;
    var toggleList = _this.parentNode.getElementsByClassName("toggle-list")[0];
    var displayValue = toggleList.style.display == 'none'?'block':'none';
    var textToReplace = toggleList.style.display == 'none'?'[-] ':'[+] ';
    toggleList.style.display = displayValue;
    
    _this.text = _this.text.replace(_this.text.substr(0,4), textToReplace);
}

function initTargetingToggle() {
    var buttons = document.getElementsByClassName("adflex-toggle");
    
    for(var i = 0;i<buttons.length;i++) {
        buttons[i].addEventListener('click', toggleTheList, false);
    }
}

document.addEventListener("DOMContentLoaded", initTargetingToggle, false);