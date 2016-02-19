<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
	<title>Traduction Lutin Inc.</title>
    <link rel="localization" hreflang="fr-CA" href="/lang/fr.json" type="application/vnd.oftn.l10n+json"/>
    <link rel="localization" hreflang="en-US" href="/lang/en.json" type="application/vnd.oftn.l10n+json"/>
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
    <script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
    <script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script src="/js/superfish.js"></script>
    <script src="/js/i18n.js"></script>
    <script src="/js/localization.js"></script>
    <script src="/js/stellar/jquery.stellar.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/style.css"></link>
    <link rel="stylesheet" type="text/css" href="/css/superfish.css"></link>
</head>
<body>
    <div class="grad1" data-stellar-background-ratio="0.25" >
    <div class="rightborder">
    </div>
    <div class="leftborder">
    </div>
    <div class="main">
    <header>
        <div class="logos">
       <div class="logo">
       <a href="#" content="home" onclick="loadContent(this)">
       <p>PÂTRICK LAMARRE TRADUCTION<p>
       </a>
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
    <div class="lang">
    <a href="#" hreflang="fr-CA" onclick="localize(this)">fr</a>
    /
    <a href="#" hreflang="en-US" onclick="localize(this)">en</a>
    </div>
    </nav>
    <div class="clear"></div>
    <div class="scroll"></div>
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
        <p>Traduction Lutin Inc.</p>
        <div class="minilogos">
        <div class="minilogocontainer">
       <a href="http://www.facebook.com/site">
       <img class="minilogo" src="/img/fb_logo.png"></img>
       </a>
        </div>
        <div class="minilogocontainer">
       <a href="http://www.twitter.com/site">
       <img class="minilogo" src="/img/tw_logo.png"></img>
        </a>
        </div>
        <div class="minilogocontainer">
        <a href="#">
       <img class="minilogo" src="/img/phone_logo.png"></img>
        </a>
        </div>
        <div class="minilogocontainer">
        <a href="#">
       <img class="minilogo" src="/img/email_logo.png"></img>
        </a>
        </div>
        </div>
    </footer>
    </div>
    </div>
</body>
<script src="/js/script.js"></script>
<script>
    $(function(){
            $(".grad1").stellar({
            horizontalScrolling: false
            });
            });
</script>
