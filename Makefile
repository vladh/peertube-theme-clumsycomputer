.PHONY: all publish

all:
	echo "Doing nothing"

publish:
	rsync -r --progress . yavin:/srv/peertube/themedev/peertube-theme-clumsycomputer/
	ssh yavin 'NODE_CONFIG_DIR=/srv/peertube/config NODE_ENV=production /srv/peertube/versions/peertube-v4.2.2-dev/dist/server/tools/peertube.js plugins install --path /srv/peertube/themedev/peertube-theme-clumsycomputer/ --url https://video.clumsy.computer'
