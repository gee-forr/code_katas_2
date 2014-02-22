module.exports = function(grunt) {

  grunt.initConfig({
    jasmine : {
      src:   'src/**/*.js',
      options: {
        specs: 'spec/*_spec.js'
      }
    }
  });

  // Register tasks.
  //grunt.loadNpmTasks('grunt-jasmine-runner');
  grunt.loadNpmTasks('grunt-contrib-jasmine');

  // Default task.
  grunt.registerTask('default', 'jasmine');
};
