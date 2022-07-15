// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import { gsap } from "gsap";

const navBtn = document.querySelectorAll('btn-nav')
console.log(navBtn)

window.addEventListener('load', () => {
   const TL = gsap.timeline({ paused: true});

   TL.staggerFrom(navBtn, 1, {top: 0, opacity: 0, ease: "power2.out"}, 0.3);

   TL.play();
})
