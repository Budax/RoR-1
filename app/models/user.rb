class User < ApplicationRecord
  validates :first_name, :last_name, :phone, :address,
            presence: true

  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i,
                              message: "should be in right format" }

  validates :age, numericality: { only_integer: true,
                                  less_than: 100,
                                  greater_than: 17
                                }

end
