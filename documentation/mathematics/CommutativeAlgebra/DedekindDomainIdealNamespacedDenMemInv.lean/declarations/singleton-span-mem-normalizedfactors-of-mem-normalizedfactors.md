# singleton_span_mem_normalizedFactors_of_mem_normalizedFactors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94fb9d07-0b48-3096-b6ca-ab15d6a4a222",
  "kind": "theorem",
  "lexical_name": "singleton_span_mem_normalizedFactors_of_mem_normalizedFactors",
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
  "slug": "singleton-span-mem-normalizedfactors-of-mem-normalizedfactors",
  "source": {
    "blob": "e90daecbecdebee2e650dd3e06b56eebdb71422e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1377,
    "line": 1359,
    "path": "GRWTSK/Algebra/Ideal/Variant3b1361fe8da2dc8b2f8cdcf20b06bf4a29fccf64a63e9e58a9af67235a918d1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd0a3b52224ba952d8b741cb7585193a2df08420ca4426bec268517ad4b2fc71",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/DedekindDomainIdealNamespacedDenMemInv.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94fb9d07-0b48-3096-b6ca-ab15d6a4a222`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1359–1377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem singleton_span_mem_normalizedFactors_of_mem_normalizedFactors [NormalizationMonoid R]
    {a b : R} (ha : a ∈ normalizedFactors b) :
    Ideal.span ({a} : Set R) ∈ normalizedFactors (Ideal.span ({b} : Set R)) := by
  by_cases hb : b = 0
  · rw [Ideal.span_singleton_eq_bot.mpr hb, bot_eq_zero, normalizedFactors_zero]
    rw [hb, normalizedFactors_zero] at ha
    exact absurd ha (Multiset.notMem_zero a)
  · suffices Prime (Ideal.span ({a} : Set R)) by
      obtain ⟨c, hc, hc'⟩ := exists_mem_normalizedFactors_of_dvd ?_ this.irreducible
          (dvd_iff_le.mpr (span_singleton_le_span_singleton.mpr (dvd_of_mem_normalizedFactors ha)))
      rwa [associated_iff_eq.mp hc']
    · by_contra h
      exact hb (span_singleton_eq_bot.mp h)
    rw [prime_iff_isPrime]
    · exact (span_singleton_prime (prime_of_normalized_factor a ha).ne_zero).mpr
        (prime_of_normalized_factor a ha)
    · by_contra h
      exact (prime_of_normalized_factor a ha).ne_zero (span_singleton_eq_bot.mp h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/DedekindDomainIdealNamespacedDenMemInv.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variant3b1361fe8da2dc8b2f8cdcf20b06bf4a29fccf64a63e9e58a9af67235a918d1d.lean#L1359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e90daecbecdebee2e650dd3e06b56eebdb71422e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1472e19029454d1fb410ba6bd08518ae48fcc3e93b2d3509b3e1e19a571c3da7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Ideal/Variant3b1361fe8da2dc8b2f8cdcf20b06bf4a29fccf64a63e9e58a9af67235a918d1d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
