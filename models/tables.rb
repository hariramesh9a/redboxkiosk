module TablesDB
  class User < Sequel::Model($sqlconnection[:"user"])
  end
  class Movies < Sequel::Model($sqlconnection[:"movies"])
  end
end