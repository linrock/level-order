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
import 'highlight.js/styles/github.css'

hljs.registerLanguage('javascript', javascript);
hljs.registerLanguage('ruby', ruby);

document.addEventListener('DOMContentLoaded', () => {
  document.querySelectorAll('pre').forEach(code => hljs.highlightBlock(code));
});
