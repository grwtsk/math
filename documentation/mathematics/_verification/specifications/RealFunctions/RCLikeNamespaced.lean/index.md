# Verification target: RCLike Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8ab7e1f7a4f5a3000655f2eac84f43d93ae58ff",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variantcb8959e2dc03b94dd41f14c8b65f931e1470567084ebed996fd5181a87cc68f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/RCLikeNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/RCLikeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8ab7e1f7a4f5a3000655f2eac84f43d93ae58ff`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variantcb8959e2dc03b94dd41f14c8b65f931e1470567084ebed996fd5181a87cc68f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variantcb8959e2dc03b94dd41f14c8b65f931e1470567084ebed996fd5181a87cc68f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasFTaylorSeriesUpToOn.hasStrictFDerivAt](../../../../RealFunctions/RCLikeNamespaced.lean/declarations/hasftaylorseriesuptoon-hasstrictfderivat.md) | 40 | `result-track:f8cf8aced726419a326d2ad0f2b6f19caf15ceca1f860421105bafc2e19e66e7` |
| 2 | `theorem` | [ContDiffAt.hasStrictFDerivAt'](../../../../RealFunctions/RCLikeNamespaced.lean/declarations/contdiffat-hasstrictfderivat-source-edition-2.md) | 49 | `result-track:bf7b7a605341cc13ec5141732a4931c159af22c7a41fed7b71983bd0c513da61` |
| 3 | `theorem` | [ContDiffAt.hasStrictDerivAt'](../../../../RealFunctions/RCLikeNamespaced.lean/declarations/contdiffat-hasstrictderivat.md) | 59 | `result-track:587fbd89208d6fa39ff71dc32cd8ad6bf9db6ac05f09ec7bec86bf192109ff11` |
| 4 | `theorem` | [ContDiffAt.hasStrictFDerivAt](../../../../RealFunctions/RCLikeNamespaced.lean/declarations/contdiffat-hasstrictfderivat.md) | 65 | `result-track:8abfbf2be819afb43ccfc2ae0577626b65bba2f56e1c8f483e0d3f53c193f684` |
| 5 | `theorem` | [ContDiffAt.hasStrictDerivAt](../../../../RealFunctions/RCLikeNamespaced.lean/declarations/contdiffat-hasstrictderivat-source-edition-2.md) | 71 | `result-track:b311232489687204dce4233ecef0cc4d752f4bc6ec77b717caff74d747a38887` |
| 6 | `theorem` | [ContDiff.hasStrictFDerivAt](../../../../RealFunctions/RCLikeNamespaced.lean/declarations/contdiff-hasstrictfderivat.md) | 76 | `result-track:e88130f4ebd3511c788811742337f8a209ffbe0d6926abc3380496dcd1a7c45d` |
| 7 | `theorem` | [ContDiff.hasStrictDerivAt](../../../../RealFunctions/RCLikeNamespaced.lean/declarations/contdiff-hasstrictderivat.md) | 81 | `result-track:0358998fdfab984fc84e617cdc0d846be7a89916c8fa687e5eb11679871e059f` |
| 8 | `theorem` | [HasFTaylorSeriesUpToOn.exists_lipschitzOnWith_of_nnnorm_lt](../../../../RealFunctions/RCLikeNamespaced.lean/declarations/hasftaylorseriesuptoon-exists-lipschitzonwith-of-nnnorm-lt.md) | 87 | `result-track:c73193673902a310e593b78d4395d9c77ee88e2ca42d084df4afa1ca366dd672` |
| 9 | `theorem` | [HasFTaylorSeriesUpToOn.exists_lipschitzOnWith](../../../../RealFunctions/RCLikeNamespaced.lean/declarations/hasftaylorseriesuptoon-exists-lipschitzonwith.md) | 105 | `result-track:9b2acc479584a770e9579b2766f5c6b57d193447df6fb7d4d4d97309642c1463` |
| 10 | `theorem` | [ContDiffWithinAt.exists_lipschitzOnWith](../../../../RealFunctions/RCLikeNamespaced.lean/declarations/contdiffwithinat-exists-lipschitzonwith.md) | 114 | `result-track:0d909e781f628ddd05e66205d52dcb0e2ec0e5cc8b2a506bbfe9950ca877a13e` |
| 11 | `theorem` | [ContDiffAt.exists_lipschitzOnWith_of_nnnorm_lt](../../../../RealFunctions/RCLikeNamespaced.lean/declarations/contdiffat-exists-lipschitzonwith-of-nnnorm-lt.md) | 129 | `result-track:1c0bd62bd6ba006aabe75d36e53f674b0ca86a34877c2a0e926a9162a3e24757` |
| 12 | `theorem` | [ContDiffAt.exists_lipschitzOnWith](../../../../RealFunctions/RCLikeNamespaced.lean/declarations/contdiffat-exists-lipschitzonwith.md) | 135 | `result-track:8d8c33d7fd53dd2152045715fbc29c7c3af9131a143a4d20882dd56f8f74f1b6` |
| 13 | `lemma` | [ContDiff.locallyLipschitz](../../../../RealFunctions/RCLikeNamespaced.lean/declarations/contdiff-locallylipschitz.md) | 140 | `result-track:5bcbf2f73b590278af2b8b7f87e8186209740e09347afd9f571d448bfc25586a` |
| 14 | `theorem` | [ContDiff.lipschitzWith_of_hasCompactSupport](../../../../RealFunctions/RCLikeNamespaced.lean/declarations/contdiff-lipschitzwith-of-hascompactsupport.md) | 146 | `result-track:f442984013e9586023e0ee281ac989f42445870b7ee798cb5f6d1673775a4c77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=75d375354787c15cbd76683764e1fc5dd5accc31542299c169e791fce9544756 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variantcb8959e2dc03b94dd41f14c8b65f931e1470567084ebed996fd5181a87cc68f8.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variantcb8959e2dc03b94dd41f14c8b65f931e1470567084ebed996fd5181a87cc68f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
