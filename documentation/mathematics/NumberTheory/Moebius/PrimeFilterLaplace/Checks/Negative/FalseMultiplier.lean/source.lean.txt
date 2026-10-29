import GRWTSK.NumberTheory.Moebius.PrimeFilterLaplace
open GRWTSK.RiemannHypothesis.CCC
example (h : noteWindowLaplace (primeNoteCascade {2}) 1 (Real.log 2) =
    (1-primeLaplaceWeight 2 1)*noteWindowLaplace baseNote 1 (Real.log 2)) : False := by
  exact first_prime_window_not_multiplier h

example : noteWindowLaplace (primeNoteCascade {2}) 1 (Real.log 2) =
    (1-primeLaplaceWeight 2 1)*noteWindowLaplace baseNote 1 (Real.log 2) := by
  exact first_prime_window_not_multiplier
