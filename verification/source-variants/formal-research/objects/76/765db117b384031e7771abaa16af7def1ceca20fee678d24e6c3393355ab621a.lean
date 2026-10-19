import SourceActualWeightedPeano

/-! Dedicated exact declaration and transitive-axiom audit. -/

set_option linter.hashCommand false
namespace FormalResearch.RiemannHypothesis.SourceActualWeightedPeano
set_option pp.all true in
#check weightedCorrelation_contDiff_two
set_option pp.all true in
#print weightedCorrelation_contDiff_two
#print axioms weightedCorrelation_contDiff_two

set_option pp.all true in
#check actual_correlation_deriv_zero
set_option pp.all true in
#print actual_correlation_deriv_zero
#print axioms actual_correlation_deriv_zero

set_option pp.all true in
#check weightedCorrelation_zero
set_option pp.all true in
#print weightedCorrelation_zero
#print axioms weightedCorrelation_zero

set_option pp.all true in
#check weightedCorrelation_deriv_zero
set_option pp.all true in
#print weightedCorrelation_deriv_zero
#print axioms weightedCorrelation_deriv_zero

set_option pp.all true in
#check weightedCorrelation_peano
set_option pp.all true in
#print weightedCorrelation_peano
#print axioms weightedCorrelation_peano

end FormalResearch.RiemannHypothesis.SourceActualWeightedPeano
