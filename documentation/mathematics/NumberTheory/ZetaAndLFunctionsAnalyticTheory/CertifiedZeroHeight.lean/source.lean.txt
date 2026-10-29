/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.LinearAlgebra.LinearMap.CommutingInvolutionSectors
import Mathlib.Algebra.Order.Floor.Ring
import Mathlib.Algebra.Order.Archimedean.Real.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.NormNum

set_option autoImplicit false

open scoped BigOperators

/-!
# Certified zero-height consensus and bounded completeness

A producer contributes closed height intervals together with multiplicity, sector, source,
jet, transport, and residual certificates. Consensus is an exact set-theoretic intersection.
Decimal information is returned only when the two endpoints of the consensus interval have
the same scaled integer floor.

A disjoint certified family has a multiplicity count. A Turing-style total-count certificate
supplies an exact finite target count and an upper bound on the certified count. The
unresolved gap vanishes exactly when the two counts agree.

This file does not implement Turing's analytic estimates, identify a missing zero, or assign
authority to a distributed producer. Those facts must be supplied by the constituent
certificates.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight

open GRWTSK.LinearAlgebra.LinearMap.CommutingInvolutionSectors

/-- A nonempty closed real interval. -/
structure ClosedInterval where
  lower : ℝ
  upper : ℝ
  valid : lower ≤ upper

namespace ClosedInterval

/-- The real set represented by an interval. -/
def carrier (interval : ClosedInterval) : Set ℝ :=
  Set.Icc interval.lower interval.upper

/-- Two intervals overlap when they contain a common point. -/
def Overlaps (left right : ClosedInterval) : Prop :=
  ∃ x, x ∈ left.carrier ∧ x ∈ right.carrier

/-- The decimal scaling factor. -/
def decimalScale (digits : ℕ) : ℝ :=
  (10 : ℝ) ^ digits

/-- The integer cell determined by the lower endpoint at a fixed decimal precision. -/
noncomputable def digitValue (interval : ClosedInterval) (digits : ℕ) : ℤ :=
  ⌊decimalScale digits * interval.lower⌋

/-- The first `digits` decimal places are certified when both endpoints occupy the same
scaled integer cell. -/
def DigitsCertified (interval : ClosedInterval) (digits : ℕ) : Prop :=
  ⌊decimalScale digits * interval.lower⌋ =
    ⌊decimalScale digits * interval.upper⌋

/-- Every value in a digit-stable interval has the same certified scaled floor. -/
theorem floor_eq_digitValue_of_mem
    (interval : ClosedInterval) (digits : ℕ)
    (certified : interval.DigitsCertified digits)
    {x : ℝ} (hx : x ∈ interval.carrier) :
    ⌊decimalScale digits * x⌋ = interval.digitValue digits := by
  rcases hx with ⟨hlower, hupper⟩
  have hscale : 0 ≤ decimalScale digits := by
    exact pow_nonneg (by norm_num) digits
  apply le_antisymm
  · calc
      ⌊decimalScale digits * x⌋ ≤
          ⌊decimalScale digits * interval.upper⌋ :=
        Int.floor_mono (mul_le_mul_of_nonneg_left hupper hscale)
      _ = ⌊decimalScale digits * interval.lower⌋ := certified.symm
      _ = interval.digitValue digits := rfl
  · calc
      interval.digitValue digits =
          ⌊decimalScale digits * interval.lower⌋ := rfl
      _ ≤ ⌊decimalScale digits * x⌋ :=
        Int.floor_mono (mul_le_mul_of_nonneg_left hlower hscale)

/-! Source-only #133 candidate. These are facts about real intervals, not analytic
zero identity, multiplicity, record provenance, or a computed consensus parser. -/

/-- Two nonempty closed real intervals overlap exactly when each lower bound is
at most the other upper bound. -/
theorem overlaps_iff_cross_bounds (left right : ClosedInterval) :
    left.Overlaps right ↔
      left.lower ≤ right.upper ∧ right.lower ≤ left.upper := by
  constructor
  · rintro ⟨x, hxleft, hxright⟩
    exact ⟨le_trans hxleft.1 hxright.2, le_trans hxright.1 hxleft.2⟩
  · rintro ⟨hlr, hrl⟩
    refine ⟨max left.lower right.lower, ?_, ?_⟩
    · exact ⟨le_max_left _ _, max_le left.valid hrl⟩
    · exact ⟨le_max_right _ _, max_le hlr right.valid⟩

/-- A binary consensus exists only after overlap has been supplied. Its endpoints
are exact max-lower/min-upper; incompatible labels are a separate obligation. -/
noncomputable def interOfOverlaps (left right : ClosedInterval)
    (overlap : left.Overlaps right) : ClosedInterval where
  lower := max left.lower right.lower
  upper := min left.upper right.upper
  valid := by
    rcases (overlaps_iff_cross_bounds left right).mp overlap with ⟨hlr, hrl⟩
    exact max_le (le_min left.valid hlr) (le_min hrl right.valid)

