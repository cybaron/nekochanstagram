class Contact
  include ActiveModel::Conversion
  include ActiveModel::Validations
  extend ActiveModel::Naming

  attr_accessor :name
  attr_accessor :email
  attr_accessor :message
  attr_accessor :confirming

  validates :name,    :presence => true,
                      :length => { :maximum => 20 }
  validates :email,   :presence => true,
                      :length => { :maximum => 100 },
                      :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
  validates :message, :presence => true,
                      :length => { :maximum => 800 }

  def persisted? ; false ; end

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value) rescue nil
    end
  end

end
