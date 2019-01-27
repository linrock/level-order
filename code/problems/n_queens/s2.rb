def n_queens(n)
  board = Array.new(n) { Array.new(n, 0) }
  diagonals = [[-1, -1], [1, -1], [1, 1], [-1, 1]]

  can_place_queen = lambda do |row, column|
    (0 .. n-1).each do |i|
      return false if board[row][i] == 1
      return false if board[i][column] == 1
    end
    diagonals.each do |diagonal|
      i, j = row + diagonal[0], column + diagonal[1]
      while i >= 0 and i < n and j >= 0 and j < n
        return false if board[i][j] == 1
        i, j = i + diagonal[0], j + diagonal[1]
      end
    end
    true
  end

  try_row = lambda do |row|
    return true if row == n
    (0 .. n-1).each do |column|
      next unless can_place_queen.call(row, column)
      board[row][column] = 1
      if try_row.call(row + 1)
        return board
      else
        board[row][column] = 0
      end
    end
    false
  end

  try_row.call(0)
end
