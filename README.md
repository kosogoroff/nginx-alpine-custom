Репозиторий с файлами для создания кастомного образа Docker


Команды для скачивания и сборки образа:

```
git clone https://github.com/kosogoroff/nginx-alpine-custom.git
cd nginx-alpine-custom
docker run -d -p 8081:80 --name test-nginx my-nginx-alpine:1.0
```

Команды для проверки:

```
docker ps
curl http://localhost:8081
```

Ожидается вывод кастомной WEB-страницы.

Репозиторий создан командами:
```
[admin_insta11@mv334 nginx-alpine-custom]$ git init
hint: Using 'master' as the name for the initial branch. This default branch name
hint: will change to "main" in Git 3.0. To configure the initial branch name
hint: to use in all of your new repositories, which will suppress this warning,
hint: call:
hint:
hint: 	git config --global init.defaultBranch <name>
hint:
hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
hint: 'development'. The just-created branch can be renamed via this command:
hint:
hint: 	git branch -m <name>
hint:
hint: Disable this message with "git config set advice.defaultBranchName false"
Инициализирован пустой репозиторий Git в /home/admin_insta11/nginx-alpine-custom/.git/
[admin_insta11@mv334 nginx-alpine-custom]$ 
[admin_insta11@mv334 nginx-alpine-custom]$ ll
итого 12
-rw-rw-r-- 1 admin_insta11 admin_insta11 139 сен 21 19:16 default.conf
-rw-rw-r-- 1 admin_insta11 admin_insta11 917 сен 21 19:17 Dockerfile
-rw-rw-r-- 1 admin_insta11 admin_insta11 340 сен 22 18:43 index.html
[admin_insta11@mv334 nginx-alpine-custom]$ 
[admin_insta11@mv334 nginx-alpine-custom]$ git add .
[admin_insta11@mv334 nginx-alpine-custom]$ git status
Текущая ветка: master

Еще нет коммитов

Изменения, которые будут включены в коммит:
  (используйте «git rm --cached <файл>...», чтобы убрать из индекса)
	новый файл:    Dockerfile
	новый файл:    default.conf
	новый файл:    index.html

[admin_insta11@mv334 nginx-alpine-custom]$ 
[admin_insta11@mv334 nginx-alpine-custom]$ git commit -m "ДЗ по занятию Docker"
[master (корневой коммит) 8dc0605] ДЗ по занятию Docker
 3 files changed, 43 insertions(+)
 create mode 100644 Dockerfile
 create mode 100644 default.conf
 create mode 100644 index.html
[admin_insta11@mv334 nginx-alpine-custom]$ git branch -M main
[admin_insta11@mv334 nginx-alpine-custom]$ git remote add origin https://github.com/kosogoroff/nginx-alpine-custom.git
[admin_insta11@mv334 nginx-alpine-custom]$ git push -u origin main
Перечисление объектов: 5, готово.
Подсчет объектов: 100% (5/5), готово.
При сжатии изменений используется до 4 потоков
Сжатие объектов: 100% (5/5), готово.
Запись объектов: 100% (5/5), 1.18 KiB | 1.18 MiB/s, готово.
Total 5 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
To https://github.com/kosogoroff/nginx-alpine-custom.git
 * [new branch]      main -> main
branch 'main' set up to track 'origin/main'.
[admin_insta11@mv334 nginx-alpine-custom]$
```
