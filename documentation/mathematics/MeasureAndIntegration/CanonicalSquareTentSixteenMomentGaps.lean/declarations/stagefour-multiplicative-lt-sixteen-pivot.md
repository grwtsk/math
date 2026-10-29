# stageFour_multiplicative_lt_sixteen_pivot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6d0fa2d-5f6c-854f-7ffd-2e06cf10c71d",
  "kind": "theorem",
  "lexical_name": "stageFour_multiplicative_lt_sixteen_pivot",
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
  "slug": "stagefour-multiplicative-lt-sixteen-pivot",
  "source": {
    "blob": "e606478e577366a8cd775fa6ef1ef4119a59f5a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 47,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenMomentGaps.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ef3e499990baf2cc6dcfd4007ac5db030c5a1c7300619062d2b086a10b01c02",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/CanonicalSquareTentSixteenMomentGaps.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6d0fa2d-5f6c-854f-7ffd-2e06cf10c71d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stageFour_multiplicative_lt_sixteen_pivot :
    realMultiplicativeMoment 2 <
      sixteenPivot * realOrdinaryMoment 2 := by
  have hpos := stageFourSixteenGap_integral_pos
  have hdiv := canonicalTentReal_div_integrableOn 2
  have ht : IntegrableOn (canonicalTentReal 2) (Set.Ioi (0 : ℝ)) :=
    (canonicalTentReal_integrable 2).integrableOn
  have heq :
      (∫ x in Set.Ioi (0 : ℝ), stageFourSixteenGap x) =
        sixteenPivot * realOrdinaryMoment 2 -
          realMultiplicativeMoment 2 := by
    unfold stageFourSixteenGap realMultiplicativeMoment realOrdinaryMoment
    rw [integral_sub (ht.const_mul sixteenPivot) hdiv, integral_const_mul]
  rw [heq] at hpos
  exact sub_pos.mp hpos

/-- Eliminate the former strict-ratio premise using source-specific
positive-integral suppliers. Still requires actual Lean acceptance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/CanonicalSquareTentSixteenMomentGaps.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenMomentGaps.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e606478e577366a8cd775fa6ef1ef4119a59f5a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0cc6e1c306a381486697318e8247e490421e8e2d56e438b45c830e82f0cb0143 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenMomentGaps.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
