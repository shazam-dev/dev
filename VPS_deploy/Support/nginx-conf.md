Основные команды:
    sudo nginx -t // проверка синтаксиса
    sudo systemctl restart nginx // перезагрузка сервера после внесения изменений

/etc/nginx/sites-available/davse
	server_name example.org www.example.org;

/etc/nginx/nginx.conf
	http {
		// перенаправление с www на без www - https://easyengine.io/tutorials/nginx/www-non-www-redirection/
			server {
				server_name "~^www\.(.*)$" ;
				return 301 $scheme://$1$request_uri ;
			}
		// увеличить загрузку файлов до https://owlhowto.com/how-to-increase-file-upload-size-on-nginx/
			client_max_body_size 11M; 
		}


	- Статика нод - https://code.mu/ru/javascript/nodejs/book/hosting/domains/static-files/
===================================

- Журнал ошибок - /var/log/nginx/nginx_error.log