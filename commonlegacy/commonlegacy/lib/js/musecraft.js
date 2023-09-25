$(document).ready(function () {
    $.getJSON("./json/tiles.json", function (data) {
        var fileNames = [];
        $.each(data, function (key, val) {
            fileNames.push(val);
        });

        for (var i = 0; i < fileNames.length; i++) {
            var containerId = "draggon" + (i + 1);
            //loadHtmlContent(containerId, fileNames[i]);
            //var cssFile = "./tiles/css/" + fileNames[i] + ".css";
            //$('#' + containerId).css({
            //    "width": "200px",
            //    "height": "200px",
            //    "overflow": "hidden",
            //    "position": "relative"
            //});
            //$('<link>').appendTo('head').attr({
            //    type: 'text/css',
            //    rel: 'stylesheet',
            //    href: cssFile
            //});
            $('#' + containerId).draggable();
        }
    });
});

//function loadHtmlContent(containerId, fileName) {
//    var filePath = "./tiles/" + fileName + ".html";
//    $('#' + containerId).css({
//        "width": "200px",
//        "height": "200px",
//        "overflow": "hidden",
//        "position": "relative"
//    });
//    $.get(filePath, function (data) {
//        data = '<link rel="stylesheet" type="text/css" href="./css/' + fileName + '.css">' + data;
//        $('#' + containerId).html(data);
//    }).fail(function () {
//        console.error("Failed to load container #" + containerId);
//    })
//}