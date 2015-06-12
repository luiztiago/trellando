S.route({
  "/boards/{id}": function(params) {
    $('#chart-1').control("load-chart", {});
    $('#chart-2').control("load-chart", {});
  }
});
