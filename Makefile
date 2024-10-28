# Initialize environment
init:
	bun install && go mod init && go mod tidy

# Test Golang code
test:
	go test -v ./... -count=1 

# Compile Golang Code
compile:
	go build .

# Compile TailwindCSS into CSS Styles
tailwindcss:
	bun run tailwindcss --config tailwind.config.js -i input.css -o ./public/static/css/styles.css

# Compile Templ into Golang
templ:
	templ generate ./components

# Compile Tailwind, Templ & Golang
build: tailwindcss templ run 

# Vite serving ./public directory
run: 
	bun run vite ./public 

# Hot reloading templ files
watch:
	find . -name "*.templ" | entr -r make build

# Dev environment with hot reloading
dev: build watch

# Clean compile and dependencies
clean:
	rm -rf node_modules bun.lockb go.mod go.sum public/*.html components/*.go public/static/css/styles.css


.PHONY: run compile watch test tailwindcss templ dev build init
