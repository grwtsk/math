import Mathlib.Tactic

/-! Exact rational core of #318; algebra only, no external zero or source budget instance.
Direction: grwtsk contributors; issue/derivation ChatGPT; formalization OpenAI Codex. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.FiniteRationalCertificate

def verifiedHeight : ℚ := 3*10^12
def limitingNormalization : ℚ := 4096/109395
def rationalTail : ℚ := 146/(150*verifiedHeight^5)+17/verifiedHeight^6
def finiteBudget (M : ℕ) : ℚ := 2*385^2*(1001/1000)^2/limitingNormalization*rationalTail*
  max 6 (((2719/1000)^M+3)/(M:ℚ)^9)

theorem budget160_lt : finiteBudget 160 < 1/500000 := by
  norm_num [finiteBudget, rationalTail, verifiedHeight, limitingNormalization]

theorem budget176_lt : finiteBudget 176 < 561/100 := by
  norm_num [finiteBudget, rationalTail, verifiedHeight, limitingNormalization]

theorem fixed_prime_coarse_constant :
    (65/6:ℚ)*((7/10)^3/(7/5)+(11/10)^3/(173/100)) = 152087/13840 := by norm_num

theorem fixed_prime_coarse_lt_eleven :
    (65/6:ℚ)*((7/10)^3/(7/5)+(11/10)^3/(173/100)) < 11 := by norm_num

theorem transfer160_value :
    -(3033/200:ℚ)-206/100-1/1000000 = -17225001/1000000 := by norm_num

theorem transfer160_gt : -(3033/200:ℚ)-206/100-1/1000000 > -18 := by norm_num

theorem transfer176_value :
    -(3033/200:ℚ)-206/25600-561/200 = -230119/12800 := by norm_num

theorem transfer176_gt : -(3033/200:ℚ)-206/25600-561/200 > -18 := by norm_num

#print axioms verifiedHeight
#print axioms limitingNormalization
#print axioms rationalTail
#print axioms finiteBudget
#print axioms budget160_lt
#print axioms budget176_lt
#print axioms fixed_prime_coarse_constant
#print axioms fixed_prime_coarse_lt_eleven
#print axioms transfer160_value
#print axioms transfer160_gt
#print axioms transfer176_value
#print axioms transfer176_gt
end ContinuousResearch.FiniteRationalCertificate
