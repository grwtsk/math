-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderEmbeddingSlice.Variant6574b6a6f2d503db790265c1c61d198bcd6d67c25d1333b1619dc15b0fd8ea5f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6574b6a6f2d503db790265c1c61d198bcd6d67c25d1333b1619dc15b0fd8ea5f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.OrderEmbeddingSlice.Variant6574b6a6f2d503db790265c1c61d198bcd6d67c25d1333b1619dc15b0fd8ea5f","mathematical_subject":"Algebra.OrderTheory","original_sha256":"6574b6a6f2d503db790265c1c61d198bcd6d67c25d1333b1619dc15b0fd8ea5f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Compression/LatticeGroup.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Compression.Groups


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderEmbeddingSlice.Variant6574b6a6f2d503db790265c1c61d198bcd6d67c25d1333b1619dc15b0fd8ea5f

set_option autoImplicit false

namespace Think.Compression.Syntax

/--
Order-preserving maps over decoded slices.

This is a finite decoded-slice action surface only. It is not a full
lattice-ordered group, not an order-completeness claim, and not sheafification.
-/
structure OrderEmbeddingSlice {α : Type} (xs : List α) where
  map : Slice xs → Slice xs
  preserves_le :
    ∀ {source target : Slice xs},
      Slice.le source target → Slice.le (map source) (map target)

structure OrderAutomorphismSlice {α : Type} (xs : List α) where
  map : Slice xs → Slice xs
  inv : Slice xs → Slice xs
  map_preserves_le :
    ∀ {source target : Slice xs},
      Slice.le source target → Slice.le (map source) (map target)
  inv_preserves_le :
    ∀ {source target : Slice xs},
      Slice.le source target → Slice.le (inv source) (inv target)
  left_inv :
    ∀ source : Slice xs, inv (map source) = source
  right_inv :
    ∀ source : Slice xs, map (inv source) = source

def orderAutomorphism_refl {α : Type} (xs : List α) :
    OrderAutomorphismSlice xs :=
  { map := fun slice => slice
    inv := fun slice => slice
    map_preserves_le := by
      intro _ _ h
      exact h
    inv_preserves_le := by
      intro _ _ h
      exact h
    left_inv := by
      intro _
      rfl
    right_inv := by
      intro _
      rfl }

def orderAutomorphism_symm {α : Type} {xs : List α}
    (automorphism : OrderAutomorphismSlice xs) :
    OrderAutomorphismSlice xs :=
  { map := automorphism.inv
    inv := automorphism.map
    map_preserves_le := automorphism.inv_preserves_le
    inv_preserves_le := automorphism.map_preserves_le
    left_inv := automorphism.right_inv
    right_inv := automorphism.left_inv }

def orderAutomorphism_trans {α : Type} {xs : List α}
    (left right : OrderAutomorphismSlice xs) :
    OrderAutomorphismSlice xs :=
  { map := fun slice => right.map (left.map slice)
    inv := fun slice => left.inv (right.inv slice)
    map_preserves_le := by
      intro source target h
      exact right.map_preserves_le (left.map_preserves_le h)
    inv_preserves_le := by
      intro source target h
      exact left.inv_preserves_le (right.inv_preserves_le h)
    left_inv := by
      intro slice
      rw [right.left_inv, left.left_inv]
    right_inv := by
      intro slice
      rw [left.right_inv, right.right_inv] }

structure SliceAction (G : Type) {α : Type} (xs : List α) where
  act : G → Slice xs → Slice xs
  one : G
  mul : G → G → G
  inv : G → G
  act_one :
    ∀ slice, act one slice = slice
  act_mul :
    ∀ g h slice, act (mul g h) slice = act g (act h slice)
  act_inv_left :
    ∀ g slice, act (inv g) (act g slice) = slice
  act_inv_right :
    ∀ g slice, act g (act (inv g) slice) = slice
  act_preserves_le :
    ∀ g {source target : Slice xs},
      Slice.le source target → Slice.le (act g source) (act g target)

theorem sliceAction_preserves_contains_transport {α G : Type}
    {xs : List α} (action : SliceAction G xs)
    (g : G) {source target : Slice xs}
    (h : Slice.le source target) :
    Slice.le (action.act g source) (action.act g target) :=
  action.act_preserves_le g h

/--
The combined syntax-plus-slice action surface for one compressed string.

The syntax action may move the compressed representative, but every element must
preserve decoded semantics and lookup fibers. The slice action is on
`Slice (decode source)`, so the base decoded interval lattice stays typed at
the original decoded list.
-/
structure LookupPreservingLatticeAction {α : Type}
    (G : Type) (source : CompressedString α) where
  actSyntax : G → CompressedString α
  actSlice : SliceAction G (decode source)
  preservesDecode :
    ∀ g, decode (actSyntax g) = decode source
  preservesLookup :
    ∀ g, PreservesSemanticsAndLookup source (actSyntax g)

theorem lookupPreservingLatticeAction_preserves_decode {α G : Type}
    {source : CompressedString α}
    (action : LookupPreservingLatticeAction G source)
    (g : G) :
    decode (action.actSyntax g) = decode source :=
  action.preservesDecode g

theorem lookupPreservingLatticeAction_preserves_lookup {α G : Type}
    {source : CompressedString α}
    (action : LookupPreservingLatticeAction G source)
    (g : G) :
    PreservesSemanticsAndLookup source (action.actSyntax g) :=
  action.preservesLookup g

theorem lookupPreservingLatticeAction_preserves_slice_le {α G : Type}
    {source : CompressedString α}
    (action : LookupPreservingLatticeAction G source)
    (g : G) {left right : Slice (decode source)}
    (h : Slice.le left right) :
    Slice.le (action.actSlice.act g left) (action.actSlice.act g right) :=
  action.actSlice.act_preserves_le g h

/--
Residue-safe partial groupoid layer for reversible moves that are only defined
on a restricted slice domain.
-/
structure PartialSliceGroupoid {α : Type}
    (source target : CompressedString α) where
  sourceSlice : Slice (decode source)
  targetSlice : Slice (decode target)
  forward : Slice (decode source) → Option (Slice (decode target))
  backward : Slice (decode target) → Option (Slice (decode source))
  preserves : PreservesSemanticsAndLookup source target
  forward_preserves_le :
    ∀ {left right : Slice (decode source)}
      {mappedLeft mappedRight : Slice (decode target)},
      forward left = some mappedLeft →
      forward right = some mappedRight →
      Slice.le left right →
        Slice.le mappedLeft mappedRight
  backward_preserves_le :
    ∀ {left right : Slice (decode target)}
      {mappedLeft mappedRight : Slice (decode source)},
      backward left = some mappedLeft →
      backward right = some mappedRight →
      Slice.le left right →
        Slice.le mappedLeft mappedRight
  residue_label : String

theorem reducing_move_not_lattice_group_action :
    classifyMove RewriteMoveKind.normalize ≠ RewriteMoveClass.invertible ∧
    classifyMove RewriteMoveKind.canonicalize ≠ RewriteMoveClass.invertible ∧
    classifyMove RewriteMoveKind.quotient ≠ RewriteMoveClass.invertible ∧
    classifyMove RewriteMoveKind.lower ≠ RewriteMoveClass.invertible ∧
    classifyMove RewriteMoveKind.lift ≠ RewriteMoveClass.invertible ∧
    classifyMove RewriteMoveKind.replay ≠ RewriteMoveClass.invertible := by
  decide

end Think.Compression.Syntax
