.PHONY: serve run build clean

serve:
	podman run --privileged --rm -it \
		-v $(PWD):/src \
		-p 1313:1313 \
		docker.io/klakegg/hugo:0.101.0 \
		server -D

run:
	podman run --privileged --rm -it \
		-v $(PWD):/src \
		docker.io/klakegg/hugo:0.101.0 \
		"$@"

build:
	podman run --privileged --rm -it \
		-v $(PWD):/src \
		docker.io/klakegg/hugo:0.101.0

clean:
    # Add commands to clean up generated files or artifacts if needed