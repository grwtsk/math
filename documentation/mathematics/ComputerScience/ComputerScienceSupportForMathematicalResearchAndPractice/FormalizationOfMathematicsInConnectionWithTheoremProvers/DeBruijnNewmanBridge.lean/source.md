# De Bruijn Newman Bridge — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1931517765ab1f9dfa3b0ef9f0e52589e03dbec` · SHA-256 `e6ab273968c8090b9d186a14b5b7305c734c83e8374a1891d9c5b77e78845763`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Research.DeBruijnNewmanBridge

/-!
# Folder.Theorem.Research.DeBruijnNewmanBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports de Bruijn-Newman boundary separation facts.
Ontology: proof.research.debruijn_newman_bridge
Pivot role: spectral
Zero typology: debruijn-newman
Contract boundary: theorem-wrapper
Composite stack role: research
-/

namespace Folder
namespace Theorem
namespace Research
namespace DeBruijnNewmanBridge

theorem debruijn_newman_not_lfunction_zero_kind :
    Folder.Core.ZeroKind.deBruijnNewmanZero ≠
      Folder.Core.ZeroKind.lFunctionZero :=
  Folder.Research.DeBruijnNewmanBridge.debruijn_newman_not_lfunction_zero_kind

end DeBruijnNewmanBridge
end Research
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=235f4eaf35a115650c3c88317e4695059ff789252ac68ec60961b0990f688972 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeBruijnNewmanBridge/Variante6ab273968c8090b9d186a14b5b7305c734c83e8374a1891d9c5b77e78845763.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
