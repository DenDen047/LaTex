# LaTex

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/c9770adc53374442a0e4c85dae15aefe)](https://app.codacy.com/app/DenDen047/LaTex?utm_source=github.com&utm_medium=referral&utm_content=DenDen047/LaTex&utm_campaign=Badge_Grade_Dashboard)

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
