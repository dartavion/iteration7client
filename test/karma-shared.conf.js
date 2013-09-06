var shared = function (config) {
    config.set({
        basePath: '../',
        frameworks: ['jasmine'],
        reporters: ['progress'],
        browsers: ['Chrome'],
        autoWatch: true,
        exclude: [],
        port: 8080,
        logLevel: config.LOG_INFO,

        // these are default values anyway
        singleRun: false,
        colors: true,
    });
};

shared.files = [
    './app/bower_components/angular/angular.js',
    './app/bower_components/angular-mocks/angular-mocks.js',
    './app/bower_components/angular-route/angular-route.js',
    './app/bower_components/angular-animate/angular-animate.js',
    './app/bower_components/jquery/jquery.js',
    './app/bower_components/angularjs-swipe/swiper.js',
    './app/bower_components/jasmine-jquery/lib/jasmine-jquery.js',
    './app/scripts/*.coffee',
    './app/scripts/**/*.coffee',
//      'test/mock/**/*.coffee',

//      {pattern: 'test/spec/fixtures/**/*.html', watched: true, served: true, included: false},
//      {pattern: 'test/spec/fixtures/**/*.json', watched: true, served: true, included: false},
//      {pattern: 'test/spec/fixtures/**/*.xml', watched: true, served: true, included: false}
];

module.exports = shared;
