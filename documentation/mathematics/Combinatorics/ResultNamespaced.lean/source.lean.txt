-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FixedCertificate.Variante6217b1234ebe6256d92eac8e4a612f78f32cad0848eb6e0621b0418ab9057c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e6217b1234ebe6256d92eac8e4a612f78f32cad0848eb6e0621b0418ab9057c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FixedCertificate.Variante6217b1234ebe6256d92eac8e4a612f78f32cad0848eb6e0621b0418ab9057c6","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"e6217b1234ebe6256d92eac8e4a612f78f32cad0848eb6e0621b0418ab9057c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/Result.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Resolution.Frontier

/-!
# Conservative resolver result boundary
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FixedCertificate.Variante6217b1234ebe6256d92eac8e4a612f78f32cad0848eb6e0621b0418ab9057c6

namespace Mathematics.Resolution

universe u v

structure FixedCertificate
    [DecidableEq Obligation]
    [DecidableEq Proof]
    (obligations : Finset Obligation)
    (checker : TrustedChecker Obligation Proof)
    (registry : Obligation → Finset Proof) where
  chosen :
    ∀ obligation, obligation ∈ obligations → Proof
  accepted :
    ∀ (obligation) (required : obligation ∈ obligations),
      chosen obligation required ∈
        accepted checker registry obligation

def fixedCertificateOfUnresolvedEmpty
    [DecidableEq Obligation]
    [LinearOrder Proof]
    (obligations : Finset Obligation)
    (checker : TrustedChecker Obligation Proof)
    (registry : Obligation → Finset Proof)
    (closed :
      unresolved obligations checker registry = ∅) :
    FixedCertificate obligations checker registry := by
  have available :
      ∀ obligation ∈ obligations,
        (accepted checker registry obligation).Nonempty := by
    intro obligation required
    apply Finset.nonempty_iff_ne_empty.mpr
    intro missing
    have member :
        obligation ∈
          unresolved obligations checker registry :=
      mem_unresolved.mpr ⟨required, missing⟩
    rw [closed] at member
    simp at member
  exact {
    chosen := fun obligation required ↦
      (accepted checker registry obligation).min'
        (available obligation required)
    accepted := by
      intro obligation required
      exact Finset.min'_mem _
        (available obligation required)
  }

structure FrontierCertificate
    [DecidableEq Obligation]
    (unresolvedSet : Finset Obligation) where
  nonempty : unresolvedSet.Nonempty
  schedulingOnly : Prop
  schedulingOnly_proved : schedulingOnly

structure RejectionCertificate where
  failure : CutFailure
  cutDigest : String
  deriving Repr

inductive Continuation (Token : Type u)
  | token (value : Token)
  | frontierExhausted
  deriving DecidableEq, Repr

inductive ResolutionResult
    (Solution : Type u)
    (Packet : Type v)
    (Token : Type u)
  | solved (solution : Solution)
  | unknown (packet : Packet) (next : Continuation Token)
  | rejected (certificate : RejectionCertificate)

inductive AuthorityDecision
    (Solution : Type u)
    (Obligation : Type v)
  | solved (solution : Solution)
  | unresolved (obligations : Finset Obligation)
  | rejected (failure : CutFailure)

structure ScheduleView (Packet : Type u) where
  packets : List Packet

def present
    (authority : AuthorityDecision Solution Obligation)
    (schedule : ScheduleView Packet) :
    AuthorityDecision Solution Obligation × ScheduleView Packet :=
  (authority, schedule)

end Mathematics.Resolution
