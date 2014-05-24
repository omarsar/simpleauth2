class User < ActiveRecord::Base
  validates_uniqueness_of :email
  validates_presence_of :email
  def to_json

    super(:except => [:password, :created_at, :updated_at])
    #super(:only => [:name, :email, :bio])
  end
end
