# div_mem_ker_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd475fd7-ad1f-e93d-fb18-501288a2d977",
  "kind": "theorem",
  "lexical_name": "div_mem_ker_iff",
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
  "slug": "div-mem-ker-iff--caa1a2316a26760f7a533aab",
  "source": {
    "blob": "83f276ab0e3b5df06c48f14332d79b0cb7b60abe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 261,
    "path": "GRWTSK/Algebra/GroupTheory/Ker/Variant0e1bd00c86736927e3e935cb75986abc01cd8fb1ec9435836e5da3a3b1fcc2dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:caa1a2316a26760f7a533aab428c713d001e0c89d1105c0100b88eaa0ccb67ba",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Ker/Variant0e1bd00c86736927e3e935cb75986abc01cd8fb1ec9435836e5da3a3b1fcc2dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd475fd7-ad1f-e93d-fb18-501288a2d977`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem div_mem_ker_iff (f : G →* M) {x y : G} : x / y ∈ ker f ↔ f x = f y := by
  constructor <;> intro h
  · rw [← div_mul_cancel x y, map_mul, mem_ker.mp h, one_mul]
  · rw [mem_ker, div_eq_mul_inv, map_mul, h, ← map_mul, mul_inv_cancel, map_one]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Algebra/GroupTheory/Ker/Variant0e1bd00c86736927e3e935cb75986abc01cd8fb1ec9435836e5da3a3b1fcc2dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Ker/Variant0e1bd00c86736927e3e935cb75986abc01cd8fb1ec9435836e5da3a3b1fcc2dd.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83f276ab0e3b5df06c48f14332d79b0cb7b60abe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2296fa56b9101ee5632dadc202d75b481b5bc9621b688d65b49392b20d41b3f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Ker/Variant0e1bd00c86736927e3e935cb75986abc01cd8fb1ec9435836e5da3a3b1fcc2dd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
