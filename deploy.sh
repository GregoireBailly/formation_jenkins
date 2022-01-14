#!/bin/bash -x
# BASE COMMUNE A TOUS LES PROJETS
# cd $(dirname $0)/..



##################################### A ADAPTER PAR PROJET #####################################
#$1 => L environnment
#$2 => la version

# NOM DE L IMAGE en fonction de $1 et $2 :
image=gregoirebailly9/formation_jenkins:$2

# DEFINIR UNE FONCTION PAR ENV

function deploy_PKG_ONLY() {
	docker push $image
}

function deploy_PROD() {
	deploy_PKG_ONLY
	# ssh myserver docker image prune  -a -f ;
	# ssh myserver  "docker service update formation_jenkins --image $image;"
}


##################################### FIN A ADAPTER PAR PROJET #####################################

#COMMUN A TOUS LES PROJETS

# les ENV (cf fonction au dessus)
if [ "$1" = "" ]
then
echo "PAS DE ENV"
exit 1
fi

c=$(grep -c "^$1$" cicd/ENV)

if [ $c -eq 0 ]
then
echo "ENV $1 NOT FOUND"
echo "List of Valid ENV : "
cat cicd/ENV
exit 1
fi
deploy_$1
