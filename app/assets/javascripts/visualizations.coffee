(->

    $(document).ready ->
        ctx         = $("#myChart")
        d           = $.parseJSON(data)
        earthquakes = []
        times       = []

        $.each d.features, (index, earthquake) ->
            earthquakes.push earthquake.properties.mag
            times.push moment(earthquake.properties.time, "YYYYMMDD").format('D/M/Y')

        chartInstance = new Chart(ctx, {
            type: ctx.data('style'),
            data: {
                labels: times,
                datasets: [{
                    label: '# of Votes',
                    data: earthquakes,
                    backgroundColor: ['rgba(255, 99, 132, 0.2)'],
                    borderColor: ['rgba(255,99,132,1)'],
                    borderWidth: 1
                }]
            }
        })

).call(this)
