# op_norm_mul_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7801fe35-e05b-b512-1cdf-9730608651f2",
  "kind": "lemma",
  "lexical_name": "op_norm_mul_apply",
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
  "slug": "op-norm-mul-apply",
  "source": {
    "blob": "d430a4d0f26a7ca7e607d1c5349583e2d4936119",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1210,
    "line": 1206,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/OperatorNorm/Variant631f0b254dd31d79a043852ad041ff63a1ee8db4cfa5d4e91082cbf9c93bd0c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb27265ece98ea22a0534137a2b36a54b295a6a9944c12cc31adab477074befb",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/OperatorNormNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7801fe35-e05b-b512-1cdf-9730608651f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1206–1210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma op_norm_mul_apply (x : 𝕜') : ‖mul 𝕜 𝕜' x‖ = ‖x‖ :=
  (AddMonoidHomClass.isometry_iff_norm (mul 𝕜 𝕜')).mp (isometry_mul 𝕜 𝕜') x
#align continuous_linear_map.op_norm_mul_apply ContinuousLinearMap.op_norm_mul_applyₓ

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/OperatorNormNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/OperatorNorm/Variant631f0b254dd31d79a043852ad041ff63a1ee8db4cfa5d4e91082cbf9c93bd0c6.lean#L1206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d430a4d0f26a7ca7e607d1c5349583e2d4936119` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=72e9ae865fad875653af1720fefcb3c1e595a95f11e665aa391bdc0f5743c1a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/OperatorNorm/Variant631f0b254dd31d79a043852ad041ff63a1ee8db4cfa5d4e91082cbf9c93bd0c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
