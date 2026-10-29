# Ideal.height_le_one_of_isPrincipal_of_mem_minimalPrimes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:607fb6bc-eb59-9765-99c3-87024b5290fa",
  "kind": "lemma",
  "lexical_name": "Ideal.height_le_one_of_isPrincipal_of_mem_minimalPrimes",
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
  "slug": "ideal-height-le-one-of-isprincipal-of-mem-minimalprimes",
  "source": {
    "blob": "77222e768ad258d9ae2f4af1c3640777739fbb34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 109,
    "path": "GRWTSK/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b96434d5b498f7e83cd87d9f708240e0832f0d614d2133769e927a7cdc646e5",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:607fb6bc-eb59-9765-99c3-87024b5290fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.height_le_one_of_isPrincipal_of_mem_minimalPrimes
    (I : Ideal R) [I.IsPrincipal] (p : Ideal R) (hp : p ∈ I.minimalPrimes) : p.height ≤ 1 := by
  have := hp.1.1
  let f := algebraMap R (Localization.AtPrime p)
  have := Ideal.height_le_one_of_isPrincipal_of_mem_minimalPrimes_of_isLocalRing (I.map f) ?_
  · rwa [← IsLocalization.height_comap p.primeCompl,
      Localization.AtPrime.comap_maximalIdeal] at this
  · rwa [IsLocalization.minimalPrimes_map p.primeCompl (Localization.AtPrime p) I,
      Set.mem_preimage, Localization.AtPrime.comap_maximalIdeal]

/-- If `q < p` are prime ideals such that `p` is minimal over `span (s ∪ {x})` and
`t` is a set contained in `q` such that `s ⊆ √span (t ∪ {x})`, then `q` is minimal over `span t`.
This is used in the induction step for the proof of Krull's height theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CommutativeAlgebra/GeneralCommutativeRingTheory/KrullsHeightTheoremNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77222e768ad258d9ae2f4af1c3640777739fbb34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e1a0e4ba19d43f008bd066e7d3283917149f58fa24c84aadcf178184e2b3d65 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/KrullsHeightTheorem/Variantd0e491ce10f5f285dc14d5fac62572ac99a56bafdfe250089d723f2f9d3ea096.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
