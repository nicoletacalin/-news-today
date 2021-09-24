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


// const hamburger = () => {
//     const hamburger = document.querySelector(".hamburger");
//     const navLinks = document.querySelector(".menu-list");
//     const links = document.querySelectorAll(".menu-list li");

//     hamburger.addEventListener('click', ()=>{
//        //Animate Links
//         navLinks.classList.toggle("open");
//         links.forEach(link => {
//             link.classList.toggle("fade");
//         });

//         //Hamburger Animation
//         hamburger.classList.toggle("toggle");
//     });
// }


export { scrollnav };
