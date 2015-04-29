function HideInfo(divname) {
    document.getElementById(divname).style.display = 'none';
}
function ShowDiv(divname, hidename) {
    HideInfo(hidename);
    document.getElementById(divname).style.display = 'block';

}