#!/usr/bin/env perl
my $file = shift(@ARGV); # 記憶するファイル名を指定
open(FILE, $file) or die "$!\n"; # ファイルを開く
while(<FILE>) { # ファイルを1行づつ処理する
        chomp; # 行末の改行文字を取り除く
        my($value,$id) = split(/\t/); # タブでファイルを切って、第1カラムを$value、第2カラムを$idに代入
        $valueof{$id} = $value; # ハッシュで記憶させる
}
close FILE; # ファイルを閉じる

while(<STDIN>) { # 標準入力から1行づつ処理する
        chomp;
        my($id) = split(/\t/); # タブでファイルを切って、第1カラムに代入
        print "$valueof{$id}\t$_\n"; # $idをキーに上で記憶したデータを引き出して同時に表示
}
