import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["change your nights", "learn to mix"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
