$(function () {
    let fileNames = [];
    $.getJSON("./json/tiles.json", function (data) {
        console.log("next layer js running");
        $.each(data, function (key, val) {
            fileNames.push(val);
        });
        for (var i = 0; i < fileNames.length; i++) {
            var containerId = "Draggon" + (i + 1);
            //var cssFileName = "~/tiles/css/" + fileNames[i] + ".css";
            //console.log(cssFileName);
            //var htmlFileName = "~/tiles/" + fileNames[i] + ".html";
            //console.log(htmlFileName);
            //loadContentIntoDiv(containerId, htmlFileName, cssFileName);

            $('#' + containerId).draggable();
        }
    });
    const styleElems = document.querySelectorAll('.card-body .col style');
    $.each(styleElems, function (key, val) {
        console.log(val);
    });

    styleElems.forEach((styleSection, index) => {
        let cssText = styleSection.textContent || styleSection.innerText || styleSection.innerHTML;

        cssText = renameCSSClasses(cssText, `-${index + 1}`);

        styleSection.textContent = cssText;
    });

    const tridiv = document.querySelectorAll('#tridiv');

    tridiv.forEach((elem, index) => {
        renameTridiv(elem, `-${index + 1}`);
        const elems = elem.getElementsByTagName('*');
        for (let i = 0; i < elems.length; i++) {
            renameHTMLClasses(elems[i], `-${index + 1}`);
        }
    });
});

function loadContentIntoDiv(divId, htmlFile, cssFile) {
    $.ajax({
        url: htmlFile,
        dataType: 'html',
        success: function (htmlContent) {
            $("#" + divId).html(htmlContent);

        },
        error: function (xhr, status, error) {
            $("#" + divId).html("Error loading content.");
            console.error(error);
        }
    });

    var link = document.createElement("link");
    link.href = cssFile;
    link.rel = "stylesheet";
    link.type = "text/css";
    document.head.appendChild(link);
}

function renameCSSClasses(cssText, suffix) {
    return cssText.replace(/\.[a-z]+(\-|[a-z]+|\d)*(?=[ ,])/g, (match) => match + suffix); //had to tweak regex, but it should be perf
}

function renameHTMLClasses(element, suffix) {
    const currentClasses = element.getAttribute('class');
    if (currentClasses) {
        const updatedClasses = currentClasses
            .split(' ')
            .map(className => className + suffix)
            .join(' ');
        element.setAttribute('class', updatedClasses);
    }
}

function renameTridiv(element, suffix) {
    const currentID = element.getAttribute('id');
    if (currentID) {
        const updatedID = currentID + suffix;
        element.setAttribute('id', updatedID);
    }
}

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