module.exports = function(grunt) {

  grunt.initConfig({
    jasmine : {
      src:   'src/**/*.js',
      specs: 'specs/**/*spec.js'
    }
  });

  // Register tasks.
  grunt.loadNpmTasks('grunt-jasmine-runner');

  // Default task.
  grunt.registerTask('default', 'jasmine');
};
