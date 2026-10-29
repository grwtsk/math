# Rodgers Tao Continuation Complex — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7739b80bd004fa50a3ca6770c09bf6f5c1a44ff4` · SHA-256 `e6444a994fa686f01a3488c8e258acf2e2fd5a9a3cd486596e05c6369c6cba9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.RodgersTaoContinuationComplex

/-!
# Folder.Theorem.CanonicalPath.RodgersTaoContinuationComplex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Rodgers-Tao continuation-complex contract facts.
Ontology: proof.canonical_path.rodgers_tao_continuation
Pivot role: spectral
Zero typology: transport-boundary
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem rodgers_tao_continuation_identity_if_supplied
    (C : Folder.CanonicalPath.RodgersTaoContinuationComplex) :
    C.identityLaw? :=
  Folder.CanonicalPath.rodgers_tao_continuation_identity_if_supplied C

theorem rodgers_tao_continuation_composition_if_supplied
    (C : Folder.CanonicalPath.RodgersTaoContinuationComplex) :
    C.compositionLaw? :=
  Folder.CanonicalPath.rodgers_tao_continuation_composition_if_supplied C

end CanonicalPath
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f4538bbc5595e7b646a4f8c954d6887a8df6d51dc76cf1e53847fe5e204aa45 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RodgersTaoContinuationComplex/Variante6444a994fa686f01a3488c8e258acf2e2fd5a9a3cd486596e05c6369c6cba9b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
