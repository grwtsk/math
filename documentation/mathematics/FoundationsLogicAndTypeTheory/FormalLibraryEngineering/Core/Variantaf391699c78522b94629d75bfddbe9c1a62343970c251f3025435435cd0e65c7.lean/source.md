# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variantaf391699c78522b94629d75bfddbe9c1a62343970c251f3025435435cd0e65c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12ffcfa411074c55de87158cc898dd0ce8bb1a37` · SHA-256 `af391699c78522b94629d75bfddbe9c1a62343970c251f3025435435cd0e65c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.SemanticIdentity

/-! # Operators, spectra, and harmonic channels -/

namespace Mathematics.Operator

universe u

structure Operator (State : Type u) where
  id : StableId
  apply : State → State

structure SpectralChannel where
  id : ChannelId
  eigenvalueLabel : String
  multiplicity : Nat
  deriving DecidableEq, Repr

end Mathematics.Operator
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f34722840da5e024407d6dc235fa57a35053d5d3a5fee773f8407862c4ca28ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf391699c78522b94629d75bfddbe9c1a62343970c251f3025435435cd0e65c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
