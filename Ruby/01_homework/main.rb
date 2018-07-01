# class of user
class User
  def fio
    'Ivanov Ivan Ivanovich'
  end

  def profession
    'Software Engineer'
  end
end

# class of computer
class Computer
end

# class of network
class Network
end

# class of host
class Host
end

user = User.new

puts user.fio
puts user.profession
