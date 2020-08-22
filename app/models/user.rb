class User < ApplicationRecord
	scope :first_name_like, ->(name){ where('first_name like ?', "%#{name}%")}
	scope :last_name_like, ->(name){ where('last_name like ?', "%#{name}%")}
	scope :email_like, ->(email){ where('email like ?', "%#{email}%")}

	def name
		"#{first_name} #{last_name}"
	end
end
