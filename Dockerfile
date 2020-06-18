FROM opencpu/base

RUN R -e 'opencpu::install_apps(c("rwebapps/nabel", "3dsynd/awrconsole"))'

RUN \
  echo 'Redirect /index.html /ocpu/library/awrconsole/www' > /etc/apache2/sites-enabled/app.conf
