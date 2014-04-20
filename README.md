#DentooAccreditation

電通大編入生の単位認定書類作成を楽にするためのアプリケーション

```
ruby DentooAccreditation.rb edit --course 入学する学科 --name 名前 --examinees 受験番号 --student_id 学籍番号 --graduated_school_name 出身高専 --graduated_school_course 高専時代の学科 --entrance_year 高専入学年度 --graduated_year 高専卒業年度
```

のように実行すると全てのシートにそれらの情報が記載されるため，ちまちま入力する必要がなくる．
また全ての引数は入力する必要はなく

```
ruby DentooAccreditation.rb edit --course 入学する学科 --graduated_school_name 出身高専
```

のようにすると，入学する学科と出身高専だけが記入される．引数の順番は特に関係がないので

```
ruby DentooAccreditation.rb edit  --graduated_school_name 出身高専 --course 入学する学科
```

としても同じ結果が出力される．
