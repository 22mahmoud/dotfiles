// ==UserScript==
// @name         twitter to nitter
// @version      1.0
// @description  reddit to teddit
// @match        *://*.twitter.com/*
// @match        *://twitter.com/*
// @grant        none
// @run-at       document-start
// ==/UserScript==

(function () {
  'use strict';

  var hosts = [
    "nitter.42l.fr",
    "nitter.pussthecat.org",
    "nitter.tedomum.net",
    "nitter.fdn.fr",
    "nitter.eu"
  ];
  var index = Math.floor(0 + Math.random() * (hosts.length - 0));
  top.location.hostname = hosts[index];
})();
