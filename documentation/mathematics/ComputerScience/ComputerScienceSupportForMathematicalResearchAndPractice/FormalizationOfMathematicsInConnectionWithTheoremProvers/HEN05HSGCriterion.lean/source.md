# HEN05 HSGCriterion — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca36665696d184052ab14ba9470e3b9a7c1c2292` · SHA-256 `feea90707c3976e900ce9c55c5463eb0da0baa164f934b3fa2fdc8f06a590bdd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Theorems.HEN03_EssentialImageCharacterization

namespace FCRS.Algebraization.Theorems

/--
Unrestricted essential surjectivity is equivalent to Henselian Serre
generation, after the scoped essential-image characterization is available.
-/
theorem hen05_hsgCriterion
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.henselianProfile)
    (hSource : SourceGenerated S.generators S.cohAlgEpi) :
    EssentiallySurjective S.functors.HenPullback ↔
    HenselianSerreGeneration S.generators S.cohHenEpi := by
  have hCharacterization :=
    hen03_essentialImageCharacterization
      S registry hProfile hSource
  constructor
  · intro hEssential Y
    exact (hCharacterization Y).mpr (hEssential Y)
  · intro hHSG Y
    exact (hCharacterization Y).mp (hHSG Y)

end FCRS.Algebraization.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa929c6fd83643f4b02ec9b2fa3999e3d59b5058c16515780c085858e4f73ea3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN05HSGCriterion/Variantfeea90707c3976e900ce9c55c5463eb0da0baa164f934b3fa2fdc8f06a590bdd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
