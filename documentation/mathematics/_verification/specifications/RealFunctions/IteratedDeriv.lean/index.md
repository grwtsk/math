# Verification target: Iterated Deriv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7f73a17e5e4f46fe2195575119bd45300b53819",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant5cb19ca3047b8878e6ca8ab50473e65e6483b18cfc2b1ae21b3e56ee001286c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/IteratedDeriv.lean/index.md) · [Full source](../../../../RealFunctions/IteratedDeriv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7f73a17e5e4f46fe2195575119bd45300b53819`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant5cb19ca3047b8878e6ca8ab50473e65e6483b18cfc2b1ae21b3e56ee001286c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant5cb19ca3047b8878e6ca8ab50473e65e6483b18cfc2b1ae21b3e56ee001286c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Comp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiffDef` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iteratedDeriv](../../../../RealFunctions/IteratedDeriv.lean/declarations/iteratedderiv.md) | 59 | `declaration-track:c9fc9274fe0fb3b0bd0a271c27c5eddd8233a82c1088327c8ae8b8f7324472a5` |
| 2 | `def` | [iteratedDerivWithin](../../../../RealFunctions/IteratedDeriv.lean/declarations/iteratedderivwithin.md) | 65 | `declaration-track:0b0cf427f06188ee8bf77fe3d986327ff966f8eceec6f2b872cdb65c29a305cc` |
| 3 | `theorem` | [iteratedDerivWithin_univ](../../../../RealFunctions/IteratedDeriv.lean/declarations/iteratedderivwithin-univ.md) | 71 | `result-track:39c199ce708375a218bc503c02ee65730cf17e65a4e35ef1dc16cda94e5f7120` |
| 4 | `theorem` | [iteratedDerivWithin_eq_iteratedFDerivWithin](../../../../RealFunctions/IteratedDeriv.lean/declarations/iteratedderivwithin-eq-iteratedfderivwithin.md) | 79 | `result-track:5460e6c005b0c3bfe6832eabc46c9ceb98adb54c6ce461653ee3a216db0080f1` |
| 5 | `theorem` | [iteratedDerivWithin_eq_equiv_comp](../../../../RealFunctions/IteratedDeriv.lean/declarations/iteratedderivwithin-eq-equiv-comp.md) | 86 | `result-track:79efb18defe02bf444e1cc8f7ddf01c842b4038c9ffcce38ad41ba6150a3ece3` |
| 6 | `theorem` | [iteratedFDerivWithin_eq_equiv_comp](../../../../RealFunctions/IteratedDeriv.lean/declarations/iteratedfderivwithin-eq-equiv-comp.md) | 93 | `result-track:82d27dc4c760b62821c5a754b38ac0d3f801282eb151fd1483b467c23d80665b` |
| 7 | `theorem` | [iteratedFDerivWithin_apply_eq_iteratedDerivWithin_mul_prod](../../../../RealFunctions/IteratedDeriv.lean/declarations/iteratedfderivwithin-apply-eq-iteratedderivwithin-mul-prod.md) | 102 | `result-track:fc54746c770d4dfdcde0f0a5f579d55a25d3b4270f08f5ff02febd516d1944b5` |
| 8 | `theorem` | [norm_iteratedFDerivWithin_eq_norm_iteratedDerivWithin](../../../../RealFunctions/IteratedDeriv.lean/declarations/norm-iteratedfderivwithin-eq-norm-iteratedderivwithin.md) | 109 | `result-track:fa420b6c6746311dc7b3bda391c502981baf6d67a068751bb89d1983680e181d` |
| 9 | `theorem` | [iteratedDerivWithin_zero](../../../../RealFunctions/IteratedDeriv.lean/declarations/iteratedderivwithin-zero.md) | 115 | `result-track:4ac1efe1c0cd8ae3eb210e7033307f842c4e70d98e387a132e323923aee47058` |
| 10 | `theorem` | [iteratedDerivWithin_one](../../../../RealFunctions/IteratedDeriv.lean/declarations/iteratedderivwithin-one.md) | 121 | `result-track:1dd0b588cf4bac51b10138d3c4ce43fb4f504f853efac0626ce662393b07ceb6` |
| 11 | `theorem` | [contDiffOn_of_continuousOn_differentiableOn_deriv](../../../../RealFunctions/IteratedDeriv.lean/declarations/contdiffon-of-continuouson-differentiableon-deriv.md) | 130 | `result-track:154c44ca7b692d78722694a31a55cd01d99c48382a7dd147a33d1afc228c3b80` |
| 12 | `theorem` | [contDiffOn_of_differentiableOn_deriv](../../../../RealFunctions/IteratedDeriv.lean/declarations/contdiffon-of-differentiableon-deriv.md) | 144 | `result-track:11d233018d1f60a8004e60d20299685cd0e90a92844dd96887d81bab95fe48b3` |
| 13 | `theorem` | [ContDiffOn.continuousOn_iteratedDerivWithin](../../../../RealFunctions/IteratedDeriv.lean/declarations/contdiffon-continuouson-iteratedderivwithin.md) | 153 | `result-track:270b08c555ccdaba3e0b2a9c21fea2217c66a6ae096c5a49d5d086913cfaab4b` |
| 14 | `theorem` | [ContDiffWithinAt.differentiableWithinAt_iteratedDerivWithin](../../../../RealFunctions/IteratedDeriv.lean/declarations/contdiffwithinat-differentiablewithinat-iteratedderivwithin.md) | 159 | `result-track:c3844c99689c6fe9eedbe5ccbf2b9887013253b26921bb104eb59f5a851fc848` |
| 15 | `theorem` | [ContDiffOn.differentiableOn_iteratedDerivWithin](../../../../RealFunctions/IteratedDeriv.lean/declarations/contdiffon-differentiableon-iteratedderivwithin.md) | 169 | `result-track:0be4648197d6ce6b45246ecf48951de33d92dc8326ad588869af092d09d88ae0` |
| 16 | `theorem` | [contDiffOn_iff_continuousOn_differentiableOn_deriv](../../../../RealFunctions/IteratedDeriv.lean/declarations/contdiffon-iff-continuouson-differentiableon-deriv.md) | 177 | `result-track:2492f3d54ae40278313f6b3324c4a735646e82c0ce3daa6fdac42e424ba7d601` |
| 17 | `theorem` | [iteratedDerivWithin_succ](../../../../RealFunctions/IteratedDeriv.lean/declarations/iteratedderivwithin-succ.md) | 186 | `result-track:9a3620da47996ef2cf6e5fb04af24579fd011516ceda8722c6b5c8c93b02b03b` |
| 18 | `theorem` | [iteratedDerivWithin_eq_iterate](../../../../RealFunctions/IteratedDeriv.lean/declarations/iteratedderivwithin-eq-iterate.md) | 198 | `result-track:50d3a61f9ed622bbd78f4df6ad248a106397c42708e8395ba742a4cf3aca29b1` |
| 19 | `theorem` | [iteratedDerivWithin_succ'](../../../../RealFunctions/IteratedDeriv.lean/declarations/iteratedderivwithin-succ-source-edition-2.md) | 208 | `result-track:c06b6b0721fd73b0bc0feebabd1e7e33f4f5248010d37c7d04afb6dd5c935a4d` |
| 20 | `theorem` | [iteratedDeriv_eq_iteratedFDeriv](../../../../RealFunctions/IteratedDeriv.lean/declarations/iteratedderiv-eq-iteratedfderiv.md) | 216 | `result-track:17e9913757b24b7e02ae095a8f0eee989d3f037ddd38db14685a93468e62e141` |
| 21 | `theorem` | [iteratedDeriv_eq_equiv_comp](../../../../RealFunctions/IteratedDeriv.lean/declarations/iteratedderiv-eq-equiv-comp.md) | 223 | `result-track:9de2807f80b225e7cb19c3fb8ea6278c8ed7139f27a587fa77459013ebcc7859` |
| 22 | `theorem` | [iteratedFDeriv_eq_equiv_comp](../../../../RealFunctions/IteratedDeriv.lean/declarations/iteratedfderiv-eq-equiv-comp.md) | 230 | `result-track:6328843aeef0d2c42ee4ec8dd8a7cc3984889911f781365fc82f438492ecc6e8` |
| 23 | `theorem` | [iteratedFDeriv_apply_eq_iteratedDeriv_mul_prod](../../../../RealFunctions/IteratedDeriv.lean/declarations/iteratedfderiv-apply-eq-iteratedderiv-mul-prod.md) | 238 | `result-track:a7bc8c6d92ac53f0b40e82e02c91bf916726444698cacd5cfff4268120c631a9` |
| 24 | `theorem` | [norm_iteratedFDeriv_eq_norm_iteratedDeriv](../../../../RealFunctions/IteratedDeriv.lean/declarations/norm-iteratedfderiv-eq-norm-iteratedderiv.md) | 243 | `result-track:09a1de288a9977034c34572d9c6324e9ace9234211d6a8f3ab944693a8719a59` |
| 25 | `theorem` | [iteratedDeriv_zero](../../../../RealFunctions/IteratedDeriv.lean/declarations/iteratedderiv-zero.md) | 249 | `result-track:0741b617474801e45c12e5ad75fcf1052fbbd4d1f6503fadbb32401bc1327642` |
| 26 | `theorem` | [iteratedDeriv_one](../../../../RealFunctions/IteratedDeriv.lean/declarations/iteratedderiv-one.md) | 253 | `result-track:d20f6490652a93b59ab1621a4c6529a15bd20a8da9b0ee38edba8800a118f443` |
| 27 | `theorem` | [contDiff_iff_iteratedDeriv](../../../../RealFunctions/IteratedDeriv.lean/declarations/contdiff-iff-iteratedderiv.md) | 258 | `result-track:7dff7b4eeecb3b65dba20a18a255f84d1d5c93aa4e54d424048c5109f34a5896` |
| 28 | `theorem` | [contDiff_of_differentiable_iteratedDeriv](../../../../RealFunctions/IteratedDeriv.lean/declarations/contdiff-of-differentiable-iteratedderiv.md) | 270 | `result-track:5da3e7d1e03cb2199eb00b34b53e5ef6f6e150594c02ebbae9d56732f44b9f27` |
| 29 | `theorem` | [ContDiff.continuous_iteratedDeriv](../../../../RealFunctions/IteratedDeriv.lean/declarations/contdiff-continuous-iteratedderiv.md) | 275 | `result-track:dbda7a15291578934237b92a5e36abf5044efcb63f5f6ea998496a7d4418aa4c` |
| 30 | `theorem` | [ContDiff.differentiable_iteratedDeriv](../../../../RealFunctions/IteratedDeriv.lean/declarations/contdiff-differentiable-iteratedderiv.md) | 280 | `result-track:ee4988cdc0db667f3d433687b9949f527975312b60bf1d90d6c8e694a5aa50ba` |
| 31 | `theorem` | [iteratedDeriv_succ](../../../../RealFunctions/IteratedDeriv.lean/declarations/iteratedderiv-succ.md) | 287 | `result-track:3b1c0732c45ffd163df18bd703197e980c1f057d07ac5d5a0dc772bce17e7054` |
| 32 | `theorem` | [iteratedDeriv_eq_iterate](../../../../RealFunctions/IteratedDeriv.lean/declarations/iteratedderiv-eq-iterate.md) | 295 | `result-track:fe404aed781576a17d82dd680f5b81873cd95458d3a746e30dbc27f9fc2229cd` |
| 33 | `theorem` | [iteratedDeriv_succ'](../../../../RealFunctions/IteratedDeriv.lean/declarations/iteratedderiv-succ-source-edition-2.md) | 304 | `result-track:c10945b3581a516d6a71389b18060285ca8981e71a55fe8c4a93d2278ac1a1b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af53c511115405857ad2642e0e9492ac9ab9b9bc20ba7e4049ca639ee4787247 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant5cb19ca3047b8878e6ca8ab50473e65e6483b18cfc2b1ae21b3e56ee001286c6.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant5cb19ca3047b8878e6ca8ab50473e65e6483b18cfc2b1ae21b3e56ee001286c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
