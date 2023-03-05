const { environment } = require('@rails/webpacker')

module.exports = environment

const webpack = require('webpack')
environment.plugins.prepend(
  'Provide',
  new webpack.provideplugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery',
    Popper: 'popper.js'
  })
)