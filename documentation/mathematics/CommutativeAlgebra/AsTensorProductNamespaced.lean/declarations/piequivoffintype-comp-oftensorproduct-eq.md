# piEquivOfFintype_comp_ofTensorProduct_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d5e0074-206d-2a52-3d6f-66cb9a242f95",
  "kind": "lemma",
  "lexical_name": "piEquivOfFintype_comp_ofTensorProduct_eq",
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
  "slug": "piequivoffintype-comp-oftensorproduct-eq",
  "source": {
    "blob": "11615966bcf535215e3c8ebf2f9bd4886a739561",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 106,
    "path": "GRWTSK/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f0e75f3fb1249c0cd72c3832278ecb3ef93ec023f95b794979f3b3f03897702",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/AsTensorProductNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d5e0074-206d-2a52-3d6f-66cb9a242f95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma piEquivOfFintype_comp_ofTensorProduct_eq :
    piEquivOfFintype I (fun _ : ι ↦ R) ∘ₗ ofTensorProduct I (ι → R) =
      (TensorProduct.piScalarRight R (AdicCompletion I R) (AdicCompletion I R) ι).toLinearMap := by
  ext i j k
  suffices h : (if j = i then 1 else 0) = (if j = i then 1 else 0 : AdicCompletion I R).val k by
    simpa [Pi.single_apply, -smul_eq_mul, -Algebra.id.smul_eq_mul]
  split <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/AsTensorProductNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11615966bcf535215e3c8ebf2f9bd4886a739561` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a5ee68317cd0115b437d2d69642c34f6c9ea3f467381ccc5674dde526db4ed46 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
