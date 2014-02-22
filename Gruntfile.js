module.exports = function(grunt) {
  grunt.initConfig({
    jasmine_node: {
        specNameMatcher: "./spec/*spec.js", // load only specs containing specNameMatcher
        projectRoot: ".",
        requirejs: true,
        forceExit: true
      }
  });

  grunt.loadNpmTasks('grunt-jasmine-node');

  grunt.registerTask('default', 'jasmine_node');
};
