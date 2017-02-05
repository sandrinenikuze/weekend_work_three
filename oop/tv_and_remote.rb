# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class.&&&

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Tv 
  def initialize(tv_information)
    @power = tv_information[:power]
    @volume = tv_information[:volume]
    @channel = tv_information[:channel]
  end 
  def power
   return @power
  end 

  def volume
   @volume
  end

  def channel
   @channel
  end
  
end


class Remote < Tv

  def initialize(tv)
    @tv = tv
  end
  def toggle_power
    if 
      @power == true
      puts false
    else
      
      return true
    end
  end 
   
  def increment_volume
   @volume +=1
  end 

  def decrement_volume
    @volume -=1
  end 

  def set_channel
    @channel
  end 
end 





puts "Tv and Remote"
puts
remote = Remote.new("tv")
tv = Tv.new({power:"true", volume:1, channel:24})

result = remote.toggle_power
puts "toggle_power returned:"
puts result
puts
if result == true
  puts "Pass"
else
  puts "F"
end 

result= remote.increment_volume
puts "increment_volume returned"
puts result
puts
if result == 2
  puts "Pass"
else
  puts "F"
end

result = remote.decrement_volume
  puts "decrement_volume returned:"
  puts result
  if result == 0
    puts "Pass"
  else
    puts "F"
  end






