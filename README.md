# waffle-docker
Build and host docker image for ethereum Waffle

## Usage

1) Add your contracts to `./contracts/` 
1) Update the waffle config (`./environments/example.toml`) and package.json to desired compiler version
1) Build the image: `docker build .`  
1) Run the entrypoint `docker run -d {image_id} {path_to_config}`  
1) Copy output to local system `docker cp {container_id}:/go/src/github.com/vulcanize/waffle-docker/build ./build`     

Or, using the pre-built image (0.5.16 EVM or OVM compiler)  

1) Pull docker image: `docker pull {image_url}`
1) Create docker container from image: `docker create {path_to_config}`  
1) Copy contracts into container `docker cp ./contracts {container_id}:/go/src/github.com/vulcanize/waffle-docker/contracts`  
1) Copy waffle config into container `docker cp ./environments/example.json {container_id}:/go/src/github.com/vulcanize/waffle-docker/{path_to_config}`  
1) Start the container: `docker start {container_id}`  
1) Copy output to local system `docker cp {container_id}:/go/src/github.com/vulcanize/waffle-docker/build ./build`  