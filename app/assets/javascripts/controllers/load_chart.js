S.controller("load-chart", function(input, options) {
  var defaults, ctx, myLineChart, data, labels, amounts;

  labels = [];
  amounts = [];

  defaults = {
    responsive: true
  };

  $(input.data('values')).find('li').each(function(){
    var label = $(this).data('label'),
      amount = $(this).data('amount');

    labels.push(label);
    amounts.push(amount);
  });

  data = {
    labels: labels,
    datasets: [
      {
        label: "My First dataset",
        fillColor: "rgba(151,187,205,0.2)",
        strokeColor: "rgba(151,187,205,1)",
        pointColor: "rgba(151,187,205,1)",
        data: amounts
      }
    ]
  };

  ctx = input.get(0).getContext("2d");

  myLineChart = new Chart(ctx).Line(data, defaults);
});
