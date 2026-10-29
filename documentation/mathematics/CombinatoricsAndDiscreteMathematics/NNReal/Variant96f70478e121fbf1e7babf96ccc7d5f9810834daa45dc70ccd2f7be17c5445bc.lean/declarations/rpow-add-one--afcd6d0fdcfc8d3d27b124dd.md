# rpow_add_one'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10a4d476-42f9-59e5-72da-3d09b4cceae7",
  "kind": "lemma",
  "lexical_name": "rpow_add_one'",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "rpow-add-one--afcd6d0fdcfc8d3d27b124dd",
  "source": {
    "blob": "22faac2b0d10159dbff3de4f528814093bed3713",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 122,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NNReal/Variant96f70478e121fbf1e7babf96ccc7d5f9810834daa45dc70ccd2f7be17c5445bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afcd6d0fdcfc8d3d27b124ddd04c37a8d49f74d87850c41e7a515d02907eff7b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NNReal/Variant96f70478e121fbf1e7babf96ccc7d5f9810834daa45dc70ccd2f7be17c5445bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10a4d476-42f9-59e5-72da-3d09b4cceae7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rpow_add_one' (h : y + 1 ≠ 0) (x : ℝ≥0) : x ^ (y + 1) = x ^ y * x := by
  rw [rpow_add' h, rpow_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CombinatoricsAndDiscreteMathematics/NNReal/Variant96f70478e121fbf1e7babf96ccc7d5f9810834daa45dc70ccd2f7be17c5445bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NNReal/Variant96f70478e121fbf1e7babf96ccc7d5f9810834daa45dc70ccd2f7be17c5445bc.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22faac2b0d10159dbff3de4f528814093bed3713` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b6c12a575ef7f04a5459d6bf68c7335bfa5fbb9cd599c1f85f997b62a6b9a65 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/NNReal/Variant96f70478e121fbf1e7babf96ccc7d5f9810834daa45dc70ccd2f7be17c5445bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
