-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EffectiveTypeIIPrefixPairs.Variant52010488d2d248e6182ba3676d920a9d3af2b1481cd0cc2c4b637cb63f6ede6e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"52010488d2d248e6182ba3676d920a9d3af2b1481cd0cc2c4b637cb63f6ede6e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.EffectiveTypeIIPrefixPairs.Variant52010488d2d248e6182ba3676d920a9d3af2b1481cd0cc2c4b637cb63f6ede6e","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"52010488d2d248e6182ba3676d920a9d3af2b1481cd0cc2c4b637cb63f6ede6e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/TypeII/ProductShellReindex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.ProductShell
public import Surface.Core.TypeII.CanonicalFactorBlock
public import Surface.Core.TypeII.ShellCutoffMatrix
import Mathlib.Tactic

/-!
# Exact reindexing by product shells

This module partitions the fixed-master-scale conductor-three Vaughan Type II
prefix by the product variable.  For an endpoint `x` in shell `q`, the
effective pair set through `x` is exactly the disjoint union of

* all complete product shells with index `< q`, and
* the current partial shell `(2^q,x]`.

Each complete shell is then reindexed by the canonical exponent blocks from
`CanonicalFactorBlock`.  Everything here is finite equality: no norm bound,
maximal estimate, packet model, or GRH input occurs.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EffectiveTypeIIPrefixPairs.Variant52010488d2d248e6182ba3676d920a9d3af2b1481cd0cc2c4b637cb63f6ede6e

public section

namespace Surface.Core.TypeII

noncomputable section

open scoped BigOperators
open Surface.Core.ConductorThreeTwistedVaughan
open Surface.Core.ConductorThreeVaughanBlocks
open Surface.Core.ConductorThreeWangZahlTTStar

/-- Effective fixed-cutoff Type II pairs whose product has entered prefix
`x`.  The master product bound is supplied separately by hypotheses such as
`x ≤ 2N`; it is not silently built into this carrier. -/
@[expose]
def effectiveTypeIIPrefixPairs (N x : ℕ) :
    Finset (VaughanScaleIndex N × VaughanScaleIndex N) := by
  classical
  exact Finset.univ.filter fun pair ↦
    vaughanFourthRootCutoff N < pair.1.1 ∧
      vaughanFourthRootCutoff N < pair.2.1 ∧
      pair.1.1 * pair.2.1 ≤ x

@[surface_novel, surface_published]
theorem mem_effectiveTypeIIPrefixPairs_iff {N x : ℕ}
    {pair : VaughanScaleIndex N × VaughanScaleIndex N} :
    pair ∈ effectiveTypeIIPrefixPairs N x ↔
      vaughanFourthRootCutoff N < pair.1.1 ∧
        vaughanFourthRootCutoff N < pair.2.1 ∧
        pair.1.1 * pair.2.1 ≤ x := by
  classical
  simp [effectiveTypeIIPrefixPairs]

/-- Effective fixed-cutoff pairs in the partial product shell `(2^q,x]`. -/
@[expose]
def effectiveTypeIIShellPrefixPairs (N q x : ℕ) :
    Finset (VaughanScaleIndex N × VaughanScaleIndex N) := by
  classical
  exact Finset.univ.filter fun pair ↦
    vaughanFourthRootCutoff N < pair.1.1 ∧
      vaughanFourthRootCutoff N < pair.2.1 ∧
      2 ^ q < pair.1.1 * pair.2.1 ∧
      pair.1.1 * pair.2.1 ≤ x

@[surface_novel, surface_published]
theorem mem_effectiveTypeIIShellPrefixPairs_iff {N q x : ℕ}
    {pair : VaughanScaleIndex N × VaughanScaleIndex N} :
    pair ∈ effectiveTypeIIShellPrefixPairs N q x ↔
      vaughanFourthRootCutoff N < pair.1.1 ∧
        vaughanFourthRootCutoff N < pair.2.1 ∧
        2 ^ q < pair.1.1 * pair.2.1 ∧
        pair.1.1 * pair.2.1 ≤ x := by
  classical
  simp [effectiveTypeIIShellPrefixPairs]

