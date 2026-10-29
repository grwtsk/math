# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.QuadratureCheck.Variant3feeba3ce63698db9abcd231844a97ec100bccaf72b2d1c8382d56aa415965b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `648bb5d11070db491011703067a187d22f9b7ec3` · SHA-256 `3feeba3ce63698db9abcd231844a97ec100bccaf72b2d1c8382d56aa415965b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
#check Finset.sum_Icc_succ_top
#check Nat.le_induction
#check Nat.floor_le
#check Nat.lt_floor_add_one
#check Nat.le_floor
#check Nat.one_le_floor
#check intervalIntegral.integral_const
#check intervalIntegral.integral_mono_on
#check intervalIntegral.integral_nonneg
#check ContinuousOn.intervalIntegrable
#check Real.continuousOn_log
#check Finset.sum_Ico_add
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4234d284357da350155d2da05b5a07781052cfc3d2e284699398d8d8428dc285 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/QuadratureCheck/Variant3feeba3ce63698db9abcd231844a97ec100bccaf72b2d1c8382d56aa415965b5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
