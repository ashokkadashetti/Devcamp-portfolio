module CurrentUserConcern
	extend ActiveSupport::Concern

	def current_user
		super || guest_user
	end

	def guest_user
		guest=GuestUser.new
		guest.name = "Guest user"
		guest.first_name = "Guest"
		guest.last_name = "user"
		guest.email = "ab@gmail.com"
		guest
	end


end

