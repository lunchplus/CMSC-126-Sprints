btn_compose.onclick = function() {
  let template = "https://mail.google.com/mail/?view=cm&fs=1&to=lloydwallysdc@gmail.com&su=";
  let su = document.getElementById('subject-field').value;
  let body = "&body=Good day lunch,";
  window.open(template.concat(su, body));
}

btn_commish.onclick = function() {
  let template = "https://mail.google.com/mail/?view=cm&fs=1&to=lloydwallysdc@gmail.com&su=";
  let su = "Request for Commission"
  let body = "&body=Good day lunch,";
  window.open(template.concat(su, body));
}

(function () {
  'use strict'
  var forms = document.querySelectorAll('.needs-validation')
  Array.prototype.slice.call(forms)
    .forEach(function (form) {
      form.addEventListener('submit', function (event) {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }
        form.classList.add('was-validated')
      }, false)
    })
})()






