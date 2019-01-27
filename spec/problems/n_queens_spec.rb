RSpec.describe 'n-queens problem' do
  let(:directions) do
    [
      [0, 1], [1, 1], [1, 0], [1, -1],
      [0, -1], [-1, -1], [-1, 0], [-1, -1]
    ]
  end

  def check_board(board, n)
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

  context 'brute force' do
    before { require 'n_queens/s1.rb' }

    it 'solves n queens' do
      expect(check_board(n_queens(1), 1)).to eq(true)
      expect(n_queens(2)).to eq(false)
      expect(n_queens(3)).to eq(false)
      expect(check_board(n_queens(4), 4)).to eq(true)
      expect(check_board(n_queens(5), 5)).to eq(true)
    end
  end

  context 'backtracking' do
    before { require 'n_queens/s2.rb' }

    it 'solves n queens' do
      expect(check_board(n_queens(1), 1)).to eq(true)
      expect(n_queens(2)).to eq(false)
      expect(n_queens(3)).to eq(false)
      expect(check_board(n_queens(4), 4)).to eq(true)
      expect(check_board(n_queens(6), 6)).to eq(true)
      expect(check_board(n_queens(8), 8)).to eq(true)
      expect(check_board(n_queens(10), 10)).to eq(true)
    end
  end
end
