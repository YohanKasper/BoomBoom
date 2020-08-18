// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

// const channels = require.context('.', true, /_channel\.js$/)
// channels.keys().forEach(channels)

import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Costumes, Drinks, Lights, Speakers, Food Trucks...", "All you need is BoomBoom"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
