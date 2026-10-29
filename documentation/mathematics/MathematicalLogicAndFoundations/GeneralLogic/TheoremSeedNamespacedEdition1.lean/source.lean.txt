-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremCellSeedAuthority.Variant3e5505c6915b619292d2d8dde01bd7eed58c4d0b430cb6790f24e0c1cc2c9352","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e5505c6915b619292d2d8dde01bd7eed58c4d0b430cb6790f24e0c1cc2c9352","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TheoremCellSeedAuthority.Variant3e5505c6915b619292d2d8dde01bd7eed58c4d0b430cb6790f24e0c1cc2c9352","mathematical_subject":"Computation.DataStructures","original_sha256":"3e5505c6915b619292d2d8dde01bd7eed58c4d0b430cb6790f24e0c1cc2c9352","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Extractor/TheoremSeed.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Extractor.Core

/-!
# Theorem-cell seed emitted from an extracted theorem declaration

A seed records compiled statement, proof, dependency, trust, source, and module
identities.  It is evidence for theorem-cell axes; it is not itself a closed
cell and does not promote an external extraction artifact to theorem authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremCellSeedAuthority.Variant3e5505c6915b619292d2d8dde01bd7eed58c4d0b430cb6790f24e0c1cc2c9352

namespace Mathematics.Extractor

open Mathematics

/-- The only authority available to an extracted theorem-cell seed. There is
deliberately no constructor that promotes a seed to a closed theorem cell. -/
inductive TheoremCellSeedAuthority
  | extractedEvidenceOnly
  deriving DecidableEq, Repr, Inhabited

structure TheoremCellSeed where
  declarationId : DeclarationId
  theoremName : Lean.Name
  statementDigest : Digest
  proofDigest : Option Digest
  dependencyDigest : Digest
  trustClosureDigest : Digest
  sourceDigest : Option Digest
  owningModuleDigest : Digest
  directDependencies : Array Lean.Name
  transitiveConeDigest : Digest
  authorityEvidence : TrustClosure
  authority : TheoremCellSeedAuthority := .extractedEvidenceOnly
  deriving DecidableEq, Repr, Inhabited

namespace TheoremCellSeed

/-- A seed is aligned when its trust record describes the same declaration. -/
def TrustAligned (seed : TheoremCellSeed) : Prop :=
  seed.authorityEvidence.declarationId = seed.declarationId ∧
  seed.authorityEvidence.declaration = seed.theoremName

end TheoremCellSeed

end Mathematics.Extractor
