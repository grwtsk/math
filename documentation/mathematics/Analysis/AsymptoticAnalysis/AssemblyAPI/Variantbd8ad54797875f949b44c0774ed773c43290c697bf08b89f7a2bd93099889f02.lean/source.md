# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.AssemblyAPI.Variantbd8ad54797875f949b44c0774ed773c43290c697bf08b89f7a2bd93099889f02

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f70fc8ce3815c50a3571d01879363afdf26c356` · SHA-256 `bd8ad54797875f949b44c0774ed773c43290c697bf08b89f7a2bd93099889f02`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.FrullaniIntegral
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Tactic
open MeasureTheory Set Filter
open scoped Topology
#check Real.exp_nat_mul
#check Real.exp_mul_nat
#check HasSum.congr
#check ENNReal.ofReal_tsum_of_nonneg
#check ENNReal.ofReal_tsum
#check ENNReal.hasSum_ofReal
#check ofReal_integral_norm_eq_lintegral_enorm
#check hasFiniteIntegral_iff_enorm
#check enorm_tsum_le_tsum_enorm
#check lintegral_tsum
#check HasSum.unique
#check Real.exp_lt_exp
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a85423ec4ea9594c3d002aba99877a28f8e006b4ada0a86b565bd7df8e7dd0a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/AssemblyAPI/Variantbd8ad54797875f949b44c0774ed773c43290c697bf08b89f7a2bd93099889f02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
