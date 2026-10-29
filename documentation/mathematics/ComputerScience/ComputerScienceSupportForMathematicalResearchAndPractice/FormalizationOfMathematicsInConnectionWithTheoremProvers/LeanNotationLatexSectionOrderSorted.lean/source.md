# Lean Notation Latex Section Order Sorted — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4cdf5c49fb279fcd2642970fbc2c5555bfc7f51f` · SHA-256 `ad026c7dcc612c3bb547a5508b523671dac301f24e0064132d5fd6e5b37eddcd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Latex.LeanNotation
import Folder.Latex.Section

/-!
# Folder.Theorem.Latex.LeanNotation

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes LaTeX notation and section ordering facts.
Ontology: proof.latex.lean_notation
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: presentation
-/

namespace Folder
namespace Theorem
namespace Latex

theorem leanLatexNotation_escapesSpecialChars
    (N : Folder.Latex.LeanLatexNotation) :
    N.escapesSpecialChars :=
  Folder.Latex.leanLatexNotation_escapesSpecialChars N

theorem latex_section_order_sorted
    (O : Folder.Latex.LatexSectionOrder) :
    O.sections.Pairwise (fun a b => b.rank ≤ a.rank) :=
  Folder.Latex.latex_section_order_sorted O

end Latex
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb3646d8cb2663b9165d9fceabf890c7b601906236add86f945f326c0f83cad0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanNotation/Variantad026c7dcc612c3bb547a5508b523671dac301f24e0064132d5fd6e5b37eddcd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
