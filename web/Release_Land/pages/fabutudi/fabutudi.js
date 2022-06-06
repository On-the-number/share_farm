function uuid() {
  var s = [];
  var hexDigits = "0123456789abcdefg";
  for (var i = 0; i < 13; i++) {
    s[i] = hexDigits.substr(Math.floor(Math.random() * 0x10), 1);
  }
  s[14] = "4";
  s[19] = hexDigits.substr((s[19] & 0x3) | 0x8, 1);
  s[4] = s[13] = s[10] = "-";
  var uuid = s.join("");
  return uuid;
}
function generateID() {
  document.getElementById("land_ID").value = uuid();
}
