module StoreAdmin
  class Controller < ActionController::Base
    protect_from_forgery
    before_filter :find_cart, :verify_user, :require_admin

    include AuthenticationHelpers
    include CartHelpers
  end
end