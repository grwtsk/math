-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MaxList.Variant0536e4942ca955d6c630f21e98149dacda52e89341719028062229a8e656fbcf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0536e4942ca955d6c630f21e98149dacda52e89341719028062229a8e656fbcf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MaxList.Variant0536e4942ca955d6c630f21e98149dacda52e89341719028062229a8e656fbcf","mathematical_subject":"Computation.DataStructures","original_sha256":"0536e4942ca955d6c630f21e98149dacda52e89341719028062229a8e656fbcf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit1/Bit1/Bit0/Bit1/Bit1/Bit0/Bit1/M506970656c696e652f43656e7465722f5261646f457874656e73696f6e2e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std
import Think.Bit1.Bit1.Bit1.Bit0.Bit1.Bit0.Bit0.Bit0.M4b65726e656c2f5468656f72656d732f5261646f46696e697465457874656e73696f6e2e6c65616e


/- source-tree-label: STL1|L|addr=11101101|role=proof_code_atom|slug=pipeline-center-radoextension|owner=canonical_owner|core=Pipeline/Center/RadoExtension.lean|leaf=M506970656c696e652f43656e7465722f5261646f457874656e73696f6e2e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MaxList.Variant0536e4942ca955d6c630f21e98149dacda52e89341719028062229a8e656fbcf

set_option autoImplicit false

namespace Think.Pipeline.Center.RadoExtension

/-!
Concrete finite-extension theorem for the local Rado carrier.

This is the theorem-formalization bridge requested by the referee loop: the
algorithmic Rado witness residue is backed by a checked finite witness
construction for a bit-coded graph on `Nat`.  The remaining heat, modular,
spectral, and convergence obligations stay residue-facing elsewhere.
-/

def maxList : List Nat -> Nat
  | [] => 0
  | n :: ns => max n (maxList ns)

theorem mem_le_maxList {n : Nat} {xs : List Nat} (h : n ∈ xs) :
    n ≤ maxList xs := by
  induction xs with
  | nil => simp at h
  | cons a as ih =>
      simp [maxList] at h ⊢
      rcases h with h | h
      · subst n
        exact Nat.le_max_left a (maxList as)
      · exact Nat.le_trans (ih h) (Nat.le_max_right a (maxList as))

def bitset : List Nat -> Nat
  | [] => 0
  | u :: us => (2 ^ u) ||| bitset us

theorem bitset_testBit_of_mem
    (U : List Nat) {u : Nat} (hu : u ∈ U) :
    (bitset U).testBit u = true := by
  induction U with
  | nil => simp at hu
  | cons a as ih =>
      simp [bitset, Nat.testBit_or, Nat.testBit_two_pow] at hu ⊢
      rcases hu with h | h
      · exact Or.inl h.symm
      · exact Or.inr (ih h)

theorem bitset_testBit_of_not_mem
    (U : List Nat) {u : Nat} (hu : u ∉ U) :
    (bitset U).testBit u = false := by
  induction U with
  | nil => simp [bitset]
  | cons a as ih =>
      simp [bitset, Nat.testBit_or, Nat.testBit_two_pow] at hu ⊢
      constructor
      · intro h
        exact hu.1 h.symm
      · exact ih hu.2

abbrev DisjointNatLists (U V : List Nat) : Prop :=
  Think.Kernel.Theorems.RadoFiniteExtension.DisjointLists U V

def freshBound (U V : List Nat) : Nat :=
  maxList (U ++ V)

def freshHeight (U V : List Nat) : Nat :=
  freshBound U V + 1

def freshWitness (U V : List Nat) : Nat :=
  bitset U ||| 2 ^ freshHeight U V

theorem fresh_high_bit (U V : List Nat) :
    (freshWitness U V).testBit (freshHeight U V) = true := by
  simp [freshWitness, Nat.testBit_or]

theorem freshWitness_ge_highPow (U V : List Nat) :
    2 ^ freshHeight U V ≤ freshWitness U V := by
  apply Nat.le_of_not_lt
  intro hlt
  have hfalse :
      (freshWitness U V).testBit (freshHeight U V) = false :=
    Nat.testBit_lt_two_pow hlt
  have htrue :
      (freshWitness U V).testBit (freshHeight U V) = true :=
    fresh_high_bit U V
  rw [htrue] at hfalse
  contradiction

theorem bound_lt_highPow (U V : List Nat) :
    freshBound U V < 2 ^ freshHeight U V := by
  have hsucc : freshBound U V < freshHeight U V := by
    simp [freshHeight]
  have hpow : freshHeight U V < 2 ^ freshHeight U V :=
    Nat.lt_two_pow_self
  exact Nat.lt_trans hsucc hpow

theorem mem_lt_freshWitness_left
    {U V : List Nat} {u : Nat} (hu : u ∈ U) :
    u < freshWitness U V := by
  have hleBound : u ≤ freshBound U V := by
    apply mem_le_maxList
    exact List.mem_append.2 (Or.inl hu)
  have hltBound : u < 2 ^ freshHeight U V :=
    Nat.lt_of_le_of_lt hleBound (bound_lt_highPow U V)
  exact Nat.lt_of_lt_of_le hltBound (freshWitness_ge_highPow U V)

