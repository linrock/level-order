import assert from 'assert'

// checks if the queens are placed on valid positions
const checkBoard = board => {
  const n = board.length
  const directions = [
    [0,1], [1,1], [1,0], [1,-1],
    [0,-1], [-1,-1], [-1,0], [-1,1]
  ]
  const validQueenPlacement = (i, j) => {
    for (let k = 0; k < 8; k++) {
      let direction = directions[k]
      let p = [i + direction[0], j + direction[1]]
      while (p[0] >= 0 && p[0] < n && p[1] >= 0 && p[1] < n) {
        if (board[p[0]][p[1]] === 1) {
          return false
        }
        p[0] += direction[0]
        p[1] += direction[1]
      }
    }
    return true
  }
  for (let i = 0; i < n; i++) {
    for (let j = 0; j < n; j++) {
      if (board[i][j] === 1 && !validQueenPlacement(i, j)) {
        return false
      }
    }
  }
  return true
}

describe('n-queens problem', () => {
  context('backtracking', () => {
    const filePath = '../code/problems/n_queens/s2.js'
    const { nQueens } = require(filePath)

    it('solves the n queens problem', () => {
      assert.equal(checkBoard(nQueens(1)), true)
      assert.equal(nQueens(2), false)
      assert.equal(nQueens(3), false)
      for (let i = 4; i < 12; i++) {
        assert.equal(checkBoard(nQueens(8)), true)
      }
    })
  })
})
