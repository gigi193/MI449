const firstNameInput = document.getElementById('f_name')
const lastNameInput = document.getElementById('l_name')
const describeInput = document.getElementById('describe')
const emailInput = document.getElementById('email')
const phoneInput = document.getElementById('phone')
const htmlParagraph = document.getElementById('html_paragraph')
const paragraph = document.getElementById('paragraph')

const email = emailInput.value
const emailLink = '<a href="mailto:' + email + '">' + email + '</a>'

const phone = phoneInput.value
const phonelLink = '<a href="mailto:' + phone + '">' + phone + '</a>'

const updateMadlib = function () {
  const first1 = firstNameInput.value
  const last1 = lastNameInput.value
  const describe1 = describeInput.value
  const email1 = emailInput.value
  const phone1 = phoneInput.value

  htmlParagraph.innerHTML = '<h1>Hi, my name is </h1>' + first1 + last1 + describe1 + '<p>. If you\'re interested in a date, you can email me at </p>' +
  emailLink + email1 + '<p> or give me a call at </p>' + phonelLink + phone1

  paragraph.textContent = '<h1>Hi, my name is </h1>' + first1 + last1 + describe1 + '<p>. If you\'re interested in a date, you can email me at </p>' +
  emailLink + email1 + '<p> or give me a call at </p>' + phonelLink + phone1
}

firstNameInput.addEventListener('input', updateMadlib)
lastNameInput.addEventListener('input', updateMadlib)
describeInput.addEventListener('input', updateMadlib)
emailInput.addEventListener('input', updateMadlib)
phoneInput.addEventListener('input', updateMadlib)
