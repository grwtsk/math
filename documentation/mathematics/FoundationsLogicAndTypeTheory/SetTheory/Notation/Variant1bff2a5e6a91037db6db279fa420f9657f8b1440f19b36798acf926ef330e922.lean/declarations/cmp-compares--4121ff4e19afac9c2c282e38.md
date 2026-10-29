# cmp_compares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "662748c0fa51663685efded4a2e2a9ee5ad80563",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1310,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd356a6d-6014-4915-2e2f-a8f306bbed64",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00b8d4cd-a4f6-2320-c7c1-5ce90cca7029",
  "kind": "theorem",
  "lexical_name": "cmp_compares",
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
  "slug": "cmp-compares--4121ff4e19afac9c2c282e38",
  "source": {
    "blob": "662748c0fa51663685efded4a2e2a9ee5ad80563",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1317,
    "line": 1310,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4121ff4e19afac9c2c282e38cbd298de19ec47793265e2f1bd4b307a036bb336",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00b8d4cd-a4f6-2320-c7c1-5ce90cca7029`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1310–1317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cmp_compares : ∀ a b : NONote, (cmp a b).Compares a b
  | ⟨a, ha⟩, ⟨b, hb⟩ => by
    dsimp [cmp]
    have := ONote.cmp_compares a b
    cases h: ONote.cmp a b <;> simp only [h] at this <;> try exact this
    exact Subtype.mk_eq_mk.2 this
#align nonote.cmp_compares NONote.cmp_compares

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean#L1310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `662748c0fa51663685efded4a2e2a9ee5ad80563` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83c853668e7fb0826bf74fc1cdf40d458a0820291bc3a231091ad67f3acb369f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
