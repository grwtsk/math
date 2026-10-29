-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PacketNormSq.Variant8b21e4b5e718ac8120ec2c55552040958d6f9c7286414e3dba98e541f43b9482","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8b21e4b5e718ac8120ec2c55552040958d6f9c7286414e3dba98e541f43b9482","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PacketNormSq.Variant8b21e4b5e718ac8120ec2c55552040958d6f9c7286414e3dba98e541f43b9482","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"8b21e4b5e718ac8120ec2c55552040958d6f9c7286414e3dba98e541f43b9482","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/Trace/Energy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.CochainReconstruction
import Mathematics.SemiLocalDefect.Trace.Packet
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Order.BigOperators.Group.Finset

/-!
# Finite diagonal packet energy

The exact energy is the finite rational pairing of squared packet amplitudes
with a diagonal capacity.  Its positivity, monotonicity, bound, and finite
chain telescope are proved directly.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PacketNormSq.Variant8b21e4b5e718ac8120ec2c55552040958d6f9c7286414e3dba98e541f43b9482

namespace Mathematics.SemiLocalDefect

open scoped BigOperators

def packetNormSq
    {Coordinate : Type u}
    [Fintype Coordinate]
    (packet : Packet Coordinate) : ℚ :=
  ∑ coordinate, packet.amplitude coordinate ^ 2

def packetEnergy
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    [Fintype Coordinate]
    (capacity : PositiveCapacity Prime Coordinate)
    (packet : Packet Coordinate)
    (cut : Finset Prime) : ℚ :=
  ∑ coordinate,
    packet.amplitude coordinate ^ 2 *
      capacity.value cut coordinate

def weightedIncrementEnergy
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    [Fintype Coordinate]
    (capacity : PositiveCapacity Prime Coordinate)
    (packet : Packet Coordinate)
    (cut : Finset Prime)
    (prime : Prime) : ℚ :=
  ∑ coordinate,
    packet.amplitude coordinate ^ 2 *
      capacity.increment cut prime coordinate

theorem packetEnergy_nonnegative
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    [Fintype Coordinate]
    (capacity : PositiveCapacity Prime Coordinate)
    (packet : Packet Coordinate)
    (cut : Finset Prime)
    (cut_in_universe : cut ⊆ capacity.primeUniverse.primes) :
    0 ≤ packetEnergy capacity packet cut := by
  apply Finset.sum_nonneg
  intro coordinate _
  exact mul_nonneg
    (sq_nonneg (packet.amplitude coordinate))
    (capacity.nonnegative cut cut_in_universe coordinate)

theorem packetEnergy_monotone
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    [Fintype Coordinate]
    (capacity : PositiveCapacity Prime Coordinate)
    (packet : Packet Coordinate)
    (source target : Finset Prime)
    (source_target : source ⊆ target)
    (target_in_universe : target ⊆ capacity.primeUniverse.primes) :
    packetEnergy capacity packet source ≤
      packetEnergy capacity packet target := by
  apply Finset.sum_le_sum
  intro coordinate _
  exact mul_le_mul_of_nonneg_left
    (capacity.monotone
      source
      target
      source_target
      target_in_universe
      coordinate)
    (sq_nonneg (packet.amplitude coordinate))

theorem packetEnergy_bounded_by_packetNorm
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    [Fintype Coordinate]
    (capacity : PositiveCapacity Prime Coordinate)
    (packet : Packet Coordinate)
    (cut : Finset Prime)
    (cut_in_universe : cut ⊆ capacity.primeUniverse.primes) :
    packetEnergy capacity packet cut ≤ packetNormSq packet := by
  apply Finset.sum_le_sum
  intro coordinate _
  simpa [identityOperator] using
    mul_le_mul_of_nonneg_left
      (capacity.bounded_by_identity
        cut
        cut_in_universe
        coordinate)
      (sq_nonneg (packet.amplitude coordinate))

theorem packetEnergy_increment_eq_weightedIncrement
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    [Fintype Coordinate]
    (capacity : PositiveCapacity Prime Coordinate)
    (packet : Packet Coordinate)
    (cut : Finset Prime)
    (prime : Prime) :
    packetEnergy capacity packet (insert prime cut) -
        packetEnergy capacity packet cut =
      weightedIncrementEnergy capacity packet cut prime := by
  rw [packetEnergy, packetEnergy, weightedIncrementEnergy]
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro coordinate _
  simp only [PositiveCapacity.increment, Pi.sub_apply]
  ring

def packetEnergyPathSum
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    [Fintype Coordinate]
    (capacity : PositiveCapacity Prime Coordinate)
    (packet : Packet Coordinate) :
    List Prime → Finset Prime → ℚ
  | [], _ => 0
  | prime :: remaining, cut =>
      (packetEnergy capacity packet (insert prime cut) -
        packetEnergy capacity packet cut) +
      packetEnergyPathSum
        capacity
        packet
        remaining
        (insert prime cut)

theorem packetEnergy_chain_telescope
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    [Fintype Coordinate]
    (capacity : PositiveCapacity Prime Coordinate)
    (packet : Packet Coordinate)
    (path : List Prime)
    (initial : Finset Prime) :
    packetEnergyPathSum capacity packet path initial =
      packetEnergy capacity packet (insertPath path initial) -
        packetEnergy capacity packet initial := by
  induction path generalizing initial with
  | nil =>
      simp [packetEnergyPathSum, insertPath]
  | cons prime remaining induction_hypothesis =>
      rw [packetEnergyPathSum, induction_hypothesis]
      change
        (packetEnergy capacity packet (insert prime initial) -
            packetEnergy capacity packet initial) +
            (packetEnergy capacity packet
                (insertPath remaining (insert prime initial)) -
              packetEnergy capacity packet (insert prime initial)) =
          packetEnergy capacity packet
              (insertPath remaining (insert prime initial)) -
            packetEnergy capacity packet initial
      ring

theorem packetEnergy_enumeration_independent
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    [Fintype Coordinate]
    (capacity : PositiveCapacity Prime Coordinate)
    (packet : Packet Coordinate)
    (firstPath secondPath : List Prime)
    (initial : Finset Prime)
    (same_terminal :
      insertPath firstPath initial =
        insertPath secondPath initial) :
    packetEnergyPathSum capacity packet firstPath initial =
      packetEnergyPathSum capacity packet secondPath initial := by
  rw [
    packetEnergy_chain_telescope,
    packetEnergy_chain_telescope,
    same_terminal,
  ]

end Mathematics.SemiLocalDefect
