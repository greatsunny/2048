<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
<head>
  <meta charset="utf-8"></meta>
  <title>Play 2048!</title>

  <link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css"></link>
  <link href="/css/bootstrap-overwrite.css" rel="stylesheet" type="text/css"></link>
  <link href="/css/main.css" rel="stylesheet" type="text/css"></link>
  <link href="/css/game.css" rel="stylesheet" type="text/css"></link>
  <link rel="shortcut icon" href="favicon.ico"></link>
  <link rel="apple-touch-icon" href="meta/apple-touch-icon.png"></link>
  <link rel="apple-touch-startup-image" href="meta/apple-touch-startup-image-640x1096.png" media="(device-width: 320px) and (device-height: 568px) and (-webkit-device-pixel-ratio: 2)"></link> <!-- iPhone 5+ -->
  <link rel="apple-touch-startup-image" href="meta/apple-touch-startup-image-640x920.png"  media="(device-width: 320px) and (device-height: 480px) and (-webkit-device-pixel-ratio: 2)"></link> <!-- iPhone, retina -->
  <meta name="apple-mobile-web-app-capable" content="yes"></meta>
  <meta name="apple-mobile-web-app-status-bar-style" content="black"></meta>

  <meta name="HandheldFriendly" content="True"></meta>
  <meta name="MobileOptimized" content="320"></meta>
  <meta name="viewport" content="width=device-width, target-densitydpi=160dpi, initial-scale=1.0, maximum-scale=1, user-scalable=no, minimal-ui"></meta>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
      <p class="navbar-text">
        <span class="navbar-left" th:text="'Hello! ' + ${username}">Hello! Anonymous</span><span class="pull-right"><a href="#" class="navbar-link">High-scores Center</a></span>
      </p>
		</div>
	</nav>
  <div class="container my-container">
    <div class="heading">
      <h1 class="title">2048</h1>
      <div class="scores-container">
        <div class="score-container">0</div>
        <div class="best-container">0</div>
      </div>
    </div>

    <div class="above-game">
      <p class="game-intro">Join the numbers and get to the <strong>2048 tile!</strong></p>
      <a class="restart-button">New Game</a>
    </div>

    <div class="game-container">
      <div class="game-message">
        <p></p>
        <div class="lower">
	        <a class="keep-playing-button">Keep going</a>
          <a class="retry-button">Try again</a>
        </div>
      </div>

      <div class="grid-container">
        <div class="grid-row">
          <div class="grid-cell"></div>
          <div class="grid-cell"></div>
          <div class="grid-cell"></div>
          <div class="grid-cell"></div>
        </div>
        <div class="grid-row">
          <div class="grid-cell"></div>
          <div class="grid-cell"></div>
          <div class="grid-cell"></div>
          <div class="grid-cell"></div>
        </div>
        <div class="grid-row">
          <div class="grid-cell"></div>
          <div class="grid-cell"></div>
          <div class="grid-cell"></div>
          <div class="grid-cell"></div>
        </div>
        <div class="grid-row">
          <div class="grid-cell"></div>
          <div class="grid-cell"></div>
          <div class="grid-cell"></div>
          <div class="grid-cell"></div>
        </div>
      </div>

      <div class="tile-container">

      </div>
    </div>

    <p class="game-explanation">
      <strong class="important">How to play:</strong> Use your <strong>arrow keys</strong> to move the tiles. When two tiles with the same number touch, they <strong>merge into one!</strong>
    </p>
    <hr></hr>
  </div>

  <script src="/js/jquery.min.js"></script>
  <script src="/js/bootstrap.min.js"></script>
  <script src="/js/bind_polyfill.js"></script>
  <script src="/js/classlist_polyfill.js"></script>
  <script src="/js/animframe_polyfill.js"></script>
  <script src="/js/keyboard_input_manager.js"></script>
  <script src="/js/html_actuator.js"></script>
  <script src="/js/grid.js"></script>
  <script src="/js/tile.js"></script>
  <script src="/js/local_storage_manager.js"></script>
  <script src="/js/game_manager.js"></script>
  <script src="/js/application.js"></script>
</body>
</html>