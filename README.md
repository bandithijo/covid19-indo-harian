# COVID-19 INDONESIA HARIAN (Studi Kasus: KemKes)

Ruby on Rails app. untuk pencatatan data dan disajikan dalam bentuk tabel perhari, berkenaan tentang "**Situasi COVID-19**" pada website [KemKes](https://kemkes.go.id/).

Data-data kasus perhari yang ditampilkan pada aplikasi ini adalah data-data yang dicatat dari situs resmi Kementrian Kesehatan Republik Indonesia yang dilakukan secara otomatis oleh *script* yang bertugas melakukan *scraping* setiap hari pada pukul 17.00 WITA.

Proyek ini adalah kelanjutan dari proyek sebelumnya yang hanya berupa Ruby *script*, [bandithijo/ruby-web-scraper-kemkes](https://github.com/bandithijo/ruby-web-scraper-kemkes).

## Prerequisite

| <center>No.</center> | <center>Gem</center> | <center>Version</center> |
| :--: | :--- | :--: |
| 1 | [**Ruby**](https://www.ruby-lang.org/en/) | `2.6.6` |
| 1 | [**Ruby on Rails**](https://rubyonrails.org/) | `5.2.4` |
| 2 | [**PostgreSQL**](https://www.postgresql.org/) | `12.3` |
| 3 | [**HTTParty**](https://rubygems.org/gems/httparty) | `0.18.1` |
| 4 | [**Nokogiri**](https://rubygems.org/gems/nokogiri) | `1.10.9` |
| 5 | [**Whenever**](https://rubygems/gems/whenever) | `1.0` |

## Menjalankan Script

```shell
$ rails scraper:run
```

## Menjalankan Commit untuk Seed

```shell
$ rails scraper:seed:commit
```

## Mereset Data Tabel

```shell
$ rails db:reset
```

## Automatic Scraping

Saya menambahkan fungsi penjadwalan proses *scraping* dengan bantuan **whenever** gem.

Untuk mengaktifkan dan membuatnya berjalan pada saat sistem dinyalakan.

Aktifkan **cronie** service.

```shell
$ sudo systemctl enable --now cronie.service
```

Lalu, daftarkan penjadwalan ke **crontab**.

```shell
$ whenever --update-crontab
```

Secara *default* saya menjadwalkan *script* ini akan melakukan *scraping* setiap hari pada jam 05.00 PM.

Hal-hal yang perlu dipastikan akan proses automatisasi berjalan dengan baik.

1. PostgreSQL service sudah berjalan
2. Cronie service sudah berjalan

## Demo

[https://covid19-indo-harian.herokuapp.com/](https://covid19-indo-harian.herokuapp.com/)

![gambar_1](https://i.postimg.cc/s2nKc9WK/Firefox-Screenshot-2020-07-04-T00-35-25-745-Z.png)
