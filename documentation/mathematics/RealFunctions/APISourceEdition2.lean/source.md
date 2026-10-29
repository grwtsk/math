# APISource Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `788fcc4363ded10160e3d28f8b36e65039084483` · SHA-256 `d8e547b6a79faa24f62e3307c7eb245c36a0901d5c63f9adbeacc4917c790c53`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.Gamma.BohrMollerup
import Mathlib.NumberTheory.Harmonic.EulerMascheroni
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.PSeries
import Mathlib.Tactic

#check harmonic
#print harmonic
#check Real.BohrMollerup.logGammaSeq
#check Real.BohrMollerup.tendsto_log_gamma
#check Real.tendsto_harmonic_sub_log
#check Real.tendsto_harmonic_sub_log_add_one
#check Real.tendsto_log_nat_add_one_sub_log
#check Real.log_prod
#check Nat.factorial_eq_prod_range_add_one
#check Finset.prod_range_add_one_eq_factorial
#check hasSum_iff_tendsto_nat_of_nonneg
#check summable_nat_rpow
#check AntitoneOn.tsum_comp_add_le_integral
#check Real.integral_Ioi_rpow_of_lt
#check integral_Ioi_rpow_of_lt
#check Real.le_log_one_add_of_nonneg
#check Real.one_sub_inv_le_log_of_pos
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=674646673681fc67e9c3b5d3fa9f1a62c764c2a5e66ce28ad1410493fc16d605 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/API/Variantd8e547b6a79faa24f62e3307c7eb245c36a0901d5c63f9adbeacc4917c790c53.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
