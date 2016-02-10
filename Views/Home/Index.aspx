<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
	<title>Traduction Lutin Inc.</title>
    <link rel="localization" hreflang="fr-CA" href="/lang/fr.json" type="application/vnd.oftn.l10n+json"/>
    <link rel="localization" hreflang="en-US" href="/lang/en.json" type="application/vnd.oftn.l10n+json"/>
    <script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
    <script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script src="/js/superfish.js"></script>
    <script src="/js/i18n.js"></script>
    <script src="/js/localization.js"></script>
    <script src="/js/cufon-yui.js"></script>
    <script src="/fonts/titillium-text.cufonfonts.js" type="text/javascript"></script>
    <script type="text/javascript">
        Cufon.replace('a');
    </script> 
    <link rel="stylesheet" type="text/css" href="/css/style.css"></link>
    <link rel="stylesheet" type="text/css" href="/css/superfish.css"></link>
</head>
<body>
    <div class="grad1">
    <div class="main">
    <header>
        <div class="logos">
       <div class="logo">
       <a href="#">
       <img src="/img/logo.jpg"></img>
       </a>
        </div>
        <div class="minilogos">
        <div class="minilogocontainer">
       <a href="http://www.facebook.com/site">
       <img class="minilogo" src="/img/fb_logo.png"></img>
       <p>facebook.com/site</p>
       </a>
        </div>
        <div class="minilogocontainer">
       <a href="http://www.twitter.com/site">
       <img class="minilogo" src="/img/tw_logo.png"></img>
        <p>twitter.com/site</p>
        </a>
        </div>
        <div class="minilogocontainer">
        <a href="#">
       <img class="minilogo" src="/img/phone_logo.png"></img>
        <p>418-555-5555</p>
        </a>
        </div>
        <div class="minilogocontainer">
        <a href="#">
       <img class="minilogo" src="/img/email_logo.png"></img>
        <p>lutin@sadasd.com</p>
        </a>
        </div>
        </div>
        </div>
    </header>
    

    <nav>
    <div class="menu">
    <ul class="sf-menu">
         <li>
            <a href="#" content="home" onclick="loadContent(this)">#{menu1}</a>
         </li>
         <li>
            <a href="#" content="services" onclick="loadContent(this)">#{menu2}</a>
         </li>
         <li>
            <a href="#" content="expertise" onclick="loadContent(this)">#{menu3}</a>
            <ul>
                <li>
                <a href="#">#{menu3a}</a>
                </li>
                <li>
                <a href="#">#{menu3b}</a>
                </li>
                <li>
                <a href="#">#{menu3c}</a>
                </li>
                <li>
                <a href="#">#{menu3d}</a>
                </li>
                <li>
                <a href="#">#{menu3e}</a>
                </li>
                <li>
                <a href="#">#{menu3f}</a>
                </li>
            </ul>
         </li>
         <li>
            <a href="#" content="whoami" onclick="loadContent(this)">#{menu4}</a>
         </li>
         <li>
            <a href="#" content="contact" onclick="loadContent(this)">#{menu5}</a>
         </li>
    </ul>
    </div>
    <div class="clear"></div>
    <a href="#" hreflang="fr-CA" onclick="localize(this)">fr</a>
    /
    <a href="#" hreflang="en-US" onclick="localize(this)">en</a>
    </nav>
    <div class="clear"></div>
    <div class="content">
       <div id="floatingCirclesG">
           <div class="f_circleG" id="frotateG_01"></div>
           <div class="f_circleG" id="frotateG_02"></div>
           <div class="f_circleG" id="frotateG_03"></div>
           <div class="f_circleG" id="frotateG_04"></div>
           <div class="f_circleG" id="frotateG_05"></div>
           <div class="f_circleG" id="frotateG_06"></div>
           <div class="f_circleG" id="frotateG_07"></div>
           <div class="f_circleG" id="frotateG_08"></div>
        </div>
        <%= ViewData["Content"] %>
        <h2>Welcome to ASP.NET MVC <%: ViewData["Version"] %> on <%: ViewData["Runtime"] %>!</h2>
        <h1>Welcome to ASP.NET MVC <%: ViewData["Version"] %> on <%: ViewData["Runtime"] %>!</h1>
    </div>

    <footer>
        <p class="upper-outline">Traduction Lutin Inc.</p>
    </footer>
    </div>
    </div>
<script type="text/javascript"> Cufon.now(); </script>
</body>
<script src="/js/script.js"></script>

