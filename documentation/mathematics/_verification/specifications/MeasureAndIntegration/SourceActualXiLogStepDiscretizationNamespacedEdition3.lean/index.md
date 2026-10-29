# Verification target: Source Actual Xi Log Step Discretization Namespaced Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bb95b35b5e64a482add532c7a537cd28e88348a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Variantffe8f10cbecb54e2582c6139c8c36b12bd6ed7fef0e2f01c68d095cedf1a7677.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceActualXiLogStepDiscretizationNamespacedEdition3.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceActualXiLogStepDiscretizationNamespacedEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bb95b35b5e64a482add532c7a537cd28e88348a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Variantffe8f10cbecb54e2582c6139c8c36b12bd6ed7fef0e2f01c68d095cedf1a7677.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Variantffe8f10cbecb54e2582c6139c8c36b12bd6ed7fef0e2f01c68d095cedf1a7677.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualXiClosedCellOscillation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualIntegerXiTailLogStep](../../../../MeasureAndIntegration/SourceActualXiLogStepDiscretizationNamespacedEdition3.lean/declarations/actualintegerxitaillogstep.md) | 27 | `declaration-track:fc708e19f3fce06273bf34be8db8d9b65e6e2fe282be0d5b455231e0bd847a01` |
| 2 | `def` | [actualXiCellOscillationConstant](../../../../MeasureAndIntegration/SourceActualXiLogStepDiscretizationNamespacedEdition3.lean/declarations/actualxicelloscillationconstant.md) | 31 | `declaration-track:448d115254c2325a3d0d15e9c1def69f88ac7a7b25b1a119254426720035f454` |
| 3 | `def` | [actualXiLogStepErrorConstant](../../../../MeasureAndIntegration/SourceActualXiLogStepDiscretizationNamespacedEdition3.lean/declarations/actualxilogsteperrorconstant.md) | 35 | `declaration-track:a6db918833cf85e09d3c3ab96717a4c69e73538108514d507d6526b9572ea11b` |
| 4 | `theorem` | [actualIntegerXiTailLogStep_measurable](../../../../MeasureAndIntegration/SourceActualXiLogStepDiscretizationNamespacedEdition3.lean/declarations/actualintegerxitaillogstep-measurable.md) | 39 | `result-track:c23d5b4c4c9dbe206daf686b984ab75455d39f6cac2d820b3b54828f28967a63` |
| 5 | `theorem` | [actualXiLogStep_floor_guards](../../../../MeasureAndIntegration/SourceActualXiLogStepDiscretizationNamespacedEdition3.lean/declarations/actualxilogstep-floor-guards.md) | 45 | `result-track:2c4814b8563d5adccc051f9e88d8a92dbb1b1498f2abcf3f02a407ffb256edec` |
| 6 | `theorem` | [cell_constant_nonneg](../../../../MeasureAndIntegration/SourceActualXiLogStepDiscretizationNamespacedEdition3.lean/declarations/cell-constant-nonneg.md) | 57 | `result-track:767f6c22c072c0bb3e56d8db3ace3b5fc943dead54183a76eddfa9afc7e94582` |
| 7 | `theorem` | [sqrt_exp_half](../../../../MeasureAndIntegration/SourceActualXiLogStepDiscretizationNamespacedEdition3.lean/declarations/sqrt-exp-half.md) | 61 | `result-track:90f0ffeca8e0c0d9e07d6837b14952d38bfccda2d1f21b2735caacdf174ab697` |
| 8 | `theorem` | [actualXiLogStep_error_abs_le](../../../../MeasureAndIntegration/SourceActualXiLogStepDiscretizationNamespacedEdition3.lean/declarations/actualxilogstep-error-abs-le.md) | 72 | `result-track:725065d6644601b7ffd102d5918e0392f39cc8f8631709dbfacedaff21ef5fb8` |
| 9 | `theorem` | [actualXiTailPrimitive_intervalIntegrable](../../../../MeasureAndIntegration/SourceActualXiLogStepDiscretizationNamespacedEdition3.lean/declarations/actualxitailprimitive-intervalintegrable.md) | 103 | `result-track:cc8e7afa2513647840f9dd0782f2e22f14cb9e837b759f1e98016ab4bc25c9f9` |
| 10 | `theorem` | [actualXiLogStep_error_intervalIntegrable](../../../../MeasureAndIntegration/SourceActualXiLogStepDiscretizationNamespacedEdition3.lean/declarations/actualxilogstep-error-intervalintegrable.md) | 108 | `result-track:30ab84ba2db9a899f0ef56db1cf23d53cc58924b773d03a6a7a5de23d7a79bc5` |
| 11 | `theorem` | [actualIntegerXiTailLogStep_intervalIntegrable](../../../../MeasureAndIntegration/SourceActualXiLogStepDiscretizationNamespacedEdition3.lean/declarations/actualintegerxitaillogstep-intervalintegrable.md) | 124 | `result-track:a1ba4f78f7c4d8e266e6c4b09845f36fc9a2ae518202aff6438cbdc4a107f59c` |
| 12 | `theorem` | [error_envelope_integral](../../../../MeasureAndIntegration/SourceActualXiLogStepDiscretizationNamespacedEdition3.lean/declarations/error-envelope-integral.md) | 132 | `result-track:9aefcd0f152068eaf9b2c6821441442cab811c7396c242ae54776bbaaa88d83d` |
| 13 | `theorem` | [actualXiLogStep_error_integral_abs_le](../../../../MeasureAndIntegration/SourceActualXiLogStepDiscretizationNamespacedEdition3.lean/declarations/actualxilogstep-error-integral-abs-le.md) | 151 | `result-track:a37ac1247f66d7c2ff5c1cc5fa08b0b6f93285b1a0d062856e2d693991de7222` |
| 14 | `theorem` | [actualXiLogStep_absolute_average_difference](../../../../MeasureAndIntegration/SourceActualXiLogStepDiscretizationNamespacedEdition3.lean/declarations/actualxilogstep-absolute-average-difference.md) | 178 | `result-track:4911a3849a378b154cdaa437a6cb7673305153b342020df7572b45193c256d28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=43d0ea4609259c7e5777c6cbefabe167d51b9d9868ef4a2063ab8d715001051c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Variantffe8f10cbecb54e2582c6139c8c36b12bd6ed7fef0e2f01c68d095cedf1a7677.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Variantffe8f10cbecb54e2582c6139c8c36b12bd6ed7fef0e2f01c68d095cedf1a7677.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
