var shared = require('./karma-shared.conf');

module.exports = function (config) {
    shared(config);

    config.set({
        frameworks: ['ng-scenario'],
        files: ['./test/e2e/**/*.coffee'],
        browsers: ['Chrome', 'Firefox', 'Safari'],
        urlRoot: '/_karma_/',
        proxies: {
            '/': 'http://localhost:9000/'
        }
    });
};
// BELOW IS AN ATTEMPT AT CONNECTING WITH BROWSERSTACK.com
//
//module.exports = function(config) {
//  config.set({
//    // base path, that will be used to resolve files and exclude
//    basePath: '../',
//
//    // testing framework to use (jasmine/mocha/qunit/...)
//    frameworks: ['ng-scenario'],
////    frameworks: ['jasmine'],
//
//    // list of files / patterns to load in the browser
//    files: [
//      'test/e2e/**/*.coffee'
//    ],
//
//    // list of files / patterns to exclude
//    exclude: [],
//
//    // web server port
//    port: 8080,
//
//    // level of logging
//    // possible values: LOG_DISABLE || LOG_ERROR || LOG_WARN || LOG_INFO || LOG_DEBUG
//    logLevel: config.LOG_INFO,
//
//
//    // enable / disable watching file and executing tests whenever any file changes
//    autoWatch: false,
//
//
//    // Start these browsers, currently available:
//    // - Chrome
//    // - ChromeCanary
//    // - Firefox
//    // - Opera
//    // - Safari (only Mac)
//    // - PhantomJS
//    // - IE (only Windows)
//    browsers: ['Chrome', 'Firefox', 'Safari'],
//
//
//    // Continuous Integration mode
//    // if true, it capture browsers, run tests and exit
//    singleRun: false,
//
//    // Uncomment the following lines if you are using grunt's server to run the tests
//    proxies: {
//       '/': 'http://localhost:9000/'
//    },
//    // URL root prevent conflicts with the site root
//    urlRoot: '/_karma_/',
//
//    reporters: ['dots']
//
////    preprocessors: [
////      'karma-browserstack-launcher'
////    ],
////
////    browsers: ['bs_iphone5'],
////    browserStack: {
////      username: 'vishi's email',
////      accessKey: 'get the code at browser stack'
////    },
////
////    // define browsers
////    customLaunchers: {
////
////      bs_iphone5: {
////          base: 'BrowserStack',
////          device: 'iPhone 5',
////          os: 'ios',
////          os_version: '6.0'
////      }
////    },
////
////    plugins: [
////      'karma-jasmine',
////      'karma-ng-scenario',
////      'karma-coffee-preprocessor',
////      'karma-firefox-launcher',
////      'karma-firefox-launcher',
////      'karma-browserstack-launcher'
////    ]
//
//  });
//};
