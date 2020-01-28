# Digital Passport Agent 

The agent for Robonomics Network which allows you to create a digital identity for your data. 
For more details have a look at the following [lesson](https://wiki.robonomics.network/cases/digital_identity/).

## Build

NixOS way:

```
git clone https://github.com/Vourhey/digital_passport_agent
cd digital_passport_agent
nix build -f release.nix
```

ROS way:

```
mkdir -p ws/src && cd ws/src
git clone https://github.com/Vourhey/digital_passport_agent
catkin_init_workspace && cd ..
catkin_make
```

## Launch

Source the environment variables:

```
# NixOS
source result/setup.bash # or setup.zsh

# ROS
source devel/setup.bash # or setup.zsh
```

and launch:

```
roslaunch digital_passport_agent agent.launch pinata_api_key:=<API_KEY> pinata_secret_api_key:=<SECRET_API_KEY>
```

where `<API_KEY>` is [Pinata.cloud](https://pinata.cloud/) API key and `<SECRET_API_KEY>` is secret API key provided by Pinata.

If one of these or both are not provided Pinata pinning is not used.

