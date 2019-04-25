FROM ruby:2.3
#FROM buildpack-deps:stretch
#Ruby
#RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - \
#    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - \
#    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list 

#RUN sudo apt update \
#    && sudo apt install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn

#Rbenv
#RUN cd \
#    && git clone https://github.com/rbenv/rbenv.git ~/.rbenv \
#    && echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc \
#    && echo 'eval "$(rbenv init -)"' >> ~/.bashrc \
#    && exec $SHELL

#RUN git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build \
#    && echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc \
#    && exec $SHELL 

#RUN rbenv install 2.6.1 #2.3.3
#RUN rbenv global 2.6.1
#RUN ruby -v

#RUN gem install bundler

#Rails
#RUN curl -sL https://deb.nodesource.com/setup_8.x | -E bash - 
#RUN apt-get install -y nodejs

RUN gem install rails -v 5.2.2 #5.1.7

#RUN rbenv rehash

RUN rails -v

#mysql
RUN sudo apt-get install mysql-server mysql-client libmysqlclient-dev

#EXPOSE 3000
#CMD ["rails", "server", "-b", "0.0.0.0"]

#Git
#git config --global color.ui true
#git config --global user.name "YOUR NAME"
#git config --global user.email "YOUR@EMAIL.com"
#ssh-keygen -t rsa -b 4096 -C "YOUR@EMAIL.com"

#cat ~/.ssh/id_rsa.pub
#ssh -T git@github.com

#FROM ruby:2.3

#WORKDIR /usr/src/app
#COPY Gemfile* ./
#RUN bundle install
#COPY . .

