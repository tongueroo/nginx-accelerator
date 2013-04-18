ACCEL_HOME := $(shell pwd)
default: ready

ready: ngx_openresty/nginx/sbin/nginx

ngx_openresty/nginx/sbin/nginx:
	@cd vendor/projects/ngx_openresty && ./configure --prefix=$(ACCEL_HOME)/ngx_openresty --with-luajit
	@cd vendor/projects/ngx_openresty && make
	@cd vendor/projects/ngx_openresty && make install
