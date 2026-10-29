# conductorThreeLogDerivativeResidual_eq_zero_of_one_lt_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e20e6386-fc36-63cb-b519-ad87457c7ca7",
  "kind": "theorem",
  "lexical_name": "conductorThreeLogDerivativeResidual_eq_zero_of_one_lt_re",
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
  "slug": "conductorthreelogderivativeresidual-eq-zero-of-one-lt-re",
  "source": {
    "blob": "cabb3cded8e7a1671ac20fba3c1cb4abcd063b87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 265,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variant46084ab028263600cfc72d43b8b8eb6e3e6c397bfa90936cb91002cc09854b47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69bd309c2ef5075c221027f1aa28465f3ab55771f73e46dfeea0ac8d50a08327",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConductorThreeMellinLogDerivativeNamespacedPublicHalfPlusEpsilonMellinContinuation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e20e6386-fc36-63cb-b519-ad87457c7ca7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductorThreeLogDerivativeResidual_eq_zero_of_one_lt_re
    (hHalf : TwistedPsiHalfPlusEpsilon) {s : ℂ} (hs : 1 < s.re) :
    conductorThreeLogDerivativeResidual s = 0 := by
  have hEq := conductorThreeMellinLogDerivative_eq_neg_logDerivative hHalf hs
  have hne : DirichletCharacter.LFunction conductorThreeCharacter s ≠ 0 :=
    DirichletCharacter.LFunction_ne_zero_of_one_le_re
      conductorThreeCharacter (.inl conductorThreeCharacter_ne_one) hs.le
  unfold conductorThreeLogDerivativeResidual
  rw [hEq, div_mul_cancel₀ _ hne]
  ring

/-- Analytic continuation of the ODE identity from `re s > 1` to the entire
half-plane `re s > 1/2`.  This is the checked identity-theorem step in the
reverse-GRH route. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConductorThreeMellinLogDerivativeNamespacedPublicHalfPlusEpsilonMellinContinuation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variant46084ab028263600cfc72d43b8b8eb6e3e6c397bfa90936cb91002cc09854b47.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cabb3cded8e7a1671ac20fba3c1cb4abcd063b87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=beb84b073e97e5505dab3433125056929c943d63080b2a12b05d3253d633fba4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variant46084ab028263600cfc72d43b8b8eb6e3e6c397bfa90936cb91002cc09854b47.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
