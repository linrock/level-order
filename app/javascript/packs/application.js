/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

import hljs from 'highlight.js/lib/highlight';
import javascript from 'highlight.js/lib/languages/javascript';
import ruby from 'highlight.js/lib/languages/ruby';
import 'highlight.js/styles/shades-of-purple.css'
// import 'highlight.js/styles/atelier-sulphurpool-dark.css'

hljs.registerLanguage('javascript', javascript);
hljs.registerLanguage('ruby', ruby);

document.addEventListener('DOMContentLoaded', () => {
  document.querySelectorAll('pre.hljs').forEach(code => {
    hljs.highlightBlock(code)
  });

  document.querySelectorAll('pre.highlight').forEach(code => {
    // highlight class/def and matching end tags
    code.querySelector(".k").classList.add("definition");
    code.querySelector(".k:last-child").classList.add("definition");

    // highlight break, return, next differently
    code.querySelectorAll(".k").forEach(k => {
      if (["break", "return", "next"].includes(k.textContent)) {
        k.classList.add("flow");
      }
    });

    // fix highlighting of loop keyword
    code.querySelectorAll(".kp").forEach(kp => {
      if (kp.textContent === "loop") {
        kp.classList.add("loop");
      }
    });

    // highlight block variables like instance variables
    let insideBlockVariables = false;
    code.querySelectorAll("span").forEach(span => {
      if (span.classList.contains("o") && span.textContent === "|") {
        insideBlockVariables = !insideBlockVariables;
      }
      if (insideBlockVariables && span.classList.contains("n")) {
        span.classList.add("vi");
        span.classList.remove("n");
      }
    });
  });
});
