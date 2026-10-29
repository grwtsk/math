# PartiallyWellOrderedOn.prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4541d63-8eb8-6aac-5292-11674cd66166",
  "kind": "theorem",
  "lexical_name": "PartiallyWellOrderedOn.prod",
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
  "slug": "partiallywellorderedon-prod--03323dad201062cb72165acc",
  "source": {
    "blob": "f81ccd361094b729fb4ea6c4891dcec8b7592b07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 379,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variantdc6b91639fe82b17a8e119fad0d34f4e77c0ba0a07af93d34feb5c69783c29bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03323dad201062cb72165acc20218aa07f3e9216f921d08315f75f2f183d6ee9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variantdc6b91639fe82b17a8e119fad0d34f4e77c0ba0a07af93d34feb5c69783c29bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4541d63-8eb8-6aac-5292-11674cd66166`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem PartiallyWellOrderedOn.prod {t : Set β} (hs : PartiallyWellOrderedOn s r)
    (ht : PartiallyWellOrderedOn t r') :
    PartiallyWellOrderedOn (s ×ˢ t) fun x y : α × β => r x.1 y.1 ∧ r' x.2 y.2 := by
  rw [partiallyWellOrderedOn_iff_exists_lt]
  intro f hf
  obtain ⟨g₁, h₁⟩ := hs.exists_monotone_subseq fun n => (hf n).1
  obtain ⟨m, n, hlt, hle⟩ := ht.exists_lt fun n => (hf _).2
  exact ⟨g₁ m, g₁ n, g₁.strictMono hlt, h₁ _ _ hlt.le, hle⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variantdc6b91639fe82b17a8e119fad0d34f4e77c0ba0a07af93d34feb5c69783c29bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variantdc6b91639fe82b17a8e119fad0d34f4e77c0ba0a07af93d34feb5c69783c29bb.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f81ccd361094b729fb4ea6c4891dcec8b7592b07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee5ee7816e9e494ba27f3fe4257628abe0b0bf77075ee8d5e472ecc343537530 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variantdc6b91639fe82b17a8e119fad0d34f4e77c0ba0a07af93d34feb5c69783c29bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
