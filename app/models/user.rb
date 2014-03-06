class User < ActiveRecord::Base
has_many :infos
has_many :humours
end
