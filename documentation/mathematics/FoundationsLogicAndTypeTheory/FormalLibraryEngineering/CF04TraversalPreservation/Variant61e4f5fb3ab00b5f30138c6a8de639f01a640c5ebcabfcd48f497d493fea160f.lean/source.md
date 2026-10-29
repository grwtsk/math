# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CF04TraversalPreservation.Variant61e4f5fb3ab00b5f30138c6a8de639f01a640c5ebcabfcd48f497d493fea160f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93bdac3b1fbf2dcf4daba2b0692a9fc6bd880348` · SHA-256 `61e4f5fb3ab00b5f30138c6a8de639f01a640c5ebcabfcd48f497d493fea160f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/--
CF-04 research-rule projection for one-way source-occurrence preservation and
edgewise weight preservation.  It makes no target-occurrence reflection or
bijection claim.
-/
theorem cf04_traversalPreservation
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF04Claim M := by
  exact {
    preserved := by
      intro c
      exact ⟨
        occurrencePreserved_of_sieveTransport (M.sieveTransport c),
        registry.cf04.weightPreserved c
      ⟩
    sourceWeightCorrect := registry.cf04.sourceWeightCorrect
    fixedWeightCorrect := registry.cf04.fixedWeightCorrect
  }

end FCRS.ControlledPlane.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ac3519062127f6682ae64de2c5ff3248e6d4324c521672b5623bcfa0b5765d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CF04TraversalPreservation/Variant61e4f5fb3ab00b5f30138c6a8de639f01a640c5ebcabfcd48f497d493fea160f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
