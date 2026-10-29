# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HEN11UnrestrictedCompletenessFromHSG.Variant537d07b2969d285159c0bbba88a5442cb933dc294797e75cb623751aba214c2b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ada3334a338aeb32831a86f5d958fb2fbe5dcdf` · SHA-256 `537d07b2969d285159c0bbba88a5442cb933dc294797e75cb623751aba214c2b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Theorems.HEN01_ExactFullyFaithful
import FCRS.Algebraization.Theorems.HEN05_HSGCriterion

namespace FCRS.Algebraization.Theorems

/--
If Henselian Serre generation is supplied, the unrestricted coherent
Henselian pullback becomes an equivalence.
-/
theorem hen11_unrestrictedCompletenessFromHSG
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.henselianProfile)
    (hSource : SourceGenerated S.generators S.cohAlgEpi)
    (hHSG :
      HenselianSerreGeneration
        S.generators
        S.cohHenEpi) :
    EquivalenceWitness S.functors.HenPullback := by
  have hExact :=
    (hen01_exactFullyFaithful S registry) hProfile
  have hEssential :=
    (hen05_hsgCriterion
      S registry hProfile hSource).mpr hHSG
  exact {
    full := hExact.full
    faithful := hExact.faithful
    essentiallySurjective := hEssential
  }

end FCRS.Algebraization.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5e40e4fe7df6289a6f7b1ac90cf9b8e620371ed5cf43b353c1a8ea819781005 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN11UnrestrictedCompletenessFromHSG/Variant537d07b2969d285159c0bbba88a5442cb933dc294797e75cb623751aba214c2b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
