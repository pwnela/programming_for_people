require 'rspec'

class RobotSearch
  def find_cupcake(cx, cy)
    @x = 0
    @y = 0
    @d = 0
    @f = false

    6.times do
      @x += 1
      @y += 1
    end

    if(@x == cx && @y == cy)
      puts 'You found the cupcake!'
      @f = true
    end

    unless(@f)
      @d = 90
    end

    6.times do
      @x += 1
      @y += 1
    end

    if(@x == cx && @y == cy)
      puts 'You found the cupcake!'
      @f = true
    end

    unless(@f)
      @d = 90
    end

    if(@f)
      puts "Found cupcate at position #{@x}, #{@y}!"
    else
      puts 'I give up.'
    end

    @f
  end
end

describe 'RobotSearch' do
  it "finds a cupcake if cupcake is in robot's path" do
    robot_search = RobotSearch.new
    robot_search.find_cupcake(6, 6).should be_true
  end

  it "does not find a cupcake if cupcake is not in robot's path" do
    robot_search = RobotSearch.new
    robot_search.find_cupcake(2, 2).should be_false
  end 
end

class RobotSearch
  def find_cupcake(cupcake_x, cupcake_y)
    @robot_x = 0
    @robot_y = 0
    @robot_direction = 0
    @found_cupcake = false

    6.times do
      @robot_x += 1
      @robot_y += 1
    end

    if(@robot_x == cupcake_x && @robot_y == cupcake_y)
      puts 'You found the cupcake!'
      @found_cupcake = true
    end

    unless(@found_cupcake)
      @robot_direction = 90
    end

    6.times do
      @robot_x += 1
      @robot_y += 1
    end

    if(@robot_x == cupcake_x && @robot_y == cupcake_y)
      puts 'You found the cupcake!'
      @found_cupcake = true
    end

    unless(@found_cupcake)
      @robot_direction = 90
    end

    if(@found_cupcake)
      puts "Found cupcate at position #{@robot_x}, #{@robot_y}!"
    else
      puts 'I give up.'
    end

    @found_cupcake
  end

end

describe 'RobotSearch' do
  it "finds a cupcake if cupcake is in robot's path" do
    robot_search = RobotSearch.new
    robot_search.find_cupcake(6, 6).should be_true
  end

  it "does not find a cupcake if cupcake is not in robot's path" do
    robot_search = RobotSearch.new
    robot_search.find_cupcake(2, 2).should be_false
  end 
end

class RobotSearch
  def find_cupcake(cupcake_x, cupcake_y)
    put_robot_at_starting_point

    6.times do
      @robot_x += 1
      @robot_y += 1
    end

    if(@robot_x == cupcake_x && @robot_y == cupcake_y)
      puts 'You found the cupcake!'
      @found_cupcake = true
    end

    unless(@found_cupcake)
      @robot_direction = 90
    end

    6.times do
      @robot_x += 1
      @robot_y += 1
    end

    if(@robot_x == cupcake_x && @robot_y == cupcake_y)
      puts 'You found the cupcake!'
      @found_cupcake = true
    end

    unless(@found_cupcake)
      @robot_direction = 90
    end

    if(@found_cupcake)
      puts "Found cupcate at position #{@robot_x}, #{@robot_y}!"
    else
      puts 'I give up.'
    end

    @found_cupcake
  end

  def put_robot_at_starting_point
    @robot_x = 0
    @robot_y = 0
    @robot_direction = 0
    @found_cupcake = false
  end
end

describe 'RobotSearch' do
  it "finds a cupcake if cupcake is in robot's path" do
    robot_search = RobotSearch.new
    robot_search.find_cupcake(6, 6).should be_true
  end

  it "does not find a cupcake if cupcake is not in robot's path" do
    robot_search = RobotSearch.new
    robot_search.find_cupcake(2, 2).should be_false
  end 
end

class RobotSearch
  def find_cupcake(cupcake_x, cupcake_y)
    put_robot_at_starting_point
    walk_forward_steps(6)

    if(@robot_x == cupcake_x && @robot_y == cupcake_y)
      puts 'You found the cupcake!'
      @found_cupcake = true
    end

    unless(@found_cupcake)
      @robot_direction = 90
    end

    walk_forward_steps(6)

    if(@robot_x == cupcake_x && @robot_y == cupcake_y)
      puts 'You found the cupcake!'
      @found_cupcake = true
    end

    unless(@found_cupcake)
      @robot_direction = 90
    end

    if(@found_cupcake)
      puts "Found cupcate at position #{@robot_x}, #{@robot_y}!"
    else
      puts 'I give up.'
    end

    @found_cupcake
  end

  def walk_forward_steps(number_of_steps)
    number_of_steps.times do
      @robot_x += 1
      @robot_y += 1
    end
  end

  def put_robot_at_starting_point
    @robot_x = 0
    @robot_y = 0
    @robot_direction = 0
    @found_cupcake = false
  end
end

describe 'RobotSearch' do
  it "finds a cupcake if cupcake is in robot's path" do
    robot_search = RobotSearch.new
    robot_search.find_cupcake(6, 6).should be_true
  end

  it "does not find a cupcake if cupcake is not in robot's path" do
    robot_search = RobotSearch.new
    robot_search.find_cupcake(2, 2).should be_false
  end 
end

