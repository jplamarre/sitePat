;(function($,w) {
    var init = function () {
        var regex = new RegExp("^#{.*}$"); // expression here

        $("*").filter(function () {
                return regex.test($(this).text()); 
        }).addClass($.fn.localization.default.classToLocalize).each(function (){$(this).attr("stringref", $(this).html())});
    },

    localizeString = function (htmlObj)
    {
        htmlObj.innerHTML = htmlObj.attributes["stringref"].value.toLocaleString();
    },

    setLocale = function (_locale, _tagToLocalize)
    {
        if (_locale &&_locale != "") String.locale = _locale;
        else String.locale = document.documentElement.lang;

        //Put key instead hard string, here a new format like #{string_localize} can be
        //better to read the code
        $('.' + _tagToLocalize).each(function () {
        localizeString(this);
        });
    }
    
    $.fn.localization = function () {
        init();
    };

    $.fn.localize = function (_locale) {
        if (_locale) {
            localStorage.setItem("locale", _locale);
        }
        else {
            _locale = localStorage.getItem("locale")
        }
        setLocale(_locale, $.fn.localization.default.classToLocalize);
    };

   $.fn.localization.default = {
       classToLocalize : "localized"
   }; 

})(jQuery, window);


