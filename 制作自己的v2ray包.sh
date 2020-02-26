
## ssrpanel v2ray plugin 如何编译 v2ray 后端 

First of all, you have to install Bazel to build v2ray from source code.

After installing Bazel, clone v2ray source code, v2ray-core and v2ray-ext.

go get -u v2ray.com/ext/...

cd $GOPATH/v2ray.com/
git clone https://github.com/ColetteContreras/v2ray-core.git core
cd core
git checkout -b SSRPanelPlugin-v4.9.0 --track origin/SSRPanelPlugin-v4.9.0
Then, build your own v2ray binary

bazel clean \
  && bazel build \
    --action_env=GOPATH=$GOPATH \
    --action_env=PATH=$PATH \
    //release:v2ray_darwin_amd64_package
Output files is located at ./bazel-bin/release/

Enjoy your coding :)