/* eslint no-console:0 */

document.addEventListener('DOMContentLoaded', () => {
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
