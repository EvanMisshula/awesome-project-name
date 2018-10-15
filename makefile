DB_NAME="awesome_db"

drop-db:
	dropdb $(DB_NAME) || true # never fail
create-db: drop-db
	createdb $(DB_NAME)
	./dist-newstyle/build/x86_64-linux/ghc-8.4.3/backend-1.0.0.0/x/schema/build/schema/schema

build: update-cabal
	cabal new-build all
OUTJS="dist-ghcjs/build/x86_64-linux/ghcjs-0.2.1/frontend-0.1.0.0/c/webservice/build/webservice/webservice.jsexe"
build-js:
	cabal --project-file=cabal-ghcjs.project --builddir=dist-ghcjs new-build all
	echo "https://github.com/ghcjs/ghcjs/wiki/Deployment"
	echo "don't forget to minify" # closure-compiler --compilation_level ADVANCED --js=$(OUTJS)'all.js' > $(OUTJS)all.min.js

file-watch:
	scripts/watch.sh

update-cabal:
	hpack ./backend
	hpack ./common
	hpack ./frontend

EXTRA=""
enter:
	nix-shell --cores 0 -j 8 -A shells.ghc --pure $(EXTRA)
enter-js:
	nix-shell --cores 0 -j 8 -A shells.ghcjs --pure $(EXTRA)

run: create-db
	./dist-newstyle/build/x86_64-linux/ghc-8.4.3/backend-1.0.0.0/x/webservice/build/webservice/webservice

clean:
	rm -fR dist dist-*


