module

public meta import Surface.Core.Classification
public import Mathlib.Data.Finset.Card

/-!
# Generated refactor fixture

This file is quarantine-only input for the generated target.  Every public
declaration is explicitly classified as `surface_candidate`.
-/

public section

namespace Generated.RefactorFixture

@[surface_candidate]
theorem verbose_identity (value : Nat) : value = value := by
  have first : value = value := Eq.refl value
  have second : value = value := first
  exact second

@[surface_candidate]
theorem identity_with_local_auxiliary (value : Nat) : value + 0 = value := by
  have localAuxiliary (input : Nat) : input + 0 = input := by
    exact Nat.add_zero input
  exact localAuxiliary value

/-- Its `Finset` type makes the required import observable to repair tests. -/
@[surface_candidate]
def import_sensitive_cardinality (values : Finset Nat) : Nat :=
  values.card

end Generated.RefactorFixture




open Lean

run_meta do
  let axioms ← Lean.collectAxioms `Generated.RefactorFixture.import_sensitive_cardinality
  let names := axioms.toList.map Name.toString |>.mergeSort (· < ·)
  let info ← getConstInfo `Generated.RefactorFixture.import_sensitive_cardinality
  let normalizedType := toString (← Meta.ppExpr info.type)
  let env ← getEnv
  let classifications :=
    (if Surface.Core.surfaceAdapterAttr.hasTag env `Generated.RefactorFixture.import_sensitive_cardinality then ["surface_adapter"] else []) ++
    (if Surface.Core.surfaceNovelAttr.hasTag env `Generated.RefactorFixture.import_sensitive_cardinality then ["surface_novel"] else []) ++
    (if Surface.Core.surfaceCandidateAttr.hasTag env `Generated.RefactorFixture.import_sensitive_cardinality then ["surface_candidate"] else []) ++
    (if Surface.Core.surfacePublishedAttr.hasTag env `Generated.RefactorFixture.import_sensitive_cardinality then ["surface_published"] else []) ++
    (if Surface.Core.surfaceCertificateAttr.hasTag env `Generated.RefactorFixture.import_sensitive_cardinality then ["surface_certificate"] else [])
  liftM <| IO.println <| Json.compress <| Json.mkObj [("schema", toJson "surface.refactor.axiom-probe.v1"), ("axioms", toJson names), ("normalizedType", toJson normalizedType), ("classificationTags", toJson classifications)]
