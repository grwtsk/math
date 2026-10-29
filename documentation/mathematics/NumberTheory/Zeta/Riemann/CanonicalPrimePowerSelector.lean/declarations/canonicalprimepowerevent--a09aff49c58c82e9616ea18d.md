# canonicalPrimePowerEvent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1f8841582039b875c7f8f5c1f2a93e6cb915af7b295d715d55aceb97ea006a7",
  "kind": "def",
  "lexical_name": "canonicalPrimePowerEvent",
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
  "slug": "canonicalprimepowerevent--a09aff49c58c82e9616ea18d",
  "source": {
    "blob": "837dc4fdf2f9d2b988795bd3a25504a464226197",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 58,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a09aff49c58c82e9616ea18deeca052ac1656fe53c030cb8bff8230e91f0037d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1f8841582039b875c7f8f5c1f2a93e6cb915af7b295d715d55aceb97ea006a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canonicalPrimePowerEvent (q : ℕ) (hq : IsPrimePow q) :
    PrimePowerEvent where
  prime := ⟨q.minFac, Nat.minFac_prime (IsPrimePow.ne_one hq)⟩
  exponent := q.factorization q.minFac
  exponent_pos := by
    have hpow := hq.minFac_pow_factorization_eq
    by_contra h
    have hk : q.factorization q.minFac = 0 := Nat.eq_zero_of_not_pos h
    rw [hk, pow_zero] at hpow
    exact (IsPrimePow.ne_one hq) hpow.symm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `837dc4fdf2f9d2b988795bd3a25504a464226197` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ecd8846b19f19d25bae24b7373d34a14ec485138079711873cc05597a9d21219 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
