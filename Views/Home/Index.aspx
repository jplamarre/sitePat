<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<!DOCTYPE html>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
	<title>Traduction Lutin Inc.</title>
    <link rel="localization" hreflang="fr-CA" href="/lang/fr.json" type="application/vnd.oftn.l10n+json"/>
    <link rel="localization" hreflang="en-US" href="/lang/en.json" type="application/vnd.oftn.l10n+json"/>
    <script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
    <script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script src="/js/superfish.js"></script>
    <script src="/js/script.js"></script>
    <script src="/js/i18n.js"></script>
    <script src="/js/localization.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/style.css"></link>
    <link rel="stylesheet" type="text/css" href="/css/style.css"></link>
    <link rel="stylesheet" type="text/css" href="/css/style.css"></link>
    <link rel="stylesheet" type="text/css" href="/css/superfish.css"></link>
</head>
<body>
    <div class="main">
    <header>
       <img src="/img/logo.jpg"></img>
    </header>
    

    <nav>
    <ul class="sf-menu localizeChildren">
         <li>
            <a href="#">#{menu1}</a>
            <ul>
                <li>
                <a href="#">#{menu1a}</a>
                </li>
            </ul>
         </li>
         <li>
            <a href="#">#{menu2}</a>
            <ul>
                <li>
                <a href="#">#{menu2a}</a>
                </li>
            </ul>
         </li>
         <li>
            <a href="#">#{menu3}</a>
            <ul>
                <li>
                <a href="#">#{menu3a}</a>
                </li>
            </ul>
         </li>
         <li>
            <a href="#">#{menu4}</a>
            <ul>
                <li>
                <a href="#">#{menu4a}</a>
                </li>
            </ul>
         </li>
    </ul>
    </nav>
    <div class="clear"></div>
    <div class="content">

    <h2>Welcome to ASP.NET MVC <%: ViewData["Version"] %> on <%: ViewData["Runtime"] %>!</h2>
    
    </div>

    <footer>
        <p class="upper-outline">Traduction Lutin Inc.</p>
    </footer>
    </div>
</body>
<script>
$('ul.sf-menu').superfish('init');
$.fn.localization();
$.fn.localize();
</script>

