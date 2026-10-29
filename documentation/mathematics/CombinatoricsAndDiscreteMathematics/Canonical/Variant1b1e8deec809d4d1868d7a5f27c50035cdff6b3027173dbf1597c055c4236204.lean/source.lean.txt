-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderedEncoding.Variant0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.OrderedEncoding.Variant0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/BinaryFrontier/Symmetry/Canonical.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.GroupTheory.GroupAction.Basic
import Mathlib.Data.Finset.Order

/-!
# Generic finite-orbit canonicalization

This module knows only a finite group action and a stable linear order.  It
does not import bitfields, completion semantics, trees, or obstructions.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderedEncoding.Variant0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3

namespace Mathematics.BinaryFrontier.Symmetry

universe uGroup uCarrier uKey

variable
  (GroupCarrier : Type uGroup)
  (Carrier : Type uCarrier)
  [Group GroupCarrier]
  [Fintype GroupCarrier]
  [DecidableEq GroupCarrier]
  [MulAction GroupCarrier Carrier]
  [DecidableEq Carrier]
  [LinearOrder Carrier]

def orbitFinset
    (value : Carrier) :
    Finset Carrier :=
  Finset.univ.image
    (fun automorphism : GroupCarrier =>
      automorphism • value)

theorem orbitFinset_nonempty
    (value : Carrier) :
    (orbitFinset
      GroupCarrier Carrier value).Nonempty := by
  refine
    ⟨value, Finset.mem_image.mpr ?_⟩
  exact
    ⟨1, Finset.mem_univ _, one_smul _ _⟩

theorem orbit_nonempty
    (value : Carrier) :
    (orbitFinset
      GroupCarrier Carrier value).Nonempty :=
  orbitFinset_nonempty
    GroupCarrier Carrier value

def canon
    (value : Carrier) : Carrier :=
  (orbitFinset
    GroupCarrier Carrier value).min'
      (orbitFinset_nonempty
        GroupCarrier Carrier value)

theorem canon_mem_orbit
    (value : Carrier) :
    canon GroupCarrier Carrier value ∈
      orbitFinset GroupCarrier Carrier value :=
  Finset.min'_mem
    (orbitFinset
      GroupCarrier Carrier value)
    (orbitFinset_nonempty
      GroupCarrier Carrier value)

theorem orbitFinset_smul
    (automorphism : GroupCarrier)
    (value : Carrier) :
    orbitFinset GroupCarrier Carrier
        (automorphism • value) =
      orbitFinset GroupCarrier Carrier value := by
  ext candidate
  simp only
    [orbitFinset, Finset.mem_image,
      Finset.mem_univ, true_and]
  constructor
  · rintro ⟨transport, rfl⟩
    refine ⟨transport * automorphism, ?_⟩
    simp [mul_smul]
  · rintro ⟨transport, rfl⟩
    refine
      ⟨transport * automorphism⁻¹, ?_⟩
    simp [mul_smul]

theorem canon_smul
    (automorphism : GroupCarrier)
    (value : Carrier) :
    canon GroupCarrier Carrier
        (automorphism • value) =
      canon GroupCarrier Carrier value := by
  simp only
    [canon,
      orbitFinset_smul
        GroupCarrier Carrier automorphism value]

theorem canon_idempotent
    (value : Carrier) :
    canon GroupCarrier Carrier
        (canon GroupCarrier Carrier value) =
      canon GroupCarrier Carrier value := by
  rcases
      Finset.mem_image.mp
        (canon_mem_orbit
          GroupCarrier Carrier value) with
    ⟨automorphism, _member, transformed⟩
  calc
    canon GroupCarrier Carrier
        (canon GroupCarrier Carrier value) =
      canon GroupCarrier Carrier
        (automorphism • value) := by
          rw [transformed]
    _ =
      canon GroupCarrier Carrier value :=
        canon_smul
          GroupCarrier Carrier
          automorphism value

theorem canon_eq_iff_same_orbit
    (left right : Carrier) :
    canon GroupCarrier Carrier left =
        canon GroupCarrier Carrier right ↔
      ∃ automorphism : GroupCarrier,
        automorphism • left = right := by
  constructor
  · intro canonicalEqual
    rcases
        Finset.mem_image.mp
          (canon_mem_orbit
            GroupCarrier Carrier left) with
      ⟨leftTransport, _leftMember,
        leftCanonical⟩
    rcases
        Finset.mem_image.mp
          (canon_mem_orbit
            GroupCarrier Carrier right) with
      ⟨rightTransport, _rightMember,
        rightCanonical⟩
    refine
      ⟨rightTransport⁻¹ * leftTransport, ?_⟩
    calc
      (rightTransport⁻¹ * leftTransport) • left =
        rightTransport⁻¹ •
          (leftTransport • left) := by
            rw [mul_smul]
      _ =
        rightTransport⁻¹ •
          canon GroupCarrier Carrier left := by
            rw [leftCanonical]
      _ =
        rightTransport⁻¹ •
          canon GroupCarrier Carrier right := by
            rw [canonicalEqual]
      _ =
        rightTransport⁻¹ •
          (rightTransport • right) := by
            rw [rightCanonical]
      _ = right := by simp
  · rintro ⟨automorphism, transformed⟩
    calc
      canon GroupCarrier Carrier left =
        canon GroupCarrier Carrier
          (automorphism • left) :=
            (canon_smul
              GroupCarrier Carrier
              automorphism left).symm
      _ =
        canon GroupCarrier Carrier right := by
          rw [transformed]

structure OrderedEncoding
    (Encoded : Type uCarrier)
    (Key : Type uKey)
    [LinearOrder Key] where
  encode : Encoded → Key
  injective :
    Function.Injective encode

end Mathematics.BinaryFrontier.Symmetry
