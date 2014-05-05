class Usuario < ActiveRecord::Base
  attr_accessible :email, :login, :senha
end
