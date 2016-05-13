require '../features/support/env'
class RedBox
  attr_accessor :user_name , :movie_name
  def rent_movie
    count=0
    movie_stock=$sqlconnection.fetch("select * from movies where name='#{movie_name}'")
    movie_stock.each do |row|
      count=row[:stock]
    end
    if(count<=0)
      "Movie Out Of Stock"
    else
      $sqlconnection.execute("update movies set stock=stock-1 where name='#{movie_name}'")
      $sqlconnection.execute("update user set item_count=item_count-1 where user_name='#{user_name}'")
      "Success"
    end
  end


  def accept_movie

  end
end


