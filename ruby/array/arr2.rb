=begin
	
Given an array of distinct integers candidates and a target integer target, return a list of all unique combinations of candidates where the chosen numbers sum to target. You may return the combinations in any order.

The same number may be chosen from candidates an unlimited number of times. Two combinations are unique if the frequency of at least one of the chosen numbers is different.

It is guaranteed that the number of unique combinations that sum up to target is less than 150 combinations for the given input.

Input: candidates = [2,3,6,7], target = 7
Output: [[2,2,3],[7]]

 	
=end
def combination_sum(candidates, target)
  candidates.sort!
  combination = []
  results = []
  find_combination_sum(results, combination, candidates, target, 0)
  return results
end

def find_combination_sum(results, combination, candidates, target, startIndex)
  if target == 0
    return (results << combination.dup)
  end
  for i in startIndex...candidates.length
    if(candidates[i] > target)
      return;
    end

    combination << candidates[i]
    find_combination_sum(results, combination, candidates, target - candidates[i], i)
    combination.pop

  end
end
p combination_sum([2,3,6,7],7)