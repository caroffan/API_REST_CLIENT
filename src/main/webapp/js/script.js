(function(){
        // initialise les tableaux avec dynatable
        var initDynatable = function ( id ) {
            $( id ).dynatable({
                features: {
                    paginate: true,
                    sort: false,
                    pushState: false,
                    search: true,
                    recordCount: false,
                    perPageSelect: true
                }
            });
        };
        initDynatable('#myTable');
    }
)();

$(function() {
    // Code JS
    $(".dynatable-sort-header").css("color","black");
});