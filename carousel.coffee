#
#  Carousel - cycle through a list of elements
#
#  $(".items").carousel({
#    next: $(".nextLink"),
#    prev: $(".prevLink")
#  });
#

$.fn.carousel = (opts={}) ->

    return if not opts.prev?
    return if not opts.next?

    active = opts.active || "active"
    elements = $(this)

    # Set default to first being active
    if not elements.hasClass(active)
        elements.eq(0).addClass(active)

    opts.next.click ->
        index = elements.index($("." + active))
        return if index == elements.length-1

        elements.eq(index).removeClass(active)
        elements.eq(index+1).addClass(active)

    opts.prev.click ->
        index = elements.index($("." + active))
        return if index == 0

        elements.eq(index).removeClass(active)
        elements.eq(index-1).addClass(active)
