# Complete source: GRWTSK.NumberTheory.Available.Variantad1c75677067722f03b32e2fef4d2a52cdae75d1a6298f52182697487ccc6325

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b598c5370315c9f12b2b24d1b2dd1a41108568d5` · SHA-256 `ad1c75677067722f03b32e2fef4d2a52cdae75d1a6298f52182697487ccc6325`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Analysis.Complex.JensenFormula
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
#check HurwitzZeta.hasSum_nat_cosKernel₀
#check HurwitzZeta.evenKernel_eq_cosKernel_of_zero
#check HurwitzZeta.evenKernel_functional_equation
#check HurwitzZeta.hurwitzEvenFEPair_zero_symm
#check WeakFEPair.f_modif
#check WeakFEPair.hf_modif_FE
#check WeakFEPair.isStrongFEPair_toStrongFEPair
#check WeakFEPair.IsStrongFEPair.mellinConvergent
#check IsStrongFEPair.mellinConvergent
#check Complex.norm_cpow_eq_rpow_re_of_pos
#check MeasureTheory.norm_integral_le_integral_norm
#check MeasureTheory.integral_mono_ae
#check completedRiemannZeta₀_one_sub
#check zeta_nat_eq_tsum_of_gt_one
#check Complex.Gamma_nat_eq_factorial
#check Nat.factorial_le_pow
#check Real.log_le_sub_one_of_pos
#check AnalyticOnNhd.sum_divisor_le
#check tsum_nonneg
#check HasSum.le
#check Summable.tsum_le_tsum
#check Summable.norm
#check Real.summable_nat_rpow
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf62f5143e262eeb6f4018b908a0c19380b701d4592809a8fdd6a35aad590705 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Available/Variantad1c75677067722f03b32e2fef4d2a52cdae75d1a6298f52182697487ccc6325.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
