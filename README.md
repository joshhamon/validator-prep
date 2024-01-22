This repo is a place for me to store scripts for use in managing incognito validators. Enjoy at your own risk, no warranty expressed or implied. Your mileage may vary.

Learn more about the overall project at incognito.org

TOOLS:
    
    bootsrapBeaconShard [-n node OPTIONAL -b -s shard]
        Assumes you have bootstrap files already!
        Open the file and set the directorys for bootstrap and node data files
        This will stop the node inc_mainnet_node
        If -b, it will remove the ...node/mainnet/block/beacon folder
            It will tar the beacon bootstrap file.
        If -s, it will remove the ...node/mainnet/block/shard* folders
            It will then tar the shard bootstrap file.
    newValidator
        ALPHA version - intended to take a fresh ubuntu host from new to being ready for incognito keys.
        USE AT YOUR OWN RISK
    prepForBootstrap
        Open the file and set the preferred download directory, default is ~/
        This will download a fresh copy of the beacon and all shards from the bootstrap node
        Before downloading each tar file, it will remove any existing file
    stopAll [OPTIONAL -p]
        This bash file will attempt to stop all containers that matches inc_mainnet_*
        Add the option flag -p to also prune those containers. This is useful for when you're adding a new node to your host or are needing to start from scratch.
    ota.sh
        If you have inconigto-cli in the same directory and if you edit the file to contain your OTA keys, this script will submit them for syncing with the fullnode
