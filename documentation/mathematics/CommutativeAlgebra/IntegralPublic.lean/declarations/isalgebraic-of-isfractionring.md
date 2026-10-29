# isAlgebraic_of_isFractionRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fd3fd64f39b0a988cd280af7d1b1e488259cbff5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 526,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:629ad17c-1a45-b51f-de74-c0cbc31a4ea4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:245f050f-9ad2-55b9-2430-48c943ecea30",
  "kind": "lemma",
  "lexical_name": "isAlgebraic_of_isFractionRing",
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
  "slug": "isalgebraic-of-isfractionring",
  "source": {
    "blob": "fd3fd64f39b0a988cd280af7d1b1e488259cbff5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 526,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b6dd32b1670eb2520788c7900cef3462b37a59f2b39da493e5dad4b15483efe",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/IntegralPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:245f050f-9ad2-55b9-2430-48c943ecea30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 526–543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isAlgebraic_of_isFractionRing (R S K L) [CommRing R] [CommRing S] [Field K] [CommRing L]
    [Algebra R S] [Algebra R K] [Algebra R L] [Algebra S L] [Algebra K L] [IsScalarTower R S L]
    [IsScalarTower R K L] [IsFractionRing S L]
    [Algebra.IsIntegral R S] : Algebra.IsAlgebraic K L := by
  constructor
  intro x
  obtain ⟨x, s, rfl⟩ := IsLocalization.exists_mk'_eq S⁰ x
  apply IsIntegral.isAlgebraic
  rw [IsLocalization.mk'_eq_mul_mk'_one]
  apply RingHom.IsIntegralElem.mul
  · apply IsIntegral.tower_top (R := R)
    apply IsIntegral.map (IsScalarTower.toAlgHom R S L)
    exact Algebra.IsIntegral.isIntegral x
  · change IsIntegral _ _
    rw [← isAlgebraic_iff_isIntegral, ← IsAlgebraic.invOf_iff, isAlgebraic_iff_isIntegral]
    apply IsIntegral.tower_top (R := R)
    apply IsIntegral.map (IsScalarTower.toAlgHom R S L)
    exact Algebra.IsIntegral.isIntegral (s : S)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/IntegralPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean#L526).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd3fd64f39b0a988cd280af7d1b1e488259cbff5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85b122b14b5c98ca91a8ac8051619d60fa57632cd8f78106916163b7cd45eb8b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Integral/Variantd427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d427f15f5cec2700ee61fd9e4659e7c78868152a30a58e3ba2a95a29288bbac1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
