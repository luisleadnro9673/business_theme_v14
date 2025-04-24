FROM frappe/erpnext:version-15

USER root

COPY . /home/frappe/frappe-bench/apps/business_theme_v14

USER frappe

CMD ["bash", "-c", "bench --site admin.allpos.ar install-app business_theme_v14 || echo 'Ya instalado'; tail -f /dev/null"]
