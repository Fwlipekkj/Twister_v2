const { environment } = require('@rails/webpacker')

const path = require('path')
const webpack = require('webpack')

// environment.config.merge(require('./config/resolve'))

environment.plugins.prepend('Provide',
    new webpack.ProvidePlugin({
        $: 'jquery/src/jquery',
        jQuery: 'jquery/src/jquery',
        Popper: ['popper.js', 'default'],
        Rails: '@rails/ujs'
    })
)

environment.loaders.append('expose', {
    test: require.resolve('jquery'),
    use: [{
        loader: 'expose-loader',
        options: '$'
    }, {
        loader: 'expose-loader',
        options: 'jQuery',
    }]
})

module.exports = environment
