'use strict';

window.plugin = function() {
  $('body').append('<p class="u-hide">This line was generated by a non common-js plugin that depends on jQuery!</p>');
};