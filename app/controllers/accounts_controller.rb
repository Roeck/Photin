class AccountsController < ApplicationController
    before_action :authenticate_account!

    def index
        # User dashboard
    end

    def show
        # User profile
    end
end
