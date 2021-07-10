// ==UserScript==
// @name         twitter to nitter
// @version      1.0
// @description  youtube to invidious
// @match        *://*.youtube.com/*
// @match        *://youtube.com/*
// @grant        none
// @run-at       document-start
// ==/UserScript==

(function () {
  'use strict';

  var hosts = [
    "invidious.fdn.fr",
    "vid.puffyan.us",
    "yewtu.be",
    // "invidious.snopyta.org",
  ];
  var index = Math.floor(0 + Math.random() * (hosts.length - 0));
  top.location.hostname = hosts[index];
})();
