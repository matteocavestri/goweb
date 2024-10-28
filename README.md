# 🌐 **Go Web Stack**

This repository is an example of building a modern web stack using **Go**. Suitable for small/medium-sized web apps and static sites, this stack also integrates **Pocketbase** for backend functionality, though it's optional for static sites.

## ✨ **Main Components**

- **Go**: Robust and performant backend
- **Templ**: Template engine for server-side rendering
- **Alpine.js**: Lightweight JavaScript library for dynamic interactions
- **HTMX**: Enables dynamic HTML updates without complex JavaScript
- **TailwindCSS**: Modern, responsive CSS framework
- **Vite**: Frontend asset management with hot reloading
- **Nix Flake**: Development environment (devshell)
- **Nevica GoWeb IDE**: Go-optimized IDE tailored for this stack
- **Docker & Kubernetes Deployment**: Scalable and configurable deployment options
- **Pocketbase**: Simple backend database for small/medium apps

## 🔧 **Usage**

### Requirements

Ensure the following requirements are installed:

- **Nix** for managing the development environment
- **Docker** and/or **Kubernetes** for deployment

### Environment Setup

1. **Enter the development environment** (with preconfigured dependencies):

   ```bash
   nix develop
   ```

1. **Initialize the project** with all dependencies for Go and TypeScript:

   ```bash
   make init
   ```

This command runs `go mod tidy` to fetch and clean Go dependencies and `bun install` to install TypeScript dependencies.

### Make Commands

The main `make` commands for managing and deploying the project:

| Command             | Description                                                                 |
| ------------------- | --------------------------------------------------------------------------- |
| `make init`         | 🛠️ Initializes the project by installing all Go and TypeScript dependencies |
| `make test`         | ✅ Runs unit tests for Go logic                                             |
| `make build`        | 🛠️ Compiles Templ, TailwindCSS, and Go code                                 |
| `make dev`          | 🔄 Starts the server with hot reloading                                     |
| `make run`          | ▶️ Starts the server normally (without hot reloading)                       |
| `make docker build` | 🐳 Builds Docker images for deployment                                      |
| `make docker run`   | 🚢 Runs the Docker containers created previously                            |
| `make clean`        | 🧹 Cleans up the project, removing compiled files                           |

### Note

In the `main.go` file, ensure that the module path for `components` is correct and up-to-date.

## ☸️ **Deployment**

- **Docker**: Use `make docker build` and `make docker run` to build and run containers locally.
- **Kubernetes**: Easily configure and deploy to Kubernetes, ideal for scalable production environments.

## 📜 **License**

- **Project**: Licensed under **GPL-2.0-or-later**
- **Directory pocketbase**: Licensed under **MIT**
- **File public/static/js/htmx.min.js**: Licensed under **Zero-Clause BSD**
- **File public/static/js/alpinejs.min.js**: Licensed under **MIT**

Refer to the specified directories and `LICENSE` file for more details.
