class Site < ActiveRecord::Base
  has_many :taxonomies
  has_many :products
  has_many :orders
  validates_presence_of   :name, :domain
  acts_as_tree
  
  def self_and_children
    [self] + children
  end
end
