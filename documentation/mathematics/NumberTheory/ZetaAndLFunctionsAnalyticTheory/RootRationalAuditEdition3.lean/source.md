# Root Rational Audit Edition3 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `595282004547ead2d845a58a9d3325c86575b8ab` · SHA-256 `80be77d50b567abebddb84f9a9bb7135b2f221a9ba2371f658d8951ff80c48df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceRationalExactBaseline
import SourceRationalUniformEquivalence
set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourceRationalExactBaseline
#check halfEnergyValue
#print halfEnergyValue
#print axioms halfEnergyValue
#check halfEnergyValue_pos
#print halfEnergyValue_pos
#print axioms halfEnergyValue_pos
#check halfEnergyValue_lt_two
#print halfEnergyValue_lt_two
#print axioms halfEnergyValue_lt_two
#check halfEnergyValue_mono
#print halfEnergyValue_mono
#print axioms halfEnergyValue_mono
#check continuousPoleHalf_eq_exact
#print continuousPoleHalf_eq_exact
#print axioms continuousPoleHalf_eq_exact
#check continuousPoleHalf_lt_zero
#print continuousPoleHalf_lt_zero
#print axioms continuousPoleHalf_lt_zero
#check rationalBaseline_eq_exact
#print rationalBaseline_eq_exact
#print axioms rationalBaseline_eq_exact
#check rationalBaseline_upper_at_radius
#print rationalBaseline_upper_at_radius
#print axioms rationalBaseline_upper_at_radius
#check rationalBaseline_strict_improvement
#print rationalBaseline_strict_improvement
#print axioms rationalBaseline_strict_improvement
#check residual_upper_at_radius
#print residual_upper_at_radius
#print axioms residual_upper_at_radius
#check all_real_lower_at_radius
#print all_real_lower_at_radius
#print axioms all_real_lower_at_radius
#check leading_upper_at_receiving_radius
#print leading_upper_at_receiving_radius
#print axioms leading_upper_at_receiving_radius
#check estimate_of_exact_rational_bound
#print estimate_of_exact_rational_bound
#print axioms estimate_of_exact_rational_bound
open FormalResearch.RiemannHypothesis.SourceRationalUniformEquivalence
#check rational_remainder_eq_constant_remainder
#print rational_remainder_eq_constant_remainder
#print axioms rational_remainder_eq_constant_remainder
#check remainder_shift_bounds_at_radius
#print remainder_shift_bounds_at_radius
#print axioms remainder_shift_bounds_at_radius
#check constant_remainder_upper_of_rational
#print constant_remainder_upper_of_rational
#print axioms constant_remainder_upper_of_rational
#check rational_remainder_upper_of_constant
#print rational_remainder_upper_of_constant
#print axioms rational_remainder_upper_of_constant
#check rational_uniform_bound_iff_constant_uniform_bound
#print rational_uniform_bound_iff_constant_uniform_bound
#print axioms rational_uniform_bound_iff_constant_uniform_bound
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0bf352de6b2aa4fdfc0ea362141d8d352fc0d5c0097b951eee0aff280f22adc7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootRationalAudit/Variant80be77d50b567abebddb84f9a9bb7135b2f221a9ba2371f658d8951ff80c48df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
