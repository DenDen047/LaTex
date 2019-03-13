# LaTex

## Install
DockerHubからイメージをダウンロードします。
```bash
$ docker pull denden047/latex
```

もしくは、直接環境をbuildします
```bash
$ cd ./docker
$ make build
```

## Usage
`./run.sh <file_path>`で簡単に使える．
対象ファイルと同じ位置に，pdfファイルが出力される．

例を以下に示す．

```bash
$ ./run.sh ~/Documents/report.tex
```


## Examples
`./examples`フォルダは，参考にすると便利なtexファイルを収めている．

* `report_jp.tex` ... 日本語での授業レポート
