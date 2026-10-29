# canonicalMellinLogDerivativeSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68083c8f93325c5585a3a8cd587c8ee45d59bc8c07c5e61e8e38b8bb19284e40",
  "kind": "def",
  "lexical_name": "canonicalMellinLogDerivativeSquare",
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
  "slug": "canonicalmellinlogderivativesquare",
  "source": {
    "blob": "e502a9084252a158def2399fc084d6ac35834148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 613,
    "line": 601,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5fa1584952d63c4e29f477ba20a4b5838a48c64463ee3019b1d075a3ff74f88",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68083c8f93325c5585a3a8cd587c8ee45d59bc8c07c5e61e8e38b8bb19284e40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 601–613.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def canonicalMellinLogDerivativeSquare
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) :
    MellinLogDerivativeSquare χ where
  mellin := centeredTwistedPsiMellin χ
  mellin_eq_centeredIntegral := fun _ ↦ rfl
  mellin_differentiableOn := fun hBound ↦
    centeredPsiMellin_differentiable χ hBound
  regularizedLogDerivativeIdentity := fun _ hs ↦
    centeredTwistedPsiMellin_add_principalIndicator_eq_neg_logDeriv_poleRemovedLFunction
      χ hs

/-- Holomorphic ODE residual for the regularized `L`-function. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativeNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean#L601).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e502a9084252a158def2399fc084d6ac35834148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=364b1c1dd4cd991dd91d6984f4fb7fd10d717f5ffc7a68f23eef78b663bf5691 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
