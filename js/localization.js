;(function($,w) {
    var init = function () {
        $("ul.localizeChildren").find("a").addClass($.fn.localization.default.classToLocalize);
    },

    localizeString = function (htmlObj)
    {
        htmlObj.innerHTML = htmlObj.innerHTML.toLocaleString();
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
        setLocale(_locale, $.fn.localization.default.classToLocalize);
    };

   $.fn.localization.default = {
       classToLocalize : "localized"
   }; 

})(jQuery, window);


