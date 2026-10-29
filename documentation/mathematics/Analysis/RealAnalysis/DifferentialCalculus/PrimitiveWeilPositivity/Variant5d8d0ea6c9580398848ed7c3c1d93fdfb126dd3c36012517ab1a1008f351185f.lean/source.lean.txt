module

public import Surface.Core.Weil.VerticalDecay
public import Surface.Core.ComplexAnalysis.MeromorphicOrder

/-!
# Primitive-Weil substrate axiom audit

This ledger covers only the coefficient-free Phase-1 substrate.  It does not
assert an explicit formula, Weil positivity, RH, GRH, or an inhabitant of a
future positivity-family proposition.
-/

#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.star_star_apply
#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.autocorrelation_neg
#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.autocorrelation_zero
#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.autocorrelation_support
#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.hasDerivAt_primitiveWeilLaplace
#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.differentiable_primitiveWeilLaplace
#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.primitiveWeilLaplace_star
#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.primitiveWeilLaplace_autocorrelation
#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.primitiveWeilLaplace_autocorrelation_on_criticalLine
#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.primitiveWeilLaplace_eq_fourier_laplaceSlice
#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.primitiveWeilLaplace_vertical_normalized_pow_bound
#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.primitiveWeilLaplace_vertical_pow_bound
#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.primitiveWeilLaplace_decay_fixedRealPart
#print axioms Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral_eq_zero_of_differentiableOn
#print axioms Surface.Core.ComplexAnalysis.rectangleVerticalShift_eq_horizontalDifference
#print axioms Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral_eq_zero_of_continuousOn_of_differentiableOn
#print axioms Surface.Core.ComplexAnalysis.rectangleDivisor_apply
#print axioms Surface.Core.ComplexAnalysis.rectangleDivisor_support_finite
#print axioms Surface.Core.ComplexAnalysis.mem_rectangleDivisorSupportFinset
