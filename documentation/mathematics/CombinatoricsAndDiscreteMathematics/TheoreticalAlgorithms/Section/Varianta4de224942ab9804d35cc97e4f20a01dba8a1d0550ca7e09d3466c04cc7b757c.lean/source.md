# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Section.Varianta4de224942ab9804d35cc97e4f20a01dba8a1d0550ca7e09d3466c04cc7b757c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `caf79fa01d9ab02c06f85d3906eb04553eb5d091` · SHA-256 `a4de224942ab9804d35cc97e4f20a01dba8a1d0550ca7e09d3466c04cc7b757c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Latex.Syntax

/-!
# Folder.Latex.Section

Radiation role: latex-section
BinaryMatrix spine: This module records reference-ranked LaTeX sections emitted from presentation documents.
Ontology: latex.section
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: presentation
-/

namespace Folder
namespace Latex

structure LatexSection where
  title : String
  label : String
  rank : Nat
  body : LatexFragment

structure LatexSectionOrder where
  sections : List LatexSection
  sorted_desc : sections.Pairwise (fun a b => b.rank ≤ a.rank)

theorem latex_section_order_sorted
    (O : LatexSectionOrder) :
    O.sections.Pairwise (fun a b => b.rank ≤ a.rank) :=
  O.sorted_desc

end Latex
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e51f155518c4ae7646ef3b0140f6146ddd6fb950d3f1b5d61f30195e6e361b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Section/Varianta4de224942ab9804d35cc97e4f20a01dba8a1d0550ca7e09d3466c04cc7b757c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
