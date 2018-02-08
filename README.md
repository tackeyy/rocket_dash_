# README

## Project initiation

- Ruby version

Check ` .ruby-version ` .

If you have not suitable ruby version, run below commands.

```bash
# macOS
$ brew upgrade ruby-build
$ rbenv install | cat .ruby-version
```

- リポジトリのクローン

```bash
$ git git@github.com:kajitz/rocket_dash.git
```

- セットアップ

```bash
$ bin/setup
```

- Seedデータ

```bash
$ bundle exec rake db:seed_fu
```
