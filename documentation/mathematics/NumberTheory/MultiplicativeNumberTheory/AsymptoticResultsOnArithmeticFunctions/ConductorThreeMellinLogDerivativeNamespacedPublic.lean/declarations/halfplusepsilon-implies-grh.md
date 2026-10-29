# halfPlusEpsilon_implies_grh

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:095b4c3e-58f6-df4d-3f78-2da88e75cd74",
  "kind": "theorem",
  "lexical_name": "halfPlusEpsilon_implies_grh",
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
  "slug": "halfplusepsilon-implies-grh",
  "source": {
    "blob": "b34a1352873cd4f39d405602a1a22c90248f91fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 439,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variant19a7c4c97ba4fecffac1583e260245187b84e390f53067597770202af0ea989d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46506a414cadfb8cacdd63ef350beac168185ed3b165d1eced17bee0b776e43c",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConductorThreeMellinLogDerivativeNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:095b4c3e-58f6-df4d-3f78-2da88e75cd74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem halfPlusEpsilon_implies_grh :
    TwistedPsiHalfPlusEpsilon → GRHForConductorThreeCharacter := by
  intro hHalf s hsZero hs0 hs1
  rcases lt_trichotomy s.re (1 / 2 : ℝ) with hLeft | hEq | hRight
  · exact False.elim
      ((conductorThreeLFunction_ne_zero_of_re_lt_half hHalf hs0 hLeft) hsZero)
  · exact hEq
  · exact False.elim
      ((conductorThreeLFunction_ne_zero_of_half_lt_re hHalf hRight) hsZero)


/-! ## Compatibility surfaces -/

/-- The complex coefficient is the cast of the checked real coefficient. -/
@[surface_adapter, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ConductorThreeMellinLogDerivativeNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variant19a7c4c97ba4fecffac1583e260245187b84e390f53067597770202af0ea989d.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b34a1352873cd4f39d405602a1a22c90248f91fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4fc202b60eedd2fb33b68afe455e8a19717ff1c1d3c837c630065e48a04c9899 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variant19a7c4c97ba4fecffac1583e260245187b84e390f53067597770202af0ea989d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
