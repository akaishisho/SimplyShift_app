# シフト管理アプリ  SimplyShift (シフプル)

## サイト概要
シフト管理の効率化のためのアプリケーションになります。
<br>
アプリケーションの機能として、
<br>
バイト・社員側はシフトの作成、編集、提出、確認ができる機能を実装しています。
<br>
また、管理者側はユーザーのシフトの編集、Excel出力機能を実装しています。


### サイトテーマ
***
バイトの方や社員の方のシフトを管理できる業務アプリになります。
<br>
普段アプリケーションを使い慣れていない、またはシフト管理に余計なコストをかけたくない管理者の方に
<br>
シンプルなシフト管理のアプリケーションを提供することをテーマとし、シフプルと名付けました。

### テーマを選んだ理由
***
<div>
  大学生の頃、個人経営の飲食店でバイトをしていた際に、
  <br>
  シフトを紙で提出していましたが、作業がしばしば面倒に思うことがありました。
</div>
<div>
  <br>
  しかし、当時の店長がコンピュータが得意でない、かつコストをかけたくないとのことで、
  <br>
  システムの導入はせずに、紙で管理しているとおっしゃっていました。
  <br>
  そのことを思い出し、小規模な会社や個人経営の飲食店などには、
  <br>
  簡単なシフト管理のアプリケーションは需要があるのではないかと考えました。
</div>
<div>
  <br>
  また、アナログで対応していた作業をデジタル化することで、
  <br>
  微力ながら生産性を上げるための助けになると考えています。
  <br>
  そのため、今回シンプルで使いやすいシフト管理のアプリの作成したいと思い、このテーマにしました。
</div>

### ターゲットユーザ
***
 - 小規模な会社や飲食店で、アプリケーションに使い慣れていない管理者の方。
 - 紙でシフトを提出しているバイトの方や社員の方。


### 主な利用シーン
***
シフトの作成〜Excel出力まで
【管理者側】
- シフトの編集や確認をするとき

【バイト・社員側】
- iOS端末やAndroid端末からシフト作成、編集、提出をするとき

## 設計書

### 画面設計書
***
https://xd.adobe.com/view/792da110-2e06-4cb6-bce7-1dec5bfca640-2c7e/

### ER図
***
https://drive.google.com/file/d/1z8-2TEXCq3_bXnXvlUdciARRXTOtJrgW/view?usp=sharing

### テーブル定義書
***
https://docs.google.com/spreadsheets/d/1cXoSbKeEfg0uXk0tluOemPPjFs9YzwYlFWy3_uFZJOw/edit?usp=sharing

### アプリケーション詳細設計
***
https://docs.google.com/spreadsheets/d/1VAE2sxG9Kkmsz_STIoBVFpAokiiygCazBehqFH_HpBg/edit?usp=sharing

### AWS構成図
***
https://drive.google.com/file/d/1Gtqk1nYv4mfFDUsegME4eRKMydbUP8lU/view?usp=sharing

### AWSインフラ設計書
***
https://docs.google.com/spreadsheets/d/1pWBtztsUmqJHM5uWRpgKTE0oaFHECO98NYG8sWr7ifc/edit?usp=sharing

### テスト仕様書
***
https://docs.google.com/spreadsheets/d/1939aANmQ32pvgILvIXk-RwdNGtG_4vYr/edit?usp=sharing&ouid=103320184222745393953&rtpof=true&sd=true

## チャレンジ要素一覧
https://docs.google.com/spreadsheets/d/1JBQW9hFtIV11smTorqY8t_kg4-LRssP8FrwicvneonY/edit?usp=sharing

## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- IDE：Cloud9