# cpow_inv_two_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef7e7bc2-1842-1d53-32a7-349f902b7963",
  "kind": "lemma",
  "lexical_name": "cpow_inv_two_re",
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
  "slug": "cpow-inv-two-re",
  "source": {
    "blob": "5afc07585a3bee0b6df9c22e16ad0cf231ef3feb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1017,
    "line": 1013,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Real/Variantcd352ea029cc2c81be163a34ec852f68b5a149968e2ca51ddff4a3184bb059ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e4fb328e86793d7ddcf7b1249d3f226dcd091ca652b855bddc2b53405967be7",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/SpecialFunctions/RealNamespacedPublicRpow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef7e7bc2-1842-1d53-32a7-349f902b7963`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1013–1017.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cpow_inv_two_re (x : ℂ) : (x ^ (2⁻¹ : ℂ)).re = √((‖x‖ + x.re) / 2) := by
  rw [← ofReal_ofNat, ← ofReal_inv, cpow_ofReal_re, ← div_eq_mul_inv, ← one_div,
    ← Real.sqrt_eq_rpow, cos_half, ← sqrt_mul, ← mul_div_assoc, mul_add, mul_one, norm_mul_cos_arg]
  exacts [norm_nonneg _, (neg_pi_lt_arg _).le, arg_le_pi _]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/SpecialFunctions/RealNamespacedPublicRpow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Real/Variantcd352ea029cc2c81be163a34ec852f68b5a149968e2ca51ddff4a3184bb059ff.lean#L1013).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5afc07585a3bee0b6df9c22e16ad0cf231ef3feb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed928691339f95f763697d65b08402fa3a50818304a83e38a5c4f1399cc01f8e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Real/Variantcd352ea029cc2c81be163a34ec852f68b5a149968e2ca51ddff4a3184bb059ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
