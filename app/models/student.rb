class Student < ActiveRecord::Base
    attr_accessible :name, :username,:std,:section,:email,:mobile,:password
  # attr_accessible :title, :body


end
