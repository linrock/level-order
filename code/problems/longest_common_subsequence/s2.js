export function longestCommonSubsequence(s1, s2) {
  const [m, n] = [s1.length, s2.length]
  const lcsLengths = Array(m + 1).fill().map(() => Array(n + 1).fill(0))
  for (let i = 1; i <= m; i++) {
    for(let j = 1; j <= n; j++) {
      if (s1[i - 1] === s2[j - 1]) {
        lcsLengths[i][j] = 1 + lcsLengths[i - 1][j - 1]
      } else {
        lcsLengths[i][j] = Math.max(
          lcsLengths[i - 1][j],
          lcsLengths[i][j - 1]
        )
      }
    }
  }
  return lcsLengths[m][n]
}
