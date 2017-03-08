drop table Movies;
create table Movies(
    Id                  integer primary key,
    ItemId              text unique not null,
    Title               text,
    ContentType         text,
    Content             blob,
    Subject             text,
    Url                 text,
    SmallUrl            text,
    Issued              text
);
-- http://f.hatena.ne.jp/atom/edit/XXXXXXXXXXXXXX
-- http://f.hatena.ne.jp/{HatenaId}/XXXXXXXXXXXXXX
-- generator アップロードツール名
-- アップロード先ディレクトリ名　<dc:subject xmlns:dc="http://purl.org/dc/elements/1.1/">YYYYYY</dc:subjetct>
-- <id>tag:hatena.ne.jp,2005:fotolife-naoya-XXXXXXXXXXXXXX</id>
-- <hatena:imageurl>http://f.hatena.ne.jp/images/fotolife/n/naoya/XXXXXXXX/XXXXXXXXXXXXXX.jpg</hatena:imageurl>
-- <hatena:imageurlsmall>http://f.hatena.ne.jp/images/fotolife/n/naoya/XXXXXXXX/XXXXXXXXXXXXXX_m.gif</hatena:imageurlsmall>
-- <hatena:syntax>f:id:naoya:XXXXXXXXXXXXXX:image</hatena:syntax>
