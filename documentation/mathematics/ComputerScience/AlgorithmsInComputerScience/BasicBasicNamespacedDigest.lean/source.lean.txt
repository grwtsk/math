-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Digest.Variant095acac1aabee05a4fd694ed315762cd1be013cbe78cb4d6d899af231bf233e4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"095acac1aabee05a4fd694ed315762cd1be013cbe78cb4d6d899af231bf233e4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Digest.Variant095acac1aabee05a4fd694ed315762cd1be013cbe78cb4d6d899af231bf233e4","mathematical_subject":"Computation.DataStructures","original_sha256":"095acac1aabee05a4fd694ed315762cd1be013cbe78cb4d6d899af231bf233e4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib

/-!
# Semantic-tokenization primitives

This neighborhood treats identifiers and digests as inert coordinates.  None
of them is a proof, an interpretation, or theorem authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Digest.Variant095acac1aabee05a4fd694ed315762cd1be013cbe78cb4d6d899af231bf233e4

namespace Mathematics.SemanticTokenization

/-- Canonical byte-level identity for immutable inputs and receipts. -/
structure Digest where
  bytes : ByteArray
deriving DecidableEq, BEq, Repr

namespace Digest

def empty : Digest :=
  ⟨ByteArray.empty⟩

/--
A deterministic content encoding used by the formal model.  Cryptographic
collision resistance, when required by a deployment, is a separate external
certificate.
-/
def ofString (value : String) : Digest :=
  ⟨value.toUTF8⟩

end Digest

structure TextId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure SnapshotId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure SourceId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure EvidenceId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure AssertionId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure ContextId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure TaskId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure ConceptId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure RuleId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure RelationId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure EventId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure PhraseNodeId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure NodeId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure ResourceBudget where
  maxSteps : Nat
  maxCandidates : Nat
  maxEvidence : Nat
deriving DecidableEq, Repr

inductive CheckResult (Value Error : Type*)
  | ok (value : Value)
  | error (error : Error)
deriving Repr

/-- Array keys are pairwise distinct. -/
def PairwiseUnique {α : Type*} (values : Array α) : Prop :=
  values.toList.Nodup

/-- A frozen snapshot transport is evidence, not equality by convention. -/
structure SnapshotTransportCertificate where
  source : SnapshotId
  target : SnapshotId
  evidence : EvidenceId
  certificateDigest : Digest
deriving Repr

def SnapshotTransportedTo
    (transports : Array SnapshotTransportCertificate)
    (source target : SnapshotId) : Prop :=
  source = target ∨
    ∃ certificate : Fin transports.size,
      (transports[certificate]).source = source ∧
      (transports[certificate]).target = target

end Mathematics.SemanticTokenization
