# irrational_rat_mul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e065ae777ca552000886f4ce885da24291e721f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 599,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/374807445e9b58148d51a3bb5425c24267e62e862249749acebbb95d5f48084f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05b0d2ce-dcc1-3a1c-3a2d-25e75536229a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f57abc8-1e2d-fd35-68ff-c0f8a5a7070c",
  "kind": "theorem",
  "lexical_name": "irrational_rat_mul_iff",
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
  "slug": "irrational-rat-mul-iff",
  "source": {
    "blob": "8e065ae777ca552000886f4ce885da24291e721f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 604,
    "line": 599,
    "path": "GRWTSK/Algebra/Irrational/Variant374807445e9b58148d51a3bb5425c24267e62e862249749acebbb95d5f48084f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e89ae3cfd8bc8d00fe89442c20ebfcc988f17aa52ed1f22f5284096358c589a3",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/RealFunctions/RealIrrationalIrrationalSourceEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f57abc8-1e2d-fd35-68ff-c0f8a5a7070c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 599–604.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem irrational_rat_mul_iff : Irrational (q * x) ↔ q ≠ 0 ∧ Irrational x :=
  ⟨fun h => ⟨Rat.cast_ne_zero.1 <| left_ne_zero_of_mul h.ne_zero, h.of_rat_mul q⟩, fun h =>
    h.2.rat_mul h.1⟩
#align irrational_rat_mul_iff irrational_rat_mul_iff

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/RealFunctions/RealIrrationalIrrationalSourceEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Irrational/Variant374807445e9b58148d51a3bb5425c24267e62e862249749acebbb95d5f48084f.lean#L599).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e065ae777ca552000886f4ce885da24291e721f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=70587bcfe036ecfd1372a43a39c7ccc715d1923a24bd9d03f7339c18c609c8cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Irrational/Variant374807445e9b58148d51a3bb5425c24267e62e862249749acebbb95d5f48084f.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/37/374807445e9b58148d51a3bb5425c24267e62e862249749acebbb95d5f48084f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
