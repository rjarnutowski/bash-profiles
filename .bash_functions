##------------------------------------ ##
 #           -- new-alias --           #
 # creates new alias & writes to file  #
 #          $1 = alias new             #
 #          $2 = alias definition      #
##------------------------------------ ##
new-alias () {
  if [ -z "$1" ]; then
    echo "alias name:"
    read NAME
  else
    NAME=$1
  fi

  if [ -z "$2" ]; then
    echo "alias definition:"
    read DEFINTION
  else
    if [ "$2" = "-cd" ]; then
      DEFINTION='cd '
    else
      DEFINTION=$2
    fi
  fi

  echo "alias $NAME='$DEFINTION'" >> ~/git/bash-profiles/.bash_aliases
  . ~/.bashrc
}


function f(){ find . -type f -exec grep -l $1 {} + ; } 

function gitDeleteOlderThanOneYear(){

date=$1

for branch in $(git branch -a | sed 's/^\s*//' | sed 's/^remotes\///' | grep -v 'master$'); do
  if [[ "$(git log $branch --since $date | wc -l)" -eq 0 ]]; then
    if [[ "$branch" =~ "origin/" ]]; then
      local_branch_name=$(echo "$branch" | sed 's/^origin\///')
      if [[ "$DRY_RUN" -eq 1 ]]; then
        echo "git push origin :$local_branch_name"
      else
        git push origin :$local_branch_name
      fi
    else
      if [[ "$DRY_RUN" -eq 1 ]]; then
        echo "git branch -D $branch"
      else
        git branch -D $branch
      fi
    fi
  fi
done

}

function printDir(){

current_date=$(date +%Y%m%d)
past_date=$(date -d "$current_date - 365 days" +%Y%m%d)
echo $past_date;
}

