class AccountsSerializer
  include FastJsonapi::ObjectSerializer
  attributes   :user_id, :balance, :starting_balance
end
