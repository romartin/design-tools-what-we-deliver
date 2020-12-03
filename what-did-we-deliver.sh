
what-did-we-deliver-here() {

  # SHHH! zsh 
  # setopt localoptions rmstarsilent

  # echo "=> $1"
  cd "$1"
  git checkout what-did-we-deliver > /dev/null 2>&1
  git fetch upstream > /dev/null 2>&1
  git reset upstream/master --hard > /dev/null 2>&1
  git log --pretty=format:"%an (%ar): %s" --after="$2" --until="$3" --author="David|Alex|Myriam|Guilherme Car|Daniel |Handrey|Jaime|Kirill|Roger|Toni|Valentino|Wagner|Yeser|Dominik|Jan|Jozef|Lubomir|Liz|Heena|Stetson"
  cd ..
}

what-did-we-deliver() {
  what-did-we-deliver-here "appformer" "$1" "$2"
  what-did-we-deliver-here "drools" "$1" "$2"
  what-did-we-deliver-here "drools-wb" "$1" "$2"
  what-did-we-deliver-here "droolsjbpm-build-bootstrap" "$1" "$2"
  what-did-we-deliver-here "droolsjbpm-integration" "$1" "$2"
  what-did-we-deliver-here "droolsjbpm-knowledge" "$1" "$2"
  what-did-we-deliver-here "errai" "$1" "$2"
  what-did-we-deliver-here "gwt-jsonix-schema-compiler" "$1" "$2"
  what-did-we-deliver-here "jbpm-wb" "$1" "$2"
  what-did-we-deliver-here "kie-docs" "$1" "$2"
  what-did-we-deliver-here "kie-soup" "$1" "$2"
  what-did-we-deliver-here "kie-wb-common" "$1" "$2"
  what-did-we-deliver-here "kogito-runtimes" "$1" "$2"
  what-did-we-deliver-here "kogito-tooling" "$1" "$2"
  what-did-we-deliver-here "lienzo-core" "$1" "$2"
  what-did-we-deliver-here "lienzo-tests" "$1" "$2"
}

what-did-we-deliver "$1" "$2"
