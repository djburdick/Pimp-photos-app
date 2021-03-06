class Authorization
  include MongoMapper::Document
  belongs_to :user
  
  key :provider, String
  key :uid, String
  key :user_id, ObjectId
  
  validates_presence_of :user_id, :uid, :provider
  validates_uniqueness_of :uid, :scope => :provider
  
  def self.find_from_hash(hash)
    find_by_provider_and_uid(hash['provider'], hash['uid'])
  end

  def self.create_from_hash(hash, user = nil)
    p hash.inspect
    user ||= User.create_from_hash!(hash)
    create(:user => user, :uid => hash['uid'], :provider => hash['provider'])
  end
  
end
