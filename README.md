# Run Application Through Docker
1) Got to `server` directory
2) Start the containerized application
    ```
    docker-compose up
    ```
3) Access the application at `http://localhost:5000`
4) `Ctrl+C` in the terminal to gracefull shut down the application

# Build & Push Docker Images

1) Go to `release/tools`
2) Build the image by runing the folowing script providing your own docker registry name eg : 
```
./build_docker_images.sh <your-repo-name>
```
3) Push the image by runing the folowing script providing your own docker registry name eg : 
```
push_docker_images.sh <your-repo-name>
```