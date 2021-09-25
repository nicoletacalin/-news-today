const scrollnav = () => {

const nav = document.querySelector("#navbar");
    const NavTop = nav.offsetTop;

    function fixnavbar(){
      if(window.scrollY >= NavTop){
        document.body.style.paddingTop = nav.offsetHeight + "px";
        document.body.classList.add("fixed-nav");
      }else {
        document.body.style.paddingTop = 0;
        document.body.classList.remove("fixed-nav");
      }
    }
    window.addEventListener("scroll", fixnavbar);

}


const login = () => {
  let navbutton = document.querySelector('.nav-button')
  let dropdown = document.querySelector('.nav-dropdown');


  navbutton.addEventListener('click', () => {
    if (dropdown.style.display === "none") {
      dropdown.style.display = "block";
    } else {
      dropdown.style.display = "none";
    }
  })

  // window.addEventListener('mouseup', e => {
  //   if (e.target != dropdown && e.target.parentNode != dropdown) {
  //     dropdown.style.display = 'none';
  //   }
  // })

}


export { scrollnav, login };
