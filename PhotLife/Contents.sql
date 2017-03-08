drop table Contents;
create table Contents(
    Id                  integer primary key,
    ItemId              text unique not null,
    FileExtension       text not null,
    Content             blob
);
-- http://f.hatena.ne.jp/atom/edit/XXXXXXXXXXXXXX
-- http://f.hatena.ne.jp/{HatenaId}/XXXXXXXXXXXXXX
-- generator アップロードツール名
-- アップロード先ディレクトリ名　<dc:subject xmlns:dc="http://purl.org/dc/elements/1.1/">YYYYYY</dc:subjetct>
-- <id>tag:hatena.ne.jp,2005:fotolife-naoya-XXXXXXXXXXXXXX</id>
-- <hatena:imageurl>http://f.hatena.ne.jp/images/fotolife/n/naoya/XXXXXXXX/XXXXXXXXXXXXXX.jpg</hatena:imageurl>
-- <hatena:imageurlsmall>http://f.hatena.ne.jp/images/fotolife/n/naoya/XXXXXXXX/XXXXXXXXXXXXXX_m.gif</hatena:imageurlsmall>
-- <hatena:syntax>f:id:naoya:XXXXXXXXXXXXXX:image</hatena:syntax>
-- ContentTypeは`image/gif`のようにするか、`gif`のようにするか。後者のほうがデータ量が少なくていい。`jpg`,`jpeg`,`JPEG`などは同一だがどうするか。マスターテーブルを作るか。URLを作成できるものにすべきなので、RSSのURLから取得できた拡張子をそのまま入れるべき。ならば型はtextが望ましい。おそらく`gif`,`png`,`jpg`の3値しかないと思うが。
-- Urlを保存すれば、拡張子ContentTypeは不要。ItemIdも不要。
-- http://www.gesource.jp/programming/python/code/0010.html
-- import os.path
-- root, ext = os.path.splitext('http://www.example.com/foo/bat/test.txt')

