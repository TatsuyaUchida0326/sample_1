class DashboardsController < ApplicationController
    before_action :authenticate_user!
  
    def show
      # ユーザーのダッシュボード表示に関するアクション
    end
  end
  