/-- Disjoint union of all complete effective product shells below `q`. -/
@[expose]
def completeLowerTypeIIShellPairs (N q : ℕ) :
    Finset (VaughanScaleIndex N × VaughanScaleIndex N) :=
  (Finset.range q).biUnion (effectiveTypeIIShellPairs N)

/-- Distinct product shells carry disjoint effective pair sets. -/
@[surface_novel, surface_published]
theorem effectiveTypeIIShellPairs_disjoint {N q r : ℕ} (hqr : q ≠ r) :
    Disjoint (effectiveTypeIIShellPairs N q)
      (effectiveTypeIIShellPairs N r) := by
  classical
  rw [Finset.disjoint_left]
  intro pair hq hr
  have hq' := mem_effectiveTypeIIShellPairs_iff.mp hq
  have hr' := mem_effectiveTypeIIShellPairs_iff.mp hr
  rcases lt_or_gt_of_ne hqr with hlt | hgt
  · have hexp : 2 ^ (q + 1) ≤ 2 ^ r := by
      exact Nat.pow_le_pow_right (by decide) (by omega)
    exact (not_lt_of_ge (hq'.2.2.2.1.trans hexp)) hr'.2.2.1
  · have hexp : 2 ^ (r + 1) ≤ 2 ^ q := by
      exact Nat.pow_le_pow_right (by decide) (by omega)
    exact (not_lt_of_ge (hr'.2.2.2.1.trans hexp)) hq'.2.2.1

@[surface_novel, surface_published]
theorem completeLowerTypeIIShellPairs_zero (N : ℕ) :
    completeLowerTypeIIShellPairs N 0 = ∅ := by
  simp [completeLowerTypeIIShellPairs]

@[surface_novel, surface_published]
theorem completeLowerTypeIIShellPairs_succ (N q : ℕ) :
    completeLowerTypeIIShellPairs N (q + 1) =
      completeLowerTypeIIShellPairs N q ∪ effectiveTypeIIShellPairs N q := by
  classical
  unfold completeLowerTypeIIShellPairs
  rw [Finset.range_add_one, Finset.biUnion_insert, Finset.union_comm]

/-- Below the master boundary, the completed shells are exactly the
effective Type II prefix ending at `2^q`. -/
@[surface_novel, surface_published]
theorem completeLowerTypeIIShellPairs_eq_prefix (N q : ℕ)
    (hmaster : 2 ^ q ≤ 2 * N) :
    completeLowerTypeIIShellPairs N q =
      effectiveTypeIIPrefixPairs N (2 ^ q) := by
  induction q with
  | zero =>
      rw [completeLowerTypeIIShellPairs_zero]
      ext pair
      constructor
      · simp
      · intro hpair
        have hp := mem_effectiveTypeIIPrefixPairs_iff.mp hpair
        have hcut := two_le_vaughanFourthRootCutoff N
        have hm : 2 < pair.1.1 := hcut.trans_lt hp.1
        have hk : 2 < pair.2.1 := hcut.trans_lt hp.2.1
        have hprod : 1 < pair.1.1 * pair.2.1 :=
          (show 1 < pair.1.1 by omega).trans_le
            (Nat.le_mul_of_pos_right pair.1.1 (by omega))
        norm_num at hp
        omega
  | succ q ih =>
      rw [completeLowerTypeIIShellPairs_succ]
      have hprev : 2 ^ q ≤ 2 * N := by
        exact (Nat.pow_le_pow_right (by decide) (Nat.le_succ q)).trans hmaster
      rw [ih hprev]
      ext pair
      simp only [Finset.mem_union, mem_effectiveTypeIIPrefixPairs_iff,
        mem_effectiveTypeIIShellPairs_iff]
      constructor
      · intro h
        rcases h with h | h
        · exact ⟨h.1, h.2.1,
            h.2.2.trans (Nat.pow_le_pow_right (by decide) (Nat.le_succ q))⟩
        · exact ⟨h.1, h.2.1, h.2.2.2.1⟩
      · intro h
        by_cases hp : pair.1.1 * pair.2.1 ≤ 2 ^ q
        · exact Or.inl ⟨h.1, h.2.1, hp⟩
        · exact Or.inr ⟨h.1, h.2.1, by omega, h.2.2,
            h.2.2.trans hmaster⟩

/-- Exact pair-set decomposition of a prefix endpoint lying in shell `q`:
complete lower shells plus the current partial shell. -/
@[surface_novel, surface_published]
theorem effectiveTypeIIPrefixPairs_eq_completeLower_add_current
    {N q x : ℕ} (hx : x ∈ typeIIProductShell N q) :
    effectiveTypeIIPrefixPairs N x =
      completeLowerTypeIIShellPairs N q ∪
        effectiveTypeIIShellPrefixPairs N q x := by
  have hpow : 2 ^ q ≤ 2 * N := by
    exact (Nat.le_of_lt (mem_typeIIProductShell_iff.mp hx).1).trans
      (productShell_mem_implies_scale hx)
  rw [completeLowerTypeIIShellPairs_eq_prefix N q hpow]
  ext pair
  simp only [Finset.mem_union, mem_effectiveTypeIIPrefixPairs_iff,
    mem_effectiveTypeIIShellPrefixPairs_iff]
  constructor
  · intro h
    by_cases hp : pair.1.1 * pair.2.1 ≤ 2 ^ q
    · exact Or.inl ⟨h.1, h.2.1, hp⟩
    · exact Or.inr ⟨h.1, h.2.1, by omega, h.2.2⟩
  · rintro (h | h)
    · exact ⟨h.1, h.2.1,
        h.2.2.trans (Nat.le_of_lt (mem_typeIIProductShell_iff.mp hx).1)⟩
    · exact ⟨h.1, h.2.1, h.2.2.2⟩

/-- The lower completed shells and current partial shell are disjoint. -/
@[surface_novel, surface_published]
theorem completeLowerTypeIIShellPairs_disjoint_current
    {N q x : ℕ} (hx : x ∈ typeIIProductShell N q) :
    Disjoint (completeLowerTypeIIShellPairs N q)
      (effectiveTypeIIShellPrefixPairs N q x) := by
  have hpow : 2 ^ q ≤ 2 * N := by
    exact (Nat.le_of_lt (mem_typeIIProductShell_iff.mp hx).1).trans
      (productShell_mem_implies_scale hx)
  rw [completeLowerTypeIIShellPairs_eq_prefix N q hpow]
  rw [Finset.disjoint_left]
  intro pair hlower hcurrent
  have hl := mem_effectiveTypeIIPrefixPairs_iff.mp hlower
  have hc := mem_effectiveTypeIIShellPrefixPairs_iff.mp hcurrent
  omega

/-- Arithmetic term attached to one fixed-scale Type II factor pair. -/
@[expose]
def conductorThreeTypeIIPairTerm {N : ℕ}
    (pair : VaughanScaleIndex N × VaughanScaleIndex N) : ℂ :=
  conductorThreeVaughanLeft N pair.1 * conductorThreeVaughanRight N pair.2

/-- The portion of one canonical factor block that has entered current
shell prefix `(2^q,x]`. -/
@[expose]
def shellFactorBlockPrefixPairs {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) (x : ℕ) :
    Finset (VaughanScaleIndex N × VaughanScaleIndex N) :=
  (shellFactorBlockPairs B).filter fun pair ↦ pair.1.1 * pair.2.1 ≤ x

/-- The same entered block fiber, expressed in the local subtype coordinates
used by `typeIIShellPrefixMatrix`. -/
@[expose]
def enteredShellBlockSubtypePairs {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) (x : ℕ) : Finset (B.Left × B.Right) :=
  Finset.univ.filter fun pair ↦
    2 ^ q < pair.1.1.1 * pair.2.1.1 ∧
      pair.1.1.1 * pair.2.1.1 ≤ x

@[surface_novel, surface_published]
theorem mem_shellFactorBlockPrefixPairs_iff {N q x : ℕ}
    {B : TypeIIShellFactorBlock N q}
    {pair : VaughanScaleIndex N × VaughanScaleIndex N} :
    pair ∈ shellFactorBlockPrefixPairs B x ↔
      IsEffectiveTypeIIShellPair N q pair ∧
        B.ContainsLeft pair.1 ∧ B.ContainsRight pair.2 ∧
        pair.1.1 * pair.2.1 ≤ x := by
  classical
  simp [shellFactorBlockPrefixPairs, mem_shellFactorBlockPairs_iff,
    and_assoc]

/-- Reindexing a full-scale entered pair fiber into the block subtypes does
not change its arithmetic sum. -/
@[surface_novel, surface_published]
theorem sum_shellFactorBlockPrefixPairs_eq_sum_enteredSubtypePairs
    {N q x : ℕ} (B : TypeIIShellFactorBlock N q)
    (hx : x ∈ typeIIProductShell N q) :
    (∑ pair ∈ shellFactorBlockPrefixPairs B x,
        conductorThreeTypeIIPairTerm pair) =
      ∑ pair ∈ enteredShellBlockSubtypePairs B x,
        conductorThreeTypeIIPairTerm (pair.1.1, pair.2.1) := by
  classical
  refine Finset.sum_bij
    (fun pair hp ↦
      ((⟨pair.1,
          (mem_shellFactorBlockPrefixPairs_iff.mp hp).2.1⟩ : B.Left),
        (⟨pair.2,
          (mem_shellFactorBlockPrefixPairs_iff.mp hp).2.2.1⟩ : B.Right)))
    ?_ ?_ ?_ ?_
  · intro pair hp
    have hp' := mem_shellFactorBlockPrefixPairs_iff.mp hp
    simp [enteredShellBlockSubtypePairs, hp'.1.2.2.1, hp'.2.2.2]
  · intro pair₁ hp₁ pair₂ hp₂ heq
    apply Prod.ext
    · exact congrArg (fun p : B.Left × B.Right ↦ p.1.1) heq
    · exact congrArg (fun p : B.Left × B.Right ↦ p.2.1) heq
  · intro localPair hlocal
    have hlocal' :
        2 ^ q < localPair.1.1.1 * localPair.2.1.1 ∧
          localPair.1.1.1 * localPair.2.1.1 ≤ x := by
      simpa [enteredShellBlockSubtypePairs] using hlocal
    let pair : VaughanScaleIndex N × VaughanScaleIndex N :=
      (localPair.1.1, localPair.2.1)
    have hx' := mem_typeIIProductShell_iff.mp hx
    have heffective : IsEffectiveTypeIIShellPair N q pair :=
      ⟨localPair.1.2.1, localPair.2.2.1, hlocal'.1,
        hlocal'.2.trans (hx'.2.trans (min_le_left _ _)),
        hlocal'.2.trans (hx'.2.trans (min_le_right _ _))⟩
    have hp : pair ∈ shellFactorBlockPrefixPairs B x :=
      mem_shellFactorBlockPrefixPairs_iff.mpr
        ⟨heffective, localPair.1.2, localPair.2.2, hlocal'.2⟩
    refine ⟨pair, hp, ?_⟩
    apply Prod.ext <;> apply Subtype.ext <;> rfl
  · intro pair hp
    simp [conductorThreeTypeIIPairTerm]

/-- Exact adapter between the entered full-scale pair sum and the local
block bilinear cutoff matrix requested by the shell analysis. -/
@[surface_novel, surface_published]
theorem sum_shellFactorBlockPrefixPairs_eq_bilinearMatrixPairing
    {N q x : ℕ} (B : TypeIIShellFactorBlock N q)
    (hx : x ∈ typeIIProductShell N q) :
    (∑ pair ∈ shellFactorBlockPrefixPairs B x,
        conductorThreeTypeIIPairTerm pair) =
      bilinearMatrixPairing (shellBlockLeftCoefficient B)
        (typeIIShellPrefixMatrix B x) (shellBlockRightCoefficient B) := by
  rw [sum_shellFactorBlockPrefixPairs_eq_sum_enteredSubtypePairs B hx]
  classical
  unfold enteredShellBlockSubtypePairs bilinearMatrixPairing
  rw [Finset.sum_filter, Fintype.sum_prod_type]
  apply Fintype.sum_congr
  intro m
  apply Fintype.sum_congr
  intro k
  by_cases h : 2 ^ q < m.1.1 * k.1.1 ∧ m.1.1 * k.1.1 ≤ x
  · simp [typeIIShellPrefixMatrix, shellBlockLeftCoefficient,
      shellBlockRightCoefficient, conductorThreeTypeIIPairTerm, h]
  · simp [typeIIShellPrefixMatrix, h]

/-- A relevant factor block witnesses that its effective product shell is
nonempty, so the clipped shell endpoint belongs to that shell. -/
@[surface_novel, surface_published]
theorem typeIIProductShellUpper_mem_of_relevantBlock
    {N q : ℕ} (B : TypeIIShellFactorBlock N q) :
    typeIIProductShellUpper N q ∈ typeIIProductShell N q := by
  obtain ⟨m, k, hm, hk, hmLower, hmUpper, hkLower, hkUpper,
    hproductLower, hproductUpper, hproductMaster⟩ := B.nonempty_effective
  rw [mem_typeIIProductShell_iff]
  exact ⟨hproductLower.trans_le (le_min hproductUpper hproductMaster), le_rfl⟩

/-- At the clipped shell endpoint every effective pair in the block has
entered. -/
@[surface_novel, surface_published]
theorem shellFactorBlockPrefixPairs_at_upper
    {N q : ℕ} (B : TypeIIShellFactorBlock N q) :
    shellFactorBlockPrefixPairs B (typeIIProductShellUpper N q) =
      shellFactorBlockPairs B := by
  classical
  ext pair
  constructor
  · intro hp
    exact (Finset.mem_filter.mp hp).1
  · intro hp
    have heffective := (mem_shellFactorBlockPairs_iff.mp hp).1
    apply Finset.mem_filter.mpr
    exact ⟨hp, le_min heffective.2.2.2.1 heffective.2.2.2.2⟩

/-- Complete-shell block sum as a local bilinear matrix pairing at the
clipped shell endpoint. -/
@[surface_novel, surface_published]
theorem sum_shellFactorBlockPairs_eq_bilinearMatrixPairing_at_upper
    {N q : ℕ} (B : TypeIIShellFactorBlock N q) :
    (∑ pair ∈ shellFactorBlockPairs B,
        conductorThreeTypeIIPairTerm pair) =
      bilinearMatrixPairing (shellBlockLeftCoefficient B)
        (typeIIShellPrefixMatrix B (typeIIProductShellUpper N q))
        (shellBlockRightCoefficient B) := by
  rw [← shellFactorBlockPrefixPairs_at_upper B]
  exact sum_shellFactorBlockPrefixPairs_eq_bilinearMatrixPairing B
    (typeIIProductShellUpper_mem_of_relevantBlock B)

/-- Exact finite summation form of the set decomposition. -/
@[surface_novel, surface_published]
theorem sum_effectiveTypeIIPrefixPairs_eq_lower_add_current
    {N q x : ℕ} (hx : x ∈ typeIIProductShell N q) :
    (∑ pair ∈ effectiveTypeIIPrefixPairs N x,
        conductorThreeTypeIIPairTerm pair) =
      (∑ pair ∈ completeLowerTypeIIShellPairs N q,
          conductorThreeTypeIIPairTerm pair) +
        ∑ pair ∈ effectiveTypeIIShellPrefixPairs N q x,
          conductorThreeTypeIIPairTerm pair := by
  rw [effectiveTypeIIPrefixPairs_eq_completeLower_add_current hx]
  exact Finset.sum_union (completeLowerTypeIIShellPairs_disjoint_current hx)

/-- A complete shell sum is exactly the sum over its disjoint canonical
exponent-indexed factor blocks. -/
@[surface_novel, surface_published]
theorem sum_effectiveTypeIIShellPairs_eq_sum_relevantShellBlocks
    (N q : ℕ) :
    (∑ pair ∈ effectiveTypeIIShellPairs N q,
        conductorThreeTypeIIPairTerm pair) =
      ∑ B ∈ relevantShellBlocks N q,
        ∑ pair ∈ shellFactorBlockPairs B,
          conductorThreeTypeIIPairTerm pair := by
  classical
  rw [← productShell_eq_disjointUnion_factorBlocks N q]
  exact Finset.sum_biUnion (by
    intro B hB C hC hne
    exact relevantShellBlocks_pairwiseDisjoint hne)

/-- Completed lower shells expand exactly into their canonical relevant
factor blocks. -/
@[surface_novel, surface_published]
theorem sum_completeLowerTypeIIShellPairs_eq_sum_relevantShellBlocks
    (N q : ℕ) :
    (∑ pair ∈ completeLowerTypeIIShellPairs N q,
        conductorThreeTypeIIPairTerm pair) =
      ∑ r ∈ Finset.range q,
        ∑ B ∈ relevantShellBlocks N r,
          ∑ pair ∈ shellFactorBlockPairs B,
            conductorThreeTypeIIPairTerm pair := by
  classical
  unfold completeLowerTypeIIShellPairs
  rw [Finset.sum_biUnion (by
    intro r hr s hs hrs
    exact effectiveTypeIIShellPairs_disjoint hrs)]
  apply Finset.sum_congr rfl
  intro r hr
  exact sum_effectiveTypeIIShellPairs_eq_sum_relevantShellBlocks N r

/-- The current partial shell is exactly the disjoint union of the entered
parts of its canonical exponent blocks. -/
@[surface_novel, surface_published]
theorem effectiveTypeIIShellPrefixPairs_eq_biUnion_relevantBlocks
    {N q x : ℕ} (hx : x ∈ typeIIProductShell N q) :
    effectiveTypeIIShellPrefixPairs N q x =
      (relevantShellBlocks N q).biUnion
        (fun B ↦ shellFactorBlockPrefixPairs B x) := by
  classical
  ext pair
  constructor
  · intro hp
    have hp' := mem_effectiveTypeIIShellPrefixPairs_iff.mp hp
    have hx' := mem_typeIIProductShell_iff.mp hx
    have heffective : IsEffectiveTypeIIShellPair N q pair :=
      ⟨hp'.1, hp'.2.1, hp'.2.2.1,
        hp'.2.2.2.trans (hx'.2.trans (min_le_left _ _)),
        hp'.2.2.2.trans (hx'.2.trans (min_le_right _ _))⟩
    obtain ⟨B, hB, hm, hk⟩ :=
      productShell_pair_has_relevant_exponents heffective
    apply Finset.mem_biUnion.mpr
    exact ⟨B, hB, mem_shellFactorBlockPrefixPairs_iff.mpr
      ⟨heffective, hm, hk, hp'.2.2.2⟩⟩
  · intro hp
    obtain ⟨B, hB, hpB⟩ := Finset.mem_biUnion.mp hp
    have hp' := mem_shellFactorBlockPrefixPairs_iff.mp hpB
    exact mem_effectiveTypeIIShellPrefixPairs_iff.mpr
      ⟨hp'.1.1, hp'.1.2.1, hp'.1.2.2.1, hp'.2.2.2⟩

