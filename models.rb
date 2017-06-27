class User < ActiveRecord::Base
    has_many :products
end

class Prodcut < ActiveRecord::Base
    belongs_to :user
end
