<!DOCTYPE html>
<html lang="en">

<head>
<style>
.clearfix:before,
.clearfix:after,
.navbar:before,
.navbar:after,
.navbar-header:before,
.navbar-header:after {
  content: " ";
  display: table;
}
.clearfix:after,
.navbar:after,
.navbar-header:after {
  clear: both;
}
.center-block {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
.pull-right {
  float: right !important;
}
.pull-left {
  float: left !important;
}
.hide {
  display: none !important;
}
.show {
  display: block !important;
}
.invisible {
  visibility: hidden;
}
.text-hide {
  font: 0/0 a;
  color: transparent;
  text-shadow: none;
  background-color: transparent;
  border: 0;
}
.hidden {
  display: none !important;
  visibility: hidden !important;
}
.affix {
  position: fixed;
  -webkit-transform: translate3d(0, 0, 0);
  transform: translate3d(0, 0, 0);
}
/* general styles */
a,
button {
  -webkit-transition: all 0.2s ease-out;
  -moz-transition: all 0.2s ease-out;
  transition: all 0.2s ease-out;
}
a i.fa,
button i.fa {
  margin: 0 5px;
}
.clickable {
  cursor: pointer !important;
}
.required {
  color: #38a7bb;
}
.accent {
  color: #38a7bb;
}
.text-uppercase {
  text-transform: uppercase;
  letter-spacing: 0.08em;
}
@media (max-width: 991px) {
  .text-center-sm {
    text-align: center;
  }
}
p.lead {
  margin-bottom: 40px;
}
section,
div.section {
  margin-bottom: 40px;
}
.no-mb {
  margin-bottom: 0 !important;
}
.mb-small {
  margin-bottom: 20px !important;
}
.heading {
  margin-bottom: 40px;
}
.heading h1,
.heading h2,
.heading h3,
.heading h4,
.heading h5 {
  display: inline-block;
  border-bottom: solid 5px #38a7bb;
  line-height: 1.1;
  margin-bottom: 0;
  padding-bottom: 10px;
  vertical-align: middle;
  text-transform: uppercase;
  letter-spacing: 0.06em;
}
.heading h1 i.fa,
.heading h2 i.fa,
.heading h3 i.fa,
.heading h4 i.fa,
.heading h5 i.fa {
  display: inline-block;
  background: #38a7bb;
  width: 30px;
  height: 30px;
  vertical-align: middle;
  text-align: center;
  color: #fff;
  font-size: 12px;
  line-height: 30px;
  border-radius: 15px;
}
.icon {
  display: inline-block;
  width: 80px;
  height: 80px;
  color: #fff;
  line-height: 80px;
  border-radius: 40px;
  border: solid 1px #fff;
  font-size: 20px;
}
.icon.icon-lg {
  font-size: 30px;
  border-width: 2px;
}
.ul-icons {
  padding-left: 10px;
}
.ul-icons li {
  list-style-type: none;
  line-height: 20px;
  margin-bottom: 20px;
}
.ul-icons li i {
  width: 20px;
  height: 20px;
  background: #38a7bb;
  color: #fff;
  text-align: center;
  border-radius: 10px;
  line-height: 20px;
  margin-right: 10px;
}
ul.list-style-none {
  list-style: none;
}
#text-page h1,
#text-page h2,
#text-page h3 {
  font-weight: 700;
}
#error-page {
  text-align: center;
  margin-top: 40px;
  margin-bottom: 100px;
}
#error-page h4 {
  margin-bottom: 40px;
}
#error-page p.buttons {
  margin-top: 40px;
}
.pages-listing .item {
  text-align: center;
}
.pages-listing .item h3 {
  font-size: 18px;
  text-transform: uppercase;
  margin-bottom: 20px;
  letter-spacing: 0.08em;
}
.pages-listing .item h3 a {
  color: #555555;
}
.pages-listing .item .text {
  margin-bottom: 20px;
}
.pages-listing .item .text p {
  color: #999999;
  font-size: 12px;
  margin-bottom: 20px;
}
.banner {
  margin-bottom: 30px;
  text-align: center;
}
.banner img {
  margin: 0 auto;
}
.banner a:hover img {
  opacity: 0.8;
  filter: alpha(opacity=80);
  -webkit-transition: all 0.2s ease-out;
  -moz-transition: all 0.2s ease-out;
  transition: all 0.2s ease-out;
}
.pages {
  text-align: center;
}
.pages .loadMore {
  text-align: center;
}
.pages .pagination {
  text-align: center;
}
.features-buttons button {
  margin-bottom: 20px;
}
@media (min-width: 1300px) {
  body.boxed {
    background: url(http://subtlepatterns.com/patterns/subtle_zebra_3d.png);
  }
  body.boxed #all {
    position: relative;
    background: #fff;
    width: 1200px;
    margin: 0 auto;
    overflow: hidden;
    -webkit-box-shadow: 0 0 5px #cccccc;
    box-shadow: 0 0 5px #cccccc;
  }
}
#top {
  background: #555555;
  color: #eeeeee;
  padding: 10px 0;
}
#top p {
  margin: 0;
  font-size: 12px;
}
#top .social {
  float: right;
  text-align: right;
}
#top .social a {
  color: #999999;
  display: inline-block;
  width: 24px;
  height: 24px;
  border-radius: 12px;
  line-height: 20px;
  font-size: 12px;
  text-align: center;
  vertical-align: bottom;
}
#top .social a:hover {
  color: #fff;
}
#top .social a:hover.facebook {
  background-color: #4460ae;
}
#top .social a:hover.gplus {
  background-color: #c21f25;
}
#top .social a:hover.twitter {
  background-color: #3cf;
}
#top .social a:hover.instagram {
  background-color: #cd4378;
}
#top .social a:hover.email {
  background-color: #4a7f45;
}
#top .login {
  float: right;
}
#top .login a {
  font-size: 12px;
  color: #eeeeee;
  margin-right: 15px;
  text-decoration: none;
  text-transform: uppercase;
  font-weight: 700;
  letter-spacing: 0.10em;
}
@media (max-width: 767px) {
  #top .login {
    float: left;
  }
}
#top.light {
  background: #fff;
  color: #999999;
  border-bottom: solid 1px #eeeeee;
}
#top.light .login a {
  color: #555555;
}
.navbar {
  border: none;
}
.navbar ul.nav > li > a {
  text-transform: uppercase;
  text-decoration: underline;
  font-weight: bold;
  letter-spacing: 0.08em;
  border-top: solid 5px transparent;
}
.navbar ul.nav > li > a:hover {
  border-top: solid 5px #38a7bb;
}
.navbar ul.nav > li.active > a,
.navbar ul.nav > li.open > a {
  text-decoration: none !important;
  border-top: solid 5px #20616d;
}
@media (max-width: 768px) {
  .navbar ul.nav > li.active > a,
  .navbar ul.nav > li.open > a {
    border-top-color: transparent;
  }
  .navbar ul.nav > li > a:hover {
    border-top-color: transparent;
  }
}
.navbar.navbar-light ul.nav > li.active > a {
  border-top: solid 5px #20616d;
  background: #fff !important;
  color: #555555 !important;
}
.navbar.navbar-light ul.nav > li.active > a:hover {
  border-top: solid 5px #20616d;
}
.navbar.navbar-light ul.nav > li > a:hover,
.navbar.navbar-light ul.nav > li.open > a:hover,
.navbar.navbar-light ul.nav > li > a:focus,
.navbar.navbar-light ul.nav > li.open > a:focus {
  border-top: solid 5px #38a7bb;
  background: #fff !important;
  color: #555555 !important;
}
.navbar ul.dropdown-menu {
  margin: 0;
  padding: 0;
}
.navbar ul.dropdown-menu li {
  list-style-type: none;
  border-bottom: solid 1px #eeeeee;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  padding: 4px 0;
}
.navbar ul.dropdown-menu li a {
  position: relative;
  color: #999999;
  font-size: 12px;
  display: block;
  -webkit-transition: all 0.2s ease-out;
  -moz-transition: all 0.2s ease-out;
  transition: all 0.2s ease-out;
  left: 0;
}
.navbar ul.dropdown-menu li a:hover {
  color: #38a7bb;
  text-decoration: none;
  background: none;
  left: 2px;
  -webkit-transition: all 0.2s ease-out;
  -moz-transition: all 0.2s ease-out;
  transition: all 0.2s ease-out;
}
@media (max-width: 767px) {
  .navbar ul.dropdown-menu li a:hover {
    left: 0;
  }
}
.navbar .yamm-content h3 {
  font-size: 18px;
  text-transform: uppercase;
  padding-bottom: 10px;
  margin-top: 5px;
  border-bottom: dotted 1px #555555;
  letter-spacing: 0.08em;
}
@media (max-width: 767px) {
  .navbar .yamm-content h3 {
    font-size: 14px;
  }
}
.navbar .yamm-content h5 {
  text-transform: uppercase;
  padding-bottom: 10px;
  border-bottom: dotted 1px #555555;
  letter-spacing: 0.08em;
}
.navbar .yamm-content ul {
  margin: 0;
  padding: 0;
}
.navbar .yamm-content ul li {
  list-style-type: none;
  border-bottom: solid 1px #eeeeee;
  text-transform: uppercase;
  padding: 4px 0;
}
.navbar .yamm-content ul li a {
  position: relative;
  color: #999999;
  font-size: 12px;
  display: block;
  -webkit-transition: all 0.2s ease-out;
  -moz-transition: all 0.2s ease-out;
  transition: all 0.2s ease-out;
}
.navbar .yamm-content ul li a:hover {
  color: #38a7bb;
  text-decoration: none;
  padding-left: 2px;
}
.navbar .yamm-content .banner {
  margin-bottom: 10px;
}
.navbar .yamm-fw .dropdown-menu {
  padding: 0;
}
.navbar .navbar-buttons {
  float: right;
}
.navbar .navbar-buttons button,
.navbar .navbar-buttons a.btn,
.navbar .navbar-buttons .btn-default.navbar-toggle {
  margin-top: 11px;
  margin-bottom: 11px;
  margin-left: 0;
  margin-right: 5px;
}
.navbar .btn-default,
.navbar .btn-default.navbar-toggle {
  color: #999999;
  background-color: #fff;
  margin-left: 7px;
  margin-right: 0;
}
.navbar .btn-default:hover,
.navbar .btn-default.navbar-toggle:hover,
.navbar .btn-default:focus,
.navbar .btn-default.navbar-toggle:focus {
  background-color: #fff;
  border-color: #38a7bb;
  color: #38a7bb;
}
.navbar #search {
  clear: both;
  border-top: solid 1px #38a7bb;
  text-align: right;
}
.navbar #search form {
  float: right;
}
.navbar #search form .input-group {
  width: 500px;
}
@media (max-width: 768px) {
  .navbar #search form .input-group {
    width: 100%;
  }
}
.navbar #basket-overview a {
  margin-left: 7px;
}
.navbar-affixed-top {
  top: -32px;
}
.navbar-affixed-top.affix-top {
  -webkit-transition: all 0.5s ease-out;
  -moz-transition: all 0.5s ease-out;
  transition: all 0.5s ease-out;
}
.navbar-affixed-top.affix {
  position: fixed;
  width: 100%;
  top: 0;
  z-index: 1000;
  -webkit-box-shadow: 0 0 5px #cccccc;
  box-shadow: 0 0 5px #cccccc;
  -webkit-transition: all 0.5s ease-out;
  -moz-transition: all 0.5s ease-out;
  transition: all 0.5s ease-out;
}
body.boxed .navbar-affixed-top.affix {
  position: static;
}
#login-modal {
  overflow: hidden;
}
#login-modal .modal-header h4 {
  text-transform: uppercase;
}
#login-modal form {
  margin-bottom: 20px;
}
#login-modal a {
  color: #38a7bb;
}
#login-modal p {
  font-weight: 300;
  margin-bottom: 20px;
  font-size: 13px;
}
/* buttons  */
.btn {
  font-weight: 700;
  font-family: "Roboto", Helvetica, Arial, sans-serif;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  padding: 6px 12px;
  font-size: 13px;
  line-height: 1.42857143;
  border-radius: 0;
}
.input-group .btn {
  font-size: 14px;
}
.btn-lg {
  padding: 10px 16px;
  font-size: 14px;
  line-height: 1.33;
  border-radius: 0;
}
.btn-sm {
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 0;
}
.btn-xs {
  padding: 1px 5px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 0;
}
.btn-template-main {
  color: #38a7bb;
  background-color: #ffffff;
  border-color: #38a7bb;
}
.btn-template-main:hover,
.btn-template-main:focus,
.btn-template-main:active,
.btn-template-main.active,
.open > .dropdown-toggle.btn-template-main {
  color: #38a7bb;
  background-color: #e6e6e6;
  border-color: #2a7d8c;
}
.btn-template-main:active,
.btn-template-main.active,
.open > .dropdown-toggle.btn-template-main {
  background-image: none;
}
.btn-template-main.disabled,
.btn-template-main[disabled],
fieldset[disabled] .btn-template-main,
.btn-template-main.disabled:hover,
.btn-template-main[disabled]:hover,
fieldset[disabled] .btn-template-main:hover,
.btn-template-main.disabled:focus,
.btn-template-main[disabled]:focus,
fieldset[disabled] .btn-template-main:focus,
.btn-template-main.disabled:active,
.btn-template-main[disabled]:active,
fieldset[disabled] .btn-template-main:active,
.btn-template-main.disabled.active,
.btn-template-main[disabled].active,
fieldset[disabled] .btn-template-main.active {
  background-color: #ffffff;
  border-color: #38a7bb;
}
.btn-template-main .badge {
  color: #ffffff;
  background-color: #38a7bb;
}
.btn-template-main:hover,
.btn-template-main:focus,
.btn-template-main:active,
.btn-template-main.active {
  background: #38a7bb;
  color: #ffffff;
  border-color: #38a7bb;
}
.btn-template-transparent-primary {
  color: #ffffff;
  background-color: transparent;
  border-color: #ffffff;
}
.btn-template-transparent-primary:hover,
.btn-template-transparent-primary:focus,
.btn-template-transparent-primary:active,
.btn-template-transparent-primary.active,
.open > .dropdown-toggle.btn-template-transparent-primary {
  color: #ffffff;
  background-color: rgba(0, 0, 0, 0);
  border-color: #e0e0e0;
}
.btn-template-transparent-primary:active,
.btn-template-transparent-primary.active,
.open > .dropdown-toggle.btn-template-transparent-primary {
  background-image: none;
}
.btn-template-transparent-primary.disabled,
.btn-template-transparent-primary[disabled],
fieldset[disabled] .btn-template-transparent-primary,
.btn-template-transparent-primary.disabled:hover,
.btn-template-transparent-primary[disabled]:hover,
fieldset[disabled] .btn-template-transparent-primary:hover,
.btn-template-transparent-primary.disabled:focus,
.btn-template-transparent-primary[disabled]:focus,
fieldset[disabled] .btn-template-transparent-primary:focus,
.btn-template-transparent-primary.disabled:active,
.btn-template-transparent-primary[disabled]:active,
fieldset[disabled] .btn-template-transparent-primary:active,
.btn-template-transparent-primary.disabled.active,
.btn-template-transparent-primary[disabled].active,
fieldset[disabled] .btn-template-transparent-primary.active {
  background-color: transparent;
  border-color: #ffffff;
}
.btn-template-transparent-primary .badge {
  color: transparent;
  background-color: #ffffff;
}
.btn-template-transparent-primary:hover,
.btn-template-transparent-primary:focus,
.btn-template-transparent-primary:active,
.btn-template-transparent-primary.active {
  background: #fff;
  color: #38a7bb;
  border-color: #fff;
}
.btn-template-transparent-black {
  color: #ffffff;
  background-color: transparent;
  border-color: #ffffff;
}
.btn-template-transparent-black:hover,
.btn-template-transparent-black:focus,
.btn-template-transparent-black:active,
.btn-template-transparent-black.active,
.open > .dropdown-toggle.btn-template-transparent-black {
  color: #ffffff;
  background-color: rgba(0, 0, 0, 0);
  border-color: #e0e0e0;
}
.btn-template-transparent-black:active,
.btn-template-transparent-black.active,
.open > .dropdown-toggle.btn-template-transparent-black {
  background-image: none;
}
.btn-template-transparent-black.disabled,
.btn-template-transparent-black[disabled],
fieldset[disabled] .btn-template-transparent-black,
.btn-template-transparent-black.disabled:hover,
.btn-template-transparent-black[disabled]:hover,
fieldset[disabled] .btn-template-transparent-black:hover,
.btn-template-transparent-black.disabled:focus,
.btn-template-transparent-black[disabled]:focus,
fieldset[disabled] .btn-template-transparent-black:focus,
.btn-template-transparent-black.disabled:active,
.btn-template-transparent-black[disabled]:active,
fieldset[disabled] .btn-template-transparent-black:active,
.btn-template-transparent-black.disabled.active,
.btn-template-transparent-black[disabled].active,
fieldset[disabled] .btn-template-transparent-black.active {
  background-color: transparent;
  border-color: #ffffff;
}
.btn-template-transparent-black .badge {
  color: transparent;
  background-color: #ffffff;
}
.btn-template-transparent-black:hover,
.btn-template-transparent-black:focus,
.btn-template-transparent-black:active,
.btn-template-transparent-black.active {
  background: #fff;
  color: #000;
  border-color: #fff;
}
.btn-template-primary {
  color: #ffffff;
  background-color: #38a7bb;
  border-color: #38a7bb;
}
.btn-template-primary:hover,
.btn-template-primary:focus,
.btn-template-primary:active,
.btn-template-primary.active,
.open > .dropdown-toggle.btn-template-primary {
  color: #ffffff;
  background-color: #2c8494;
  border-color: #2a7d8c;
}
.btn-template-primary:active,
.btn-template-primary.active,
.open > .dropdown-toggle.btn-template-primary {
  background-image: none;
}
.btn-template-primary.disabled,
.btn-template-primary[disabled],
fieldset[disabled] .btn-template-primary,
.btn-template-primary.disabled:hover,
.btn-template-primary[disabled]:hover,
fieldset[disabled] .btn-template-primary:hover,
.btn-template-primary.disabled:focus,
.btn-template-primary[disabled]:focus,
fieldset[disabled] .btn-template-primary:focus,
.btn-template-primary.disabled:active,
.btn-template-primary[disabled]:active,
fieldset[disabled] .btn-template-primary:active,
.btn-template-primary.disabled.active,
.btn-template-primary[disabled].active,
fieldset[disabled] .btn-template-primary.active {
  background-color: #38a7bb;
  border-color: #38a7bb;
}
.btn-template-primary .badge {
  color: #38a7bb;
  background-color: #ffffff;
}
#intro {
  background: url('../img/home.jpg') no-repeat center top;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
