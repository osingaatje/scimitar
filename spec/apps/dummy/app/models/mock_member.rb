class MockMember < ActiveRecord::Base
  READWRITE_ATTRS = %w{
    scim_uid
    username
  }

  validates :username, uniqueness: true
  validates :scim_uid, uniqueness: true
  validates :scim_uid, presence: true

  def value
    self.scim_uid
  end
  def type
    'User'
  end
  def display
    self.username
  end

  def self.schema
    Scimitar::Schema::ReferenceMember
  end
end