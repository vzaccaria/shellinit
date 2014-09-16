

#  _____ _____ _____    _____ _____    __ __ 
# |     |  _  |     |  |     |   __|  |  |  |
# | | | |     |   --|  |  |  |__   |  |-   -|
# |_|_|_|__|__|_____|  |_____|_____|  |__|__|

myhost=`hostname`

if [[ "$myhost" == "pc121-215.elet.polimi.it" || "$myhost" == "macbook"  || "$myhost" == "macbook.local" ]]; then

      #! Path to your oh-my-zsh configuration.
      ZSH=$HOME/.oh-my-zsh

      # Set name of the theme to load.
      ZSH_THEME="lambda"

      # Set to this to use case-sensitive completion
      CASE_SENSITIVE="true"

      # Comment this out to disable weekly auto-update checks
      DISABLE_AUTO_UPDATE="true"

      # Uncomment following line if you want red dots to be displayed while waiting for completion
      COMPLETION_WAITING_DOTS="true"

      # Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
      # Example format: plugins=(rails git textmate ruby lighthouse)
      plugins=(node npm brew vi-mode osx)

      source $ZSH/oh-my-zsh.sh

      #              _   _     
      #  _ __   __ _| |_| |__  
      # | '_ \ / _` | __| '_ \ 
      # | |_) | (_| | |_| | | |
      # | .__/ \__,_|\__|_| |_|
      # |_|                    

      export GOPATH=/Users/zaccaria/bin/go

      path=(\
               /Users/zaccaria/.cabal/bin \
               /Users/zaccaria/node_modules/.bin \
               /usr/local/share/npm/bin \
               /usr/local/sbin \
               /usr/local/bin \
               /usr/bin \
               /bin \
               /usr/sbin \
               /sbin \
               /usr/X11/bin \
               /usr/texbin \
               /usr/local/texlive/2013/bin/universal-darwin \
               /Users/zaccaria/scripts \
               /Users/zaccaria/bin/oclint/bin \
               /Developer-Android/bundle/sdk/platform-tools \
               /Developer-Android/bundle/sdk/tools \
               /Applications/Vagrant/bin \
               /Users/zaccaria/development/github/data-science-toolbox \
               /usr/local/Cellar/go/1.2/libexec/bin \
               $GOPATH/bin)


      #                             _       
      #   _____  ___ __   ___  _ __| |_ ___ 
      #  / _ \ \/ / '_ \ / _ \| '__| __/ __|
      # |  __/>  <| |_) | (_) | |  | |_\__ \
      #  \___/_/\_\ .__/ \___/|_|   \__|___/
      #           |_|                       


      export LC_ALL=en_US.UTF-8
      export LANG=en_US.UTF-8
      export LANGUAGE=en_US.UTF-8
      export DEFAULT_CHARSET=UTF-8
      export NODE_PATH=/usr/local/lib/node_modules
      # export NODE_PATH=/usr/local/share/npm/lib/node_modules:/usr/local/lib/node_modules

      unsetopt correct_all

      #        _ _                     
      #   __ _| (_) __ _ ___  ___  ___ 
      #  / _` | | |/ _` / __|/ _ \/ __|
      # | (_| | | | (_| \__ \  __/\__ \
      #  \__,_|_|_|\__,_|___/\___||___/
                                     
      alias cwd='pwd | pbcopy'
      eval "$(hub alias -s)"
      alias vim='/Users/zaccaria/scripts/subl'
      alias vi='/Users/zaccaria/scripts/subl'
      alias mi='open -a "Mou"'
      alias sv='open -a "Google Chrome"'

      # load up zed
      . `brew --prefix`/etc/profile.d/z.sh
fi


# | |__ | |__   ___  _ __ ___ | |__  
# | '_ \| '_ \ / _ \| '_ ` _ \| '_ \ 
# | | | | |_) | (_) | | | | | | |_) |
# |_| |_|_.__/ \___/|_| |_| |_|_.__/ 


