このドキュメントについて
====================================

このドキュメントでは `Spring <https://spring.io/>`_ を活用してアプリケーションを構築する際に必要となるノウハウを提供します。

特に、アプリケーションを開発する際に公式ドキュメントやWeb上から実装方法を見つけることが難しく、躓きやすい点についての情報を中心に提供します。

.. _target-user:

対象読者
------------------------------------

このドキュメントは、ソフトウェア開発経験のあるアーキテクトやプログラマ向けに書かれています。

特に、Springについて、次のような知識・能力を持っていることを前提としています。

* 共通

  * `Spring Boot <https://projects.spring.io/spring-boot/>`_ を利用して開発したことがあり、基本的な仕組みについて理解している。
  * `Spring Framework <https://projects.spring.io/spring-framework/>`_ を利用したアプリケーションの基本的なアーキテクチャについて理解している。
  * `Springの公式ドキュメント <https://spring.io/docs>`_ から適切な情報を検索できる。
  * その他、次にあげるような技術要素について、基本的な知識を持っている。

    * SQL
    * Maven

* Web/API

  * :spring-doc:`Spring Web MVC <spring-framework-reference/web.html>` の基本的な用語を理解している
  * Spring Web MVCの各ステレオタイプの役割を理解している
  * Spring Web MVCの処理フローを理解している

* バッチ

  * `Spring Batch <https://spring.io/projects/spring-batch>`_ の基本的な用語を理解している
  * Spring Batchの各ステレオタイプの役割を理解している
  * Spring Batchの処理フローを理解している

これからSpringを初めて利用するという人は、次のような書籍やサイトを活用して学習してください。

* `Getting Started · Building an Application with Spring Boot <https://spring.io/guides/gs/spring-boot/>`_
* `はじめての Spring Boot[改訂版] <https://www.kohgakusha.co.jp/books/detail/978-4-7775-1969-9>`_
* `Spring徹底入門 Spring FrameworkによるJavaアプリケーション開発（株式会社NTTデータ）｜翔泳社の本 <http://www.shoeisha.co.jp/book/detail/9784798142470>`_


このドキュメントの使い方
------------------------------------

.. image:: images/how-to-use-this-document.png
   :width: 70%

基本的な実装方法については、Springの公式ドキュメントを参照してください。

また、実装を進める中でSpringを利用したアプリケーションのアーキテクチャについてより深く理解する必要が出た場合は、まず `Macchinetta Framework <https://macchinetta.github.io>`_ を参照することをおすすめします。
ただし、このドキュメントとMacchinettaでは、利用しているSpring Frameworkのバージョンが異なり、設定の記載方法も異なるため、具体的な実装例や設定例はそのままでは利用できないと考えてください。

* :macchinetta-server-guideline-thymeleaf-doc:`Macchinetta Server Framework Development Guideline <>`
* :macchinetta-cloud-guideline-doc:`Macchinetta Server Framework Cloud Extension Development Guideline <>`
* :macchinetta-batch-guideline-doc:`Macchinetta Batch Framework Development Guideline <>`

.. list-table:: Macchinettaとの主な相違点
   :widths: 25 20 35 20
   :header-rows: 1
   :stub-columns: 1

   * -
     - Spring
     - Spring Boot
     - 設定方法
   * - このドキュメント
     - 5.x
     - 2.x
     - JavaConfig
   * - Macchinetta Framework
     - 4.x
     - 1.x （Cloud Extensionのみ）
     - XML

.. _test-environment-and-dependencies:

動作確認環境と依存ライブラリについて
------------------------------------

このドキュメントに含まれるサンプルコードは、 :sample-app:`サンプルアプリケーション <>` を利用して以下の実行環境でテストしています。

.. list-table:: 実行環境

   * - OS
     - CentOS 7 64bit
   * - Docker
     - 18.03.1-ce
   * - Container
     - jenkins/jenkins:2.107.3
   * - JDK
     - OpenJDK 8

また、明示的に依存しているのは以下のライブラリです。

Spring Boot
  Spring Bootから参照されるライブラリのバージョンは、 :spring-boot-doc:`Appendix F. Dependency versions <reference/html/appendix-dependency-versions.html>` を参照してください。

  .. literalinclude:: ../../samples/pom.xml
     :language: xml
     :start-after: spring-boot-version-start
     :end-before: spring-boot-version-end
     :dedent: 6

その他のライブラリ
  以下のライブラリをすべてのサンプルで利用しているわけではありません。サンプルごとに利用しているライブラリは、サンプルのpom.xmlで確認してください。

  .. literalinclude:: ../../samples/pom.xml
     :language: xml
     :start-after: other-versions-start
     :end-before: other-versions-end
     :dedent: 6

これらの実行環境・ライブラリのバージョンアップには可能な限り追随し、テストが失敗する場合にはドキュメント含めて修正する予定です。
