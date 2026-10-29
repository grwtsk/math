-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LocalPatch.Variant24e7cd018287f1f5e546eb0297d6032dafe02e61e8ce7ed001e03ed8169f26d4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"24e7cd018287f1f5e546eb0297d6032dafe02e61e8ce7ed001e03ed8169f26d4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LocalPatch.Variant24e7cd018287f1f5e546eb0297d6032dafe02e61e8ce7ed001e03ed8169f26d4","mathematical_subject":"Foundations.Unclassified","original_sha256":"24e7cd018287f1f5e546eb0297d6032dafe02e61e8ce7ed001e03ed8169f26d4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Fabric/Patch.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Fabric.Boundary
import DAF.Fabric.Reaction

/-!
# Local fabric patches and filler capabilities

A `LocalPatch` is intentionally only a candidate update.  Its boundary
compatibility is a separate proposition, so non-natural mutations can be
represented and rejected.  Every global extension carries a genuine reaction
and explicit identifications with the selected replacement.

Boundary compatibility is necessary for extension.  It is sufficient only
under an explicit `CompatiblePatchExtensionCapability`; this module contains
no choice-based, uniform, or automatic filler synthesis.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LocalPatch.Variant24e7cd018287f1f5e546eb0297d6032dafe02e61e8ce7ed001e03ed8169f26d4

namespace DAF.Fabric

universe u

/-- A candidate replacement of one cell presentation. -/
structure LocalPatch
    (F : Fabric)
    {n : Nat}
    (x : F.Cell n) where
  boundary : BoundaryReplacement F x
  update :
    Presentation.Hom
      (F.cellPresentation x)
      boundary.replacement

namespace LocalPatch

/-- The update commutes with every proper boundary contract. -/
def BoundaryCompatible
    {F : Fabric}
    {n : Nat}
    {x : F.Cell n}
    (patch : LocalPatch F x) : Prop :=
  ∀ {m : Nat} (θ : ProperBoundaryOperator m n),
    (patch.boundary.replacementContract θ).comp patch.update =
      F.contract θ.operator x

/-- The strict proposition-valued defect: at least one boundary equation fails. -/
def BoundaryDefect
    {F : Fabric}
    {n : Nat}
    {x : F.Cell n}
    (patch : LocalPatch F x) : Prop :=
  ¬ patch.BoundaryCompatible

/--
A checked mismatch for one strict boundary square.  The expected and actual
maps are retained explicitly; decidable equality is needed only by code that
constructs such a witness, not by the definition itself.
-/
structure BoundaryMismatch
    {F : Fabric}
    {n : Nat}
    {x : F.Cell n}
    (patch : LocalPatch F x) where
  boundaryDimension : Nat
  operator : ProperBoundaryOperator boundaryDimension n
  expected :
    Presentation.Hom
      (F.cellPresentation x)
      (F.cellPresentation
        (F.shape.restrict operator.operator x))
  actual :
    Presentation.Hom
      (F.cellPresentation x)
      (F.cellPresentation
        (F.shape.restrict operator.operator x))
  expected_eq : expected = F.contract operator.operator x
  actual_eq :
    actual =
      (patch.boundary.replacementContract operator).comp patch.update
  different : expected ≠ actual

/--
A global extension is a genuine reaction to a target fabric whose selected
cell and boundary data are identified with the local patch.
-/
structure Extension
    {F : Fabric}
    {n : Nat}
    {x : F.Cell n}
    (patch : LocalPatch F x) where
  target : Fabric
  reaction : Reaction F target
  replacement_eq :
    HEq
      (target.cellPresentation (reaction.mapCell x))
      patch.boundary.replacement
  update_eq : HEq (reaction.cellMap x) patch.update
  boundaryContract_eq :
    ∀ {m : Nat} (θ : ProperBoundaryOperator m n),
      HEq
        (target.contract θ.operator (reaction.mapCell x))
        (patch.boundary.replacementContract θ)
  boundaryCompatible : patch.BoundaryCompatible

