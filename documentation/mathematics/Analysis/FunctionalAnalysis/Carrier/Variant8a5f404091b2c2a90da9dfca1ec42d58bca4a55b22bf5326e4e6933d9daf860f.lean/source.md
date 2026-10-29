# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Carrier.Variant8a5f404091b2c2a90da9dfca1ec42d58bca4a55b22bf5326e4e6933d9daf860f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67ce2a2203f261304da80f51d895b3628e031091` · SHA-256 `8a5f404091b2c2a90da9dfca1ec42d58bca4a55b22bf5326e4e6933d9daf860f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Normed.Operator.Basic
import Mathematics.SemiLocalDefect.WP0.All

/-!
# Sonin-carrier and connector primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

universe uSonin

structure FiniteSoninHorizon
    (U : FinitePrimeHorizon) where
  Sonin :
    PrimeCut U → Type uSonin
  [soninNormed :
    ∀ S,
      NormedAddCommGroup (Sonin S)]
  [soninInner :
    ∀ S,
      InnerProductSpace ℂ (Sonin S)]
  [soninComplete :
    ∀ S,
      CompleteSpace (Sonin S)]
  connector :
    ∀ {S T : PrimeCut U},
      S ⊆ T →
      Sonin S →L[ℂ] Sonin T
  connector_id :
    ∀ S,
      connector
        (show S ⊆ S from
          fun _ h => h)
      =
      ContinuousLinearMap.id
        ℂ
        (Sonin S)
  connector_comp :
    ∀ {S T R : PrimeCut U}
      (hST : S ⊆ T)
      (hTR : T ⊆ R),
      (connector hTR).comp
        (connector hST)
      =
      connector
        (fun _ hp =>
          hTR (hST hp))
  connector_injective :
    ∀ {S T : PrimeCut U}
      (hST : S ⊆ T),
      Function.Injective
        (connector hST)

instance
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U)
    (S : PrimeCut U) :
    NormedAddCommGroup (H.Sonin S) :=
  H.soninNormed S

instance
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U)
    (S : PrimeCut U) :
    InnerProductSpace ℂ (H.Sonin S) :=
  H.soninInner S

instance
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U)
    (S : PrimeCut U) :
    CompleteSpace (H.Sonin S) :=
  H.soninComplete S

end Mathematics.SemiLocalDefect.SoninCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a0902ffb1195755a7ed6fd2488c17db1c0e807460b12093c5e8160e94fb09d2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Carrier/Variant8a5f404091b2c2a90da9dfca1ec42d58bca4a55b22bf5326e4e6933d9daf860f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
