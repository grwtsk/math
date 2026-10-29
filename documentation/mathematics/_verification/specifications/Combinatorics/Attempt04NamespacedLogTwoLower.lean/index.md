# Verification target: Attempt04 Namespaced Log Two Lower

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b254449c4d37d30540ffa8827a7f50b6be413f6c",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt04/Variantfe49af9184a6642f7b4aa318773954420eb94ff59e2522a245a6f7edfa11289c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/index.md) · [Full source](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b254449c4d37d30540ffa8827a7f50b6be413f6c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt04/Variantfe49af9184a6642f7b4aa318773954420eb94ff59e2522a245a6f7edfa11289c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Attempt04/Variantfe49af9184a6642f7b4aa318773954420eb94ff59e2522a245a6f7edfa11289c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Prime` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_two_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-two-lower.md) | 21 | `result-track:e111bfb780fcec8fa6aeca9640cc16cbc3375df48e8cb22e5027e9457d4b2d72` |
| 2 | `theorem` | [log_two_fine_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-two-fine-lower.md) | 26 | `result-track:9ca33e1e24f714cb8d330a3646eefcce2cea0d81636c6402f351c3ab5faec018` |
| 3 | `theorem` | [log_two_upper](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-two-upper.md) | 31 | `result-track:58675948112f5065ca5641c35835783aa196e0e714145b28301106b3eeda81d2` |
| 4 | `theorem` | [log_three_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-three-lower.md) | 36 | `result-track:ad0678d4a7b9c3be619ace73b675f889c5f5496f2c65fb19cd52721374cc5a58` |
| 5 | `def` | [stieltjesLowerFour](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/stieltjeslowerfour.md) | 42 | `declaration-track:5c194267af3b421aadbb0d69b8c808b60a8f9dc8bc3b495a0cdbdf8afdd9769f` |
| 6 | `theorem` | [stieltjesLowerFour_gt_neg_quarter](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/stieltjeslowerfour-gt-neg-quarter.md) | 44 | `result-track:a5958180bd8a8b926ebee638a30e034a7c560a22e040ed10ce6d5da1111c736c` |
| 7 | `theorem` | [stieltjesLowerFour_gt_neg_249](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/stieltjeslowerfour-gt-neg-249.md) | 53 | `result-track:b771b594d8eb1ddf135bda1056c55f8906460fb2cfb77b2029960370baa25594` |
| 8 | `theorem` | [log_3_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-3-lower.md) | 62 | `result-track:14d821cda01c6b536eae4d6c1bb88d37eea5bdf40a8f6bacda045bc7be396674` |
| 9 | `theorem` | [log_5_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-5-lower.md) | 75 | `result-track:aaacc22629306ba798304db5dba30a08d41032601c1b4c1b2f716da17b0d9bfd` |
| 10 | `theorem` | [log_7_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-7-lower.md) | 88 | `result-track:de2d9b4e91d9c0525e1c5ae098749187b84a2a0fed505d89508f203dfaf16530` |
| 11 | `theorem` | [log_11_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-11-lower.md) | 101 | `result-track:8d393b41565f5cbe61284a22307f5691716e6b868ea6637539c6d4393c49517a` |
| 12 | `theorem` | [log_13_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-13-lower.md) | 114 | `result-track:122a04d0ba96968c63addd06896d3f8b3be7fc59c5fc4aa505265c245413fc73` |
| 13 | `theorem` | [log_17_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-17-lower.md) | 127 | `result-track:bfe3bbd59bd978bd7d7d9bb5f565e0eac2ef1e86104e7348e0848c0add7b40cc` |
| 14 | `theorem` | [log_19_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-19-lower.md) | 140 | `result-track:607c3a69903486ef039f592de2cea4eff5703822b956e13305c3444febfc6ccc` |
| 15 | `theorem` | [log_23_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-23-lower.md) | 153 | `result-track:13e6cd668302d484f730f97a56571528c1b98ddbbd37487aa5d9896bba68a107` |
| 16 | `theorem` | [log_29_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-29-lower.md) | 166 | `result-track:dc5cab5b10da043dcc6965fecb7bf094a4c179a82f193b647390b05762f80a98` |
| 17 | `theorem` | [log_31_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-31-lower.md) | 179 | `result-track:bc80923dfc6e6a59028aafc24eef9e4e840361ed6ce4f2a92713770bb90b3365` |
| 18 | `theorem` | [log_37_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-37-lower.md) | 192 | `result-track:c97eb87dd55fe5ff27269f4eb1268d1d70c681f66004a4f006cea7a3f7a20312` |
| 19 | `theorem` | [log_41_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-41-lower.md) | 205 | `result-track:cf69707813985da0dd6247baa43031a7dadafb243ff0ea97ed3c0a80d82f3833` |
| 20 | `theorem` | [log_43_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-43-lower.md) | 218 | `result-track:e8467d83373c0ae34f089dacb1decbcc4fd849ef8105e10437e076f884c2072b` |
| 21 | `theorem` | [log_47_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-47-lower.md) | 231 | `result-track:0c7345499864e06ff19660d9af5a8a3e03e587bcb9db2eb1516fd48f1805bc4b` |
| 22 | `theorem` | [log_53_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-53-lower.md) | 244 | `result-track:45b6e4a4967b346f8555ef5d554fcaf47ced6a0f93368f5ce469e20d32515b77` |
| 23 | `theorem` | [log_59_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-59-lower.md) | 257 | `result-track:872a738136954e6ff30bc0dbf6eba90aecf2b3ee08943da431dd0db57d572610` |
| 24 | `theorem` | [log_61_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-61-lower.md) | 270 | `result-track:f6e28cce4ed2fd600aa78edfc12263ced9df519d85fdf713bd473f79428cd3a4` |
| 25 | `theorem` | [log_67_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-67-lower.md) | 283 | `result-track:b1759fb4bfe472844ffebb470c2b0922d0a25d8349103e9df825abb41f45823c` |
| 26 | `theorem` | [log_71_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-71-lower.md) | 296 | `result-track:d7dd8e57d88dd4e730dd10a2a5d3b5934ecf64a5e6013b1f251f4e2195c2dc75` |
| 27 | `theorem` | [log_73_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-73-lower.md) | 309 | `result-track:b5624e2f5d4f413d29c0ae1ea6663e46007e4437a0635c0210b91288dd566f9b` |
| 28 | `theorem` | [log_79_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-79-lower.md) | 322 | `result-track:06ed0286781790a638c193a6325d4db974ca37e28df6a6d998949eaf6bc6369d` |
| 29 | `theorem` | [log_83_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-83-lower.md) | 335 | `result-track:92b84a1c9040850fde88938ab9d42c3e8b06fddd8b8865be1200e8ea14cf202b` |
| 30 | `theorem` | [log_89_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-89-lower.md) | 348 | `result-track:f021027a370d1d2c003e80b599f5f1dd5ce1a8529eb5262e64ba074797ead9aa` |
| 31 | `theorem` | [log_97_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/log-97-lower.md) | 361 | `result-track:e71d8ba5df8a27d3b2872193d7d17b382804b7778d04d9ae9d807c87dfaf674d` |
| 32 | `def` | [primeInventory](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/primeinventory.md) | 374 | `declaration-track:ac9a1d1ef4d7513e934b17729a3d0fc0b6b384580397b898faedf2adda4d39b2` |
| 33 | `def` | [certifiedLogLower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/certifiedloglower.md) | 376 | `declaration-track:30493f4c824e6d7bdfab0b9e1701332e4439ba95fbf9d901b9cd2acc45a7bc45` |
| 34 | `def` | [powerCoefficient](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/powercoefficient.md) | 379 | `declaration-track:d40fd2dc16ec03ee506e1c9b544b4370dc88919a01e574745ec8b8544e566621` |
| 35 | `def` | [finiteProperPowerMoment](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/finiteproperpowermoment.md) | 381 | `declaration-track:af7526a23ee510ba569aa1dcbbfd21d4eb9433206efc9bff21f79e791ce6d2cb` |
| 36 | `theorem` | [inventory_primes](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/inventory-primes.md) | 384 | `result-track:fa0afeef39137445d473befe5fd3feacaa6021e9ab8883872229f813ec9d048e` |
| 37 | `theorem` | [inventory_log_lower](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/inventory-log-lower.md) | 390 | `result-track:c9e1c6ffab0c1c2ac6eb90fe7df1ee52bc085e505738fa9285342cb47d219dd5` |
| 38 | `theorem` | [finiteProperPowerMoment_gt_nine_quarters](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/finiteproperpowermoment-gt-nine-quarters.md) | 471 | `result-track:d24aa1c1f65b29724051c588903bba24ba8344526231817c6f877ea926064a42` |
| 39 | `theorem` | [finiteProperPowerMoment_eq_atoms](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/finiteproperpowermoment-eq-atoms.md) | 490 | `result-track:49413c8eea662d5d3cf487ff819527b2ed82c4e259cde29ac0995a3e202dd867` |
| 40 | `theorem` | [intercept_positive_of_actual_bridges](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/intercept-positive-of-actual-bridges.md) | 502 | `result-track:c07c0d1fa3bae1474b5beea0cc3bad3f2bf4326d70409dcbc278876ca5c4e674` |
| 41 | `theorem` | [intercept_gt_one_five_hundred_of_actual_bridges](../../../../Combinatorics/Attempt04NamespacedLogTwoLower.lean/declarations/intercept-gt-one-five-hundred-of-actual-bridges.md) | 511 | `result-track:8879091723df7e83d56ed7366deb0d83ee7871000a803a994a718a597d6a7a71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=58a5483908eb723e945522433d95f29f406f844f75d6d026720883eff2a79f38 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt04/Variantfe49af9184a6642f7b4aa318773954420eb94ff59e2522a245a6f7edfa11289c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Attempt04/Variantfe49af9184a6642f7b4aa318773954420eb94ff59e2522a245a6f7edfa11289c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