/-- The current partial-shell block fibers remain pairwise disjoint. -/
@[surface_novel, surface_published]
theorem relevantShellBlockPrefixPairs_pairwiseDisjoint
    {N q x : ℕ} :
    (↑(relevantShellBlocks N q) : Set (TypeIIShellFactorBlock N q)).PairwiseDisjoint
      (fun B ↦ shellFactorBlockPrefixPairs B x) := by
  intro B hB C hC hne
  change Disjoint (shellFactorBlockPrefixPairs B x)
    (shellFactorBlockPrefixPairs C x)
  rw [Finset.disjoint_left]
  intro pair hpB hpC
  have hfullB : pair ∈ shellFactorBlockPairs B :=
    (Finset.mem_filter.mp hpB).1
  have hfullC : pair ∈ shellFactorBlockPairs C :=
    (Finset.mem_filter.mp hpC).1
  exact Finset.disjoint_left.mp (relevantShellBlocks_pairwiseDisjoint hne)
    hfullB hfullC

/-- Current partial-shell arithmetic sum expanded over relevant blocks. -/
@[surface_novel, surface_published]
theorem sum_effectiveTypeIIShellPrefixPairs_eq_sum_relevantShellBlocks
    {N q x : ℕ} (hx : x ∈ typeIIProductShell N q) :
    (∑ pair ∈ effectiveTypeIIShellPrefixPairs N q x,
        conductorThreeTypeIIPairTerm pair) =
      ∑ B ∈ relevantShellBlocks N q,
        ∑ pair ∈ shellFactorBlockPrefixPairs B x,
          conductorThreeTypeIIPairTerm pair := by
  classical
  rw [effectiveTypeIIShellPrefixPairs_eq_biUnion_relevantBlocks hx]
  exact Finset.sum_biUnion relevantShellBlockPrefixPairs_pairwiseDisjoint

