-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.LexicographicObjective.Variante3dabcdf08b3cddbc0c7dc58cd239cdf5ea8072ba6d6c468ec7bc9647a9c4de4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e3dabcdf08b3cddbc0c7dc58cd239cdf5ea8072ba6d6c468ec7bc9647a9c4de4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.EnumerativeCombinatorics.SourceCorpus.LexicographicObjective.Variante3dabcdf08b3cddbc0c7dc58cd239cdf5ea8072ba6d6c468ec7bc9647a9c4de4","mathematical_subject":"Combinatorics.EnumerativeCombinatorics","original_sha256":"e3dabcdf08b3cddbc0c7dc58cd239cdf5ea8072ba6d6c468ec7bc9647a9c4de4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Refactor/Partition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Refactor.Constraint

/-! # Deterministic constrained partitions -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.LexicographicObjective.Variante3dabcdf08b3cddbc0c7dc58cd239cdf5ea8072ba6d6c468ec7bc9647a9c4de4

namespace MathDiscovery.Refactor

open MathDiscovery

structure LexicographicObjective where
  hardPolicyFailures : Nat
  atomCountPenalty : Nat
  largestAtom : Nat
  contextFrontierSize : Nat
  additionalImports : Nat
  compatibilityFacades : Nat
  changedBytes : Nat
  stableTieBreak : String
  deriving DecidableEq, Repr, Inhabited

structure Partition where
  assignments : Array MathDiscovery.Atom.ModuleAssignment
  constraints : Array Constraint
  objective : LexicographicObjective
  importGraphDigest : Digest
  deterministic : Bool
  acyclic : Bool
  deriving DecidableEq, Repr

end MathDiscovery.Refactor
