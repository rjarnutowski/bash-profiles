alias artserve='php artisan serve --port=8081'
alias clearlog='echo ''> storage/logs/laravel.json.log'
alias func='vi ~/git/bash-profiles/.bash_functions'
alias gitclean='git branch --merged | grep -v "\*\|master\|develop" | xargs -n 1 git branch -d'
alias int='cd ~/git/integration'
alias ionserve='ionic serve --lab'
alias ll='ls -alGFh'
alias mysql='mysql -uroot -h 127.0.0.1'
alias mysqlstart="/usr/local/opt/mysql/bin/mysql.server start"
alias routecnt='php artisan route:list --path=t/api/entities |echo $(wc -l) -4 | bc'
alias sphp54='brew unlink php56; brew link php54; sudo apachectl restart'
alias social='cd ~/git/social-media-service'
alias sphp56='brew unlink php54; brew link php56; sudo apachectl restart'
alias srcbash='source ~/.bashrc'
alias bps='brew-php-switcher'
alias scripts='cd ~/git/scripts'
alias bamboofwork='ssh -i ~/.ssh/elasticbamboo.pk ec2-user@ec2-54-91-240-140.compute-1.amazonaws.com'
alias bambooservices='ssh -i ~/.ssh/elasticbamboo.pk ec2-user@ec2-54-235-37-201.compute-1.amazonaws.com'
alias composerinstall='php -d memory_limit=-1 /usr/local/bin/composer install'
alias bastion='ssh -A bastion-tools-000.us-east-1.aws.prod.bsdinternal.com'
alias chefupdate='cd /home/rjarnutowski/git/python_chef_updater'
