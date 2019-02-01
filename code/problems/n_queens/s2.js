export function nQueens(n) {
  const board = Array(n).fill().map(() => Array(n).fill(0))
  const directions = [
    [0,1], [1,1], [1,0], [1,-1],
    [0,-1], [-1,-1], [-1,0], [-1,1]
  ]
  const canPlaceQueen = (i, j) => {
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
  const tryRow = (i) => {
    if (i === n) {
      return true
    }
    for (let j = 0; j < n; j++) {
      if (!canPlaceQueen(i, j)) {
        continue
      }
      board[i][j] = 1
      if (tryRow(i + 1)) {
        return true
      } else {
        board[i][j] = 0
      }
    }
  }
  return tryRow(0) ? board : false
}