/-- The global finite Type II cutoff pairing is exactly the sum over the
effective pair carrier.  Coefficients outside the fixed Vaughan cutoffs
vanish, so no extra support hypothesis is needed. -/
@[surface_novel, surface_published]
theorem globalTypeIICutoffPairing_eq_sum_effectivePairs (N x : ℕ) :
    bilinearMatrixPairing (conductorThreeVaughanLeft N)
        (typeIICutoffMatrix (fun m : VaughanScaleIndex N ↦ m.1)
          (fun k : VaughanScaleIndex N ↦ k.1) x)
        (conductorThreeVaughanRight N) =
      ∑ pair ∈ effectiveTypeIIPrefixPairs N x,
        conductorThreeTypeIIPairTerm pair := by
  classical
  calc
    bilinearMatrixPairing (conductorThreeVaughanLeft N)
        (typeIICutoffMatrix (fun m : VaughanScaleIndex N ↦ m.1)
          (fun k : VaughanScaleIndex N ↦ k.1) x)
        (conductorThreeVaughanRight N) =
      ∑ pair : VaughanScaleIndex N × VaughanScaleIndex N,
        conductorThreeVaughanLeft N pair.1 *
          typeIICutoffMatrix (fun m : VaughanScaleIndex N ↦ m.1)
            (fun k : VaughanScaleIndex N ↦ k.1) x pair.1 pair.2 *
          conductorThreeVaughanRight N pair.2 := by
            unfold bilinearMatrixPairing
            symm
            exact Fintype.sum_prod_type _
    _ = ∑ pair ∈ effectiveTypeIIPrefixPairs N x,
        conductorThreeTypeIIPairTerm pair := by
      unfold effectiveTypeIIPrefixPairs
      rw [Finset.sum_filter]
      apply Fintype.sum_congr
      intro pair
      by_cases hm : vaughanFourthRootCutoff N < pair.1.1
      · by_cases hk : vaughanFourthRootCutoff N < pair.2.1
        · by_cases hp : pair.1.1 * pair.2.1 ≤ x
          · simp [typeIICutoffMatrix, conductorThreeVaughanLeft,
              conductorThreeVaughanRight, conductorThreeTypeIIPairTerm,
              hm, hk, hp]
          · simp [typeIICutoffMatrix, conductorThreeVaughanLeft,
              conductorThreeVaughanRight, hm, hk, hp]
        · simp [typeIICutoffMatrix, conductorThreeVaughanRight,
            hk]
      · simp [typeIICutoffMatrix, conductorThreeVaughanLeft, hm]