/-- A patch extends when an explicit global extension witness is supplied. -/
def ExtendsTo
    {F : Fabric}
    {n : Nat}
    {x : F.Cell n}
    (patch : LocalPatch F x) : Prop :=
  Nonempty patch.Extension

end LocalPatch

/-- A selection of cells closed under faces and degeneracies. -/
structure Subfabric (F : Fabric) where
  selected : ∀ n, F.Cell n → Prop
  face_closed :
    ∀ {n : Nat} (i : Fin (n + 2)) (x : F.Cell (n + 1)),
      selected (n + 1) x → selected n (F.shape.face i x)
  degeneracy_closed :
    ∀ {n : Nat} (i : Fin (n + 1)) (x : F.Cell n),
      selected n x → selected (n + 1) (F.shape.degeneracy i x)

/--
A capability supplying one global extension for each compatible local patch.

This is deliberately not called a complete filler theory: it does not include
substitution uniformity, transport naturality, composition compatibility, or
higher-intersection laws.
-/
structure CompatiblePatchExtensionCapability (F : Fabric) where
  fill :
    ∀ {n : Nat} {x : F.Cell n} (patch : LocalPatch F x),
      patch.BoundaryCompatible → patch.Extension

/-- Every genuinely extendable patch has a trivial strict boundary defect. -/
theorem extends_implies_boundaryCompatible
    {F : Fabric}
    {n : Nat}
    {x : F.Cell n}
    {patch : LocalPatch F x}
    (h : patch.ExtendsTo) :
    patch.BoundaryCompatible := by
  rcases h with ⟨extension⟩
  exact extension.boundaryCompatible

/-- Compatibility produces an extension only through an explicitly supplied patch-extension capability. -/
theorem boundaryCompatible_implies_extends
    {F : Fabric}
    (K : CompatiblePatchExtensionCapability F)
    {n : Nat}
    {x : F.Cell n}
    {patch : LocalPatch F x}
    (h : patch.BoundaryCompatible) :
    patch.ExtendsTo :=
  ⟨K.fill patch h⟩

/-- Under the supplied patch-extension capability, extension is exactly strict boundary compatibility. -/
theorem extends_iff_boundaryCompatible
    {F : Fabric}
    (K : CompatiblePatchExtensionCapability F)
    {n : Nat}
    {x : F.Cell n}
    (patch : LocalPatch F x) :
    patch.ExtendsTo ↔ patch.BoundaryCompatible :=
  ⟨extends_implies_boundaryCompatible,
    boundaryCompatible_implies_extends K⟩

namespace LocalPatch.BoundaryMismatch

/-- A checked mismatch refutes strict boundary compatibility. -/
theorem not_boundaryCompatible
    {F : Fabric}
    {n : Nat}
    {x : F.Cell n}
    {patch : LocalPatch F x}
    (mismatch : LocalPatch.BoundaryMismatch patch) :
    ¬ patch.BoundaryCompatible := by
  intro h
  apply mismatch.different
  calc
    mismatch.expected = F.contract mismatch.operator.operator x :=
      mismatch.expected_eq
    _ =
        (patch.boundary.replacementContract mismatch.operator).comp
          patch.update :=
      (h mismatch.operator).symm
    _ = mismatch.actual := mismatch.actual_eq.symm

/-- Consequently, a mismatched patch cannot extend to a global reaction. -/
theorem not_extendsTo
    {F : Fabric}
    {n : Nat}
    {x : F.Cell n}
    {patch : LocalPatch F x}
    (mismatch : LocalPatch.BoundaryMismatch patch) :
    ¬ patch.ExtendsTo := by
  intro h
  exact mismatch.not_boundaryCompatible
    (extends_implies_boundaryCompatible h)

end LocalPatch.BoundaryMismatch

end DAF.Fabric
