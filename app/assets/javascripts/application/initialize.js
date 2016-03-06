(function (window, $) {

    $(document).ready(function() {
        // FFChartwell();

        var table = $('table.formatting'),
            tbody = $('tbody', table),
            thead = $('thead', table);

        $('.form-control.parser').on ('input propertychange', function () {
            var string = this.value;
            var data   = d3_dsv.csvParse(string);

            thead.empty();
            tbody.empty();
            table.removeClass ('hidden');

            thead.append('<tr></tr>');

            $.each(Object.keys(data[0]), function (index, value) { $('tr', thead).append('<th>' + value + '</th>'); });
            $.each(data, function (index, row) {
                tbody.append('<tr class="last"></tr>');
                $.each(row, function (index, column) { $('tr.last', tbody).append('<td>' + column + '</td>'); });
                $('tr.last', tbody).removeClass('last');
            });
        });
    });

}(window, jQuery));
