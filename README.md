
# ringostat - R пакет для загрузки данных о звонках из Ringostat API<a href='https://selesnow.github.io/ringostat/'><img src='man/figures/logo.png' align="right" height="138.5" /></a>

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN status](https://www.r-pkg.org/badges/version/ringostat)](https://CRAN.R-project.org/package=ringostat)
<!-- badges: end -->

## Установка

На данный момент возможно загрузка пакета только из GitHub:

``` r
devtools::install_github("selesnow/ringostat")
```

## Описание

Пакет содаржит всего 3 функции:

* `rs_auth()` - Для установки ключа API
* `rs_get_call_data()` - Загрузка данных о звонках из Ringostat
* `rs_download_record()` - Скачать аудио запись звонка

Так же вместо авторизации вы можете сохранить свой API токен в переменную среды `RS_API_KEY`.

## Где найти API ключ

В интерфейсе Ringostat -> Интеграция -> Ringostat API -> Auth-key.

![](http://img.netpeak.ua/alsey/1J8FEV.png)

### Автор пакета
Алексей Селезнёв, Head of analytics dept. at [Netpeak](https://netpeak.net)
<Br>Telegram Channel: @R4marketing
<Br>Youtube Channel: [R4marketing](https://www.youtube.com/R4marketing/?sub_confirmation=1)
<Br>email: selesnow@gmail.com
<Br>Telegram: @AlexeySeleznev
<Br>facebook: [facebook.com/selesnow](https://www.facebook.com/selesnow)
<Br>blog: [alexeyseleznev.wordpress.com](https://alexeyseleznev.wordpress.com/)
