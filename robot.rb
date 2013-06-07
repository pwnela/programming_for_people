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

    if(found_cupcake)
      puts "Found cupcate at position #{@robot_x}, #{@robot_y}!"
    else
      puts 'I give up.'
    end
  end
end


class RobotSearch
  def find_cupcake(cupcake_x, cupcake_y)
    put_robot_at_starting_point

    6.times do
      @robot_x += i
      @robot_y += i
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

    if(found_cupcake)
      puts "Found cupcate at position #{@robot_x}, #{@robot_y}!"
    else
      puts 'I give up.'
    end
  end

  def put_robot_at_starting_point
    @robot_x = 0
    @robot_y = 0
    @robot_direction = 0
    @found_cupcake = false
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

    if(found_cupcake)
      puts "Found cupcate at position #{@robot_x}, #{@robot_y}!"
    else
      puts 'I give up.'
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

    if(found_cupcake)
      puts "Found cupcate at position #{@robot_x}, #{@robot_y}!"
    else
      puts 'I give up.'
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


class RobotSearch
  def find_cupcake(cupcake_x, cupcake_y)
    put_robot_at_starting_point
    walk_forward_steps(6)
    check_if_found_cupcake?(cupcake_x, cupcake_y)
    turn_right
    walk_forward_steps(6)
    check_if_found_cupcake?(cupcake_x, cupcake_y)
    turn_right

    if(found_cupcake)
      puts "Found cupcate at position #{@robot_x}, #{@robot_y}!"
    else
      puts 'I give up.'
    end
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


class RobotSearch
  def find_cupcake(cupcake_x, cupcake_y)
    put_robot_at_starting_point
    walk_forward_steps(6)
    check_if_found_cupcake?(cupcake_x, cupcake_y)
    turn_right
    walk_forward_steps(6)
    check_if_found_cupcake?(cupcake_x, cupcake_y)
    turn_right
    yay_found?(found)
  end

  def yay_found?(found)
    if(found_cupcake)
      puts "Found cupcate at position #{@robot_x}, #{@robot_y}!"
    else
      puts 'I give up.'
    end
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


class RobotSearch
  def find_cupcake(cupcake_x, cupcake_y)
    put_robot_at_starting_point
    search
    search
    yay_found?(found)
  end

  def search
    walk_forward_steps(6)
    check_if_found_cupcake?(cupcake_x, cupcake_y)
    turn_right
  end

  def yay_found?(found)
    if(found_cupcake)
      puts "Found cupcate at position #{@robot_x}, #{@robot_y}!"
    else
      puts 'I give up.'
    end
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