theorem mem_lt_freshWitness_right
    {U V : List Nat} {v : Nat} (hv : v ∈ V) :
    v < freshWitness U V := by
  have hleBound : v ≤ freshBound U V := by
    apply mem_le_maxList
    exact List.mem_append.2 (Or.inr hv)
  have hltBound : v < 2 ^ freshHeight U V :=
    Nat.lt_of_le_of_lt hleBound (bound_lt_highPow U V)
  exact Nat.lt_of_lt_of_le hltBound (freshWitness_ge_highPow U V)

theorem freshWitness_not_mem_left {U V : List Nat} :
    freshWitness U V ∉ U := by
  intro hmem
  exact Nat.lt_irrefl (freshWitness U V) (mem_lt_freshWitness_left hmem)

theorem freshWitness_not_mem_right {U V : List Nat} :
    freshWitness U V ∉ V := by
  intro hmem
  exact Nat.lt_irrefl (freshWitness U V) (mem_lt_freshWitness_right hmem)

theorem freshWitness_testBit_of_mem
    {U V : List Nat} {u : Nat} (hu : u ∈ U) :
    (freshWitness U V).testBit u = true := by
  simp [freshWitness, Nat.testBit_or, bitset_testBit_of_mem U hu]

theorem freshWitness_testBit_of_avoid
    {U V : List Nat} (hdisj : DisjointNatLists U V)
    {v : Nat} (hv : v ∈ V) :
    (freshWitness U V).testBit v = false := by
  have hvnot : v ∉ U := by
    intro hmem
    exact hdisj v hmem hv
  have hvleBound : v ≤ freshBound U V := by
    apply mem_le_maxList
    exact List.mem_append.2 (Or.inr hv)
  have hvltHeight : v < freshHeight U V := by
    exact Nat.lt_succ_of_le hvleBound
  have hne : freshHeight U V ≠ v := Nat.ne_of_gt hvltHeight
  simp [freshWitness, Nat.testBit_or, bitset_testBit_of_not_mem U hvnot, hne]

def bitRadoEdge (a b : Nat) : Prop :=
  (a < b ∧ b.testBit a = true) ∨
    (b < a ∧ a.testBit b = true)

theorem bitRadoEdge_irreflexive :
    ∀ n : Nat, ¬ bitRadoEdge n n := by
  intro n h
  rcases h with h | h
  · exact Nat.lt_irrefl n h.1
  · exact Nat.lt_irrefl n h.1

theorem bitRadoEdge_symmetric {a b : Nat} :
    bitRadoEdge a b -> bitRadoEdge b a := by
  intro h
  rcases h with h | h
  · exact Or.inr h
  · exact Or.inl h

def bitRadoGraph : Think.Kernel.Theorems.RadoFiniteExtension.Graph Nat :=
  { adj := bitRadoEdge }

theorem bitRado_finite_extension
    (U V : List Nat)
    (hdisj : DisjointNatLists U V) :
    ∃ z : Nat,
      z ∉ U ∧
      z ∉ V ∧
      (∀ u : Nat, u ∈ U -> bitRadoEdge z u) ∧
      (∀ v : Nat, v ∈ V -> ¬ bitRadoEdge z v) := by
  refine
    ⟨freshWitness U V,
      freshWitness_not_mem_left,
      freshWitness_not_mem_right,
      ?_,
      ?_⟩
  · intro u hu
    exact Or.inr
      ⟨mem_lt_freshWitness_left hu, freshWitness_testBit_of_mem hu⟩
  · intro v hv hedge
    rcases hedge with h | h
    · exact Nat.lt_asymm h.1 (mem_lt_freshWitness_right hv)
    · have hfalse := freshWitness_testBit_of_avoid hdisj hv
      have hbit : (freshWitness U V).testBit v = true := h.2
      rw [hfalse] at hbit
      contradiction

theorem bitRado_extensionProperty :
    Think.Kernel.Theorems.RadoFiniteExtension.ExtensionProperty bitRadoGraph := by
  intro U V hdisj
  obtain ⟨z, _hzU, _hzV, hU, hV⟩ :=
    bitRado_finite_extension U V hdisj
  exact ⟨z, hU, hV⟩

def bitRadoExtensionFormalTheorem :
    Think.Kernel.Theorems.FormalTheorem :=
  { name := "center-bit-rado-finite-extension"
    source := "explicit bit-coded graph on Nat"
    claim :=
      Think.Kernel.Theorems.RadoFiniteExtension.ExtensionProperty
        bitRadoGraph
    status := Think.Kernel.Theorems.ProofStatus.proofComplete
    checked := FWR.Checked.proved bitRado_extensionProperty }

theorem bitRadoExtensionFormalTheorem_complete :
    bitRadoExtensionFormalTheorem.hasCompleteProof := by
  exact ⟨rfl, rfl⟩

theorem bitRadoExtensionFormalTheorem_has_no_residue :
    bitRadoExtensionFormalTheorem.checked.hasResidue = false := by
  exact
    Think.Kernel.Theorems.FormalTheorem.complete_has_no_residue
      bitRadoExtensionFormalTheorem
      bitRadoExtensionFormalTheorem_complete

end Think.Pipeline.Center.RadoExtension
