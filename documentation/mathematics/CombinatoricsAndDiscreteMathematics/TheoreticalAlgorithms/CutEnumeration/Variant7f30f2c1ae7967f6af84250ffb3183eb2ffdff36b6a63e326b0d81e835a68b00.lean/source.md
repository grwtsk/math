# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CutEnumeration.Variant7f30f2c1ae7967f6af84250ffb3183eb2ffdff36b6a63e326b0d81e835a68b00

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e82682e2c15d92c9c90c59c370f6cdde632c0187` · SHA-256 `7f30f2c1ae7967f6af84250ffb3183eb2ffdff36b6a63e326b0d81e835a68b00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP0.PrimeHorizon

/-!
# Certified cut enumeration

A finite chronological listing of one prime cut, with freshness retained as an
explicit field for downstream telescoping.
-/

namespace Mathematics.SemiLocalDefect.SoninCore

structure CutEnumeration
    (U : FinitePrimeHorizon)
    (S : PrimeCut U) where
  order : List U.Prime
  nodup : order.Nodup
  toFinset_eq : order.toFinset = S
  fresh :
    ∀ i : Fin order.length,
      order.get i ∉
        (order.take i.val).toFinset

def CutEnumeration.prefixCut
    {U : FinitePrimeHorizon}
    {S : PrimeCut U}
    (E : CutEnumeration U S)
    (n : Nat) :
    PrimeCut U :=
  (E.order.take n).toFinset

@[simp]
theorem CutEnumeration.prefixCut_zero
    {U : FinitePrimeHorizon}
    {S : PrimeCut U}
    (E : CutEnumeration U S) :
    E.prefixCut 0 = ∅ := by
  simp [CutEnumeration.prefixCut]

@[simp]
theorem CutEnumeration.prefixCut_length
    {U : FinitePrimeHorizon}
    {S : PrimeCut U}
    (E : CutEnumeration U S) :
    E.prefixCut E.order.length = S := by
  simp [
    CutEnumeration.prefixCut,
    E.toFinset_eq
  ]

end Mathematics.SemiLocalDefect.SoninCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f160ddf2f4ee860140c0c70e0097c353f0dec7198052adb6c7aefa6b87fdf0d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CutEnumeration/Variant7f30f2c1ae7967f6af84250ffb3183eb2ffdff36b6a63e326b0d81e835a68b00.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
