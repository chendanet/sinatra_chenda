#notre model !
require 'csv'
require 'pry'

class Gossip
  attr_accessor :gossip_author, :gossip_content

    def initialize(gossip_author, gossip_content)
      @gossip_author = gossip_author
      @gossip_content = gossip_content
    end

    def save
        CSV.open("/Users/chendouille/documents/devoirs_thp/the_gossip_project_sinatra/db/gossip.csv", "a+") do |csv|
      @gossip_content = gossip_content
          csv << [@gossip_author, @gossip_content]
        end
    end
end
#1) Nous ouvrons le CSV en mode écriture (ab) (le CSV a le path db/gossip.csv).
#2) Nous insérons dedans une ligne avec deux colonnes. 
#La première colonne a pour entrée le string Mon super auteur et 
#la seconde colonne a le string Ma super description.
