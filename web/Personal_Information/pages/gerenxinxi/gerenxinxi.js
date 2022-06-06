function changeMessage() {
  var inputs = document.getElementsByTagName("input");
  var texts = document.getElementsByClassName("textWrapper");
  //   console.log(inputs.length, texts.length);
  for (let num = 0; num < texts.length; num++) {
    texts[num].style.display = "none";
  }
  var content = document.getElementsByClassName("Text");
  for (let index = 0; index < inputs.length; index++) {
    inputs[index].style.display = "block";
    inputs[index].value = content[index].innerHTML;
  }
}

function saveMessage() {
  var inputs = document.getElementsByTagName("input");
  var texts = document.getElementsByClassName("textWrapper");
  for (let num = 0; num < texts.length; num++) {
    texts[num].style.display = "grid";
  }
  var content = document.getElementsByClassName("Text");
  for (let index = 0; index < inputs.length; index++) {
    inputs[index].style.display = "none";
    content[index].innerHTML = inputs[index].value;
  }
  document.getElementById("user").innerHTML = inputs[2].value;
  document.getElementById("description").innerHTML = inputs[6].value;
}
