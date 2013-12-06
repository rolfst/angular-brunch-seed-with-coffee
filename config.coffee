exports.config =
  # See docs at http://brunch.readthedocs.org/en/latest/config.html.
  modules:
    definition: false
    wrapper: false
  paths:
    public: '_public'
    "watched": ['app', 'vendor']
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app\/scripts/
        'js/vendor.js': (path) -> /^vendor/.test(path) or (/^bower_components/.test(path) and not /mock/.test(path))
        'test/scenarios.js': (path) -> /^test(\/|\\)e3e/.test(path) or (/^bower_components/.test(path) and /mock/.test(path))
      order:
        before: [
          'bower_components/jquery/jquery.js'
          'bower_components/angular/angular.js'
          'bower_component/sangular-resource/angular-resource.js'
          'vendor/scripts/angular/angular-cookies.js'
        ]

    stylesheets:
      joinTo:
        'css/app.css': /^(app|vendor)/
    templates:
      joinTo: 'js/templates.js'

  server:
      port: 8000
  # Enable or disable minifying of result js / css files.
  # minify: true