/-- The binary construction preserves every point of the exact intersection. -/
theorem carrier_interOfOverlaps (left right : ClosedInterval)
    (overlap : left.Overlaps right) :
    (interOfOverlaps left right overlap).carrier =
      left.carrier ∩ right.carrier := by
  apply Set.ext
  intro x
  change (max left.lower right.lower ≤ x ∧ x ≤ min left.upper right.upper) ↔
    ((left.lower ≤ x ∧ x ≤ left.upper) ∧
      (right.lower ≤ x ∧ x ≤ right.upper))
  constructor
  · rintro ⟨hlower, hupper⟩
    exact ⟨⟨le_trans (le_max_left _ _) hlower,
      le_trans hupper (min_le_left _ _)⟩,
      ⟨le_trans (le_max_right _ _) hlower,
      le_trans hupper (min_le_right _ _)⟩⟩
  · rintro ⟨⟨hll, hlu⟩, ⟨hrl, hru⟩⟩
    exact ⟨max_le hll hrl, le_min hlu hru⟩

/-- In dimension one, three all-pairs-overlapping closed intervals have a common
point. This does not identify any analytic zero. -/
theorem common_point_of_three_pairwise_overlaps
    (left middle right : ClosedInterval)
    (hlm : left.Overlaps middle)
    (hlr : left.Overlaps right)
    (hmr : middle.Overlaps right) :
    ∃ x, x ∈ left.carrier ∧ x ∈ middle.carrier ∧ x ∈ right.carrier := by
  rcases (overlaps_iff_cross_bounds left middle).mp hlm with ⟨hlm', hml'⟩
  rcases (overlaps_iff_cross_bounds left right).mp hlr with ⟨hlr', hrl'⟩
  rcases (overlaps_iff_cross_bounds middle right).mp hmr with ⟨hmr', hrm'⟩
  refine ⟨max left.lower (max middle.lower right.lower), ?_, ?_, ?_⟩
  · exact ⟨le_max_left _ _, max_le left.valid (max_le hml' hrl')⟩
  · exact ⟨le_trans (le_max_left _ _) (le_max_right _ _),
      max_le hlm' (max_le middle.valid hrm')⟩
  · exact ⟨le_trans (le_max_right _ _) (le_max_right _ _),
      max_le hlr' (max_le hmr' right.valid)⟩

/-- A connected overlap chain is weaker than all-pairs overlap and need not have
a common point. It must not be used as a same-zero equivalence relation. -/
theorem overlap_chain_need_not_be_pairwise :
    ∃ left middle right : ClosedInterval,
      left.Overlaps middle ∧ middle.Overlaps right ∧ ¬ left.Overlaps right := by
  let left : ClosedInterval := ⟨0, 1, by norm_num⟩
  let middle : ClosedInterval := ⟨1, 2, by norm_num⟩
  let right : ClosedInterval := ⟨2, 3, by norm_num⟩
  refine ⟨left, middle, right, ?_, ?_, ?_⟩
  · apply (overlaps_iff_cross_bounds left middle).mpr
    norm_num [left, middle]
  · apply (overlaps_iff_cross_bounds middle right).mpr
    norm_num [middle, right]
  · intro overlap
    have hbad : (2 : ℝ) ≤ 1 :=
      ((overlaps_iff_cross_bounds left right).mp overlap).2
    norm_num at hbad

end ClosedInterval

/-- An exact finite-producer consensus interval. -/
structure ConsensusCertificate
    (Producer : Type*) [Fintype Producer] where
  interval : Producer → ClosedInterval
  consensus : ClosedInterval
  exact_carrier :
    consensus.carrier = ⋂ producer, (interval producer).carrier

namespace ConsensusCertificate

variable {Producer : Type*} [Fintype Producer]

/-- Every consensus value lies in every producer interval. -/
theorem mem_local
    (certificate : ConsensusCertificate Producer)
    {x : ℝ} (hx : x ∈ certificate.consensus.carrier)
    (producer : Producer) :
    x ∈ (certificate.interval producer).carrier := by
  rw [certificate.exact_carrier] at hx
  exact Set.mem_iInter.mp hx producer

/-- A value admitted by every producer lies in the exact consensus interval. -/
theorem mem_consensus
    (certificate : ConsensusCertificate Producer)
    {x : ℝ}
    (hx : ∀ producer, x ∈ (certificate.interval producer).carrier) :
    x ∈ certificate.consensus.carrier := by
  rw [certificate.exact_carrier]
  exact Set.mem_iInter.mpr hx

