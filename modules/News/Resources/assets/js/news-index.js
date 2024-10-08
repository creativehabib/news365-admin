("use strict");
$(document).ready(function () {
    $(document).on("submit", "#data-table-filter", function (e) {
        e.preventDefault();
        let form = $(e.target);
        let table = $($(form.data("filter-table")));

        let from_date = form.find("input[name='from_date']").val();
        let to_date = form.find("input[name='to_date']").val();
        let title = form.find("input[name='title']").val();
        let other_page = form.find("select[name='other_page']").val();

        table.on("preXhr.dt", function (e, settings, data) {
            data.from_date = from_date;
            data.to_date = to_date;
            data.title = title;
            data.other_page = other_page;
        });
        table.DataTable().ajax.reload();
    });
    $(document).on("reset", "#data-table-filter", function (e) {
        e.preventDefault();
        let form = $(e.target);
        let table = $($(form.data("filter-table")));

        form.find("input[name='from_date']").val('');
        form.find("input[name='to_date']").val('');
        form.find("input[name='title']").val('');
        form.find("select[name='other_page']").val('').trigger('change');

        table.on("preXhr.dt", function (e, settings, data) {
            data.from_date = '';
            data.to_date = '';
            data.title = '';
            data.other_page = '';
        });
        table.DataTable().ajax.reload();
    });
});
