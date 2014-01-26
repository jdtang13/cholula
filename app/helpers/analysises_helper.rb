module AnalysisesHelper

def score(analysis)
	score = 0
	analysis.annotations.each do |a|
		score += a.score
	end
	return score
end

end
