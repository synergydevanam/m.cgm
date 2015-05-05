function HideInfo(divname) {
    document.getElementById(divname).style.display = 'none';
}
function ShowDiv(divname, hidename) {
    HideInfo(hidename);
    HideInfo('Footer');
    HideInfo('Footer');
    document.getElementById(divname).style.display = 'block';

}

function back(hidename) {
    HideInfo(hidename);
    document.getElementById('TblDashBoard').style.display = 'block';
    document.getElementById('Footer').style.display = 'block';

}