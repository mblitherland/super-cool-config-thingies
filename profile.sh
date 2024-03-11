
dcleanup(){
    docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
    docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
}
dcleanup_for_real(){
    # Delete all containers
    docker rm $(docker ps -a -q)
    # Delete all images
    docker rmi $(docker images -q)
}
dstopall(){
    # Stop all running containers
    docker stop $(docker ps --filter status=running -q 2>/dev/null) 2>/dev/null
}

export EDITOR=nvim

