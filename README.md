# Syslog helper image

Логирование во внешний контейнер.

## Настройка

1. Параметры `docker-compose.yml`

```yml
php:
  image: php
  volumes_from:
    - syslog

syslog:
  image: atnartur/syslog
```

2. Для подключения логирования в syslog в контейнере PHP нужно выполнить:
`ln -sf /var/run/rsyslog/dev/log /dev/log`
3. Контейнер PHP должен логировать в LOCAL1

_(Источник)[https://github.com/jpetazzo/syslogdocker/issues/4#issue-95955147]_

Формат логирования в syslog меняется в `rsyslog.conf`