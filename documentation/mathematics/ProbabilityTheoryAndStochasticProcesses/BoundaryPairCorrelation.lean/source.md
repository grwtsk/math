# Boundary Pair Correlation — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f34669c1a36bf974f6c91c7dd21fa8dc262494c` · SHA-256 `43fd05412e9f12984eb2fcd748756829d7a28e07be4ab46a62dbf0997d7bc578`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.BoundaryWeight

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.BoundaryMemory

inductive PairCorrelationTarget where
  | off
  | montgomeryGUE
  | poisson
  | custom
deriving DecidableEq, Repr

structure BoundaryPairCorrelationPolicy where
  target : PairCorrelationTarget
  preventsSpectralClumping : Bool
  importsMontgomeryAsTheoremAuthority : Bool
deriving DecidableEq, Repr

def montgomeryBoundaryPolicy : BoundaryPairCorrelationPolicy :=
  { target := .montgomeryGUE
    preventsSpectralClumping := true
    importsMontgomeryAsTheoremAuthority := false }

theorem montgomery_boundary_policy_is_regularizer :
    montgomeryBoundaryPolicy.importsMontgomeryAsTheoremAuthority = false := by
  rfl

end Think.RadoProjectedModularHeatflow.BoundaryMemory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=72f5880504eab5450c02fd270413ad06636ed5a03bfaeb25973ef7752deb8d77 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BoundaryPairCorrelation/Variant43fd05412e9f12984eb2fcd748756829d7a28e07be4ab46a62dbf0997d7bc578.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
