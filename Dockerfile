FROM ubuntu:xenial

ENV DEBIAN_FRONTEND=noninteractive

# Install basics
RUN apt-get update
RUN apt-get install -y curl git

# Install MySQL
RUN apt-get install -y mysql-server

# Install PHP 7.0
RUN apt-get install -y php7.0 php7.0-mysql php7.0-mcrypt php7.0-mbstring php7.0-cli php7.0-gd php7.0-curl php7.0-xml

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN mkdir /app
WORKDIR /app

CMD ["./run.sh"]
