$(document).ready(function() {
    $('ul.sf-menu').superfish('init');
    $.fn.localization();
    $.fn.localize();
    loadContent();
    Cufon.refresh();
});

function localize(obj){
    $.fn.localize(obj.attributes["hreflang"].value);
    loadContent();
}

function loadContent(obj){
    var toLoad;
    if (!obj) {
        if (String.CurrentContent){
            toLoad = String.CurrentContent;
        }
        else {
            toLoad = "home";
        }
    }
    else {
        toLoad = obj.attributes["content"].value;
    }

    String.CurrentContent = toLoad;

    $("div.content").not("#floatingCirclesG").empty();
    $("#floatingCirclesG").fadeIn("fast");
    $.getJSON("/content/" + toLoad + "_" + String.locale.split("-")[0])
        .done(function(data){
            $.each(data, function(key,val)
            {
                newdiv = document.createElement("div");
                $(newdiv).addClass("test").append(val);
                $("div.content").append(newdiv);
            });
            console.log(data);
        })
        .fail(function(){console.log("b");})
        .always(function(){console.log("c");$("#floatingCirclesG").hide();});
}
