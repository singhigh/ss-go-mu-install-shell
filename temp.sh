apt-get install redis-server screen git curl vim
wget -c https://storage.googleapis.com/golang/go1.6.2.linux-386.tar.gz
tar -C /usr/local -xzf go1.6.2.linux-386.tar.gz
export PATH=$PATH:/usr/local/go/bin
export GOPATH=~/.go
go get github.com/orvice/shadowsocks-go
cd ~/.go/src/github.com/orvice/shadowsocks-go/mu
go get
go build

  cp example.conf ~/.go/bin/config.conf
  cd ~/.go/bin/
  vim ~/.go/bin/config.conf

    vim /etc/supervisord.conf

[program:ssserver]
      command = /root/.go/bin/mu
      directory = /root/.go/bin/
      user = root
      autostart = true
      autorestart = true

      supervisord -c /etc/supervisord.conf

      supervisorctl reload


