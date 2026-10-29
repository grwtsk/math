# Emit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27742d41b231716dcc2800ee23154a41a5cea6e1` · SHA-256 `57dc7be20bec2e9e3a7b45cfb66188c9bcf2d1197635298d97312f2f3248f953`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Latex.Project
import Folder.Latex.Section

/-!
# Folder.Latex.Emit

Radiation role: latex-emit
BinaryMatrix spine: This module names LaTeX project emission contracts for presentation outputs.
Ontology: latex.emit
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: presentation
-/

namespace Folder
namespace Latex

structure LatexEmitter where
  emit : LatexDocument → LatexProject
  root_is_main : ∀ D, (emit D).rootFile = "main.tex"

theorem latexEmitter_emits_main
    (E : LatexEmitter)
    (D : LatexDocument) :
    (E.emit D).hasMain :=
  E.root_is_main D

end Latex
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=586d8d1f9d81b94b9842f642779b30a3206a10e8b26223e4e1d8dba5825bfa79 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Emit/Variant57dc7be20bec2e9e3a7b45cfb66188c9bcf2d1197635298d97312f2f3248f953.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
