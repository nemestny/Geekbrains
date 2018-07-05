# tries = 0
# begin
#   tries +=1
#   puts "Попытка #{tries}..."
#   raise 'Ошибка'
# rescue
#   retry if tries < 3
#   puts 'Попытки закончились'  
# end

def say
  # begin
    raise 'Ошибка' if rand(2).zero?
  rescue
    puts 'Только в случае ошибки'
  else
    puts 'Только в случае успешного выполнения'
  ensure
    puts 'В любом случае'
  # end
end

say
