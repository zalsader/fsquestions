var cats = {};
$('h2').each(function(index1) {
    var $parent = $(this);
    var parentkey = $parent.text();
    cats[parentkey] = {};
    var containedfs = [];
    $parent.parent().find('h3').each(function(index2) {
        var $child = $(this);
        var childkey = $child.text();
        cats[parentkey][childkey] = [];
        $child.parent().find('code.descname').each(function(index3) {
            var fname = $(this).text();
            cats[parentkey][childkey].push(fname);
            containedfs.push(fname);
        });
    });
    cats[parentkey]['other'] = [];
    $parent.parent().find('code.descname').each(function(index4) {
        var fname = $(this).text();
        if (!containedfs.includes(fname)) {
            cats[parentkey]['other'].push(fname);
        }
    });
});
