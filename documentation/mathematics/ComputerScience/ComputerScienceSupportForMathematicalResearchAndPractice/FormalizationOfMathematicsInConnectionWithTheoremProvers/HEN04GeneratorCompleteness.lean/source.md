# HEN04 Generator Completeness — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `edc3e12cb6db9f8ac5b4f7b9020638c2dcba1d6c` · SHA-256 `11462c8b041e8d26b0c1c449108f7f94e3e9554181247783da6289f13e477441`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Theorems.HEN03_EssentialImageCharacterization

namespace FCRS.Algebraization.Theorems

/--
Henselian generator completeness: pullback is an equivalence onto the full
subcategory selected by the finite ample-generator quotient predicate.
-/
theorem hen04_generatorCompleteness
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.henselianProfile)
    (hSource : SourceGenerated S.generators S.cohAlgEpi) :
    ∃ hObj :
        ∀ X : S.categories.CohAlg.Obj,
          AlgebraicallyGenerated
            S.generators
            S.cohHenEpi
            (S.functors.HenPullback.obj X),
      EquivalenceWitness
        (restrictCodomain
          S.functors.HenPullback
          (AlgebraicallyGenerated
            S.generators
            S.cohHenEpi)
          hObj) := by
  have hExact :=
    (registry.hen01) hProfile
  have hClosed :=
    (registry.hen02) hProfile
  let hObj :=
    imageObjectsGenerated
      S.functors.HenPullback
      S.cohAlgEpi
      S.cohHenEpi
      S.generators
      hSource
      hExact.preservesEpis
  refine ⟨hObj, ?_⟩
  exact equivalenceRestrictCodomain
    S.functors.HenPullback
    (AlgebraicallyGenerated S.generators S.cohHenEpi)
    hObj
    hExact.full
    hExact.faithful
    (generatedIsEssentialImage
      S.functors.HenPullback
      S.cohHenEpi
      S.generators
      hClosed.quotientClosed)

end FCRS.Algebraization.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7c8675edfe9648d8edc163e9261a9bae9eb45ee2fcec8a97bd77b18ddc65e2d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN04GeneratorCompleteness/Variant11462c8b041e8d26b0c1c449108f7f94e3e9554181247783da6289f13e477441.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
