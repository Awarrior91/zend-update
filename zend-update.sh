sudo ls
cd ~/zencash/zen
git fetch origin
git checkout
git pull
./zcutil/build.sh -j$(nproc)
sudo monit stop zend
sleep 10
sudo cp src/zend /usr/bin/zend
sudo cp src/zen-cli /usr/bin/zen-cli
sudo monit start zend
sleep 15
pm2 restart 0
