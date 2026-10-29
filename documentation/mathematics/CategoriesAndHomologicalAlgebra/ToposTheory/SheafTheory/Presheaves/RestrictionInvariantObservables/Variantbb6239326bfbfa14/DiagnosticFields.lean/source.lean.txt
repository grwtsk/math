/-
# Individually reviewed mathematical candidate: Supplied restriction-invariant observable fields on a presheaf

Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic
recombination, and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are provisional user-specified roles, not independently established
model mechanisms or final per-declaration authorship. Existing source notices
remain exact in the archives and copied source documentation.
Original source SHA256: bb6239326bfbfa14dab78c414dfbbd13e6200de1e2aae1c83c0e510d488f55f8
Organized source SHA256: f707a11de764ec8bc924d1bcdecddd8ce2800814e862dec6518de4af9e7c4886
Review: attribution-254-review-000072.
PMD: 510.9.060.010.010 presheaves; editorial navigation only.
The names Diagnostic/severity/status label supplied pure observable values, with no execution or authority action. No concrete presheaf, observable policy or diagnostic correctness is constructed. Legacy Folder.Sheaf.Observable remains unresolved for replay.
Original whole-source documentation may describe the complete unsplit context.
No Lean compilation, kernel acceptance or public umbrella admission is asserted.
-/

import Folder.Sheaf.Observable

/-!
# Folder.Sheaf.Diagnostic

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: sheaf.diagnostic
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.ToposTheory.SheafTheory.Presheaves.RestrictionInvariantObservables.Variantbb6239326bfbfa14

open CategoryTheory Opposite

universe u v w

open Folder.Sheaf

structure Diagnostic (C : Type u) [Category.{v} C] where
  presheaf : Presheaf.{u, v, w} C
  severity : ObservableField presheaf.F Nat
  status : ObservableField presheaf.F String

namespace Diagnostic

def restrict {C : Type u} [Category.{v} C]
    (X : Diagnostic.{u, v, w} C) {U V : C} (f : U ⟶ V)
    (s : X.presheaf.F.obj (op V)) :
    X.presheaf.F.obj (op U) :=
  X.presheaf.restrict f s

theorem severity_natural
    {C : Type u} [Category.{v} C]
    (X : Diagnostic.{u, v, w} C)
    {U V : C} (f : U ⟶ V)
    (s : X.presheaf.F.obj (op V)) :
    X.severity.value U (X.restrict f s) =
      X.severity.value V s :=
  X.severity.naturality f s

end Diagnostic
end GRWTSK.CategoriesAndHomologicalAlgebra.ToposTheory.SheafTheory.Presheaves.RestrictionInvariantObservables.Variantbb6239326bfbfa14
