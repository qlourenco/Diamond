document.getElementById("buttonOk")
  .addEventListener("click", function () {
    document.getElementById("tag-with").hidden = false;
  }, false);

document.getElementById("buttonTagClose")
  .addEventListener("click", function () {
    document.getElementById("tag-with").hidden = true;
  }, false);
