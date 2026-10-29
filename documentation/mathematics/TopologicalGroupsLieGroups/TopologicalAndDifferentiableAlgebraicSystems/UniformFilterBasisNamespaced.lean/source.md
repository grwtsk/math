# Uniform Filter Basis Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eda452282d3429b56591e40244b0ab8d561c553b` · SHA-256 `e680f83d7f3205a21b6c8818fbeaea7b40f647f30938fbc258750e61b1fc846f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology.UniformSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.UniformSpaces.UniformSpace.Varianta642e509607925bbb8b118b63f431fbcdc6d0ea4fededeb3e476e64daea28ab5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a642e509607925bbb8b118b63f431fbcdc6d0ea4fededeb3e476e64daea28ab5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.UniformSpaces.SourceCorpus.UniformSpace.Varianta642e509607925bbb8b118b63f431fbcdc6d0ea4fededeb3e476e64daea28ab5","mathematical_subject":"Topology.UniformSpaces","original_sha256":"a642e509607925bbb8b118b63f431fbcdc6d0ea4fededeb3e476e64daea28ab5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/UniformFilterBasis.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot
-/
import Mathlib.Topology.Algebra.FilterBasis
import Mathlib.Topology.Algebra.IsUniformGroup.Defs

/-!
# Uniform properties of neighborhood bases in topological algebra

This files contains properties of filter bases on algebraic structures that also require the theory
of uniform spaces.

The only result so far is a characterization of Cauchy filters in topological groups.

-/



namespace GRWTSK.Topology.GeneralTopology.UniformSpaces.UniformSpace.Varianta642e509607925bbb8b118b63f431fbcdc6d0ea4fededeb3e476e64daea28ab5

open uniformity Filter

open Filter

namespace AddGroupFilterBasis

variable {G : Type*} [AddCommGroup G] (B : AddGroupFilterBasis G)

/-- The uniform space structure associated to an abelian group filter basis via the associated
topological abelian group structure. -/
protected def uniformSpace : UniformSpace G :=
  @IsTopologicalAddGroup.toUniformSpace G _ B.topology B.isTopologicalAddGroup

/-- The uniform space structure associated to an abelian group filter basis via the associated
topological abelian group structure is compatible with its group structure. -/
protected theorem isUniformAddGroup : @IsUniformAddGroup G B.uniformSpace _ :=
  @isUniformAddGroup_of_addCommGroup G _ B.topology B.isTopologicalAddGroup

@[deprecated (since := "2025-03-27")] alias uniformAddGroup := AddGroupFilterBasis.isUniformAddGroup

theorem cauchy_iff {F : Filter G} :
    @Cauchy G B.uniformSpace F ↔
      F.NeBot ∧ ∀ U ∈ B, ∃ M ∈ F, ∀ᵉ (x ∈ M) (y ∈ M), y - x ∈ U := by
  letI := B.uniformSpace
  haveI := B.isUniformAddGroup
  suffices F ×ˢ F ≤ uniformity G ↔ ∀ U ∈ B, ∃ M ∈ F, ∀ᵉ (x ∈ M) (y ∈ M), y - x ∈ U by
    constructor <;> rintro ⟨h', h⟩ <;> refine ⟨h', ?_⟩ <;> [rwa [← this]; rwa [this]]
  rw [uniformity_eq_comap_nhds_zero G, ← map_le_iff_le_comap]
  change Tendsto _ _ _ ↔ _
  simp [(basis_sets F).prod_self.tendsto_iff B.nhds_zero_hasBasis, @forall_swap (_ ∈ _) G]

end AddGroupFilterBasis
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8198fc7ee37f21e2ab890ad5be3a264089b73a90c7f4b7c95d376e8b1543a114 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformFilterBasis/Variantebc63b49f988e4d1d1f4347fa689760dbf149afadecdd084d770f7c2ada0d8f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
