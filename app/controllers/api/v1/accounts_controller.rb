class Api::V1::AccountsController < ApplicationController

  def update
    id = JWT.decode(request.headers["Authorization"], ENV["PLAY_IT_SAFE"])[0]["identifier"]
    @account = Account.find(params[:id])

    if @account.user.id === id
      new_balance = @account.balance.to_i + update_account_balance["amount"]
      @account.update(balance: new_balance.to_s)
      render json: UsersSerializer.new(@account.user).serialized_json, status: :ok
    end
  end



  private

  def update_account_balance
    params.require(:account).permit(:amount)
  end
end
