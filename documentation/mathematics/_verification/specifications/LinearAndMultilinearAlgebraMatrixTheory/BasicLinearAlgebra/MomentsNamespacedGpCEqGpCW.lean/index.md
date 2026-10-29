# Verification target: Moments Namespaced Gp CEq Gp CW

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8636a9fd7745206d31f2a08957c332d998e96a6f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variantfaf8271cf150fc88c3b4d708969a66185956c7707aa190a09f52190c6d2eb0f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MomentsNamespacedGpCEqGpCW.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MomentsNamespacedGpCEqGpCW.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8636a9fd7745206d31f2a08957c332d998e96a6f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variantfaf8271cf150fc88c3b4d708969a66185956c7707aa190a09f52190c6d2eb0f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variantfaf8271cf150fc88c3b4d708969a66185956c7707aa190a09f52190c6d2eb0f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.PrimeSide.Concrete` — import line 27; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideB.Traces` — import line 28; external provider; requires a separately pinned dependency.
- `Zeta23.Assembly` — import line 29; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Moments Namespaced Gp CEq Gp CW](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MomentsNamespacedGpCEqGpCW.lean/declarations/root-grwtsk-numbertheory-analyticnumbertheory-zetaandlfunctions-riemannz.md) | 51 | `declaration-track:3c4783d47dcc3c9aac8bed26181a55ce85110c6d0e48f37c0b7bd4f931329d72` |
| 2 | `lemma` | [GpC_eq_GpCW](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MomentsNamespacedGpCEqGpCW.lean/declarations/gpc-eq-gpcw.md) | 54 | `result-track:e696a7cfbf172bd825688ec5016450238b163a49761d1ba09a542d695353307b` |
| 3 | `lemma` | [GentryCW_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MomentsNamespacedGpCEqGpCW.lean/declarations/gentrycw-eq.md) | 56 | `result-track:34b6ef4a48e49066614dc83248fd5cc6028abc2f4adac821d16624a9fd81cc94` |
| 4 | `lemma` | [rtrace_tilde_GpCW](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MomentsNamespacedGpCEqGpCW.lean/declarations/rtrace-tilde-gpcw.md) | 60 | `result-track:4e8ca156019344557ed6dcff29288eb89b095f69df43682069577aa96596d7e5` |
| 5 | `lemma` | [frobSq_tilde_GpCW](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MomentsNamespacedGpCEqGpCW.lean/declarations/frobsq-tilde-gpcw.md) | 67 | `result-track:5ab82c827f0654d4dd77376fc21f15f88ede99d3eb4fffd393eb4e42c3cf6c5e` |
| 6 | `lemma` | [rtrace_hat_GpCW](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MomentsNamespacedGpCEqGpCW.lean/declarations/rtrace-hat-gpcw.md) | 73 | `result-track:87a3b3faf182b30b649ac72deb5afdba3d2864df60a4d198bb238e4aec60b357` |
| 7 | `lemma` | [frobSq_hat_GpCW](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MomentsNamespacedGpCEqGpCW.lean/declarations/frobsq-hat-gpcw.md) | 78 | `result-track:f35e3b7496700599f7b4e03138dc62dde57aa72b13a8298cebb1f609f92162d1` |
| 8 | `def` | [MomentsW](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MomentsNamespacedGpCEqGpCW.lean/declarations/momentsw.md) | 87 | `declaration-track:1ecba39a884a26a04c39a4d8fe16de1eac5ad84c52c16954fa3aae95594d117c` |
| 9 | `lemma` | [coeffMoments_iff_momentsW](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MomentsNamespacedGpCEqGpCW.lean/declarations/coeffmoments-iff-momentsw.md) | 94 | `result-track:e1d8100e076de37af387805c5334a604a086e30a09f081899fdcdb59ac399667` |
| 10 | `theorem` | [momentsW_of_family](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MomentsNamespacedGpCEqGpCW.lean/declarations/momentsw-of-family.md) | 104 | `result-track:74e6247fd0ebfcd122e2fb058f676d28bd0f676e3aa2104aa53de24efdf8cc51` |
| 11 | `theorem` | [coeffMoments_of_family](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MomentsNamespacedGpCEqGpCW.lean/declarations/coeffmoments-of-family.md) | 150 | `result-track:6053b50d5302295bbac1fc2459aab9f28122ab49b947cf505131d9342e6436a6` |
| 12 | `theorem` | [coeffMoments_flat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MomentsNamespacedGpCEqGpCW.lean/declarations/coeffmoments-flat.md) | 167 | `result-track:a8c5ce86e2abbf88919d8550cd35f6ac8c169bc622b0c31340c7ef04a1781cac` |
| 13 | `theorem` | [coeffMoments_atV](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MomentsNamespacedGpCEqGpCW.lean/declarations/coeffmoments-atv.md) | 180 | `result-track:c8186bac978b4d78a4338ea0826d6a60d0983ff30e608b7c1d7b877de79186a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=784028ce74a5e3f63ba2cf24647908678aa851aed35db5fb7b656fcec5870e65 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variantfaf8271cf150fc88c3b4d708969a66185956c7707aa190a09f52190c6d2eb0f5.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variantfaf8271cf150fc88c3b4d708969a66185956c7707aa190a09f52190c6d2eb0f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
