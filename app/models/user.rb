class User
  include MongoMapper::Document
  many :authorizations
  
  key :name, String
  
  def self.create_from_hash!(hash)
    create(:name => hash['user_info']['name'])
  end

end
