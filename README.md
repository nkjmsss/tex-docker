# Tex + Docker in VSCode

Tex 環境をローカルに構築することなく、ローカルで書けるようにするテンプレートです。

論文では句読点を「，．」とすることが好まれますが、通常の日本語では「、。」を使いますし、視認性も高いので以下のようにしてコンパイル時に変換させています。私はソースコードを変更したくないのでDockerで頑張っていますが、ソースコードを変更していいならRemoteContainerで構成するといいかもしれません。素直にそっちにすると、 `latexindent` 等が使えます。

```perl
$latex = "find . -type f -name '*.tex' -print0 | xargs -0 sed -i '' -e 's/、/，/g' -e 's/。/．/g'; uplatex";
```

## Requirements

- Docker
- VSCode
