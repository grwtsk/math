# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanNotation.Variantf43a86f63ceffb4fe620442e071fd4f0b9599458380f530b799b8414bbcd3c9f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8abc241c83aa3f3276339d34c3d5127749bb782c` · SHA-256 `f43a86f63ceffb4fe620442e071fd4f0b9599458380f530b799b8414bbcd3c9f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Latex.Syntax

/-!
# Folder.Latex.LeanNotation

Radiation role: latex-lean-notation
BinaryMatrix spine: This module names conservative Lean-to-LaTeX notation rendering contracts.
Ontology: latex.lean_notation
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: presentation
-/

namespace Folder
namespace Latex

structure LeanLatexNotation where
  renderIdentifier : String → String
  renderSignature : String → String
  escapesSpecialChars : Prop
  escapesSpecialChars_certified : escapesSpecialChars

theorem leanLatexNotation_escapesSpecialChars
    (N : LeanLatexNotation) :
    N.escapesSpecialChars :=
  N.escapesSpecialChars_certified

end Latex
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=969b3c539dff882216d86940300d9ea8d005f5a3bc6cfdff1471a266b50c76d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanNotation/Variantf43a86f63ceffb4fe620442e071fd4f0b9599458380f530b799b8414bbcd3c9f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
