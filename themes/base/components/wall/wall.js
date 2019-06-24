function wallMasonry() {
    var wall = $('[data-wall]');

    var dataAttributes = wall.data();
    if (dataAttributes != null) {
        dataAttributes.itemSelector = '.wall_itemWrapper';
        var $wall = wall.masonry( dataAttributes );
        
        $wall.imagesLoaded().progress( function() {
            $wall.masonry('layout');
        });
    }


}

$(window).on('load', function() {
        wallMasonry();
    }
);