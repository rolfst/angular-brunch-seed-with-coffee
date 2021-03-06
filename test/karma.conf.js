// Karma configuration
// Generated on Tue Jul 02 2013 17:07:14 GMT+0200 (Paris, Madrid (heure d’été))
var sharedConfig = require('./karma-shared.conf');

module.exports = function(config) {
  sharedConfig(config);
    karma.set({

        // frameworks to use
        frameworks: ['jasmine'],

        // list of files / patterns to load in the browser
        files: [
            // Application Code
            '_public/js/modernizr.js',
            '_public/js/vendor.js',
            '_public/js/app.js',

            'test/vendor/angular/angular-mocks.js',

            'test/unit/**/*.spec.js'
        ],

        // list of files to exclude
        exclude: [

        ],

        // test results reporter to use
        // possible values: 'dots', 'progress', 'junit', 'growl', 'coverage'
        reporters: ['progress', 'junit'],

        // web server port
        port: 3334,

        // cli runner port
        runnerPort: 9100,

        // enable / disable colors in the output (reporters and logs)
        colors: true,

        // level of logging
        // possible values: karma.LOG_DISABLE || karma.LOG_ERROR || karma.LOG_WARN || karma.LOG_INFO || karma.LOG_DEBUG
        logLevel: karma.LOG_INFO,

        // enable / disable watching file and executing tests whenever any file changes
        autoWatch: true,


        // If browser does not capture in given timeout [ms], kill it
        captureTimeout: 60000,

        // Continuous Integration mode
        // if true, it capture browsers, run tests and exit
        singleRun: false,

        reportSlowerThan: 500,

        proxies: {
            '/': 'http://localhost:3333/'
        },

        urlRoot: '__karma',

        plugins: [
            'karma-jasmine',
            'karma-chrome-launcher',
            'karma-firefox-launcher',
            'karma-safari-launcher',
            'karma-phantomjs-launcher',
            'karma-junit-reporter',
            'karma-ng-scenario'
        ]
    });
};
