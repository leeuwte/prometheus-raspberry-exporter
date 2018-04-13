curl -SL https://github.com/prometheus/node_exporter/releases/download/v0.15.2/node_exporter-0.15.2.linux-armv7.tar.gz > /tmp/node_exporter.tar.gz && \
sudo tar -xvf /tmp/node_exporter.tar.gz -C /usr/local/bin/ --strip-components=1

sudo cp node_exporter.service /etc/systemd/system/
sudo cp prometheus-raspberry-exporter.service /etc/systemd/system/
sudo cp prometheus-raspberry-exporter.timer /etc/systemd/system/


sudo systemctl enable node_exporter.service
sudo systemctl restart node_exporter.service

sudo systemctl enable prometheus-raspberry-exporter.timer
sudo systemctl start prometheus-raspberry-exporter.timer



