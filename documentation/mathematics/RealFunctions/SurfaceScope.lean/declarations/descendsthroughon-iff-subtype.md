# descendsThroughOn_iff_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7dd07a88aeb6f083754cc62e9847e0f79a2c45e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 24,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:812baf79-f579-2cfc-ad75-5358c95bb8a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df2f02ad-329e-c80f-7410-a25b86b398cf",
  "kind": "theorem",
  "lexical_name": "descendsThroughOn_iff_subtype",
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
  "slug": "descendsthroughon-iff-subtype",
  "source": {
    "blob": "7dd07a88aeb6f083754cc62e9847e0f79a2c45e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 24,
    "path": "GRWTSK/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22fc050465568c08617eecfbb565b2caa4f52115a621e9d9923f8defd07f492b",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/RealFunctions/SurfaceScope.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df2f02ad-329e-c80f-7410-a25b86b398cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem descendsThroughOn_iff_subtype {X Q Y : Type*} (scope : Set X)
    (carrier : X → Q) (target : X → Y) :
    DescendsThroughOn scope carrier target ↔
      DescendsThrough (fun x : scope => carrier x) (fun x : scope => target x) := by
  constructor
  · intro h x y equal
    exact h x.property y.property equal
  · intro h x y hx hy equal
    exact h (x := ⟨x, hx⟩) (y := ⟨y, hy⟩) equal

/-- Restricting admissible states preserves a scoped descent proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/RealFunctions/SurfaceScope.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7dd07a88aeb6f083754cc62e9847e0f79a2c45e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d90382a2d39de691930f3eeddf15552782fcb5c7ae3f7c1f743899428800bc5f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
