require(['gitbook', 'jQuery'], function(gitbook, $) {
  gitbook.events.bind('start', function(e, config) {
    var conf = config['get-book'];
    var label = conf.label;
    var url = conf.url;

    gitbook.toolbar.createButton({
      icon: 'fa fa-file-pdf-o',
      text: label,
      onClick: function() {
        window.open(url);
      }
    });
  });
});