/-- Exact shell reindexing of the actual conductor-three Vaughan Type II
prefix.  The minus sign is the fixed Type II sign in Vaughan's identity. -/
@[surface_novel, surface_published]
theorem conductorThreeTypeIIPrefix_eq_completeLower_add_current
    {N q x : ℕ} (hxScale : x ≤ 2 * N)
    (hxShell : x ∈ typeIIProductShell N q) :
    (conductorThreeVaughanTypeIIPrefix N x : ℂ) =
      -((∑ pair ∈ completeLowerTypeIIShellPairs N q,
            conductorThreeTypeIIPairTerm pair) +
        ∑ pair ∈ effectiveTypeIIShellPrefixPairs N q x,
          conductorThreeTypeIIPairTerm pair) := by
  rw [conductorThreeTypeII_eq_sum_dyadicBlocks hxScale,
    sum_typeIIBlockPairing_eq_global hxScale,
    globalTypeIICutoffPairing_eq_sum_effectivePairs,
    sum_effectiveTypeIIPrefixPairs_eq_lower_add_current hxShell]

/-- Fully expanded exact shell/block reindexing of the actual conductor-three
Vaughan Type II prefix.  Complete shells use full block fibers; the current
shell uses the entered prefix fiber of each block. -/
@[surface_novel, surface_published]
theorem conductorThreeTypeIIPrefix_eq_sum_completeShellBlocks_add_currentBlocks
    {N q x : ℕ} (hxScale : x ≤ 2 * N)
    (hxShell : x ∈ typeIIProductShell N q) :
    (conductorThreeVaughanTypeIIPrefix N x : ℂ) =
      -((∑ r ∈ Finset.range q,
            ∑ B ∈ relevantShellBlocks N r,
              ∑ pair ∈ shellFactorBlockPairs B,
                conductorThreeTypeIIPairTerm pair) +
        ∑ B ∈ relevantShellBlocks N q,
          ∑ pair ∈ shellFactorBlockPrefixPairs B x,
            conductorThreeTypeIIPairTerm pair) := by
  rw [conductorThreeTypeIIPrefix_eq_completeLower_add_current hxScale hxShell,
    sum_completeLowerTypeIIShellPairs_eq_sum_relevantShellBlocks,
    sum_effectiveTypeIIShellPrefixPairs_eq_sum_relevantShellBlocks hxShell]

