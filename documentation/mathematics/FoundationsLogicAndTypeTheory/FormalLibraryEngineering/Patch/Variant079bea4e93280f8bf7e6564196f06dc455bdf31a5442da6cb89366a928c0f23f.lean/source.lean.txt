import DAF.Fabric.Boundary
import DAF.Fabric.Reaction

/-!
# Local fabric patches and filler capabilities

A `LocalPatch` is intentionally only a candidate update.  Its boundary
compatibility is a separate proposition, so non-natural mutations can be
represented and rejected.  Every global extension carries a genuine reaction
and explicit identifications with the selected replacement.

Boundary compatibility is necessary for extension.  It is sufficient only
under an explicit `CompleteFillerTheory`; this module contains no choice-based
or automatic filler synthesis.
-/

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

/-- A capability supplying global fillers for every compatible local boundary. -/
structure CompleteFillerTheory (F : Fabric) where
  fill :
    ∀ {n : Nat} {x : F.Cell n} (patch : LocalPatch F x),
      patch.BoundaryCompatible → patch.Extension
  fill_boundary :
    ∀ {n : Nat} {x : F.Cell n}
      (patch : LocalPatch F x)
      (_h : patch.BoundaryCompatible),
      patch.BoundaryCompatible

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

/-- Compatibility produces an extension only through a complete filler capability. -/
theorem boundaryCompatible_implies_extends
    {F : Fabric}
    (K : CompleteFillerTheory F)
    {n : Nat}
    {x : F.Cell n}
    {patch : LocalPatch F x}
    (h : patch.BoundaryCompatible) :
    patch.ExtendsTo :=
  ⟨K.fill patch h⟩

/-- Under complete fillers, extension is exactly strict boundary compatibility. -/
theorem extends_iff_boundaryCompatible
    {F : Fabric}
    (K : CompleteFillerTheory F)
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
