import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier
import Mathlib.Analysis.Fourier.Convolution
import Mathlib.Analysis.Fourier.Inversion
open MeasureTheory Complex
open scoped FourierTransform Convolution
#check integral_comp_neg
#check integral_re
#check integral_conj
#check Complex.exp_conj
#check Complex.normSq_eq_conj_mul_self
#check Complex.mul_conj
#check Complex.conj_mul
#check Real.integrable_comp_div
#check Measure.integral_comp_mul_left
#check ContinuousLinearMap.integral_comp_comm
#check MeasureTheory.Integrable.bdd_mul
#check MeasureTheory.Integrable.mul_continuous_of_bounded
#check Real.fourierIntegral_convergent_iff
#check Real.fourierInv_eq'
#check integral_div
#check Integrable.div_const
