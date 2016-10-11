global.jQuery = require 'jquery'
global.$ = global.jQuery

# Enable inline svgs in IE
svg4everybody = require 'svg4everybody'
svg4everybody()

magnificPopup = require 'magnificPopup'

# popups
if ($('.open-popup').length)

  $('.open-popup').magnificPopup({
    closeBtnInside: false
    mainClass: 'mfp-fade'
    gallery: {
      enabled: true
      tCounter: '%curr% / %total%'
    },
    callbacks: {
      open: ->
        $('html').addClass('popup-opened')
      close: ->
        $('html').removeClass('popup-opened')
    },
    fixedContentPos: true,
    tClose: 'Zatvoriť (Esc)'
  })

  (->
    touchswipe = require 'touchswipe'
    magnificPopup = $.magnificPopup.instance
    $('.open-popup').click (e) ->

      ### Espera carregar o lightbox ###

      setTimeout (->

        ### Swipe para a esquerda - Próximo ###

        $('.mfp-container').swipe
          swipeLeft: (event, direction, distance, duration, fingerCount) ->
            magnificPopup.next()
            return
          swipeRight: (event, direction, distance, duration, fingerCount) ->
            magnificPopup.prev()
            return
        return
      ), 500
      return
    return
  ).call this

# wookmark
if ($('.wookmark').length)
  wookmark = require 'wookmark'

  $('.wookmark').wookmark({
    offset: 0
  })