/-- Consensus digits are shared by every real height allowed by all producers. -/
theorem common_digit
    (certificate : ConsensusCertificate Producer)
    (digits : ℕ)
    (stable : certificate.consensus.DigitsCertified digits)
    {x : ℝ}
    (hx : ∀ producer, x ∈ (certificate.interval producer).carrier) :
    ⌊ClosedInterval.decimalScale digits * x⌋ =
      certificate.consensus.digitValue digits :=
  certificate.consensus.floor_eq_digitValue_of_mem digits stable
    (certificate.mem_consensus hx)

end ConsensusCertificate

/-- One producer's machine-checkable zero-height record. -/
structure ProducerRecord
    (Source Jet Transport Residual : Type*) where
  interval : ClosedInterval
  multiplicity : ℕ
  sector : Sector
  source : Source
  jet : Jet
  transport : Transport
  residual : Residual

namespace ProducerRecord

/-- Overlapping producer records must agree on all mathematical labels that are meant to
identify one zero. Residual certificates may remain independently authored. -/
def Compatible
    {Source Jet Transport Residual : Type*}
    (left right : ProducerRecord Source Jet Transport Residual) : Prop :=
  left.interval.Overlaps right.interval →
    left.multiplicity = right.multiplicity ∧
    left.sector = right.sector ∧
    left.source = right.source ∧
    left.jet = right.jet ∧
    left.transport = right.transport

end ProducerRecord

/-- A finite family of independent certificate producers. -/
structure Federation
    (Producer Key Source Jet Transport Residual : Type*)
    [Fintype Producer] [Fintype Key] where
  record : Producer → Key →
    Option (ProducerRecord Source Jet Transport Residual)
  compatible : ∀ producer₁ producer₂ key₁ key₂ record₁ record₂,
    record producer₁ key₁ = some record₁ →
    record producer₂ key₂ = some record₂ →
    record₁.Compatible record₂

/-- A deduplicated family of pairwise disjoint certified zero intervals. -/
structure DisjointCertifiedFamily
    (Index Source Jet Transport Residual : Type*)
    [Fintype Index] where
  record : Index → ProducerRecord Source Jet Transport Residual
  disjoint : ∀ {left right : Index}, left ≠ right →
    ¬(record left).interval.Overlaps (record right).interval

namespace DisjointCertifiedFamily

variable {Index Source Jet Transport Residual : Type*}
  [Fintype Index]

/-- Certified multiplicity count. -/
def certifiedCount
    (family : DisjointCertifiedFamily Index Source Jet Transport Residual) : ℕ :=
  ∑ index, (family.record index).multiplicity

end DisjointCertifiedFamily

/-- A bounded total-zero count certificate, together with the fact that the certified
critical-line family does not exceed that total. The `ExactTotal` predicate carries the
external Turing theorem or other exact zero-count proof. -/
structure TuringCountCertificate
    {Index Source Jet Transport Residual : Type*}
    [Fintype Index]
    (family : DisjointCertifiedFamily Index Source Jet Transport Residual)
    (ExactTotal : ℝ → ℕ → Prop) where
  height : ℝ
  totalCount : ℕ
  exact_total : ExactTotal height totalCount
  certified_le_total : family.certifiedCount ≤ totalCount

namespace TuringCountCertificate

variable {Index Source Jet Transport Residual : Type*}
  [Fintype Index]
  {family : DisjointCertifiedFamily Index Source Jet Transport Residual}
  {ExactTotal : ℝ → ℕ → Prop}

/-- The unresolved bounded count gap. -/
def gap
    (certificate : TuringCountCertificate family ExactTotal) : ℕ :=
  certificate.totalCount - family.certifiedCount

/-- Completeness up to the certified height means exact equality of multiplicity counts. -/
def Complete
    (certificate : TuringCountCertificate family ExactTotal) : Prop :=
  family.certifiedCount = certificate.totalCount

/-- The unresolved gap vanishes exactly when the certified critical-line count equals the
Turing total count. -/
theorem gap_eq_zero_iff_complete
    (certificate : TuringCountCertificate family ExactTotal) :
    certificate.gap = 0 ↔ certificate.Complete := by
  constructor
  · intro hgap
    have htotal_le :
        certificate.totalCount ≤ family.certifiedCount :=
      Nat.sub_eq_zero_iff_le.mp hgap
    exact Nat.le_antisymm certificate.certified_le_total htotal_le
  · intro hcomplete
    unfold gap
    rw [hcomplete]
    exact Nat.sub_self _

/-- The natural-number gap is nonnegative. -/
theorem gap_nonnegative
    (certificate : TuringCountCertificate family ExactTotal) :
    0 ≤ certificate.gap :=
  Nat.zero_le _

end TuringCountCertificate

end GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight
