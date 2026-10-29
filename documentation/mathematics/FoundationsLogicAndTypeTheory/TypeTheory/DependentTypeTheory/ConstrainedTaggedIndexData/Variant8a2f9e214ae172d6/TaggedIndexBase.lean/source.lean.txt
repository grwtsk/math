/-
TaggedIndexBase — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 8a2f9e214ae172d6826bf522fdd411fa954bbe69e7b5800d151ee73272251dc8
Organized SHA-256: 215332f2635f633764885e3558dfb61868f7ca3694339fd6f261acebb064a8a4
PMD: 510.0.070.020 dependent type theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole concrete tagged-index record, distinguished-constructor equality, finite-list membership witnesses and exact empty-list default proofs; no prime, place or adelic construction. -/

import Folder.AdelicInfinityTopos.Place

/-!
# Folder.AdelicInfinityTopos.AdelicBase

Radiation role: research-boundary
BinaryMatrix spine: This module defines the place-indexing base for adelic spectral fibers.
Ontology: adelic.base
Pivot role: dual
Zero typology: mixed
Contract boundary: definition
Composite stack role: adelic-infinity-topos
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.ConstrainedTaggedIndexData.Variant8a2f9e214ae172d6

open Folder Folder.AdelicInfinityTopos

structure AdelicBase where
  archimedean : Place
  finitePlaces : List Place
  includesArchimedean : archimedean = Place.archimedean
  finitePlaceSound : ∀ v ∈ finitePlaces, ∃ p, v = Place.finite p

def defaultAdelicBase : AdelicBase where
  archimedean := Place.archimedean
  finitePlaces := []
  includesArchimedean := rfl
  finitePlaceSound := by
    intro v hv
    cases hv

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.ConstrainedTaggedIndexData.Variant8a2f9e214ae172d6
