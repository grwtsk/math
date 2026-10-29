# HEN03 Essential Image Characterization — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4523ec2a528f354886e69580246d24a4c11652c` · SHA-256 `ed802ad61934afa381726cd58f835959da9642e1ad6844016e33fafad6dd326c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Theorems.HEN01_ExactFullyFaithful
import FCRS.Algebraization.Theorems.HEN02_SubquotientClosure

namespace FCRS.Algebraization.Theorems

/--
The independently defined algebraic-generation predicate equals membership
in the Henselian pullback essential image.
-/
theorem hen03_essentialImageCharacterization
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.henselianProfile)
    (hSource : SourceGenerated S.generators S.cohAlgEpi) :
    ∀ Y : S.categories.CohHen.Obj,
      AlgebraicallyGenerated
        S.generators
        S.cohHenEpi
        Y ↔
      EssentialImage S.functors.HenPullback Y := by
  have hExact :=
    (hen01_exactFullyFaithful S registry) hProfile
  have hClosed :=
    (hen02_subquotientClosure S registry) hProfile
  exact generatedIffEssentialImage
    S.functors.HenPullback
    S.cohAlgEpi
    S.cohHenEpi
    S.generators
    hSource
    hExact.preservesEpis
    hClosed.quotientClosed

end FCRS.Algebraization.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=156150f3f5f4a5ad332035e3fa608e5c1fb36992c56d32c13ac7adc18878064e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN03EssentialImageCharacterization/Varianted802ad61934afa381726cd58f835959da9642e1ad6844016e33fafad6dd326c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
