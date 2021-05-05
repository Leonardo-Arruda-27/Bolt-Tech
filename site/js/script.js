/* funcao para animar o scroll */
var links = document.getElementsByClassName("link");
var arrayLinks = Array.from(links);



arrayLinks.forEach((link) => {
  link.addEventListener("click", EfeitoScroll);
})

function EfeitoScroll(event) {
  event.preventDefault();
  const href = event.currentTarget.getAttribute('href');
  const element = document.querySelector(href);
  element.scrollIntoView({ behavior: 'smooth', block: 'start' });
}






