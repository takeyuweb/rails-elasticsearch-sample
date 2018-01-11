# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Document.__elasticsearch__.create_index!
Document.create!(title: 'Ruby', url: 'https://ja.wikipedia.org/?curid=1024', abstract: 'Ruby（ルビー）は、まつもとゆきひろ（通称 Matz）により開発されたオブジェクト指向スクリプト言語であり、スクリプト言語が用いられてきた領域でのオブジェクト指向プログラミングを実現する。 また日本で開発されたプログラミング言語としては初めて国際電気標準会議で国際規格に認証された事例となった[4]。')
Document.create!(title: 'Perl', url: 'https://ja.wikipedia.org/?curid=1063', abstract: "Perl（パール）とは、ラリー・ウォールによって開発されたプログラミング言語である。実用性と多様性を重視しており、C言語やsed、awk、シェルスクリプトなど他のプログラミング言語の優れた機能を取り入れている。ウェブ・アプリケーション、システム管理、テキスト処理などのプログラムを書くのに広く用いられている。\n\n言語処理系としてのperlはフリーソフトウェアである。Artistic LicenseおよびGPLのもとで配布されており、誰でもどちらかのライセンスを選択して利用することができる。UNIXやWindowsなど多くのプラットフォーム上で動作する。")
Document.create!(title: 'Python', url: 'https://ja.wikipedia.org/?curid=993', abstract: 'Python（パイソン）は、汎用のプログラミング言語である。コードがシンプルで扱いやすく設計されており、C言語などに比べて、さまざまなプログラムを分かりやすく、少ないコード行数で書けるといった特徴がある[12][13]。')
