# algebraicIndependent_comp_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84376c74-0bbd-b7de-2317-1bef98151e0c",
  "kind": "theorem",
  "lexical_name": "algebraicIndependent_comp_subtype",
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
  "slug": "algebraicindependent-comp-subtype",
  "source": {
    "blob": "499610202a9a5927f3d48ca6d40eac33c87b86d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 374,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantae9ac8a959f89138cd095e8e9eaf9515b1e84087d5f4b5ed0596f5a6ffa8d331.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af26eaa998368d1e4d747b792b31746e43eb2b2af81520199d7f6598a50fbdce",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/AlgebraicIndependentBasicNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84376c74-0bbd-b7de-2317-1bef98151e0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algebraicIndependent_comp_subtype {s : Set ι} :
    AlgebraicIndependent R (x ∘ (↑) : s → A) ↔
      ∀ p ∈ MvPolynomial.supported R s, aeval x p = 0 → p = 0 := by
  have : (aeval (x ∘ (↑) : s → A) : _ →ₐ[R] _) = (aeval x).comp (rename (↑)) := by ext; simp
  have : ∀ p : MvPolynomial s R, rename ((↑) : s → ι) p = 0 ↔ p = 0 :=
    (injective_iff_map_eq_zero' (rename ((↑) : s → ι) : MvPolynomial s R →ₐ[R] _).toRingHom).1
      (rename_injective _ Subtype.val_injective)
  simp [algebraicIndependent_iff, supported_eq_range_rename, *]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/AlgebraicIndependentBasicNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantae9ac8a959f89138cd095e8e9eaf9515b1e84087d5f4b5ed0596f5a6ffa8d331.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `499610202a9a5927f3d48ca6d40eac33c87b86d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11cb3ad09e2c0f280d6549f3cbb004c7415a0bf414a3ea702d1fd00de6cff7a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantae9ac8a959f89138cd095e8e9eaf9515b1e84087d5f4b5ed0596f5a6ffa8d331.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