/-- Final exact matrix form: every completed lower-shell block is evaluated
at its clipped endpoint, and every current-shell block at the live prefix
`x`.  This is solely a finite bilinear reindexing. -/
@[surface_novel, surface_published]
theorem conductorThreeTypeIIPrefix_eq_sum_shellBlockBilinearPairings
    {N q x : ℕ} (hxScale : x ≤ 2 * N)
    (hxShell : x ∈ typeIIProductShell N q) :
    (conductorThreeVaughanTypeIIPrefix N x : ℂ) =
      -((∑ r ∈ Finset.range q,
            ∑ B ∈ relevantShellBlocks N r,
              bilinearMatrixPairing (shellBlockLeftCoefficient B)
                (typeIIShellPrefixMatrix B
                  (typeIIProductShellUpper N r))
                (shellBlockRightCoefficient B)) +
        ∑ B ∈ relevantShellBlocks N q,
          bilinearMatrixPairing (shellBlockLeftCoefficient B)
            (typeIIShellPrefixMatrix B x)
            (shellBlockRightCoefficient B)) := by
  rw [conductorThreeTypeIIPrefix_eq_sum_completeShellBlocks_add_currentBlocks
    hxScale hxShell]
  simp_rw [sum_shellFactorBlockPairs_eq_bilinearMatrixPairing_at_upper]
  apply congrArg Neg.neg
  apply congrArg (fun z ↦ _ + z)
  apply Finset.sum_congr rfl
  intro B hB
  exact sum_shellFactorBlockPrefixPairs_eq_bilinearMatrixPairing B hxShell

end

end Surface.Core.TypeII

end
