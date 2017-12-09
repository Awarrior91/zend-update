cd ~/zencash/zen
git fetch origin
git checkout
git pull
./zcutil/build.sh -j$(nproc)
sudo monit stop zend
sudo cp src/zend /usr/bin/zend
sudo cp src/zen-cli /usr/bin/zen-cli
sudo monit start zend
pm2 restart 0
