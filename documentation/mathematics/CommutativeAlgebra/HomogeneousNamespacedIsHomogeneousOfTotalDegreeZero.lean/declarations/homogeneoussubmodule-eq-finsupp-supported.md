# homogeneousSubmodule_eq_finsupp_supported

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f911a72b-ff14-fd3c-847e-b3b195b9ac85",
  "kind": "theorem",
  "lexical_name": "homogeneousSubmodule_eq_finsupp_supported",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "documentation/mathematics/_support/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "homogeneoussubmodule-eq-finsupp-supported",
  "source": {
    "blob": "b25e34205da9092f778d5fdcf86f94fa1095309f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 86,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bf5f7cceb8ebf4b31c57480458cda6f9779401cd33dab858b42f14d6ee249b8",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/HomogeneousNamespacedIsHomogeneousOfTotalDegreeZero.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f911a72b-ff14-fd3c-847e-b3b195b9ac85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homogeneousSubmodule_eq_finsupp_supported [CommSemiring R] (n : ℕ) :
    homogeneousSubmodule σ R n = Finsupp.supported _ R { d | ∑ i in d.support, d i = n } := by
  ext
  rw [Finsupp.mem_supported, Set.subset_def]
  simp only [Finsupp.mem_support_iff, Finset.mem_coe]
  rfl
#align mv_polynomial.homogeneous_submodule_eq_finsupp_supported MvPolynomial.homogeneousSubmodule_eq_finsupp_supported

variable {σ R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/HomogeneousNamespacedIsHomogeneousOfTotalDegreeZero.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b25e34205da9092f778d5fdcf86f94fa1095309f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0310ca93eb0939b9253e95cedce92ae7ff960f1ff2822bea2452aa2cdc269a49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
