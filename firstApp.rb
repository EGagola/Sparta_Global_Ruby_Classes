#Classes HW



class Furniture
  def initialize(width,height,length)
     @width, @height, @length = width, height, length
  end

  def print_area
    @area = @width * @length
    puts "area of the furtniture is #{@area} cm2"
  end
end
class Table < Furniture
   def height_check
      if @height < 100
        puts "This is a small table"
      elsif @height >= 100
        puts "This is a big table"
      end
   end
end

input = ARGV # makes array of values written in git bash after "ruby firstApp.rb" ie 30 40 20 becomes input = [30,40,20] as strings

coffee_table = Table.new(80,180,120)
dining_table  = Furniture.new(input[0].to_f,input[1].to_f,input[2].to_f)
dining_table.print_area()
coffee_table.print_area()
coffee_table.height_check()

# Unique numbers HW

#---------------------------------------------------------------------------------
#New way to do it
array = [3,4,5,6,9,10,3,4,2,9,4,3,9,3]
array_sorted = array.sort
  # p array_sorted
for k in 0 ... array_sorted.length
  if array_sorted[k] == array_sorted[k + 1]
    array_sorted.delete(array_sorted[k])
  end
end
# p "The numbers appearing once are #{array_sorted}"
# print "\n"
# print "\n"
#---------------------------------------------------------------------------------
#Original Method
#takes array from above ^^
value = [0,1,2,3,4,5,6,7,8,9,10]
times = [0,0,0,0,0,0,0,0,0,0,0]

for i in 0...array.length do
  case array[i]
  when 1
    times[1] += 1
  when 2
    times[2] += 1
  when 3
    times[3] += 1
  when 4
    times[4] += 1
  when 5
    times[5] += 1
  when 6
    times[6] += 1
  when 7
    times[7] += 1
  when 8
    times[8] += 1
  when 9
    times[9] += 1
  when 10
    times[10] += 1
  end
end
# p times
for j in 0 ... times.length
  if times[j] == 1
    # puts "#{value[j]} is unique"
  elsif times[j] > 1
    # puts "#{value[j]} is repeated #{times[j]} times"
end
end
print "\n"
print "\n"
#Way using lots of ruby methods
def repeated_nums array
  # print array.select{ |e| array.count(e) > 1}.sort

end
# puts repeated_nums array

def unique_nums array
  # print array.select{ |e| array.count(e) == 1}.sort
end
# puts unique_nums array
