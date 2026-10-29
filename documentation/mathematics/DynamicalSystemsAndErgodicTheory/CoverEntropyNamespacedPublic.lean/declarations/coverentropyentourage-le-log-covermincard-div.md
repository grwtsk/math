# coverEntropyEntourage_le_log_coverMincard_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d969719-3360-b401-b99e-8a01a4e56ac9",
  "kind": "lemma",
  "lexical_name": "coverEntropyEntourage_le_log_coverMincard_div",
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
  "slug": "coverentropyentourage-le-log-covermincard-div",
  "source": {
    "blob": "f24095fc7ce6b73eccdfe13b56383ef1a997de95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 395,
    "path": "GRWTSK/Topology/GeneralTopology/CoverEntropy/Variantf5c8e6e4f0a465001d46c48465a72db4e92f93f5bc966cb848f73983a2001b46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a29392ee8bd81475bf84e747ad0fc9deb5fcc663eb23d6986edd8078f4ea6d7b",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/DynamicalSystemsAndErgodicTheory/CoverEntropyNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d969719-3360-b401-b99e-8a01a4e56ac9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coverEntropyEntourage_le_log_coverMincard_div (F_inv : MapsTo T F F) [U.IsSymm]
    (n_pos : n ≠ 0) :
    coverEntropyEntourage T F (U ○ U) ≤ log (coverMincard T F U n) / n := by
  have cv_mono : Monotone fun m ↦ (coverMincard T F (U ○ U) m).toENNReal :=
    fun _ _ k_m ↦ ENat.toENNReal_mono (coverMincard_monotone_time T F (U ○ U) k_m)
  have h := cv_mono.expGrowthSup_comp_mul n_pos
  rw [mul_comm, ← div_eq_iff (natCast_ne_bot n) (natCast_ne_top n) (Nat.cast_ne_zero.2 n_pos)] at h
  rw [coverEntropyEntourage, ← h]
  apply monotone_div_right_of_nonneg n.cast_nonneg'
  rw [← expGrowthSup_pow]
  refine expGrowthSup_monotone fun m ↦ ?_
  rw [← ENat.toENNReal_pow]
  exact ENat.toENNReal_mono (coverMincard_mul_le_pow F_inv n m)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/DynamicalSystemsAndErgodicTheory/CoverEntropyNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CoverEntropy/Variantf5c8e6e4f0a465001d46c48465a72db4e92f93f5bc966cb848f73983a2001b46.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f24095fc7ce6b73eccdfe13b56383ef1a997de95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=721cbcd1ee1b11faf55b54d774e8b2d447678351fe299d0d864ed7563ca60b61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CoverEntropy/Variantf5c8e6e4f0a465001d46c48465a72db4e92f93f5bc966cb848f73983a2001b46.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
