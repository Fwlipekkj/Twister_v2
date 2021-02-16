const path = require('path')

module.exports = {
    resolve: {
        alias: {
            'jquery':    path.resolve(__dirname, '..', '..', '..', 'node_modules/jquery'),
            'popper.js': path.resolve(__dirname, '..', '..', '..', 'node_modules/popper.js'),
            'bootstrap': path.resolve(__dirname, '..', '..', '..', 'node_modules/bootstrap'),
        }
    }
}
