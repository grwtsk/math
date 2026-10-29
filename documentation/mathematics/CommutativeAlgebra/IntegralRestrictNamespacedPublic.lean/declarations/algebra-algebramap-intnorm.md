# Algebra.algebraMap_intNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70494a77-0100-53c6-f1b3-a827a1a2660b",
  "kind": "lemma",
  "lexical_name": "Algebra.algebraMap_intNorm",
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
  "slug": "algebra-algebramap-intnorm",
  "source": {
    "blob": "40382404349b2815648537a2bb46a3ce1953b233",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 418,
    "path": "GRWTSK/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71f652268e68f147af2a1cc29c931c04b6741bb607d5556ec58b151549d9340c",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/IntegralRestrictNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70494a77-0100-53c6-f1b3-a827a1a2660b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Algebra.algebraMap_intNorm (x : B) :
    algebraMap A K (Algebra.intNorm A B x) = Algebra.norm K (algebraMap B L x) := by
  have := IsIntegralClosure.isFractionRing_of_finite_extension A K L B
  apply (FractionRing.algEquiv A K).symm.injective
  rw [AlgEquiv.commutes, Algebra.intNorm, Algebra.map_intNormAux,
    ← AlgEquiv.commutes (FractionRing.algEquiv B L)]
  apply Algebra.norm_eq_of_equiv_equiv (FractionRing.algEquiv A K).toRingEquiv
    (FractionRing.algEquiv B L).toRingEquiv
  ext
  exact IsFractionRing.algEquiv_commutes (FractionRing.algEquiv A K) (FractionRing.algEquiv B L) _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/IntegralRestrictNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40382404349b2815648537a2bb46a3ce1953b233` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d3614ecd2b27bb0924d2b1d8e5001a3f88b8afeb1c16fcc799ea225a02b9bde0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
