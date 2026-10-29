# Base Case Propagation — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `73d0d7b888b05427f9705074bd21e13592fdbeac` · SHA-256 `d3c38bb40ef53a207f33617b2e3e8e26a271cc2128ce2ac826595d9ca039d383`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.BaseCasePropagation

/-!
# Folder.Theorem.DerivedSheaf.BaseCasePropagation

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports base-case propagation facts, not BinaryMatrix data.
Ontology: base.index_propagation
Pivot role: spectral
Zero typology: nonzero-index
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem transported_base_case_euler_nonzero
    (T : Folder.DerivedSheaf.TransportedBaseCaseEuler) :
    T.transport.eulerTransport.targetEuler.value ≠ 0 :=
  Folder.DerivedSheaf.transported_base_case_euler_nonzero T

theorem base_case_propagation_conclusion
    {M : Folder.DerivedSheaf.MellKTheory}
    (P : Folder.DerivedSheaf.BaseCaseCriticalLinePropagation M) :
    P.criticalLineConclusion :=
  Folder.DerivedSheaf.base_case_propagation_conclusion P

end DerivedSheaf
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=40ace668ed6f18c0810712962e23d7597a8af1f69ccf162b584eec87bf8bc80c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCasePropagation/Variantd3c38bb40ef53a207f33617b2e3e8e26a271cc2128ce2ac826595d9ca039d383.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
