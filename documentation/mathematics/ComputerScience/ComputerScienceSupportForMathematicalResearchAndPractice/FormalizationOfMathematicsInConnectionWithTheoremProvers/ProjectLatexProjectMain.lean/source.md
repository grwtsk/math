# Project Latex Project Main — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3bc8a75fbbc8262cef5e8fa0994dee62bfdf0b38` · SHA-256 `e31e98a3024575e8186e063f246dd32ec5c81da51ed3813d384f142db2693bef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Latex.Project

/-!
# Folder.Theorem.Latex.Project

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes LaTeX project layout facts.
Ontology: proof.latex.project
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: presentation
-/

namespace Folder
namespace Theorem
namespace Latex

theorem latexProject_main
    (P : Folder.Latex.LatexProject)
    (h : P.rootFile = "main.tex") :
    P.hasMain :=
  Folder.Latex.latexProject_main P h

end Latex
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c38437a429c61614573e6f6941c06c1d2f92f0c86400ba0ab275af8a53704ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Project/Variante31e98a3024575e8186e063f246dd32ec5c81da51ed3813d384f142db2693bef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