#intro .item {
  font-family: "Roboto", Helvetica, Arial, sans-serif;
  height: 100%;
}
#intro .item h1 {
  text-transform: uppercase;
  font-size: 50px;
  color: #fff;
  margin-bottom: 40px;
  letter-spacing: 0.08em;
}
@media (max-width: 991px) {
  #intro .item h1 {
    font-size: 40px;
  }
}
@media (max-width: 767px) {
  #intro .item h1 {
    font-size: 25px;
  }
}
#intro .item h3 {
  color: #fff;
  margin-bottom: 40px;
}
@media (max-width: 767px) {
  #intro .item h3 {
    font-size: 15px;
    margin-bottom: 20px;
  }
}
#intro .item .btn {
  text-transform: none;
}
@media (max-width: 991px) {
  #intro .item .btn {
    font-size: 14px;
  }
}
@media (max-width: 991px) {
  #intro .item .carousel-caption {
    left: 10%;
    right: 10%;
  }
}
#intro .container,
#intro .row {
  height: 100%;
  position: relative;
}
.jumbotron {
  padding: 30px;
  margin-bottom: 0;
  position: relative;
  background: url('../img/photogrid.jpg') center center repeat;
  background-size: cover;
  -webkit-transition: all 0.2s ease-out;
  -moz-transition: all 0.2s ease-out;
  transition: all 0.2s ease-out;
}
.jumbotron .dark-mask {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: #38a7bb;
  opacity: 0.9;
  filter: alpha(opacity=90);
}
.jumbotron h1,
.jumbotron h2,
.jumbotron h3,
.jumbotron p,
.jumbotron ul {
  color: #fff;
}
.jumbotron h1,
.jumbotron h2,
.jumbotron h3 {
  color: #ffffff;
  text-transform: uppercase;
  letter-spacing: 0.08em;
}
.jumbotron p {
  margin-bottom: 20px;
  font-size: 21px;
  font-weight: 400;
}
.jumbotron p.text-uppercase {
  font-weight: 700;
}
.jumbotron > hr {
  border-top-color: #d5d5d5;
}
.container .jumbotron {
  border-radius: 0;
}
.jumbotron .container {
  max-width: 100%;
  z-index: 2;
}
@media screen and (min-width: 768px) {
  .jumbotron {
    padding-top: 48px;
    padding-bottom: 48px;
  }
  .container .jumbotron {
    padding-left: 60px;
    padding-right: 60px;
  }
  .jumbotron h1,
  .jumbotron .h1 {
    font-size: 46px;
  }
}
#categoryMenu h3 {
  padding: 20px;
  background: #f7f7f7;
  margin: 0;
  border-bottom: solid 1px #eeeeee;
  text-transform: uppercase;
  letter-spacing: 0.08em;
}
.panel.sidebar-menu h3 {
  padding: 5px 0;
  margin: 0;
}
.panel.sidebar-menu {
  background: #fff;
  margin: 0 0 20px;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
.panel.sidebar-menu .panel-heading {
  text-transform: uppercase;
  margin-bottom: 10px;
  background: none;
  padding: 0;
  letter-spacing: 0.08em;
  border-bottom: none;
}
.panel.sidebar-menu .panel-heading h1,
.panel.sidebar-menu .panel-heading h2,
.panel.sidebar-menu .panel-heading h3,
.panel.sidebar-menu .panel-heading h4,
.panel.sidebar-menu .panel-heading h5 {
  display: inline-block;
  border-bottom: solid 5px #38a7bb;
  line-height: 1.1;
  margin-bottom: 0;
  padding-bottom: 10px;
}
.panel.sidebar-menu .panel-heading .btn.btn-danger {
  color: #fff;
  margin-top: 5px;
}
.panel.sidebar-menu .panel-body {
  padding: 0;
}
.panel.sidebar-menu .panel-body span.colour {
  display: inline-block;
  width: 15px;
  height: 15px;
  border: solid 1px #555555;
  vertical-align: top;
  margin-top: 2px;
  margin-left: 5px;
}
.panel.sidebar-menu .panel-body span.colour.white {
  background: #fff;
}
.panel.sidebar-menu .panel-body span.colour.red {
  background: red;
}
.panel.sidebar-menu .panel-body span.colour.green {
  background: green;
}
.panel.sidebar-menu .panel-body span.colour.blue {
  background: blue;
}
.panel.sidebar-menu .panel-body span.colour.yellow {
  background: yellow;
}
.panel.sidebar-menu .panel-body label {
  color: #999999;
  font-size: 12px;
}
.panel.sidebar-menu .panel-body label:hover {
  color: #555555;
}
.panel.sidebar-menu ul.nav.category-menu {
  margin-bottom: 20px;
  text-transform: uppercase;
  font-weight: 700;
  letter-spacing: 0.08em;
}
.panel.sidebar-menu ul.nav.category-menu li a {
  font-family: "Roboto", Helvetica, Arial, sans-serif;
}
.panel.sidebar-menu ul.nav ul {
  list-style: none;
  padding-left: 0;
}
.panel.sidebar-menu ul.nav ul li {
  display: block;
}
.panel.sidebar-menu ul.nav ul li a {
  position: relative;
  font-family: "Times New Roman", Times, serif;
  font-weight: normal;
  text-transform: none !important;
  display: block;
  padding: 10px 15px;
  padding-left: 30px;
  font-size: 12px;
  color: #999999;
}
.panel.sidebar-menu ul.nav ul li a:hover,
.panel.sidebar-menu ul.nav ul li a:focus {
  text-decoration: none;
  background-color: #eeeeee;
}
.panel.sidebar-menu ul.tag-cloud {
  list-style: none;
  padding-left: 0;
}
.panel.sidebar-menu ul.tag-cloud li {
  display: inline-block;
}
.panel.sidebar-menu ul.tag-cloud li a {
  display: inline-block;
  padding: 5px;
  border: solid 1px #eeeeee;
  border-radius: 0;
  color: #38a7bb;
  margin: 5px 5px 5px 0;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  font-weight: 700;
  font-size: 12px;
}
.panel.sidebar-menu ul.tag-cloud li a:hover {
  color: #38a7bb;
  text-decoration: none;
  border-color: #38a7bb;
}
.panel.sidebar-menu ul.popular,
.panel.sidebar-menu ul.recent {
  list-style: none;
  padding-left: 0;
  padding: 20px 0;
}
.panel.sidebar-menu ul.popular li,
.panel.sidebar-menu ul.recent li {
  margin-bottom: 10px;
  padding: 5px 0;
  border-bottom: dotted 1px #eeeeee;
}
.panel.sidebar-menu ul.popular li:before,
.panel.sidebar-menu ul.recent li:before,
.panel.sidebar-menu ul.popular li:after,
.panel.sidebar-menu ul.recent li:after {
  content: " ";
  display: table;
}
.panel.sidebar-menu ul.popular li:after,
.panel.sidebar-menu ul.recent li:after {
  clear: both;
}
.panel.sidebar-menu ul.popular li:before,
.panel.sidebar-menu ul.recent li:before,
.panel.sidebar-menu ul.popular li:after,
.panel.sidebar-menu ul.recent li:after {
  content: " ";
  display: table;
}
.panel.sidebar-menu ul.popular li:after,
.panel.sidebar-menu ul.recent li:after {
  clear: both;
}
.panel.sidebar-menu ul.popular li img,
.panel.sidebar-menu ul.recent li img {
  width: 50px;
  margin-right: 10px;
}
.panel.sidebar-menu ul.popular li h5,
.panel.sidebar-menu ul.recent li h5 {
  margin: 0 0 10px;
}
.panel.sidebar-menu ul.popular li h5 a,
.panel.sidebar-menu ul.recent li h5 a {
  font-weight: normal;
}
.panel.sidebar-menu ul.popular li p.date,
.panel.sidebar-menu ul.recent li p.date {
  float: right;
  font-size: 12px;
  color: #999999;
}
.panel.sidebar-menu ul.popular li:last-child,
.panel.sidebar-menu ul.recent li:last-child {
  border-bottom: none;
}
.panel.sidebar-menu .text-widget {
  font-size: 12px;
}
.panel.sidebar-menu.with-icons ul.nav li a:after {
  font-family: 'FontAwesome';
  content: "\f105";
  position: relative;
  top: 0;
  float: right;
}
/* ribbons for product sales etc. */
.ribbon {
  position: absolute;
  top: 50px;
  padding-left: 51px;
  font-weight: 700;
  letter-spacing: 0.08em;
}
.ribbon .ribbon-background {
  position: absolute;
  top: 0;
  right: 0;
}
.ribbon .theribbon {
  position: relative;
  width: 80px;
  padding: 6px 20px 6px 20px;
  margin: 30px 10px 10px -71px;
  color: #fff;
  background-color: #38a7bb;
  font-family: "Roboto", Helvetica, Arial, sans-serif;
}
.ribbon .theribbon:before,
.ribbon .theribbon:after {
  content: ' ';
  position: absolute;
  width: 0;
  height: 0;
}
.ribbon .theribbon:after {
  left: 0px;
  top: 100%;
  border-width: 5px 10px;
  border-style: solid;
  border-color: #000000 #000000 transparent transparent;
}
.ribbon.sale {
  top: 0;
}
.ribbon.new {
  top: 50px;
}
.ribbon.new .theribbon {
  background-color: #5bc0de;
  text-shadow: 0px 1px 2px #bbb;
}
.ribbon.new .theribbon:after {
  border-color: #2390b0 #2390b0 transparent transparent;
}
.ribbon.gift {
  top: 100px;
}
.ribbon.gift .theribbon {
  background-color: #5cb85c;
  text-shadow: 0px 1px 2px #bbb;
}
.ribbon.gift .theribbon:after {
  border-color: #357935 #357935 transparent transparent;
}
.owl-carousel .owl-controls .owl-page.active span,
.owl-theme .owl-controls .owl-page.active span,
.owl-carousel .owl-controls.clickable .owl-page:hover span,
.owl-theme .owl-controls.clickable .owl-page:hover span {
  background: #38a7bb;
}
.owl-carousel .owl-controls .owl-buttons,
.owl-theme .owl-controls .owl-buttons {
  position: absolute;
  top: 5px;
  right: 0;
}
.owl-carousel .owl-controls .owl-buttons div,
.owl-theme .owl-controls .owl-buttons div {
  width: 26px;
  height: 26px;
  line-height: 25px;
  margin: 0 5px 0 0;
  font-size: 18px;
  color: #38a7bb;
  padding: 0;
  background: #fff;
  border-radius: 13px;
  vertical-align: middle;
  text-align: center;
  opacity: 1;
  filter: alpha(opacity=100);
}
.home-carousel {
  position: relative;
  background: url('../img/photogrid.jpg') center center repeat;
  background-size: cover;
  -webkit-transition: all 0.2s ease-out;
  -moz-transition: all 0.2s ease-out;
  transition: all 0.2s ease-out;
}
.home-carousel .dark-mask {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: #38a7bb;
  opacity: 0.9;
  filter: alpha(opacity=90);
}
.home-carousel .owl-carousel {
  padding-top: 60px;
  padding-bottom: 20px;
}
.home-carousel .owl-theme .owl-controls .owl-page span {
  background: #666;
}
.home-carousel .owl-theme .owl-controls .owl-page.active span {
  background: #fff;
}
.home-carousel .owl-theme .owl-controls .owl-page:hover span {
  background: #fff;
}
@media (max-width: 767px) {
  .home-carousel {
    text-align: center !important;
  }
}
@media (min-width: 992px) {
  .home-carousel .right {
    text-align: right;
  }
}
.home-carousel h1,
.home-carousel h2,
.home-carousel h3,
.home-carousel p,
.home-carousel ul {
  color: #fff;
}
.home-carousel h1 {
  font-weight: 700;
  text-transform: uppercase;
  font-size: 46px;
  letter-spacing: 0.08em;
}
@media (max-width: 991px) {
  .home-carousel h1 {
    font-size: 36px;
  }
}
.home-carousel h2 {
  font-weight: 700;
  text-transform: uppercase;
  font-size: 40px;
  letter-spacing: 0.08em;
}
.home-carousel ul,
.home-carousel p {
  font-size: 18px;
  font-weight: 700;
  padding: 0;
  text-transform: uppercase;
  letter-spacing: 0.10em;
}
@media (max-width: 991px) {
  .home-carousel ul,
  .home-carousel p {
    font-size: 14px;
  }
}
.home-carousel ul li {
  margin-bottom: 10px;
}
.customers {
  padding: 0;
  margin-bottom: 40px;
}
.customers .item {
  list-style-type: none;
  text-align: center;
  margin: 0 20px;
}
.customers .item img {
  display: inline-block;
  filter: url("data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\'><filter id=\'grayscale\'><feColorMatrix type=\'matrix\' values=\'0.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0 0 0 1 0\'/></filter></svg>#grayscale");
  /* Firefox 10+, Firefox on Android */
  filter: gray;
  /* IE6-9 */
  -webkit-filter: grayscale(100%);
  /* Chrome 19+, Safari 6+, Safari 6+ iOS */
  -webkit-transition: all 0.2s ease-out;
  -moz-transition: all 0.2s ease-out;
  transition: all 0.2s ease-out;
}
.customers .item img:hover {
  max-width: auto;
  filter: none;
  -webkit-filter: none;
}
.testimonials {
  padding: 0;
  margin-bottom: 40px;
}
.testimonials .item {
  list-style-type: none;
  margin: 0 5px;
  background: #fff;
  padding-bottom: 60px;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
.testimonials .item .testimonial {
  position: relative;
  padding: 20px;
}
.testimonials .item .testimonial:before,
.testimonials .item .testimonial:after {
  content: " ";
  display: table;
}
.testimonials .item .testimonial:after {
  clear: both;
}
.testimonials .item .testimonial:before,
.testimonials .item .testimonial:after {
  content: " ";
  display: table;
}
.testimonials .item .testimonial:after {
  clear: both;
}
.testimonials .item .testimonial .text {
  color: #999999;
  margin-bottom: 40px;
}
.testimonials .item .testimonial .bottom {
  position: absolute;
  left: 0;
  bottom: 0;
  width: 100%;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  padding: 20px;
  height: 50px;
}
.testimonials .item .testimonial .bottom .icon {
  color: #38a7bb;
  font-size: 30px;
  float: left;
  width: 20%;
}
.testimonials .item .testimonial .name-picture {
  float: right;
  width: 80%;
  text-align: right;
}
.testimonials .item .testimonial .name-picture h5 {
  font-size: 14px;
  text-transform: uppercase;
  letter-spacing: 0.08em;
}
.testimonials .item .testimonial .name-picture p {
  color: #999999;
  margin: 0;
  font-size: 12px;
}
.testimonials .item .testimonial .name-picture img {
  float: right;
  width: 60px;
  border-radius: 30px;
  margin-left: 10px;
}
.team-member {
  text-align: center;
  margin-bottom: 40px;
}
.team-member h3 {
  font-size: 18px;
  text-transform: uppercase;
  margin-bottom: 5px;
  letter-spacing: 0.08em;
}
.team-member h3 a {
  color: #555555;
}
.team-member p.role {
  color: #999999;
  font-size: 12px;
  text-transform: uppercase;
  letter-spacing: 0.06em;
}
.team-member .social {
  margin-bottom: 20px;
}
.team-member .social a {
  margin: 0 10px 0 0;
  color: #fff;
  display: inline-block;
  width: 26px;
  height: 26px;
  border-radius: 13px;
  line-height: 26px;
  font-size: 15px;
  text-align: center;
  -webkit-transition: all 0.2s ease-out;
  -moz-transition: all 0.2s ease-out;
  transition: all 0.2s ease-out;
  vertical-align: bottom;
}
.team-member .social a i {
  vertical-align: bottom;
  line-height: 26px;
}
.team-member .social a.facebook {
  background-color: #4460ae;
}
.team-member .social a.gplus {
  background-color: #c21f25;
}
.team-member .social a.twitter {
  background-color: #3cf;
}
.team-member .social a.instagram {
  background-color: #cd4378;
}
.team-member .social a.email {
  background-color: #4a7f45;
}
.team-member .text p {
  color: #999999;
  font-size: 12px;
}
.team-member .social,
.team-member-detail .social {
  margin-bottom: 20px;
}
.team-member .social a,
.team-member-detail .social a {
  margin: 0 10px 0 0;
  color: #fff;
  display: inline-block;
  width: 26px;
  height: 26px;
  border-radius: 13px;
  line-height: 26px;
  font-size: 15px;
  text-align: center;
  -webkit-transition: all 0.2s ease-out;
  -moz-transition: all 0.2s ease-out;
  transition: all 0.2s ease-out;
  vertical-align: bottom;
}
.team-member .social a i,
.team-member-detail .social a i {
  vertical-align: bottom;
  line-height: 26px;
}
.team-member .social a.facebook,
.team-member-detail .social a.facebook {
  background-color: #4460ae;
}
.team-member .social a.gplus,
.team-member-detail .social a.gplus {
  background-color: #c21f25;
}
.team-member .social a.twitter,
.team-member-detail .social a.twitter {
  background-color: #3cf;
}
.team-member .social a.instagram,
.team-member-detail .social a.instagram {
  background-color: #cd4378;
}
.team-member .social a.email,
.team-member-detail .social a.email {
  background-color: #4a7f45;
}
.box-simple {
  text-align: center;
  margin-bottom: 40px;
}
.box-simple .icon {
  color: #38a7bb;
  border-color: #38a7bb;
  -webkit-transition: all 0.2s ease-out;
  -moz-transition: all 0.2s ease-out;
  transition: all 0.2s ease-out;
}
.box-simple h3 {
  font-weight: normal;
  font-size: 18px;
  text-transform: uppercase;
  line-height: 1.5;
  color: #555555;
  font-weight: 800;
  letter-spacing: 0.08em;
}
.box-simple h3 a {
  color: #555555;
}
.box-simple p {
  color: #999999;
}
.box-simple:hover .icon {
  -webkit-transform: scale(1.1, 1.1);
  -ms-transform: scale(1.1, 1.1);
  -o-transform: scale(1.1, 1.1);
  transform: scale(1.1, 1.1);
}
.box-simple:hover .icon i {
  -webkit-transform: scale(1, 1);
  -ms-transform: scale(1, 1);
  -o-transform: scale(1, 1);
  transform: scale(1, 1);
}
.box-simple.box-white {
  padding: 20px;
  border: dotted 1px #999999;
}
.box-simple.box-white .icon {
  color: #555555;
  border-color: transparent;
  font-size: 70px;
}
.box-simple.box-dark {
  padding: 20px;
  border: dotted 1px #999999;
  background: #555555;
  color: #fff;
}
.box-simple.box-dark .icon {
  color: #f7f7f7;
  border-color: transparent;
  font-size: 70px;
}
.box-simple.box-dark h3 {
  color: #fff;
}
.box-simple.box-dark h3 a {
  color: #fff;
}
.box-simple.box-dark p {
  color: #fff;
}
.box-image {
  position: relative;
  overflow: hidden;
  text-align: center;
  margin: 15px 0;
}
.box-image .bg {
  position: absolute;
  top: auto;
  bottom: 0;
  width: 100%;
  height: 100%;
  opacity: 0;
  filter: alpha(opacity=0);
  background: #38a7bb;
}
.box-image .name {
  position: absolute;
  width: 100%;
  height: 50%;
  bottom: 0;
  -webkit-transform: translate(0, 100%);
  -ms-transform: translate(0, 100%);
  -o-transform: translate(0, 100%);
  transform: translate(0, 100%);
  -webkit-transition: all 0.2s ease-out;
  -moz-transition: all 0.2s ease-out;
  transition: all 0.2s ease-out;
  color: #fff;
  padding: 0 20px;
}
.box-image .name h3 {
  color: #fff;
  text-transform: uppercase;
  font-size: 18px;
  letter-spacing: 0.08em;
}
.box-image .name h3 a {
  color: #fff;
  text-decoration: none;
}
.box-image .text {
  position: absolute;
  width: 100%;
  height: 50%;
  top: 0;
  -webkit-transform: translate(0, -150%);
  -ms-transform: translate(0, -150%);
  -o-transform: translate(0, -150%);
  transform: translate(0, -150%);
  -webkit-transition: all 0.2s ease-out;
  -moz-transition: all 0.2s ease-out;
  transition: all 0.2s ease-out;
  color: #fff;
  padding: 0 20px;
}
.box-image:hover .bg {
  opacity: 0.7;
  filter: alpha(opacity=70);
}
.box-image:hover .name {
  position: absolute;
  -webkit-transform: translate(0, -75%);
  -ms-transform: translate(0, -75%);
  -o-transform: translate(0, -75%);
  transform: translate(0, -75%);
}
.box-image:hover .text {
  position: absolute;
  -webkit-transform: translate(0, 100%);
  -ms-transform: translate(0, 100%);
  -o-transform: translate(0, 100%);
  transform: translate(0, 100%);
}
.box-image-text {
  position: relative;
  overflow: hidden;
  text-align: center;
  margin: 15px 0;
}
.box-image-text .top {
  position: relative;
  margin-bottom: 10px;
}
.box-image-text .top .bg {
  position: absolute;
  top: auto;
  bottom: 0;
  width: 100%;
  height: 100%;
  opacity: 0;
  filter: alpha(opacity=0);
  background: #38a7bb;
}
.box-image-text .top .name {
  position: absolute;
  width: 100%;
  height: 50%;
  bottom: 0;
  -webkit-transform: translate(0, 100%);
  -ms-transform: translate(0, 100%);
  -o-transform: translate(0, 100%);
  transform: translate(0, 100%);
  -webkit-transition: all 0.2s ease-out;
  -moz-transition: all 0.2s ease-out;
  transition: all 0.2s ease-out;
  color: #fff;
  padding: 0 20px;
}
.box-image-text .top .name h3 {
  color: #fff;
  text-transform: uppercase;
  font-size: 18px;
  letter-spacing: 0.08em;
}
.box-image-text .top .name h3 a {
  color: #fff;
  text-decoration: none;
}
.box-image-text .top .text {
  position: absolute;
  width: 100%;
  height: 50%;
  top: 0;
  -webkit-transform: translate(0, -150%);
  -ms-transform: translate(0, -150%);
  -o-transform: translate(0, -150%);
  transform: translate(0, -150%);
  -webkit-transition: all 0.2s ease-out;
  -moz-transition: all 0.2s ease-out;
  transition: all 0.2s ease-out;
  color: #fff;
  padding: 0 20px;
}
.box-image-text .content h3,
.box-image-text .content h4 {
  text-transform: uppercase;
  line-height: 1.5;
  color: #555555;
  font-weight: 800;
  letter-spacing: 0.08em;
}
.box-image-text .content p {
  color: #999999;
}
.box-image-text:hover .bg {
  opacity: 0.7;
  filter: alpha(opacity=70);
}
.box-image-text:hover .name {
  position: absolute;
  -webkit-transform: translate(0, -75%);
  -ms-transform: translate(0, -75%);
  -o-transform: translate(0, -75%);
  transform: translate(0, -75%);
}
.box-image-text:hover .text {
  position: absolute;
  -webkit-transform: translate(0, 100%);
  -ms-transform: translate(0, 100%);
  -o-transform: translate(0, 100%);
  transform: translate(0, 100%);
}
/* universal box */
.box {
  background: #fff;
  margin: 0 0 30px;
  border: solid 1px #ccc;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  padding: 20px 0;
  border-left: none;
  border-right: none;
}
.box .box-header {
  background: #f7f7f7;
  margin: -20px 0 20px;
  padding: 20px;
  border-bottom: solid 1px #eeeeee;
  text-transform: uppercase;
  letter-spacing: 0.08em;
}
.box .box-header:before,
.box .box-header:after {
  content: " ";
  display: table;
}
.box .box-header:after {
  clear: both;
}
.box .box-header:before,
.box .box-header:after {
  content: " ";
  display: table;
}
.box .box-header:after {
  clear: both;
}
.box .box-footer {
  background: #f7f7f7;
  margin: 30px 0 -20px;
  padding: 20px;
  border-top: solid 1px #eeeeee;
}
.box .box-footer:before,
.box .box-footer:after {
  content: " ";
  display: table;
}
.box .box-footer:after {
  clear: both;
}
.box .box-footer:before,
.box .box-footer:after {
  content: " ";
  display: table;
}
.box .box-footer:after {
  clear: both;
}
@media (max-width: 991px) {
  .box .box-footer .btn {
    margin-bottom: 20px;
  }
}
.box.no-border {
  border: none;
}
#heading-breadcrumbs {
  background: url('../img/texture-bw.png') center center repeat;
  padding: 20px 0;
  margin-bottom: 40px;
}
#heading-breadcrumbs.no-mb {
  margin-bottom: 0;
}
#heading-breadcrumbs h1 {
  color: #333333;
  text-transform: uppercase;
  font-size: 30px;
  font-weight: 700;
  letter-spacing: 0.08em;
}
@media (max-width: 991px) {
  #heading-breadcrumbs h1 {
    text-align: center;
  }
}
#heading-breadcrumbs ul.breadcrumb {
  margin-top: 5px;
  margin-bottom: 0;
}
.bar {
  position: relative;
  background: #38a7bb;
  padding: 60px 0;
}
.bar.background-pentagon {
  background: url('../img/texture-bw.png') center center repeat;
  border-top: solid 1px #999999;
  border-bottom: solid 1px #999999;
}
.bar.background-gray {
  background: #eeeeee;
}
.bar.background-gray-dark {
  background: #555555;
}
.bar.background-white {
  background: #fff;
}
.bar.background-image-fixed-1 {
  background: url('../img/fixed-background-1.jpg') center top no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
.bar.background-image-fixed-2 {
  background: url('../img/fixed-background-2.jpg') center top no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
.bar.color-white h1,
.bar.color-white h2,
.bar.color-white h3,
.bar.color-white h4,
.bar.color-white h5,
.bar.color-white h6,
.bar.color-white p {
  color: #fff;
}
.bar.padding-big {
  padding: 50px 0;
}
.bar.padding-horizontal {
  padding-left: 30px;
  padding-right: 30px;
}
.bar.margin-vertical {
  margin-top: 20px;
  margin-bottom: 20px;
}
.bar .dark-mask {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: #000;
  opacity: 0.3;
  filter: alpha(opacity=30);
}
.portfolio.no-space {
  padding: 0 15px;
}
.portfolio.no-space .box-image {
  margin: 0 -15px;
}
.portfolio-project .project-more h4 {
  color: #555555;
  text-transform: uppercase;
  margin-bottom: 0;
  text-align: left;
  font-size: 14px;
  letter-spacing: 0.08em;
}
.portfolio-project .project-more p {
  color: #999999;
  padding: 10px 0;
  margin-bottom: 20px;
  text-align: left;
}
.portfolio-showcase {
  margin: 15px 0 60px;
}
.portfolio-showcase h3 a {
  text-transform: uppercase;
  line-height: 1.5;
  letter-spacing: 0.08em;
}
.portfolio-showcase p.lead {
  color: #555555;
  margin-bottom: 20px;
}
.portfolio-showcase p {
  color: #999999;
}
.portfolio-showcase p.buttons {
  margin-top: 40px;
}
.see-more {
  text-align: center;
  margin-top: 20px;
  padding-top: 20px;
}
.see-more p {
  font-size: 28px;
  font-weight: 100;
  margin-bottom: 20px;
}
.showcase .item {
  text-align: center;
}
.showcase .item .icon {
  display: inline-block;
  width: 50px;
  height: 50px;
  color: #555555;
  line-height: 50px;
  border-radius: 25px;
  border: solid 1px #555555;
}
.showcase .item h4 {
  color: #555555;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  line-height: 1.5;
  font-size: 16px;
}
.showcase .item h4 span {
  font-weight: bold;
  font-size: 51px;
}
.packages .package {
  background: #fff;
  margin-top: 25px;
  margin-bottom: 20px;
  padding-bottom: 15px;
  text-align: center;
  border: solid 1px #38a7bb;
  overflow: hidden;
}
.packages .package .package-header {
  height: 57px;
  color: #fff;
  line-height: 57px;
  background: #38a7bb;
}
.packages .package .package-header h5 {
  color: #fff;
  text-transform: uppercase;
  font-weight: bold;
  line-height: 57px;
  margin: 0;
  letter-spacing: 0.08em;
}
.packages .package .package-header.light-gray {
  background: #eeeeee;
}
.packages .package .package-header.light-gray h5 {
  color: #555555;
}
.packages .package .price {
  line-height: 120px;
  height: 100px;
  color: #fff;
  font-weight: 400;
}
.packages .package .price h4 {
  display: inline;
  font-size: 50px;
  line-height: normal;
  margin-bottom: 0;
}
.packages .package .price .period {
  line-height: normal;
  color: #999999;
}
.packages .package ul {
  padding: 0;
}
.packages .package ul li {
  list-style-type: none;
  padding-top: 10px;
  padding-bottom: 10px;
  width: 80%;
  margin: auto;
  border-bottom: 1px dotted #ccc;
}
.packages .package ul li:last-child {
  border-bottom: 0;
}
.packages .package ul li i {
  font-size: 13px;
  margin-right: 5px;
}
.packages .best-value .package {
  margin-top: 0;
  padding-bottom: 40px;
}
.packages .best-value .package .package-header {
  height: 72px;
  padding-top: 17px;
  height: 82px !important;
}
.packages .best-value .package .package-header h5 {
  font-weight: bold;
  line-height: 29px;
  text-transform: uppercase;
  letter-spacing: 0.08em;
}
.packages .best-value .package .package-header .meta-text {
  font-size: 13px;
  line-height: 15px;
}
#map {
  height: 300px;
}
#map.with-border {
  border-top: solid 1px #38a7bb;
  border-bottom: solid 1px #38a7bb;
}
#blog-listing-big .post,
#blog-homepage .post {
  margin-bottom: 60px;
}
#blog-listing-big .post h2,
#blog-homepage .post h2,
#blog-listing-big .post h4,
#blog-homepage .post h4 {
  text-transform: uppercase;
  letter-spacing: 0.08em;
}
#blog-listing-big .post h2 a,
#blog-homepage .post h2 a,
#blog-listing-big .post h4 a,
#blog-homepage .post h4 a {
  color: #555555;
}
#blog-listing-big .post h2 a:hover,
#blog-homepage .post h2 a:hover,
#blog-listing-big .post h4 a:hover,
#blog-homepage .post h4 a:hover {
  color: #38a7bb;
}
#blog-listing-big .post .author-category,
#blog-homepage .post .author-category {
  color: #999999;
  text-transform: uppercase;
  font-weight: 300;
  letter-spacing: 0.08em;
}
#blog-listing-big .post .author-category a,
#blog-homepage .post .author-category a {
  font-weight: 500;
}
#blog-listing-big .post .date-comments a,
#blog-homepage .post .date-comments a {
  color: #999999;
  margin-right: 20px;
}
#blog-listing-big .post .date-comments a:hover,
#blog-homepage .post .date-comments a:hover {
  color: #38a7bb;
}
@media (min-width: 768px) {
  #blog-listing-big .post .date-comments,
  #blog-homepage .post .date-comments {
    text-align: right;
  }
}
#blog-listing-big .post .intro,
#blog-homepage .post .intro {
  text-align: left;
}
#blog-listing-big .post .image,
#blog-homepage .post .image {
  margin-bottom: 10px;
  overflow: hidden;
}
#blog-listing-big .post .image img,
#blog-homepage .post .image img {
  -webkit-transition: all 0.2s ease-out;
  -moz-transition: all 0.2s ease-out;
  transition: all 0.2s ease-out;
}
@media (max-width: 767px) {
  #blog-listing-big .post .image img.img-responsive,
  #blog-homepage .post .image img.img-responsive {
    min-width: 100%;
  }
}
#blog-listing-big .post .video,
#blog-homepage .post .video {
  margin-bottom: 10px;
}
#blog-listing-big .post .read-more,
#blog-homepage .post .read-more {
  text-align: right;
}
#blog-listing-medium .post {
  margin-bottom: 60px;
}
#blog-listing-medium .post h2 {
  text-transform: uppercase;
  margin: 0 0 10px;
  font-size: 24px;
  letter-spacing: 0.08em;
}
#blog-listing-medium .post h2 a {
  color: #555555;
}
#blog-listing-medium .post h2 a:hover {
  color: #38a7bb;
}
#blog-listing-medium .post .author-category {
  float: left;
  color: #999999;
  text-transform: uppercase;
  font-weight: 300;
  font-size: 12px;
  letter-spacing: 0.08em;
}
#blog-listing-medium .post .author-category a {
  font-weight: 500;
}
#blog-listing-medium .post .date-comments {
  float: right;
  font-size: 12px;
}
#blog-listing-medium .post .date-comments a {
  color: #999999;
  margin-right: 20px;
}
#blog-listing-medium .post .date-comments a:hover {
  color: #38a7bb;
}
@media (min-width: 768px) {
  #blog-listing-medium .post .date-comments {
    text-align: right;
  }
}
#blog-listing-medium .post .intro {
  text-align: left;
}
#blog-listing-medium .post .clearfix:before,
#blog-listing-medium .post .clearfix:after,
#blog-listing-medium .post .navbar:before,
#blog-listing-medium .post .navbar:after,
#blog-listing-medium .post .navbar-header:before,
#blog-listing-medium .post .navbar-header:after {
  content: " ";
  display: table;
}
#blog-listing-medium .post .clearfix:after,
#blog-listing-medium .post .navbar:after,
#blog-listing-medium .post .navbar-header:after {
  clear: both;
}
#blog-listing-medium .post .clearfix:before,
#blog-listing-medium .post .clearfix:after,
#blog-listing-medium .post .navbar:before,
#blog-listing-medium .post .navbar:after,
#blog-listing-medium .post .navbar-header:before,
#blog-listing-medium .post .navbar-header:after {
  content: " ";
  display: table;
}
#blog-listing-medium .post .clearfix:after,
#blog-listing-medium .post .navbar:after,
#blog-listing-medium .post .navbar-header:after {
  clear: both;
}
#blog-listing-medium .post .image {
  margin-bottom: 10px;
  overflow: hidden;
}
#blog-listing-medium .post .image img {
  -webkit-transition: all 0.2s ease-out;
  -moz-transition: all 0.2s ease-out;
  transition: all 0.2s ease-out;
}
@media (max-width: 767px) {
  #blog-listing-medium .post .image img.img-responsive {
    min-width: 100%;
  }
}
#blog-listing-medium .post .video {
  margin-bottom: 10px;
}
#blog-listing-medium .post .read-more {
  text-align: right;
}
.box-image-text.blog .author-category {
  color: #999999;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  font-weight: 300;
  font-size: 12px;
}
.box-image-text.blog .author-category a {
  font-weight: 500;
}
.box-image-text.blog .intro {
  text-align: left;
  margin-bottom: 20px;
}
#blog-homepage .post {
  margin-bottom: 30px;
}
#blog-homepage .post h2,
#blog-homepage .post h4,
#blog-homepage .post .author-category,
#blog-homepage .post .read-more {
  text-align: center;
}
#blog-homepage .post .read-more {
  margin-top: 20px;
}
#blog-post #post-content {
  margin-bottom: 20px;
}
#blog-post .comment {
  margin-bottom: 25px;
}
#blog-post .comment:before,
#blog-post .comment:after {
  content: " ";
  display: table;
}
#blog-post .comment:after {
  clear: both;
}
#blog-post .comment:before,
#blog-post .comment:after {
  content: " ";
  display: table;
}
#blog-post .comment:after {
  clear: both;
}
#blog-post .comment .posted {
  color: #999999;
  font-size: 12px;
}
#blog-post .comment .reply {
  font-family: "Roboto", Helvetica, Arial, sans-serif;
}
#blog-post .comment.last {
  margin-bottom: 0;
}
#blog-post #comments,
#blog-post #comment-form {
  padding: 20px 0;
  margin-top: 20px;
  border-top: solid 1px #eeeeee;
}
#blog-post #comments:before,
#blog-post #comment-form:before,
#blog-post #comments:after,
#blog-post #comment-form:after {
  content: " ";
  display: table;
}
#blog-post #comments:after,
#blog-post #comment-form:after {
  clear: both;
}
#blog-post #comments:before,
#blog-post #comment-form:before,
#blog-post #comments:after,
#blog-post #comment-form:after {
  content: " ";
  display: table;
}
#blog-post #comments:after,
#blog-post #comment-form:after {
  clear: both;
}
#blog-post #comments h4,
#blog-post #comment-form h4 {
  margin-bottom: 20px;
}
#blog-post #comment-form {
  margin-bottom: 20px;
}
.product {
  background: #fff;
  border-bottom: solid 1px #e6e6e6;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  margin-bottom: 60px;
  overflow: hidden;
  text-align: center;
}
.product .image {
  overflow: hidden;
}
.product .image img {
  -webkit-transition: all 0.2s ease-out;
  -moz-transition: all 0.2s ease-out;
  transition: all 0.2s ease-out;
}
@media (max-width: 767px) {
  .product .image img.img-responsive {
    min-width: 100%;
  }
}
.product .text {
  padding: 10px;
}
.product .text h3 {
  font-size: 14px;
  font-weight: 700;
  height: 39.6px;
  text-transform: uppercase;
  letter-spacing: 0.08em;
}
.product .text h3 a {
  color: #555555;
}
.product .text h3 a:hover {
  text-decoration: none;
}
.product .text p.price {
  font-size: 18px;
}
.product .text p.price del {
  color: #999999;
}
.product .buttons {
  clear: both;
  position: absolute;
  display: none;
  bottom: 0;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  width: 100%;
  border: solid 1px transparent;
  padding: 20px;
  background: rgba(255, 255, 255, 0.9);
  -webkit-transition: all 0.2s ease-out;
  -moz-transition: all 0.2s ease-out;
  transition: all 0.2s ease-out;
  text-align: center;
}
.product .buttons .btn {
  margin-bottom: 20px;
}
.product:hover {
  border-bottom: solid 1px #808080;
  top: 0;
}
.product:hover .buttons {
  clear: both;
  position: absolute;
  top: 0;
  background: rgba(255, 255, 255, 0.5);
}
.product:hover .image img {
  -webkit-transform: scale(1.1, 1.1);
  -ms-transform: scale(1.1, 1.1);
  -o-transform: scale(1.1, 1.1);
  transform: scale(1.1, 1.1);
}
.goToDescription {
  font-size: 12px;
  text-align: center;
  margin-bottom: 40px;
}
.goToDescription a {
  color: #999999;
  text-decoration: underline;
}
#productMain {
  margin-bottom: 30px;
}
#productMain .sizes {
  text-align: center;
}
#productMain .sizes h3 {
  font-weight: 700;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  margin-bottom: 40px;
}
#productMain .sizes a {
  display: inline-block;
  width: 40px;
  height: 40px;
  border-radius: 40px;
  background: #ccc;
  line-height: 40px;
  color: #555555;
  text-align: center;
  text-decoration: none;
  font-family: "Roboto", Helvetica, Arial, sans-serif;
}
#productMain .sizes a.active,
#productMain .sizes a:hover {
  background: #38a7bb;
  color: #fff;
}
#productMain .sizes input {
  display: none;
}
#productMain .price {
  font-size: 40px;
  text-align: center;
  margin-top: 40px;
  margin-bottom: 40px;
}
#thumbs a {
  display: block;
  border: solid 1px transparent;
}
#thumbs a.active {
  border-color: #38a7bb;
}
#product-social {
  text-align: center;
}
#product-social h4 {
  font-weight: 300;
  margin-bottom: 10px;
}
#product-social p {
  line-height: 26px;
}
#product-social p a {
  margin: 0 10px 0 0;
  color: #fff;
  display: inline-block;
  width: 26px;
  height: 26px;
  border-radius: 13px;
  line-height: 26px;
  font-size: 15px;
  text-align: center;
  -webkit-transition: all 0.2s ease-out;
  -moz-transition: all 0.2s ease-out;
  transition: all 0.2s ease-out;
  vertical-align: bottom;
}
#product-social p a i {
  vertical-align: bottom;
  line-height: 26px;
}
#product-social p a.facebook {
  background-color: #4460ae;
}
#product-social p a.gplus {
  background-color: #c21f25;
}
#product-social p a.twitter {
  background-color: #3cf;
}
#product-social p a.instagram {
  background-color: #cd4378;
}
#product-social p a.email {
  background-color: #4a7f45;
}
@media (max-width: 991px) {
  #product-social {
    text-align: center;
  }
}
#checkout .nav {
  margin-bottom: 20px;
  border-bottom: solid 1px #38a7bb;
}
#checkout .nav li {
  height: 100%;
}
#checkout .nav li a {
  display: block;
  height: 100%;
}
#order-summary table {
  margin-top: 20px;
}
#order-summary table td {
  color: #999999;
}
#order-summary table tr.total td,
#order-summary table tr.total th {
  font-size: 18px;
  color: #555555;
  font-weight: 700;
}
#checkout .table tbody tr td,
#basket .table tbody tr td,
#customer-order .table tbody tr td {
  vertical-align: middle;
}
#checkout .table tbody tr td input,
#basket .table tbody tr td input,
#customer-order .table tbody tr td input {
  width: 50px;
  text-align: right;
}
#checkout .table tbody tr td img,
#basket .table tbody tr td img,
#customer-order .table tbody tr td img {
  width: 50px;
}
#checkout .table tfoot,
#basket .table tfoot,
#customer-order .table tfoot {
  font-size: 18px;
}
.shipping-method h4,
.payment-method h4 {
  text-transform: uppercase;
  letter-spacing: 0.08em;
}
#customer-orders table tr th,
#customer-orders table tr td {
  vertical-align: baseline;
}
#customer-order .table tfoot th {
  font-size: 18px;
  font-weight: 300;
}
#customer-order .addresses {
  text-align: right;
  margin-bottom: 30px;
}
#customer-order .addresses p {
  font-size: 18px;
  font-weight: 300;
}
#customer-account {
  margin-bottom: 30px;
}
#get-it {
  background: #38a7bb;
  padding: 50px 0 30px;
  color: #fff;
  text-align: center;
}
#get-it h1,
#get-it h2,
#get-it h3,
#get-it h4,
#get-it h5,
#get-it h6 {
  color: #fff;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  margin: 0 0 20px;
}
#get-it p {
  margin: 0 0 20px;
}
#footer {
  background: #555555;
  padding: 50px 0;
  color: #999999;
}
#footer h1,
#footer h2,
#footer h3,
#footer h4,
#footer h5,
#footer h6 {
  color: #eeeeee;
}
#footer h4 {
  font-size: 14px;
  font-weight: 800;
  text-transform: uppercase;
  letter-spacing: 0.08em;
}
#footer ul {
  padding-left: 0;
  list-style: none;
}
#footer ul a {
  color: #999999;
}
#footer ul a:hover {
  color: #38a7bb;
  text-decoration: none;
}
#footer .photostream div {
  float: left;
  display: block;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  width: 33%;
  padding: 7.5px;
  overflow: hidden;
}
#footer .photostream div a {
  border: solid 1 px #eeeeee;
}
#footer .photostream div img {
  -webkit-transition: all 0.2s ease-out;
  -moz-transition: all 0.2s ease-out;
  transition: all 0.2s ease-out;
}
#footer .photostream div:hover img {
  -webkit-transform: scale(1.1, 1.1);
  -ms-transform: scale(1.1, 1.1);
  -o-transform: scale(1.1, 1.1);
  transform: scale(1.1, 1.1);
}
#footer .blog-entries .item {
  clear: both;
  padding: 5px 0;
  margin-bottom: 10px;
  border-bottom: solid 1px #555555;
}
#footer .blog-entries .item .image {
  float: left;
  width: 15%;
  margin-right: 10px;
}
#footer .blog-entries .item .name {
  width: 75%;
  margin-left: 10px;
  display: table-cell;
  vertical-align: middle;
}
#footer .blog-entries .item .name h5 {
  margin: 0;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  font-size: 12px;
}
#footer .blog-entries .item .name h5 a {
  color: #eeeeee;
}
#footer .blog-entries .item .text {
  width: 100%;
  clear: both;
}
#footer .blog-entries .item:last-child {
  border-bottom: none;
  margin-bottom: 0;
}
#footer .social a {
  color: #555555;
  font-size: 25px;
  margin: 0 10px 0 0;
}
#footer .social a:hover {
  color: #38a7bb;
}
#copyright {
  background: #333;
  color: #ccc;
  padding: 50px 0;
  font-size: 12px;
  line-height: 28px;
}
#copyright p {
  margin: 0;
}
@media (max-width: 991px) {
  #copyright p {
    float: none !important;
    text-align: center;
    margin-bottom: 10px;
  }
}
[data-animate] {
  opacity: 0;
  filter: alpha(opacity=0);
}
#style-switch-button {
  position: fixed;
  top: 100px;
  left: 0px;
  border-radius: 0;
}
#style-switch {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  width: 300px;
  padding: 20px;
  position: fixed;
  top: 140px;
  left: 0;
  background: #fff;
  border: solid 1px #eeeeee;
}
@media (max-width: 991px) {
  #style-switch-button {
    display: none;
  }
  #style-switch {
    display: none;
  }
}
/* Original Boostrap template overwrite */
/* breadcrumbs */
.breadcrumb {
  font-family: "Roboto", Helvetica, Arial, sans-serif;
  text-transform: uppercase;
  background-color: none;
  letter-spacing: 0.08em;
}
/* nav */
.nav > li > a {
  padding: 10px 15px;
}
.nav > li > a:hover,
.nav > li > a:focus {
  background-color: #eeeeee;
}
.nav > li.disabled > a {
  color: #999999;
}
.nav > li.disabled > a:hover,
.nav > li.disabled > a:focus {
  color: #999999;
}
.nav .open > a,
.nav .open > a:hover,
.nav .open > a:focus {
  background-color: #eeeeee;
  border-color: #38a7bb;
}
.nav-tabs {
  border-bottom: 1px solid #38a7bb;
}
.nav-tabs > li {
  float: left;
  margin-bottom: -1px;
}
.nav-tabs > li > a {
  margin-right: 2px;
  line-height: 1.42857143;
  border: 1px solid transparent;
  border-radius: 0 0 0 0;
}
.nav-tabs > li > a:hover {
  border-color: #eeeeee #eeeeee #38a7bb;
}
.nav-tabs > li.active > a,
.nav-tabs > li.active > a:hover,
.nav-tabs > li.active > a:focus {
  color: #555555;
  background-color: #ffffff;
  border: 1px solid #38a7bb;
  border-bottom-color: transparent;
  cursor: default;
}
.nav-tabs.nav-justified {
  width: 100%;
  border-bottom: solid 1px #38a7bb;
  border-bottom: 0;
}
.nav-tabs.nav-justified > li {
  float: none;
}
.nav-tabs.nav-justified > li > a {
  text-align: center;
  /*margin-bottom: 5px;*/
}
.nav-tabs.nav-justified > .dropdown .dropdown-menu {
  top: auto;
  left: auto;
}
.nav-tabs.nav-justified > li > a {
  margin-right: 0;
  border-radius: 0;
}
.nav-tabs.nav-justified > .active > a,
.nav-tabs.nav-justified > .active > a:hover,
.nav-tabs.nav-justified > .active > a:focus {
  border: 1px solid #38a7bb;
}
@media (min-width: 768px) {
  .nav-tabs.nav-justified > li > a {
    border-bottom: 1px solid #38a7bb;
    border-radius: 0 0 0 0;
  }
  .nav-tabs.nav-justified > .active > a,
  .nav-tabs.nav-justified > .active > a:hover,
  .nav-tabs.nav-justified > .active > a:focus {
    border-bottom-color: #ffffff;
  }
}
.nav-pills > li {
  float: left;
}
.nav-pills > li > a {
  border-radius: 0;
}
.nav-pills > li + li {
  margin-left: 2px;
}
.nav-pills > li.active > a,
.nav-pills > li.active > a:hover,
.nav-pills > li.active > a:focus {
  color: #ffffff;
  background-color: #38a7bb;
}
.nav-stacked > li {
  float: none;
}
.nav-stacked > li + li {
  margin-top: 2px;
  margin-left: 0;
}
.nav-justified {
  width: 100%;
  border-bottom: solid 1px #38a7bb;
}
.nav-justified > li {
  float: none;
}
.nav-justified > li > a {
  text-align: center;
  /*margin-bottom: 5px;*/
}
.nav-justified > .dropdown .dropdown-menu {
  top: auto;
  left: auto;
}
.nav-tabs-justified {
  border-bottom: 0;
}
.nav-tabs-justified > li > a {
  margin-right: 0;
  border-radius: 0;
}
.nav-tabs-justified > .active > a,
.nav-tabs-justified > .active > a:hover,
.nav-tabs-justified > .active > a:focus {
  border: 1px solid #38a7bb;
}
@media (min-width: 768px) {
  .nav-tabs-justified > li > a {
    border-bottom: 1px solid #38a7bb;
    border-radius: 0 0 0 0;
  }
  .nav-tabs-justified > .active > a,
  .nav-tabs-justified > .active > a:hover,
  .nav-tabs-justified > .active > a:focus {
    border-bottom-color: #ffffff;
  }
}
.tab-content {
  padding: 15px;
  border: solid 1px #ddd;
  border-top: none;
}
/* navbar */
.navbar {
  position: relative;
  min-height: 62px;
  margin-bottom: 0;
  border-bottom: 1px solid transparent;
}
@media (min-width: 768px) {
  .navbar {
    border-radius: 0px;
  }
}
@media (min-width: 768px) {
  .navbar-header {
    float: left;
  }
}
.navbar-collapse {
  overflow-x: visible;
  padding-right: 15px;
  padding-left: 15px;
}
.navbar-collapse.in {
  overflow-y: auto;
}
@media (min-width: 768px) {
  .navbar-collapse {
    width: auto;
    border-top: 0;
    box-shadow: none;
  }
  .navbar-collapse.collapse {
    display: block !important;
    height: auto !important;
    padding-bottom: 0;
    overflow: visible !important;
  }
  .navbar-collapse.in {
    overflow-y: visible;
  }
  .navbar-fixed-top .navbar-collapse,
  .navbar-static-top .navbar-collapse,
  .navbar-fixed-bottom .navbar-collapse {
    padding-left: 0;
    padding-right: 0;
  }
}
.navbar-fixed-top .navbar-collapse,
.navbar-affixed-top .navbar-collapse,
.navbar-fixed-bottom .navbar-collapse {
  max-height: 340px;
}
@media (max-width: 480px) and (orientation: landscape) {
  .navbar-fixed-top .navbar-collapse,
  .navbar-affixed-top .navbar-collapse,
  .navbar-fixed-bottom .navbar-collapse {
    max-height: 200px;
  }
}
.container > .navbar-header,
.container-fluid > .navbar-header,
.container > .navbar-collapse,
.container-fluid > .navbar-collapse {
  margin-right: -15px;
  margin-left: -15px;
}
@media (min-width: 768px) {
  .container > .navbar-header,
  .container-fluid > .navbar-header,
  .container > .navbar-collapse,
  .container-fluid > .navbar-collapse {
    margin-right: 0;
    margin-left: 0;
  }
}
.navbar-static-top {
  z-index: 1000;
  border-width: 0 0 1px;
}
@media (min-width: 768px) {
  .navbar-static-top {
    border-radius: 0;
  }
}
.navbar-fixed-top,
.navbar-fixed-bottom {
  position: fixed;
  right: 0;
  left: 0;
  z-index: 1030;
  -webkit-transform: translate3d(0, 0, 0);
  transform: translate3d(0, 0, 0);
}
@media (min-width: 768px) {
  .navbar-fixed-top,
  .navbar-fixed-bottom {
    border-radius: 0;
  }
}
.navbar-fixed-top {
  top: 0;
  border-width: 0 0 1px;
}
.navbar-fixed-bottom {
  bottom: 0;
  margin-bottom: 0;
  border-width: 1px 0 0;
}
.navbar-brand {
  float: left;
  padding: 10px 15px;
  font-size: 18px;
  line-height: 20px;
  height: 62px;
}
.navbar-brand:hover,
.navbar-brand:focus {
  text-decoration: none;
}
@media (min-width: 768px) {
  .navbar > .container .navbar-brand,
  .navbar > .container-fluid .navbar-brand {
    margin-left: -15px;
  }
}
.navbar-toggle {
  position: relative;
  float: right;
  margin-right: 15px;
  padding: 9px 10px;
  margin-top: 14px;
  margin-bottom: 14px;
  background-color: transparent;
  background-image: none;
  border: 1px solid transparent;
  border-radius: 0;
}
.navbar-toggle:focus {
  outline: 0;
}
.navbar-nav {
  margin: 10.5px -15px;
}
.navbar-nav > li > a {
  padding-top: 10px;
  padding-bottom: 10px;
  line-height: 20px;
}
@media (max-width: 767px) {
  .navbar-nav .open .dropdown-menu > li > a,
  .navbar-nav .open .dropdown-menu .dropdown-header {
    padding: 5px 15px 5px 25px;
  }
  .navbar-nav .open .dropdown-menu > li > a {
    line-height: 20px;
  }
  .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-nav .open .dropdown-menu > li > a:focus {
    background-image: none;
  }
}
@media (min-width: 768px) {
  .navbar-nav {
    float: left;
    margin: 0;
  }
  .navbar-nav > li {
    float: left;
  }
  .navbar-nav > li > a {
    padding-top: 21px;
    padding-bottom: 21px;
  }
  .navbar-nav.navbar-right:last-child {
    margin-right: -15px;
  }
}
@media (min-width: 768px) {
  .navbar-left {
    float: left !important;
  }
  .navbar-right {
    float: right !important;
  }
}
.navbar-form {
  margin-left: -15px;
  margin-right: -15px;
  padding: 10px 15px;
  border-top: 1px solid transparent;
  border-bottom: 1px solid transparent;
  -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 0 rgba(255, 255, 255, 0.1);
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 0 rgba(255, 255, 255, 0.1);
  margin-top: 14px;
  margin-bottom: 14px;
}
@media (max-width: 767px) {
  .navbar-form .form-group {
    margin-bottom: 5px;
  }
}
@media (min-width: 768px) {
  .navbar-form {
    width: auto;
    border: 0;
    margin-left: 0;
    margin-right: 0;
    padding-top: 0;
    padding-bottom: 0;
    -webkit-box-shadow: none;
    box-shadow: none;
  }
  .navbar-form.navbar-right:last-child {
    margin-right: -15px;
  }
}
.navbar-nav > li > .dropdown-menu {
  margin-top: 0;
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}
.navbar-fixed-bottom .navbar-nav > li > .dropdown-menu {
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.navbar-btn {
  margin-top: 14px;
  margin-bottom: 14px;
}
.navbar-btn.btn-sm {
  margin-top: 16px;
  margin-bottom: 16px;
}
.navbar-btn.btn-xs {
  margin-top: 20px;
  margin-bottom: 20px;
}
.navbar-text {
  margin-top: 21px;
  margin-bottom: 21px;
}
@media (min-width: 768px) {
  .navbar-text {
    float: left;
    margin-left: 15px;
    margin-right: 15px;
  }
  .navbar-text.navbar-right:last-child {
    margin-right: 0;
  }
}
.navbar-default {
  background-color: #ffffff;
  border-color: #cccccc;
  border-bottom: none;
}
.navbar-default .navbar-brand {
  color: #555555;
}
.navbar-default .navbar-brand:hover,
.navbar-default .navbar-brand:focus {
  color: #3b3b3b;
  background-color: transparent;
}
.navbar-default .navbar-text {
  color: #777777;
}
.navbar-default .navbar-nav > li > a {
  color: #555555;
}
.navbar-default .navbar-nav > li > a:hover,
.navbar-default .navbar-nav > li > a:focus {
  color: #555555;
  background-color: #80cbd9;
}
.navbar-default .navbar-nav > .active > a,
.navbar-default .navbar-nav > .active > a:hover,
.navbar-default .navbar-nav > .active > a:focus {
  color: #ffffff;
  background-color: #38a7bb;
}
.navbar-default .navbar-nav > .disabled > a,
.navbar-default .navbar-nav > .disabled > a:hover,
.navbar-default .navbar-nav > .disabled > a:focus {
  color: #cccccc;
  background-color: transparent;
}
.navbar-default .navbar-toggle {
  border-color: #dddddd;
}
.navbar-default .navbar-toggle:hover,
.navbar-default .navbar-toggle:focus {
  background-color: #38a7bb;
}
.navbar-default .navbar-toggle .icon-bar {
  background-color: #888888;
}
.navbar-default .navbar-collapse,
.navbar-default .navbar-form {
  border-color: #cccccc;
}
.navbar-default .navbar-nav > .open > a,
.navbar-default .navbar-nav > .open > a:hover,
.navbar-default .navbar-nav > .open > a:focus {
  background-color: #38a7bb;
  color: #ffffff;
}
@media (max-width: 767px) {
  .navbar-default .navbar-nav .open .dropdown-menu > li > a {
    color: #555555;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > li > a:focus {
    color: #38a7bb;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a,
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a:focus {
    color: #ffffff;
    background-color: #38a7bb;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a,
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:focus {
    color: #cccccc;
    background-color: transparent;
  }
}
.navbar-default .navbar-link {
  color: #555555;
}
.navbar-default .navbar-link:hover {
  color: #555555;
}
.navbar-default .btn-link {
  color: #555555;
}
.navbar-default .btn-link:hover,
.navbar-default .btn-link:focus {
  color: #555555;
}
.navbar-default .btn-link[disabled]:hover,
fieldset[disabled] .navbar-default .btn-link:hover,
.navbar-default .btn-link[disabled]:focus,
fieldset[disabled] .navbar-default .btn-link:focus {
  color: #cccccc;
}
/* scaffolding */
body {
  font-family: "Roboto", Helvetica, Arial, sans-serif;
  font-size: 14px;
  line-height: 1.42857143;
  color: #555555;
}
a {
  color: #38a7bb;
  text-decoration: none;
}
a:hover,
a:focus {
  color: #267280;
  text-decoration: underline;
}
a:focus {
  outline: thin dotted;
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
.img-rounded {
  border-radius: 0;
}
hr {
  margin-top: 20px;
  margin-bottom: 20px;
  border: 0;
  border-top: 1px solid #eeeeee;
}
/* breadcrumbs */
.breadcrumb {
  padding: 20px 0;
  margin-bottom: 20px;
  background-color: transparent;
  border-radius: 0;
  text-align: right;
}
.breadcrumb > li + li:before {
  content: ">\00a0";
  color: #555555;
}
.breadcrumb > .active {
  color: #999999;
}
@media (max-width: 991px) {
  .breadcrumb {
    padding: 20px 0;
    text-align: center;
  }
}
/* dropdowns */
.dropdown-menu {
  z-index: 1000;
  font-size: 14px;
  background-color: #ffffff;
  border: 1px solid #cccccc;
  border: 1px solid rgba(0, 0, 0, 0.15);
  border-radius: 0;
  -webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
  box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
}
.dropdown-menu.pull-right {
  right: 0;
  left: auto;
}
.dropdown-menu .divider {
  height: 1px;
  margin: 9px 0;
  overflow: hidden;
  background-color: #e5e5e5;
}
.dropdown-menu > li > a {
  padding: 5px 20px;
  line-height: 1.42857143;
  color: #333333;
  white-space: nowrap;
}
/* labels */
.label {
  font-family: "Roboto", Helvetica, Arial, sans-serif;
  font-weight: normal;
  text-transform: uppercase;
  letter-spacing: 0.08em;
}
/* forms.less */
label {
  font-weight: normal;
}
.form-control {
  -webkit-box-shadow: none;
  box-shadow: none;
  border-radius: 0;
}
.form-control:focus {
  border-color: #38a7bb;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(56, 167, 187, 0.6);
  box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(56, 167, 187, 0.6);
}
.form-group {
  margin-bottom: 20px;
}
/* pager*/
.pager {
  margin: 20px 0;
  border-top: solid 1px #eeeeee;
  padding-top: 20px;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  font-family: "Roboto", Helvetica, Arial, sans-serif;
}
.pager li {
  display: inline;
}
.pager li > a,
.pager li > span {
  background-color: #ffffff;
  border: 1px solid #38a7bb;
  border-radius: 0;
}
.pager li > a:hover,
.pager li > a:focus {
  text-decoration: none;
  color: #fff;
  background-color: #38a7bb;
}
.pager .disabled > a,
.pager .disabled > a:hover,
.pager .disabled > a:focus,
.pager .disabled > span {
  color: #999999;
  background-color: #ffffff;
  border-color: #ddd;
}
/* pagination */
.pagination {
  margin: 20px 0;
  font-family: "Roboto", Helvetica, Arial, sans-serif;
  border-radius: 0;
}
.pagination > li > a,
.pagination > li > span {
  padding: 6px 12px;
  line-height: 1.42857143;
  text-decoration: none;
  color: #38a7bb;
  background-color: #ffffff;
  border: 1px solid #dddddd;
}
.pagination > li > a:hover,
.pagination > li > span:hover,
.pagination > li > a:focus,
.pagination > li > span:focus {
  color: #38a7bb;
  background-color: #a7dbe5;
  border-color: #dddddd;
}
.pagination > .active > a,
.pagination > .active > span,
.pagination > .active > a:hover,
.pagination > .active > span:hover,
.pagination > .active > a:focus,
.pagination > .active > span:focus {
  z-index: 2;
  color: #ffffff;
  background-color: #38a7bb;
  border-color: #38a7bb;
}
.pagination > .disabled > span,
.pagination > .disabled > span:hover,
.pagination > .disabled > span:focus,
.pagination > .disabled > a,
.pagination > .disabled > a:hover,
.pagination > .disabled > a:focus {
  color: #999999;
  background-color: #ffffff;
  border-color: #dddddd;
}
/* responsive utilities */
@media (max-width: 767px) {
  .text-center-xs {
    text-align: center !important;
  }
  .text-center-xs img {
    display: block;
    margin-left: auto;
    margin-right: auto;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .text-center-sm {
    text-align: center !important;
  }
  .text-center-sm img {
    display: block;
    margin-left: auto;
    margin-right: auto;
  }
}
/* type */
h1,
h2,
h3,
h4,
h5,
h6,
.h1,
.h2,
.h3,
.h4,
.h5,
.h6 {
  font-family: "Roboto", Helvetica, Arial, sans-serif;
  font-weight: 900;
  line-height: 1.1;
  color: #333333;
}
h1,
.h1,
h2,
.h2,
h3,
.h3 {
  margin-top: 20px;
  margin-bottom: 20px;
}
p {
  margin: 0 0 10px;
}
.lead {
  margin-bottom: 20px;
  font-size: 18px;
}
@media (min-width: 768px) {
  .lead {
    font-size: 21px;
  }
}
.text-small {
  font-size: 12px;
}
.text-large {
  font-size: 18px;
}
.text-italic {
  font-style: italic;
}
.text-primary {
  color: #38a7bb;
}
a.text-primary:hover {
  color: #2c8494;
}
.bg-primary {
  color: #fff;
  background-color: #38a7bb;
}
a.bg-primary:hover {
  background-color: #2c8494;
}
abbr[title],
abbr[data-original-title] {
  border-bottom: 1px dotted #999999;
}
blockquote {
  padding: 10px 20px;
  margin: 0 0 20px;
  font-size: 14px;
  border-left: 5px solid #38a7bb;
}
blockquote footer,
blockquote small,
blockquote .small {
  display: block;
  font-size: 80%;
  line-height: 1.42857143;
  color: #999999;
}
blockquote footer:before,
blockquote small:before,
blockquote .small:before {
  content: '\2014 \00A0';
}
.blockquote-reverse,
blockquote.pull-right {
  border-right: 5px solid #38a7bb;
}
address {
  margin-bottom: 20px;
  line-height: 1.42857143;
}
.panel {
  margin-bottom: 20px;
  background-color: #ffffff;
  border: 1px solid transparent;
  border-radius: 0;
  -webkit-box-shadow: 0 0 0;
  box-shadow: 0 0 0;
}
.panel-heading {
  border-top-right-radius: 0;
  border-top-left-radius: 0;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  padding: 15px 15px;
}
.progress {
  overflow: hidden;
  height: 20px;
  margin-bottom: 20px;
  background-color: #f5f5f5;
  border-radius: 0;
  -webkit-box-shadow: none;
  box-shadow: none;
}
.panel-group {
  margin-bottom: 20px;
}
.panel-group .panel {
  margin-bottom: 0;
  border-radius: 0;
  overflow: hidden;
}
.panel-group .panel + .panel {
  margin-top: 5px;
}
.panel-group.accordion .panel {
  border-color: #ccc;
}
.panel-primary {
  border-color: #38a7bb;
}
.panel-primary > .panel-heading {
  color: #ffffff;
  background-color: #38a7bb;
  border-color: #38a7bb;
}
.panel-primary > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #38a7bb;
}
.panel-primary > .panel-heading .badge {
  color: #38a7bb;
  background-color: #ffffff;
}
.panel-primary > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #38a7bb;
}
.panel-primary .panel-title {
  font-weight: 300;
}
.panel-primary .panel-title a:hover {
  color: #fff;
  text-decoration: none;
}
a.badge:hover,
a.badge:focus {
  color: #ffffff;
  text-decoration: none;
  cursor: pointer;
}
a.list-group-item.active > .badge,
.nav-pills > .active > a > .badge {
  color: #38a7bb;
  background-color: #ffffff;
}
.nav-pills > li > a > .badge {
  margin-left: 3px;
}
.progress-bar-primary {
  background-color: #38a7bb;
}
.progress-striped .progress-bar-primary {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
/*!
 * Yamm!3 - Yet another megamenu for Bootstrap 3
 * http://geedmo.github.com/yamm3
 * 
 * @geedmo - Licensed under the MIT license
 */
.yamm .nav,
.yamm .collapse,
.yamm .dropup.use-yamm,
.yamm .dropdown.use-yamm {
  position: static;
}
.yamm .container {
  position: relative;
}
.yamm .dropdown-menu {
  left: auto;
}
.yamm .nav.navbar-right .dropdown-menu {
  left: auto;
  right: 0;
}
.yamm .yamm-content {
  padding: 20px 30px;
}
.yamm .dropdown.yamm-fw .dropdown-menu {
  left: 15px;
  right: 15px;
}

</style>
   
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,500,700,800' rel='stylesheet' type='text/css'>

    <!-- Bootstrap and Font Awesome css -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">



    <!-- Responsivity for older IE -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

    <!-- Favicon and apple touch icons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="img/apple-touch-icon.png" />
    <link rel="apple-touch-icon" sizes="57x57" href="img/apple-touch-icon-57x57.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="76x76" href="img/apple-touch-icon-76x76.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png" />
    <link rel="apple-touch-icon" sizes="120x120" href="img/apple-touch-icon-120x120.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="img/apple-touch-icon-144x144.png" />
    <link rel="apple-touch-icon" sizes="152x152" href="img/apple-touch-icon-152x152.png" />
</head>

<body>
<%@ include file="nav.jsp"%>

    <div id="all">
        <header>
        
<div id="content">
            <div class="container">
<center>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10 clearfix" id="checkout">

                        <div class="box">
                            <form method="post" action="shop-checkout4.html">
                                <ul class="nav nav-pills nav-justified">
                                    <li><a href="shop-checkout1.html"><i class="fa fa-map-marker"></i><br>Billing Adress</a></li>
                                    <li class="active"><a href="#"><i class="fa fa-money"></i><br>Conform Your Order</a></li>
                                    <li class="disabled"><a href="shop-checkout4.html"><i class="fa fa-eye"></i><br>Shipment Address</a></li>
                                </ul>

                                <div class="content">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="box payment-method">

                                                <h4>Billing Adress</h4>
		                                        <p>Email:${billingAddress.getEmail()} .</p>
                                                <p>Phone:${billingAddress.getMono()} .</p>
                                                <p>City:${billingAddress.getCity()} .</p>
                                                <p>Country:${billingAddress.getCountry()} .</p>
                                                <p>House Number:${billingAddress.getHouseno()} .</p>
                                                <p>Pin Code :${billingAddress.getPincode()}</p>
                                                 <br>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="box payment-method">

                                                <h4>Shipment Addres</h4>
                                                <p>Name:${shippingAddress.getFirstname()}  ${shippingAddress.getLastname()}.</p>
                                                <p>Email:${shippingAddress.getEmail()} .</p>
                                                <p>Phone:${shippingAddress.getMono()} .</p>
                                                <p>City:${shippingAddress.getCity()} .</p>
                                                <p>Country:${shippingAddress.getCountry()} .</p>
                                                <p>House Number:${shippingAddress.getHouseno()} .</p>
                                                <p>Pin Code :${shippingAddress.getPincode()}</p>
                                                
                                            
                                            </div>
                                        </div>

                                        
                                        </div>
                                    </div>
									
                                    <!-- /.row -->
									<div class="content">
									<div class="row">
									<div class="col-sm-12">
									<table class="table table-bordered">
    <thead>
      <tr>
      <th>Product Image</th>
        <th>Product Name</th>
        <th>Description</th>
        <th>Category Name</th>
        <th>Seller Name</th>
        <th>Price</th>
      </tr>
    </thead>
    <tbody>
    <c:choose>
    <c:when test="${not empty product}">
      <tr>
        <td><img src=""></td>
        <td>${product.getName()}</td>
        <td>${product.getDes()}</td>
        <td>${product.getCategory().getName()}</td>
        <td>${product.getSeller().getName()}</td>
        <td>${product.getPrice()}</td>
      </tr>
      </c:when>
    <c:otherwise>
     <c:forEach items="cartItems" var="c1">
      <tr>
        <td><img src=""></td>
        <td>${c1.getProduct().getName()}</td>
        <td>${c1.getproduct.getDes()}</td>
        <td>${c1.getproduct.getCategory().getName()}</td>
        <td>${c1.getproduct.getSeller().getName()}</td>
        <td>${c1.getproduct.getPrice()}</td>
      </tr>
      </c:forEach>
    </c:otherwise>
</c:choose>
  </tbody>
 </table>
     <p calss="pull-left">Total price=Rs${p}</p>
			<h2> Order will Be deliverde to You with in 7 disness days</h2>						
			</div>
									</div>
									</div>
                                <div class="box-footer">
                                         <div class="pull-left">
                                        <a href="<c:url value="/previous"/>" class="btn btn-default"><i class="fa fa-chevron-left"></i>previous</a>
                                        </div>
                                         <div class="pull-right">
                                        <a href="<c:url value="/pay"/>"  class="btn btn-template-main">Pay<i class="fa fa-chevron-right"></i></a>
                                        </button>
                                        </div>
                                     </div>
                                </div>
                                <!-- /.content -->
                                
                                

    </div>

    



</body>

</html>