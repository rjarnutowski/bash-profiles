
function fix-perm(){
	docker exec -it formbuilderengine_nginx_1 chmod -R 777 /var/cache/nginx
	docker exec -it formbuilderengine_engine_1 chown -f -R www-data .
}
