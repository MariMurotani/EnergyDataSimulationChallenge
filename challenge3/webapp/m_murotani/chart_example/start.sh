PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export RAILS_ENV="production"
export DATABASE_USER="devadmin"
export DATABASE_PASSWORD="5)XSZmtB-,zJ"
export RAILS_SERVE_STATIC_FILES=true

RAILS_ENV=$RAILS_ENV bin/rails assets:precompile

sudo ps aux | grep puma | head -1 | gawk -F' ' '{print $2}' | xargs kill -9
bundle exec puma &
#rails s -b 0.0.0.0 &

