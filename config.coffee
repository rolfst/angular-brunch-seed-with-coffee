exports.config = 
    // See docs at https::/github.com/brunch/brunch/blob/master/docs/config.md
    modules = 
        definition: false
        wrapper: false

    paths = 
        public: 'public'
        watched: false

    files = 
        javascripts : 
            joinTo : 
                'js/app.js': /^app/
                'js/vendor.js': (path) -> 
                    path path.replace(/\\/g, '/')
                    switch path
                        when "bower_components/angular/angular.js", "bower_components/angular-resource/angular-resource.js", "bower_components/angular-cookies/angular-cookies.js", "bower_components/angular-ui-router/release/angular-ui-router.js", 
                        // bootstrap
                        "bower_components/sass-boostrap3/dist/js/bootstrap.js" then
                            true
                        else false
                'js/modernizr.js': (path) ->
                    path = path.replace(/\\/g, '/')
                    switch path
                        when 'bower_components/respond/respond.src.js', 'bower_components/modernizr/modernizr.js' then
                            true
                        else 
                            false
                'test/scenarios.js': /^test(\/|\\)e2e/

            order :
                before : [
                    'bower_components/respond/respond.src.js',
                    'bower_components/console-polyfill/index.js',

                    // jquery
                    'bower_components/jquery/jquery.js',

                    // angular
                    'bower_components/angular/angular.js',

                    // bootstrap
                    'bower_components/bootstrap/dist/js/bootstrap.js'
                ]
        stylesheets: 
            joinTo: 
                'css/app.css': /^app/ 
                
    server:
        path: 'jst-server.js'

    conventions: 
        assets: /app(\\|\/)assets(\\|\/)/
    
    sourceMaps: true
    