class RobotSearch
  def find_cupcake(cupcake_x, cupcake_y)
    put_robot_at_starting_point
    walk_forward_steps(6)
    check_if_found_cupcake?(cupcake_x, cupcake_y)

    unless(@found_cupcake)
      @robot_direction = 90
    end

    walk_forward_steps(6)
    check_if_found_cupcake?(cupcake_x, cupcake_y)

    unless(@found_cupcake)
      @robot_direction = 90
    end

    if(@found_cupcake)
      puts "Found cupcate at position #{@robot_x}, #{@robot_y}!"
    else
      puts 'I give up.'
    end

    @found_cupcake
  end

  def check_if_found_cupcake?(cupcake_x, cupcake_y)
    if(@robot_x == cupcake_x && @robot_y == cupcake_y)
      puts 'You found the cupcake!'
      @found_cupcake = true
    end
  end

  def walk_forward_steps(number_of_steps)
    number_of_steps.times do
      @robot_x += 1
      @robot_y += 1
    end
  end

  def put_robot_at_starting_point
    @robot_x = 0
    @robot_y = 0
    @robot_direction = 0
    @found_cupcake = false
  end
end

describe 'RobotSearch' do
  it "finds a cupcake if cupcake is in robot's path" do
    robot_search = RobotSearch.new
    robot_search.find_cupcake(6, 6).should be_true
  end

  it "does not find a cupcake if cupcake is not in robot's path" do
    robot_search = RobotSearch.new
    robot_search.find_cupcake(2, 2).should be_false
  end 
end

class RobotSearch
  def find_cupcake(cupcake_x, cupcake_y)
    put_robot_at_starting_point
    walk_forward_steps(6)
    check_if_found_cupcake?(cupcake_x, cupcake_y)
    turn_right
    walk_forward_steps(6)
    check_if_found_cupcake?(cupcake_x, cupcake_y)
    turn_right

    if(@found_cupcake)
      puts "Found cupcate at position #{@robot_x}, #{@robot_y}!"
    else
      puts 'I give up.'
    end

    @found_cupcake
  end

  def turn_right
    unless(@found_cupcake)
      @robot_direction = 90
    end
  end

  def check_if_found_cupcake?(cupcake_x, cupcake_y)
    if(@robot_x == cupcake_x && @robot_y == cupcake_y)
      puts 'You found the cupcake!'
      @found_cupcake = true
    end
  end

  def walk_forward_steps(number_of_steps)
    number_of_steps.times do
      @robot_x += 1
      @robot_y += 1
    end
  end

  def put_robot_at_starting_point
    @robot_x = 0
    @robot_y = 0
    @robot_direction = 0
    @found_cupcake = false
  end
end

describe 'RobotSearch' do
  it "finds a cupcake if cupcake is in robot's path" do
    robot_search = RobotSearch.new
    robot_search.find_cupcake(6, 6).should be_true
  end

  it "does not find a cupcake if cupcake is not in robot's path" do
    robot_search = RobotSearch.new
    robot_search.find_cupcake(2, 2).should be_false
  end 
end

class RobotSearch
  def find_cupcake(cupcake_x, cupcake_y)
    put_robot_at_starting_point
    walk_forward_steps(6)
    check_if_found_cupcake?(cupcake_x, cupcake_y)
    turn_right
    walk_forward_steps(6)
    check_if_found_cupcake?(cupcake_x, cupcake_y)
    turn_right
    yay_found?
  end

  def yay_found?
    if(@found_cupcake)
      puts "Found cupcate at position #{@robot_x}, #{@robot_y}!"
    else
      puts 'I give up.'
    end
    @found_cupcake
  end

  def turn_right
    unless(@found_cupcake)
      @robot_direction = 90
    end
  end

  def check_if_found_cupcake?(cupcake_x, cupcake_y)
    if(@robot_x == cupcake_x && @robot_y == cupcake_y)
      puts 'You found the cupcake!'
      @found_cupcake = true
    end
  end

  def walk_forward_steps(number_of_steps)
    number_of_steps.times do
      @robot_x += 1
      @robot_y += 1
    end
  end

  def put_robot_at_starting_point
    @robot_x = 0
    @robot_y = 0
    @robot_direction = 0
    @found_cupcake = false
  end
end

describe 'RobotSearch' do
  it "finds a cupcake if cupcake is in robot's path" do
    robot_search = RobotSearch.new
    robot_search.find_cupcake(6, 6).should be_true
  end

  it "does not find a cupcake if cupcake is not in robot's path" do
    robot_search = RobotSearch.new
    robot_search.find_cupcake(2, 2).should be_false
  end 
end

class RobotSearch
  def find_cupcake(cupcake_x, cupcake_y)
    put_robot_at_starting_point
    search(cupcake_x, cupcake_y)
    search(cupcake_x, cupcake_y)
    yay_found?
  end

  def search(cupcake_x, cupcake_y)
    walk_forward_steps(6)
    check_if_found_cupcake?(cupcake_x, cupcake_y)
    turn_right
  end

  def yay_found?
    if(@found_cupcake)
      puts "Found cupcate at position #{@robot_x}, #{@robot_y}!"
    else
      puts 'I give up.'
    end
    @found_cupcake
  end

  def turn_right
    unless(@found_cupcake)
      @robot_direction = 90
    end
  end

  def check_if_found_cupcake?(cupcake_x, cupcake_y)
    if(@robot_x == cupcake_x && @robot_y == cupcake_y)
      puts 'You found the cupcake!'
      @found_cupcake = true
    end
  end

  def walk_forward_steps(number_of_steps)
    number_of_steps.times do
      @robot_x += 1
      @robot_y += 1
    end
  end

  def put_robot_at_starting_point
    @robot_x = 0
    @robot_y = 0
    @robot_direction = 0
    @found_cupcake = false
  end
end

describe 'RobotSearch' do
  it "finds a cupcake if cupcake is in robot's path" do
    robot_search = RobotSearch.new
    robot_search.find_cupcake(6, 6).should be_true
  end

  it "does not find a cupcake if cupcake is not in robot's path" do
    robot_search = RobotSearch.new
    robot_search.find_cupcake(2, 2).should be_false
  end 
end