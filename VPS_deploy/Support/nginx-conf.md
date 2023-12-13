/etc/nginx/nginx.conf

Основные команды:
    sudo nginx -t // проверка синтаксиса
    sudo systemctl restart nginx // перезагрузка сервера после внесения изменений



	http {
// перенаправление с www на без www
		server {
			if ($host ~* www\.(.*)) {
			set $host_without_www $1;
			rewrite ^(.*)$ http://$host_without_www$1 permanent;
			}
		}
// увеличить загрузку файлов до https://owlhowto.com/how-to-increase-file-upload-size-on-nginx/
		client_max_body_size 11M; 
	}

