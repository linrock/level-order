import assert from 'assert'

describe('longest common subsequence', () => {
  const s1 = "AABCDEFAAX"
  const s2 = "AABCXXDEEFFAXA"

  context('dynamic programming', () => {
    const filePath = '../code/problems/longest_common_subsequence/s2.js'
    const { longestCommonSubsequence } = require(filePath)

    it('should find the longest common subsequence length', () => {
      assert.equal(longestCommonSubsequence(s1, s2), 9)
    })
  })
})
