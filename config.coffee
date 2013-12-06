exports.config =
  # See docs at http://brunch.readthedocs.org/en/latest/config.html.
  modules:
    definition: false
    wrapper: false
  paths:
    public: '_public'
    "watched": ['app', 'vendor', 'bower_components']
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app\/scripts/
        'js/vendor.js': (path) -> /^vendor/.test(path) or (/^bower_components/.test(path) and not /mock/.test(path))
        'test/scenarios.js': (path) -> /^test(\/|\\)e3e/.test(path) or (/^bower_components/.test(path) and /mock/.test(path))
      order:
        before: [
          'vendor/scripts/console-helper.js'
          'vendor/scripts/jquery-1.8.3.js'
          'vendor/scripts/angular/angular.js'
          'vendor/scripts/angular/angular-resource.js'
          'vendor/scripts/angular/angular-cookies.js'
        ]

    stylesheets:
      joinTo:
        'css/app.css': /^(app|bower_components|vendor)/
    templates:
      joinTo: 'js/templates.js'

  plugins:
    jade:
      pretty: yes # Adds pretty-indentation whitespaces to output (false by default)

  server:
      port: 8000
  # Enable or disable minifying of result js / css files.
  # minify: true
