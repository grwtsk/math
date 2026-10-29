# poleRemovedL_nowhereZero_rightHalfPlane

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c8d10a9-aa6d-dd41-676e-28441b981900",
  "kind": "theorem",
  "lexical_name": "poleRemovedL_nowhereZero_rightHalfPlane",
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
  "slug": "poleremovedl-nowherezero-righthalfplane",
  "source": {
    "blob": "e502a9084252a158def2399fc084d6ac35834148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 769,
    "line": 728,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39473f53f3eb5cd817b57e58b57de3d7ebe243bc38baecd3442f4118dafabae4",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c8d10a9-aa6d-dd41-676e-28441b981900`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 728–769.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem poleRemovedL_nowhereZero_rightHalfPlane
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hBound : CenteredTwistedPsiHalfPlusEpsilon χ) :
    ∀ s : ℂ, (1 / 2 : ℝ) < s.re → poleRemovedLFunction χ s ≠ 0 := by
  let square : MellinLogDerivativeSquare χ :=
    canonicalMellinLogDerivativeSquare χ
  have hCoefficient : DifferentiableOn ℂ
      (fun z ↦ -(square.mellin z + dirichletPrincipalIndicator χ))
      criticalRightHalfPlane :=
    ((square.mellin_differentiableOn hBound).add (by fun_prop)).neg
  have hODE : ∀ z ∈ criticalRightHalfPlane,
      deriv (poleRemovedLFunction χ) z =
        -(square.mellin z + dirichletPrincipalIndicator χ) *
          poleRemovedLFunction χ z := by
    intro z hz
    have hResidual := square.residual_eq_zero hBound hz
    change deriv (poleRemovedLFunction χ) z +
      (square.mellin z + dirichletPrincipalIndicator χ) *
        poleRemovedLFunction χ z = 0 at hResidual
    calc
      deriv (poleRemovedLFunction χ) z =
          -((square.mellin z + dirichletPrincipalIndicator χ) *
            poleRemovedLFunction χ z) :=
        eq_neg_of_add_eq_zero_left hResidual
      _ = -(square.mellin z + dirichletPrincipalIndicator χ) *
          poleRemovedLFunction χ z := by ring
  have hAtTwo : poleRemovedLFunction χ (2 : ℂ) ≠ 0 :=
    poleRemovedLFunction_ne_zero_of_one_lt_re χ (by norm_num)
  have hNowhereZero := Surface.Core.Analysis.nowhereZero_of_deriv_eq_mul
    isOpen_criticalRightHalfPlane
    isPreconnected_criticalRightHalfPlane
    (poleRemovedLFunction χ)
    (fun z ↦ -(square.mellin z + dirichletPrincipalIndicator χ))
    (differentiable_poleRemovedLFunction χ).differentiableOn
    hCoefficient hODE (2 : ℂ) (by norm_num [criticalRightHalfPlane]) hAtTwo
  intro s hs
  exact hNowhereZero s hs

/-- In the open critical strip, pole removal preserves zeros, so the direct
half-plus-epsilon bound excludes ordinary `L`-function zeros to the right of
the critical line. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean#L728).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e502a9084252a158def2399fc084d6ac35834148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bde51ae0366ec3b50e80e55c3003b0004dbd5979d2df6324304b80d5a61a3487 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
