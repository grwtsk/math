/-
ExactStringRetraction — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 4da98d91020f06faa960642ef3e0bf3f7ac4dcb8ffa83abd5d029491af75dbbf
Organized SHA-256: 0df77535f4c9c5c8d4502994f9f8bb51e86a8c56e730f55ff05766e18fdda80e
PMD: 510.0.070.020.050 inductive types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact four literal names, parser with none for other strings, and complete parse?_render and render_injective finite-case proofs. This is a finite string retraction, not a rectangle/matrix action or operational archive parser execution. -/

import Folder.Basic

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveTypes.FourCaseSymbolData.Variant4da98d91020f06fa.FiniteSymbolsAndInverseTable

/-!
# Folder.Archive.Spin

Radiation role: archive-symmetry
BinaryMatrix spine: This module names finite matrix spins used by symbolic BinaryMatrix archive references.
Ontology: archive.spin
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: carrier
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveTypes.FourCaseSymbolData.Variant4da98d91020f06fa


namespace RectSpin

def render : RectSpin → String
  | id => "id"
  | flipRows => "flipRows"
  | flipCols => "flipCols"
  | rotate180 => "rotate180"


def parse? : String → Option RectSpin
  | "id" => some id
  | "flipRows" => some flipRows
  | "flipCols" => some flipCols
  | "rotate180" => some rotate180
  | _ => none


theorem parse?_render
    (s : RectSpin) :
    parse? (render s) = some s := by
  cases s <;> rfl


theorem render_injective
    {a b : RectSpin}
    (h : render a = render b) :
    a = b := by
  cases a <;> cases b <;> simp [render] at h ⊢


end RectSpin

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveTypes.FourCaseSymbolData.Variant4da98d91020f06fa