if [[ "$myhost" == "hbomb" ]]; then


      # See https://blog.breadncup.com/2011/06/09/skip-git-ssl-verification/
      export GIT_SSL_NO_VERIFY=1

      #              _   _     
      #  _ __   __ _| |_| |__  
      # | '_ \ / _` | __| '_ \ 
      # | |_) | (_| | |_| | | |
      # | .__/ \__,_|\__|_| |_|
      # |_|                    

      path=(\
         /usr/local/sbin \
         /usr/local/bin \
         /usr/sbin \
         /usr/bin \
         /sbin \
         /bin \
	      /home/zaccaria/node_modules/.bin \
         /home/zaccaria/bin)

      #                             _       
      #   _____  ___ __   ___  _ __| |_ ___ 
      #  / _ \ \/ / '_ \ / _ \| '__| __/ __|
      # |  __/>  <| |_) | (_) | |  | |_\__ \
      #  \___/_/\_\ .__/ \___/|_|   \__|___/
      #           |_|                       

      export TERM=linux   
      export LC_ALL=en_US.UTF-8
      export LANG=en_US.UTF-8
      export LANGUAGE=en_US.UTF-8
      export DEFAULT_CHARSET=UTF-8

      # Setting up python brew: https://github.com/utahta/pythonbrew
      [[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"


      alias ack='/home/zaccaria/bin/ack'
fi



#                                                    _ _                     
#   ___ ___  _ __ ___  _ __ ___   ___  _ __     __ _| (_) __ _ ___  ___  ___ 
#  / __/ _ \| '_ ` _ \| '_ ` _ \ / _ \| '_ \   / _` | | |/ _` / __|/ _ \/ __|
# | (_| (_) | | | | | | | | | | | (_) | | | | | (_| | | | (_| \__ \  __/\__ \
#  \___\___/|_| |_| |_|_| |_| |_|\___/|_| |_|  \__,_|_|_|\__,_|___/\___||___/
                                                                                                          

f() {
   find . -name "*$@*"
}

p() {
   ps -fe | grep -v grep | grep "$@" -i --color=auto;
}

# Use n{major|minor|patch} && nfinalize to publish an npm repository and keep git up to date

alias svndiff='svn diff -r HEAD --diff-cmd "colordiff" -x "-y --suppress-common-lines"'
alias v='/usr/bin/vim'
alias help='sharkdown help.md | less -R'


#   __ _(_) |_ 
#  / _` | | __|
# | (_| | | |_ 
#  \__, |_|\__|
#  |___/  

alias g='git'
alias gi='git ignore'				# from `brew git-extras`
alias ga='git add'					
alias gca='git commit -a -m'
alias gd=' git diff --ignore-space-at-eol -b -w'
alias gitlog="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias hotfix-start='git flow hotfix start'	# from `brew git-flow`
alias hotfix-close='git flow hotfix finish -m "hotfix-commit"'
alias feature-start='git flow feature start'	# from `brew git-flow`
alias feature-close='git flow feature finish'
alias release-start='git flow release start'	# from `brew git-flow`
alias release-close='git flow release finish -m "release-commit"'
alias fastfix="gca 'some fixes' && git push"

alias helpgit='pandoc -s -f markdown -t man ~/scripts/docs/git.md| groff -T utf8 -man | less'




#  _ __  _ __  _ __ ___  
# | '_ \| '_ \| '_ ` _ \ 
# | | | | |_) | | | | | |
# |_| |_| .__/|_| |_| |_|
#       |_|              

alias nmajor='npm version major'
alias nminor='npm version minor' 
alias npatch='npm version patch'
alias npublish='git checkout master && npm publish . && git checkout development'

#        _   _               
#   ___ | |_| |__   ___ _ __ 
#  / _ \| __| '_ \ / _ \ '__|
# | (_) | |_| | | |  __/ |   
#  \___/ \__|_| |_|\___|_|  

alias ll='ls -lG'



alias rvm='~/scripts/rvm.tcsh'
alias mk='make -f makefile.mk'
alias kitty='killall -9 ruby node'
alias ka='killall node'
alias sa='make server'
alias ss='make server'
alias so='make reverse'
alias pd='jsps -fec | eps'

## find my sources
alias fms='ack -k \
-c \
-l \
--ignore-dir="build" \
--ignore-dir="sdk" \
--ignore-dir="components" \
--ignore-dir="lib" \
--ignore-dir="vendor" \
--ignore-dir=test \
--ignore-dir=_site \
--ignore-dir=_public \
--ignore-dir=samples \
--ignore-dir=threejs-collada \
--ignore-dir=three.js-master \
--ignore-file=match:jquery.js \
--ignore-file=match:vendor.js \
--ignore-file=match:client.js \
--ignore-file=match:d3'

#  _                          
# | |__   ___  _ __  _______  
# | '_ \ / _ \| '_ \|_  / _ \ 
# | |_) | (_) | | | |/ / (_) |
# |_.__/ \___/|_| |_/___\___/ 
                            

if [[ "$myhost" == "pc121-215.elet.polimi.it" || "$myhost" == "macbook.local" ]]; then

   alias bonzo-mount='sshfs zaccaria@192.168.0.103:/home/zaccaria /Volumes/Farm'
   alias hbomb-mount='sshfs zaccaria@hbomb.elet.polimi.it:/home/zaccaria /Volumes/Farm'
fi


#  ___| | __
# / __| |/ /
# \__ \   < 
# |___/_|\_\

if [[ "$myhost" == "pc121-215.elet.polimi.it" || "$myhost" == "macbook.local" ]]; then

   alias skk='sk -f /Users/zaccaria/short/tools/deploy-dsl/swiss-deploy-knife/examples/config.js '
   alias iw='sk -s infoweb -f /Users/zaccaria/short/tools/deploy-dsl/swiss-deploy-knife/examples/config.js '
   eval "$(sk -z)"
fi


if [[ "$myhost" == "hbomb" ]]; then
	eval "$(sk -z)"
fi





