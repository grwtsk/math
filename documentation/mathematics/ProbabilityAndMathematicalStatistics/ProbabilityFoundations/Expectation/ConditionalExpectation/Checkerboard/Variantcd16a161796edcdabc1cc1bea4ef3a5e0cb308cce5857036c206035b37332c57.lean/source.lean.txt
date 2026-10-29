-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.Checkerboard.Variant4e551dbf892dab68afa5319e0a2941705f2a2f99740e0610f7427fe404e7c6ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e551dbf892dab68afa5319e0a2941705f2a2f99740e0610f7427fe404e7c6ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.ConditionalExpectation.SourceCorpus.Checkerboard.Variant4e551dbf892dab68afa5319e0a2941705f2a2f99740e0610f7427fe404e7c6ae","mathematical_subject":"Probability.ConditionalExpectation","original_sha256":"4e551dbf892dab68afa5319e0a2941705f2a2f99740e0610f7427fe404e7c6ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Bitspace/Checkerboard.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Carrier.BinaryMatrix
import Folder.Carrier.Grid

/-!
# Folder.Bitspace.Checkerboard

Radiation role: shell-filtration
BinaryMatrix spine: This module organizes boundary, shell, or expansion layers radiating out from BinaryMatrix-shaped finite carriers.
Ontology: bitspace.checkerboard
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/



namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.Checkerboard.Variant4e551dbf892dab68afa5319e0a2941705f2a2f99740e0610f7427fe404e7c6ae

namespace Folder
namespace Bitspace

open Carrier

def checkerboard (m n : Nat) : BinaryMatrix :=
  BinaryMatrix.ofFunction m n
    (fun i j => ((i.val + j.val : Nat) : Bit))

def IsProper2Coloring (M : BinaryMatrix) : Prop :=
  ∀ a b : Cell ⟨M.m, M.n⟩,
    EdgeAdjacent a b →
      M.get a.1 a.2 ≠ M.get b.1 b.2

private theorem cast_succ_zmod_two_ne
    (x : Nat) :
    ((x : Nat) : Bit) ≠ ((x + 1 : Nat) : Bit) := by
  intro h
  have hflip : Carrier.Bit.flip (((x : Nat) : Bit)) = (((x + 1 : Nat) : Bit)) := by
    unfold Carrier.Bit.flip
    norm_num [Nat.cast_add, add_assoc]
  exact Carrier.Bit.flip_ne_self (((x : Nat) : Bit)) (by simpa [hflip] using h.symm)

private theorem step_ne
    {r c d : Nat}
    (h : c + 1 = d) :
    (((r + c : Nat) : Bit) ≠ ((r + d : Nat) : Bit)) := by
  subst d
  intro heq
  have hstep :
      (((r + (c + 1) : Nat) : Bit) =
        Carrier.Bit.flip (((r + c : Nat) : Bit))) := by
    unfold Carrier.Bit.flip
    norm_num [Nat.cast_add, add_assoc, add_comm, add_left_comm]
  exact Carrier.Bit.flip_ne_self (((r + c : Nat) : Bit)) (by
    rw [← hstep]
    exact heq.symm)

private theorem step_flip
    {r c d : Nat}
    (h : c + 1 = d) :
    (((r + d : Nat) : Bit) =
      Carrier.Bit.flip (((r + c : Nat) : Bit))) := by
  subst d
  unfold Carrier.Bit.flip
  norm_num [Nat.cast_add, add_assoc, add_comm, add_left_comm]

theorem checkerboard_isProper2Coloring
    (m n : Nat) :
    IsProper2Coloring (checkerboard m n) := by
  intro a b hab
  rcases hab with ⟨hrow, hcol⟩ | ⟨hcol, hrow⟩
  · have hrval : a.1.val = b.1.val := congrArg Fin.val hrow
    rcases hcol with h | h
    · intro heq
      have heqBits :
          (((a.1.val + a.2.val : Nat) : Bit) =
            ((b.1.val + b.2.val : Nat) : Bit)) := by
        change (((a.1.val + a.2.val : Nat) : Bit) =
          ((b.1.val + b.2.val : Nat) : Bit)) at heq
        exact heq
      have hflipEq :
          (((a.1.val + b.2.val : Nat) : Bit) =
            ((a.1.val + a.2.val : Nat) : Bit)) := by
        simpa [hrval] using heqBits.symm
      exact Carrier.Bit.flip_ne_self (((a.1.val + a.2.val : Nat) : Bit)) (by
        rw [← step_flip (r := a.1.val) h]
        exact hflipEq)
    · intro heq
      have heqBits :
          (((a.1.val + a.2.val : Nat) : Bit) =
            ((b.1.val + b.2.val : Nat) : Bit)) := by
        change (((a.1.val + a.2.val : Nat) : Bit) =
          ((b.1.val + b.2.val : Nat) : Bit)) at heq
        exact heq
      have hflipEq :
          (((a.1.val + a.2.val : Nat) : Bit) =
            ((a.1.val + b.2.val : Nat) : Bit)) := by
        simpa [hrval] using heqBits
      exact Carrier.Bit.flip_ne_self (((a.1.val + b.2.val : Nat) : Bit)) (by
        rw [← step_flip (r := a.1.val) h]
        exact hflipEq)
  · have hcval : a.2.val = b.2.val := congrArg Fin.val hcol
    rcases hrow with h | h
    · intro heq
      have heqBits :
          (((a.1.val + a.2.val : Nat) : Bit) =
            ((b.1.val + b.2.val : Nat) : Bit)) := by
        change (((a.1.val + a.2.val : Nat) : Bit) =
          ((b.1.val + b.2.val : Nat) : Bit)) at heq
        exact heq
      have hflipEq :
          (((a.2.val + b.1.val : Nat) : Bit) =
            ((a.2.val + a.1.val : Nat) : Bit)) := by
        simpa [hcval, Nat.add_comm, Nat.add_left_comm, Nat.add_assoc]
          using heqBits.symm
      exact Carrier.Bit.flip_ne_self (((a.2.val + a.1.val : Nat) : Bit)) (by
        rw [← step_flip (r := a.2.val) h]
        exact hflipEq)
    · intro heq
      have heqBits :
          (((a.1.val + a.2.val : Nat) : Bit) =
            ((b.1.val + b.2.val : Nat) : Bit)) := by
        change (((a.1.val + a.2.val : Nat) : Bit) =
          ((b.1.val + b.2.val : Nat) : Bit)) at heq
        exact heq
      have hflipEq :
          (((a.2.val + a.1.val : Nat) : Bit) =
            ((a.2.val + b.1.val : Nat) : Bit)) := by
        simpa [hcval, Nat.add_comm, Nat.add_left_comm, Nat.add_assoc]
          using heqBits
      exact Carrier.Bit.flip_ne_self (((a.2.val + b.1.val : Nat) : Bit)) (by
        rw [← step_flip (r := a.2.val) h]
        exact hflipEq)

theorem checkerboard_isCheckerboardPattern (m n : Nat) :
    BinaryMatrix.IsCheckerboardPattern (checkerboard m n) := by
  intro i j
  rfl

end Bitspace
end Folder
