var exec = require('cordova/exec');

module.exports = {
    // Properties
    auth0Login: function (success_cb, error_cb) {
        exec(success_cb, error_cb, 'MyAuth0', 'auth0Login', []);
    },
}