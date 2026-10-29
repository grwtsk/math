# Continuation Quasi Isomorphism — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cce0f86f136761456e73720ff7860ce973a062ab` · SHA-256 `d31d885b0000aa3ccd72301235402e0a366f3cae4c4fc7f5ade3b17a02b0aa12`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.ContinuationQuasiIsomorphism

/-!
# Folder.Theorem.CanonicalPath.ContinuationQuasiIsomorphism

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports continuation quasi-isomorphism facts.
Ontology: proof.canonical_path.continuation_quasi_iso
Pivot role: spectral
Zero typology: transport-boundary
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem continuation_quasi_iso_induces_cohomology_iso
    {C : Folder.CanonicalPath.AnalyticContinuationMap}
    (Q : Folder.CanonicalPath.ContinuationQuasiIsomorphism C) :
    Q.quasiIso.inducesCohomologyIso :=
  Folder.CanonicalPath.continuation_quasi_iso_induces_cohomology_iso Q

end CanonicalPath
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8a274d92fa22fd3bc7a890a847659cfa3e2438671c0deebb7e975bc91ea23950 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContinuationQuasiIsomorphism/Variantd31d885b0000aa3ccd72301235402e0a366f3cae4c4fc7f5ade3b17a02b0aa12.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
