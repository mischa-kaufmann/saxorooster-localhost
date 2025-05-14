# SaxoRooster - Dockerized Scratch Game 🎷🐔

This repository contains the necessary files (Dockerfile, Caddyfile, and game assets) to build a Docker image that serves the "SaxoRooster" game. SaxoRooster is a simple game originally created with Scratch for Harvard's CS50x course. The Dockerization of this project was completed as an exercise for the "DevOps with Docker" course by the University of Helsinki, available on [mooc.fi](https://www.mooc.fi/en/).

[![Docker Hub Image](https://img.shields.io/badge/Docker%20Hub-mischakaufmann%2Fsaxorooster--game-blue?logo=docker)](https://hub.docker.com/r/mischakaufmann/saxorooster-game)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Scratch Project](https://img.shields.io/badge/Scratch-View%20Project-orange.svg)](https://scratch.mit.edu/projects/1070411335/)

## About This Project

The main goal of this project is to demonstrate how a web-based game, originally created in Scratch and converted to HTML/JavaScript (using TurboWarp Packager), can be served using a Caddy web server inside a Docker container.

The resulting Docker image is published on Docker Hub and can be easily run by anyone with Docker installed.

## Files in This Repository

- **`Dockerfile`**: Defines the steps to build the Docker image using `caddy:2-alpine` as a base, copying the `Caddyfile` for server configuration and the game assets.
- **`Caddyfile`**: A simple configuration for the Caddy web server to serve the static game files from `/srv` on port 80.
- **`index.html`**: The main HTML file for the game.
- **`script.js`**: The main JavaScript file for the game logic.
- **`assets/`**: A directory containing images and other assets for the game.
    *(These game files were converted from the original Scratch project using the TurboWarp Packager.)*

## Prerequisites

To build and run the Docker image from this repository, you will need:
- [Git](https://git-scm.com/downloads) (to clone this repository)
- [Docker](https://docs.docker.com/get-docker/) installed and running on your system.

## How to Build and Run Locally

1.  **Clone this repository:**
    ```bash
    git clone [https://github.com/mischakaufmann/saxorooster-localhost.git](https://github.com/mischakaufmann/saxorooster-localhost.git)
    cd saxorooster-localhost
    ```

2.  **Build the Docker image:**
    You can give the image any name you like. To match the one on Docker Hub:
    ```bash
    docker build -t mischakaufmann/saxorooster-game:0.1.0 .
    ```
    Or for a purely local test:
    ```bash
    docker build -t my-local-saxorooster .
    ```

3.  **Run the Docker container:**
    Using the tag from the example above:
    ```bash
    docker run -d -p 8080:80 --name saxorooster-game mischakaufmann/saxorooster-game:0.1.0
    ```
    If you used a different tag (e.g., `my-local-saxorooster`), use that name instead.
    This will:
    - Run the container in detached mode (`-d`).
    - Map port `8080` on your computer to port `80` in the container. You can change `8080` to another available port.
    - Name the container `saxorooster-game`.

4.  **Play the game:**
    Open your web browser and navigate to `http://localhost:8080` (or the host port you chose).

## Running the Pre-built Image from Docker Hub

For instructions on how to run the pre-built image directly from Docker Hub without building it yourself, please visit the Docker Hub repository:
➡️ **[mischakaufmann/saxorooster-game on Docker Hub](https://hub.docker.com/r/mischakaufmann/saxorooster-game)**

## Technologies Used

- Original Game: [Scratch](https://scratch.mit.edu/projects/1070411335)
- Conversion to HTML/JS: [TurboWarp Packager](https://turbowarp.org/packager/)
- Web Server: [Caddy](https://caddyserver.com/)
- Containerization: [Docker](https://www.docker.com/)

## Author

* **Mischa Kaufmann**
    * GitHub: [mischa-kaufmann](https://github.com/mischa-kaufmann)
    * Docker Hub: [mischakaufmann](https://hub.docker.com/u/mischakaufmann)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
