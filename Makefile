design/pushed: design/builded
	date > $@
	# docker login registry.ushakov.by
	docker compose push | tee -a $@

# Nginx modules configs are broken symlinks, are ignored as build dependnecy
# files.
design/builded: $(shell find . | grep 'design\|.git\|nginx/config/modules-enabled' --invert-match)
	date > $@
	docker compose build | tee -a $@