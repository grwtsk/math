# HEN14 Three Way Criterion — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89beec4b9d7fbde8f5ba65438d9c238182846b28` · SHA-256 `2886bc13a5740a5437209664e368c5894db9e8564bf9c6f23e85c7c69985d3ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Theorems.HEN05_HSGCriterion

namespace FCRS.Algebraization.Theorems

/--
The three formulations coincide: unrestricted essential surjectivity, every
target object satisfying the intrinsic generator predicate, and HSG.
-/
theorem hen14_threeWayCriterion
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.henselianProfile)
    (hSource : SourceGenerated S.generators S.cohAlgEpi) :
    (EssentiallySurjective S.functors.HenPullback ↔
      ∀ Y : S.categories.CohHen.Obj,
        AlgebraicallyGenerated
          S.generators
          S.cohHenEpi
          Y) ∧
    ((∀ Y : S.categories.CohHen.Obj,
        AlgebraicallyGenerated
          S.generators
          S.cohHenEpi
          Y) ↔
      HenselianSerreGeneration
        S.generators
        S.cohHenEpi) := by
  have hCriterion :=
    hen05_hsgCriterion
      S registry hProfile hSource
  exact ⟨hCriterion, Iff.rfl⟩

end FCRS.Algebraization.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1461c676dbb76fb4c386d3d1338b612ef442b8ea63af6238f35c7f38f74d1b23 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN14ThreeWayCriterion/Variant2886bc13a5740a5437209664e368c5894db9e8564bf9c6f23e85c7c69985d3ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
