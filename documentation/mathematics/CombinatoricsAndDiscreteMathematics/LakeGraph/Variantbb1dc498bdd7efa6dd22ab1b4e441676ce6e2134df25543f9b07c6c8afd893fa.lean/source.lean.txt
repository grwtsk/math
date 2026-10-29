-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.LakePackageNode.Variantcd83abee6816122cfdfde2f1539467ba39f7113f68e3478e0da0c465f972f605","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cd83abee6816122cfdfde2f1539467ba39f7113f68e3478e0da0c465f972f605","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.LakePackageNode.Variantcd83abee6816122cfdfde2f1539467ba39f7113f68e3478e0da0c465f972f605","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"cd83abee6816122cfdfde2f1539467ba39f7113f68e3478e0da0c465f972f605","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Toolchain/LakeGraph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Finset.Basic
import Mathematics.Toolchain.LeanVersion

/-! # Frozen Lake dependency graphs -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.LakePackageNode.Variantcd83abee6816122cfdfde2f1539467ba39f7113f68e3478e0da0c465f972f605

namespace Mathematics.Toolchain

structure LakePackageNode where
  packageId : StableId
  name : String
  revision : String
  sourceDigest : Digest
  deriving DecidableEq, Repr

structure LakeDependencyEdge where
  consumer : StableId
  dependency : StableId
  deriving DecidableEq, Repr

structure LakeGraph where
  packages : Finset LakePackageNode
  edges : Finset LakeDependencyEdge
  closed :
    ∀ edge ∈ edges,
      (∃ package ∈ packages, package.packageId = edge.consumer) ∧
      (∃ package ∈ packages, package.packageId = edge.dependency)
  graphDigest : Digest

end Mathematics.Toolchain
