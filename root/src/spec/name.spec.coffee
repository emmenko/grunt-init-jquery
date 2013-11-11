# ======== A Handy Little Jasmine Reference ========
# http://pivotal.github.io/jasmine/

# Test methods:
#   describe "name", ()->

describe "jQuery#{%= js_safe_name %}", ->

  beforeEach ->
    fixtures =
      """
      <div id="qunit-fixture">
        <span>lame test markup</span>
        <span>normal test markup</span>
        <span>awesome test markup</span>
      </div>
      """
    $("body").append(fixtures)
    @elems = $(fixtures).children()

  afterEach ->
    $("body").empty()

  it "should be chainable", ->
    expect(@elems.{%= js_safe_name %}()).toEqual @elems

  it "should be awesome", ->
    expect(@elems.{%= js_safe_name %}().text()).toBe "awesome0awesome1awesome2"

describe "jQuery.{%= js_safe_name %}", ->

  it "should be awesome", ->
    expect($.{%= js_safe_name %}()).toBe "awesome"
    expect($.{%= js_safe_name %}(punctuation: "!")).toBe "awesome!"

describe ":{%= js_safe_name %} selector", ->

  beforeEach ->
    fixtures =
      """
      <div id="qunit-fixture">
        <span>lame test markup</span>
        <span>normal test markup</span>
        <span>awesome test markup</span>
      </div>
      """
    $("body").append(fixtures)
    @elems = $(fixtures).children()

  afterEach ->
    $("body").empty()

  it "should be awesome", ->
    expect(@elems.filter(":{%= js_safe_name %}").get()).toEqual @elems.last().get()

}(jQuery));
