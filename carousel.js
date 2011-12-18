
  $.fn.carousel = function(opts) {
    var active, elements;
    if (opts == null) opts = {};
    if (!(opts.prev != null)) return;
    if (!(opts.next != null)) return;
    active = opts.active || "active";
    elements = $(this);
    if (!elements.hasClass(active)) elements.eq(0).addClass(active);
    opts.next.click(function() {
      var index;
      index = elements.index($("." + active));
      if (index === elements.length - 1) return;
      elements.eq(index).removeClass(active);
      return elements.eq(index + 1).addClass(active);
    });
    return opts.prev.click(function() {
      var index;
      index = elements.index($("." + active));
      if (index === 0) return;
      elements.eq(index).removeClass(active);
      return elements.eq(index - 1).addClass(active);
    });
  };
