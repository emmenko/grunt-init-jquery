#
# {%= name %}
# {%= homepage %}
#
# Copyright (c) {%= grunt.template.today('yyyy') %} {%= author_name %}
# Licensed under the {%= licenses.join(', ') %} license{%= licenses.length === 1 ? '' : 's' %}.
#

(($)->

  # Collection method.
  $.fn.{%= js_safe_name %} = ->
    return @.each (i)->
      # Do something awesome to each selected element.
      $(@).html("awesome#{i}")

  # Static method.
  $.{%= js_safe_name %} = (options)->
    # Override default options with passed-in options.
    options = $.extend({}, $.{%= js_safe_name %}.options, options)
    # Return something awesome.
    return "awesome#{options.punctuation}"

  # Static method default options.
  $.{%= js_safe_name %}.options =
    punctuation: "."

  # Custom selector.
  $.expr[":"].{%= js_safe_name %} = (elem)->
    # Is this element awesome?
    return $(elem).text().indexOf("awesome") isnt -1

)(jQuery)
