# noncommProd_toFinset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49453838-ecb7-da08-bc7a-c945b001efe2",
  "kind": "theorem",
  "lexical_name": "noncommProd_toFinset",
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
  "slug": "noncommprod-tofinset--9ca1ef1fa9db7ebe135a6489",
  "source": {
    "blob": "0f5dc8fa98550936a8a018129ffcb0ddfc50071d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 279,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantc34f03024c4ae404bd39cfc1845924852516d7aa78e23af1c9786af194f9e008.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ca1ef1fa9db7ebe135a64896a853382e0bb584d03d393ebffb0663a91a81205",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantc34f03024c4ae404bd39cfc1845924852516d7aa78e23af1c9786af194f9e008.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49453838-ecb7-da08-bc7a-c945b001efe2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem noncommProd_toFinset [DecidableEq α] (l : List α) (f : α → β) (comm) (hl : l.Nodup) :
    noncommProd l.toFinset f comm = (l.map f).prod := by
  rw [← List.dedup_eq_self] at hl
  simp [noncommProd, hl]

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantc34f03024c4ae404bd39cfc1845924852516d7aa78e23af1c9786af194f9e008.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantc34f03024c4ae404bd39cfc1845924852516d7aa78e23af1c9786af194f9e008.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f5dc8fa98550936a8a018129ffcb0ddfc50071d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64d2630b1c066cc9d7a61316d8f88c20ba59523d4312c72267f7668e2002989a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantc34f03024c4ae404bd39cfc1845924852516d7aa78e23af1c9786af194f9e008.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
