/- Strict Gaussian decay cannot be replaced by a nonnegative width.
Mathematical direction grwtsk contributors; formal implementation OpenAI Codex.
Released under Apache-2.0; imported results retain their authorship and licenses. -/
import GRWTSK.Analysis.MellinTransform.Checks.Positive.LogarithmicGaussian
open GRWTSK.Analysis.MellinTransform.LogarithmicGaussian
open GaussianWidthControl

-- Intended rejection: nonnegative width cannot supply strictly positive real part.
example : MellinConvergent (logarithmicGaussianWith 0) 0 :=
  logarithmicGaussianWith_convergent (b := 0) zero_width_nonnegative 0
