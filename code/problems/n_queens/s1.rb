def n_queens(n)
  board = Array.new(n) { Array.new(n, 0) }
  directions = [
    [0, 1], [1, 1], [1, 0], [1, -1],
    [0, -1], [-1, -1], [-1, 0], [-1, -1]
  ]

  check_board = lambda do
    n_queens = 0
    (0 .. n-1).each do |row|
      (0 .. n-1).each do |col|
        next if board[row][col] == 0
        directions.each do |dir|
          i, j = row + dir[0], col + dir[1]
          while i >= 0 and i < n and j >= 0 and j < n
            return false if board[i][j] == 1
            i, j = i + dir[0], j + dir[1]
          end
        end
        n_queens += 1
      end
    end
    n_queens == n
  end

  n_sq = n**2
  positions = (0 .. n-1).to_a
  positions.each do |j|
    board[j / n][j % n] = 1
  end
  end_positions = (n_sq-n .. n_sq-1).to_a
  while !check_board.call
    i = n - 1
    positions[i] += 1
    board = Array.new(n) { Array.new(n, 0) }
    positions.each do |j|
      board[j / n][j % n] = 1
    end
    while positions[i] == end_positions[i]
      i -= 1
      positions[i] += 1
      return false if positions[i] == n_sq
      positions[i + 1] = positions[i]
    end
  end
  board
end
