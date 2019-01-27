def n_queens(n)
  return false if n == 2 || n == 3
  board = Array.new(n+1) { Array.new(n+1, 0) }
  if n % 2 == 1
    board[n][n] = 1
    n -= 1
  end
  if n % 6 != 0
    (1 .. n/2).each do |i|
      j = (2*i + n/2 - 3) % n
      board[i][1 + j] = 1
      board[n + 1 - i][n - j] = 1
    end
  elsif (n - 2) % 6 != 0
    (1 .. n/2).each do |i|
      board[i][2*i] = 1
      board[n/2 + i][2*i - 1] = 1
    end
  end
  board[1 .. -1].map {|row| row[1 .. -1] }
end
