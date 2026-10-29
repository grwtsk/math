# Finset.powerset_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc55eda4-016f-973a-f331-e18e01131724",
  "kind": "theorem",
  "lexical_name": "Finset.powerset_univ",
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
  "slug": "finset-powerset-univ--15e0e9b0caaeda97c6481946",
  "source": {
    "blob": "b3a8fdd69a4167dfcb7bc7722cfce5fdc7405fe3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant905a00c3d3f320666d6ef6eaf6af141d1aa6b759a51910910c4ddb663a2b64cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15e0e9b0caaeda97c6481946a7681a59216f277b8c0ecaa1aa964ecc29ba87c0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Powerset/Variant905a00c3d3f320666d6ef6eaf6af141d1aa6b759a51910910c4ddb663a2b64cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc55eda4-016f-973a-f331-e18e01131724`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finset.powerset_univ [Fintype α] : (univ : Finset α).powerset = univ :=
  coe_injective <| by simp [-coe_eq_univ]
#align finset.powerset_univ Finset.powerset_univ

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CombinatoricsAndDiscreteMathematics/Powerset/Variant905a00c3d3f320666d6ef6eaf6af141d1aa6b759a51910910c4ddb663a2b64cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant905a00c3d3f320666d6ef6eaf6af141d1aa6b759a51910910c4ddb663a2b64cf.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3a8fdd69a4167dfcb7bc7722cfce5fdc7405fe3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6305a5d28ac3db5083b98134ebea6e7de22f1ed149b6d0af1e2d4bd72db9fca8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant905a00c3d3f320666d6ef6eaf6af141d1aa6b759a51910910c4ddb663a2b64cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
