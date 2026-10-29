# Verification target: Power Series Evaluation Evaluation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfc3bee4641b588a4b5723bff89a5c73eb0832aa",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Evaluation/Variantffc3772ff320ba95ce6ebdb00f02dbcea1a7af23c2de4e57739d4fa583629ee7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfc3bee4641b588a4b5723bff89a5c73eb0832aa`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Evaluation/Variantffc3772ff320ba95ce6ebdb00f02dbcea1a7af23c2de4e57739d4fa583629ee7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Evaluation/Variantffc3772ff320ba95ce6ebdb00f02dbcea1a7af23c2de4e57739d4fa583629ee7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.MvPowerSeries.Evaluation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.PiTopology` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Equiv` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasEval](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/haseval.md) | 66 | `declaration-track:1e3297b1c9941cd092f18a0496eb62e46bd1c105dbf71060dc4d04211f40ad37` |
| 2 | `theorem` | [hasEval_def](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/haseval-def.md) | 68 | `result-track:21216d5d7947f6063fffcca319a31c2b279aec8620c4d5bf4f3aab13b9bedf59` |
| 3 | `theorem` | [hasEval_iff](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/haseval-iff.md) | 70 | `result-track:c32d007d2f82852da7b59e0b8fc3b758a5db9cb8fbea78f7d63b48b1a6605a9c` |
| 4 | `theorem` | [hasEval](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/haseval-source-edition-2.md) | 74 | `result-track:f1ba6fbaeab1aef624e8769b16dd47963f7e631f7e4e69ac0f336c73c415d297` |
| 5 | `theorem` | [HasEval.mono](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/haseval-mono.md) | 77 | `result-track:2d9e0340fddd4570dcb22a3680adc51f30c4448ff4673dfde02e96dedb4d4b46` |
| 6 | `theorem` | [HasEval.zero](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/haseval-zero.md) | 83 | `result-track:ae9ae4c1760634cdc0444ce9370c4b2140991a97ff7243f5e0f41463026ea4e4` |
| 7 | `theorem` | [HasEval.add](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/haseval-add.md) | 86 | `result-track:25ae19f89876e9cbc9a30c3513338640988d084890fb9af96e78c4fefb07d8c5` |
| 8 | `theorem` | [HasEval.mul_left](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/haseval-mul-left.md) | 91 | `result-track:cf5ebe0c0e0d85a3103b6133875272176d19716b25b2e136b774d83c376f1178` |
| 9 | `theorem` | [HasEval.mul_right](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/haseval-mul-right.md) | 96 | `result-track:f13828d2d2056034f3e705cc42bfbb0ead0890b7f9fd3207ba704f524045c05b` |
| 10 | `theorem` | [HasEval.map](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/haseval-map.md) | 102 | `result-track:5050519fcc6f22fc70fae2961fbdb6610dde8179115789e49cc98ed3bb23352a` |
| 11 | `theorem` | [HasEval.X](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/haseval-x.md) | 107 | `result-track:55ace3271af3c7a9ddd03755a19c2292505862085ffc11b853e859f815825503` |
| 12 | `def` | [hasEvalIdeal](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/hasevalideal.md) | 117 | `declaration-track:d8afef3d6c2529dee2ec26253da7004d7c5657a54948766d8eca9319fde37402` |
| 13 | `theorem` | [mem_hasEvalIdeal_iff](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/mem-hasevalideal-iff.md) | 123 | `result-track:e012326a588c892aea8b925765983224de9c15f6e5734b6f7363305104b19605` |
| 14 | `def` | [eval₂](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/eval.md) | 137 | `declaration-track:bc4f845d1972cf4f14ca6ea37748da68e4b315b2921024f8dbaefca343f09864` |
| 15 | `theorem` | [eval₂_coe](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/eval-coe.md) | 141 | `result-track:2f5d56f86db73e7a2233476e7b2014490b49d7f3d779df97c19ba29ebe036f41` |
| 16 | `theorem` | [eval₂_C](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/eval-c.md) | 149 | `result-track:2f9d5909a3cc7450efd728cdef457dfb5403fbe78d138bdda4b4db6c2393f481` |
| 17 | `theorem` | [eval₂_X](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/eval-x.md) | 154 | `result-track:a158332abb617de443f492a8030f283799caf4705acc6e222676d7a78fe78475` |
| 18 | `def` | [eval₂Hom](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/eval-hom.md) | 165 | `declaration-track:8ad64ab4eec9fd3643ebc1592f8d0d1f00516061c81e577272f653c2129704f6` |
| 19 | `theorem` | [coe_eval₂Hom](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/coe-eval-hom.md) | 169 | `result-track:be8d88b3323526f2f95444d5f35d07326d7a2441647668583727c73279ee18d5` |
| 20 | `theorem` | [uniformContinuous_eval₂](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/uniformcontinuous-eval.md) | 176 | `result-track:15256f257fe99b759df738d7bd8ceca68c3b20ed13126b27f3061bf9dadc3d55` |
| 21 | `theorem` | [continuous_eval₂](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/continuous-eval.md) | 180 | `result-track:ec735ec3771fbf724bdc46c8c973f5511cbc465d8eff5f4d80b6e33a3c749149` |
| 22 | `theorem` | [hasSum_eval₂](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/hassum-eval.md) | 184 | `result-track:57c73fdff2dd88b090892ebb589b2d32372235bb88b6ce8195caa3e3cb6df2f8` |
| 23 | `theorem` | [eval₂_eq_tsum](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/eval-eq-tsum.md) | 193 | `result-track:6efe3c0492e9c0dafd6f296d5225cfcb08876cd2b8e27c46c066f9a3fe33e865` |
| 24 | `theorem` | [eval₂_unique](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/eval-unique.md) | 198 | `result-track:e67d4629c797885a249caa308cafb648ac95a3e3c9c051aeceadb3a1242c22b4` |
| 25 | `theorem` | [comp_eval₂](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/comp-eval.md) | 206 | `result-track:dbdc6278ca54e5b7c6e91d6a5389706a777320ade4c2dc0fba4405dc380d4a2f` |
| 26 | `def` | [aeval](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/aeval.md) | 222 | `declaration-track:f729e1dcaf45864ddfeee337e29a63b9119d0b7c150900a3ab2b9d6fa5374c54` |
| 27 | `theorem` | [coe_aeval](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/coe-aeval.md) | 226 | `result-track:f3d228c4ea46a944b1271a6fefa4ff2e118b7a231ef97cd29ca88e1e7a7bbdde` |
| 28 | `theorem` | [continuous_aeval](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/continuous-aeval.md) | 230 | `result-track:9bdbacf0f54ceca6eb0074b8a192179ebc0a09344af7953c79ab5576a55ff345` |
| 29 | `theorem` | [aeval_coe](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/aeval-coe.md) | 235 | `result-track:547712676bbd79e8cd86ad17cc0a37be90ff3dd6987c93f8273b1ecfc26b265d` |
| 30 | `theorem` | [aeval_unique](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/aeval-unique.md) | 239 | `result-track:043a48d6843189ffed0d2a5bc69479b7e3f24151c4ed32e06be5ac6047cb1b35` |
| 31 | `theorem` | [hasSum_aeval](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/hassum-aeval.md) | 243 | `result-track:8197d43a542b0df184a080d6dfdcc80b75ae2541133aabf96cda1d93b364e37a` |
| 32 | `theorem` | [aeval_eq_sum](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/aeval-eq-sum.md) | 248 | `result-track:f3fc4fe9e3bbaad8f98b6451402efc74dcdc2fe04a96a4235395e0a49ee0bf9f` |
| 33 | `theorem` | [comp_aeval](../../../../CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/declarations/comp-aeval.md) | 252 | `result-track:f084852f9ea6fd921123599686f8fc2aa56d8ddf78f91403f9193c5b2ca9d6ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=41926e3bdde43ad26d657aad3b779c283de3c9db00f9ade19db0f34e40ded450 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Evaluation/Variantffc3772ff320ba95ce6ebdb00f02dbcea1a7af23c2de4e57739d4fa583629ee7.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Evaluation/Variantffc3772ff320ba95ce6ebdb00f02dbcea1a7af23c2de4e57739d4fa583629ee7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
