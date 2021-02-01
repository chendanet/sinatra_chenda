require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require '/Users/chendouille/documents/devoirs_thp/the_gossip_project_sinatra/lib/controller.rb'
run ApplicationController

# on demande simplement au serveur d'exécuter le contenu
# de la classe ApplicationController