# TMFFraming — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55d887bbeebb819a25612f634b4c40b9425e15d3` · SHA-256 `a30e63a217f7ab03a2c067a4f0533e007bcb0c20ee2867bb0afab03d6a86937a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.ResearchTopos.TMFFraming

/-!
# Folder.Theorem.ResearchTopos.TMFFraming

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports TMF framing contract exposures.
Ontology: proof.research_topos.tmf_framing
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: research-topos
-/

namespace Folder
namespace Theorem
namespace ResearchTopos
namespace TMFFraming

theorem tmf_has_witten_genus
    (T : Folder.ResearchTopos.TMFContract) :
    T.hasWittenGenus :=
  Folder.ResearchTopos.tmf_has_witten_genus T

theorem tmf_framing_trivialized
    (F : Folder.ResearchTopos.TMFTorsionFraming) :
    F.trivialized :=
  Folder.ResearchTopos.tmf_framing_trivialized F

end TMFFraming
end ResearchTopos
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c6a9ccb0f1c9379fa915267c8b4b8ee18da94e6c7ff7ff4c31de2f23fb3f0a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TMFFraming/Varianta30e63a217f7ab03a2c067a4f0533e007bcb0c20ee2867bb0afab03d6a86937a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
