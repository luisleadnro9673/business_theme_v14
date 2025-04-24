FROM frappe/erpnext:version-15

USER root

RUN mkdir -p /home/frappe/frappe-bench/apps/business_theme_v14

COPY . /home/frappe/frappe-bench/apps/business_theme_v14

USER frappe

RUN bench --site admin.allpos.ar install-app business_theme_v14
