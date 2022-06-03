btn_compose.onclick = function() {
    let template = "https://mail.google.com/mail/?view=cm&fs=1&to=lloydwallysdc@gmail.com&su=";
    let su = document.getElementById('subject-field').value;
    let body = "&body=Good day lunch,";
    window.open(template.concat(su, body));
  }
  