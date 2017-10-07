require_relative 'poly_node_tree/lib/00_tree_node'

class KnightPathRider

  RELATIVE_MOVES = [[2, 1], [1, 2], [-1, 2], [-2, 1], [-2, -1], [-1, -2], [1, -2], [2, -1]]

  def self.valid_moves(pos)
    pot_moves =[]
    RELATIVE_MOVES.each do |sub_arr|
      x_coordinate = pos.first + sub_arr.first
      y_coordinate = pos.last + sub_arr.last
      pot_moves << [x_coordinate, y_coordinate] unless out_of_board?(x_coordinate, y_coordinate)
    end
    pot_moves
  end

  def self.out_of_board?(*args)
    args.any? { |el| el < 0 || el > 7 }
  end



  def initialize(pos)
    @pos = PolyTreeNode.new(pos)
    @visited_positions = [pos]

  end

  def new_move_positions(pos)
    new_positions = valid_moves(pos).reject{ |pos| visited_positions.include?(pos) }
    @visited_positions += new_positions
    new_positions
  end

  def build_move_tree
    
  end



end
