-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.BitsOfNat3.Variantf73d753597094a456b29cd5b1c248eea5a5afc7a3f1b926641021c52549c9848","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f73d753597094a456b29cd5b1c248eea5a5afc7a3f1b926641021c52549c9848","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.BitsOfNat3.Variantf73d753597094a456b29cd5b1c248eea5a5afc7a3f1b926641021c52549c9848","mathematical_subject":"Analysis.Integration","original_sha256":"f73d753597094a456b29cd5b1c248eea5a5afc7a3f1b926641021c52549c9848","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/DAF/Integration/WorldModelPrototype/NegativeExamples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Integration.WorldModelPrototype.ExactPermutationMatrix
import DAF.Integration.WorldModelPrototype.SupportGraphAbstraction
import BinaryMatrix.DynamicalZeta
import Mathlib.GroupTheory.Perm.Sign

/-!
# Machine-queryable finite negative examples

These examples prevent the five-model prototype from strengthening a relation
merely because two representations share a finite invariant.  Concrete finite
computation is used only to discharge the displayed examples; no general
theorem is replaced by `native_decide`.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.BitsOfNat3.Variantf73d753597094a456b29cd5b1c248eea5a5afc7a3f1b926641021c52549c9848

open SATReduction Avalanche Symmetry DynamicalZeta

namespace DAF.Integration.WorldModelPrototype

/-- Little-endian three-bit encoding used only by the concrete examples. -/
def bitsOfNat3 (value : Nat) : Bits 3 :=
  fun i => decide ((value / (2 ^ i.val)) % 2 = 1)

/-- A transposition of the states encoded by six and seven. -/
def stateSwap67 : BitPerm 3 :=
  Equiv.swap (bitsOfNat3 6) (bitsOfNat3 7)

/-- A transposition of the states encoded by five and six. -/
def stateSwap56 : BitPerm 3 :=
  Equiv.swap (bitsOfNat3 5) (bitsOfNat3 6)

/-- The two state permutations have identical primitive cycle data. -/
theorem stateSwaps_same_cycle_data :
    cycleEulerFactorData stateSwap67 =
      cycleEulerFactorData stateSwap56 := by
  native_decide

/-- Their SAC statistics nevertheless differ. -/
theorem stateSwaps_different_sac :
    sacScore stateSwap67 ≠ sacScore stateSwap56 := by
  native_decide

/-- Same complete cycle data does not determine avalanche behavior. -/
theorem cycle_data_does_not_determine_sac :
    ∃ left right : BitPerm 3,
      cycleEulerFactorData left = cycleEulerFactorData right ∧
      sacScore left ≠ sacScore right :=
  ⟨stateSwap67, stateSwap56,
    stateSwaps_same_cycle_data,
    stateSwaps_different_sac⟩

/-- The identity permutation on two coordinates. -/
def identityFin2 : Equiv.Perm (Fin 2) :=
  1

/-- The odd coordinate transposition on two coordinates. -/
def swapFin2 : Equiv.Perm (Fin 2) :=
  Equiv.swap 0 1

/-- Reduction modulo two makes the two permutation determinants equal. -/
theorem zmod2_determinants_equal :
    (permutationMatrix identityFin2).det =
      (permutationMatrix swapFin2).det := by
  native_decide

/-- Their integral permutation signs are different. -/
theorem integral_signs_different :
    identityFin2.sign ≠ swapFin2.sign := by
  native_decide

/-- A `ZMod 2` determinant cannot recover integral permutation parity. -/
theorem zmod2_determinant_does_not_determine_integral_parity :
    ∃ even odd : Equiv.Perm (Fin 2),
      (permutationMatrix even).det = (permutationMatrix odd).det ∧
      even.sign ≠ odd.sign :=
  ⟨identityFin2, swapFin2,
    zmod2_determinants_equal,
    integral_signs_different⟩

end DAF.Integration.WorldModelPrototype
