killall uwsgi
kill -9 $(pidof uwsgi)
uwsgi --socket :8001 --module tdact.wsgi --emperor /etc/uwsgi/vassals --uid root --gid root  --master --processes 4 --threads 2 --stats 127.0.0.1:9191 --daemonize=/var/www/vhosts/3dact.com/logs/uwsg.log
