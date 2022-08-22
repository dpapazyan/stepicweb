sudo rm -rf /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/shit.conf
sudo ln -sf /home/box/web/etc/gunicorn_wsgi.conf /etc/gunicorn.d/shit
gunicorn -b 0.0.0.0:8080 hello:app
gunicorn -b 0.0.0.0:8000 /ask/qa/views.py:test

sudo /etc/init.d/nginx restart