# Verification target: Attempt02 Log Two Lower

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be7b19a6dd834b21d26d36a2105f9ba4975c103b",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt02/Variant2cde4b272b1acad345935e85801dcf25b69d7064304668dd691a7714f15c0636.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/Attempt02LogTwoLower.lean/index.md) · [Full source](../../../../Combinatorics/Attempt02LogTwoLower.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be7b19a6dd834b21d26d36a2105f9ba4975c103b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt02/Variant2cde4b272b1acad345935e85801dcf25b69d7064304668dd691a7714f15c0636.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Attempt02/Variant2cde4b272b1acad345935e85801dcf25b69d7064304668dd691a7714f15c0636.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Prime` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_two_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-two-lower.md) | 13 | `result-track:2b39feb4ff09b45594cd827a8bf11f8ef7c8ca19c50511db69928a2d334021c4` |
| 2 | `theorem` | [log_two_upper](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-two-upper.md) | 18 | `result-track:479b1519c3d61a01067bbde03e12b6a6cfd2b002e69d1b56afce118624d6dd05` |
| 3 | `theorem` | [log_three_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-three-lower.md) | 23 | `result-track:5eab97d3589866ad32127f15c6d9d762d9be35042f47b1e8ab83ab628fff93cf` |
| 4 | `def` | [stieltjesLowerFour](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/stieltjeslowerfour.md) | 29 | `declaration-track:cd60aa0f3c326dfeb4a226eddf161cd0f3486dc80997812d4c3a02d8e9e94bff` |
| 5 | `theorem` | [stieltjesLowerFour_gt_neg_quarter](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/stieltjeslowerfour-gt-neg-quarter.md) | 31 | `result-track:6930a645d2a4d8c8ab2c4866ec69620590936f95c529c2cc14d80fc870dbb531` |
| 6 | `theorem` | [log_3_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-3-lower.md) | 40 | `result-track:1ce4de1c3807605a0a847fd5b52868053f6644d8ad66f6ce50b61c3e22cd1dd5` |
| 7 | `theorem` | [log_5_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-5-lower.md) | 53 | `result-track:187bf1d27b89786d1adffc084f6814231de5a47099b7992dc04e09894455b5b1` |
| 8 | `theorem` | [log_7_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-7-lower.md) | 66 | `result-track:6370ac72626e21eb501c696d44e44989a4392935ab4796ad64d95d05a3c5f48d` |
| 9 | `theorem` | [log_11_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-11-lower.md) | 79 | `result-track:54708c81efb8c6c8bb237837c6bfcb44cfdf995d824441b796a75094edb4848d` |
| 10 | `theorem` | [log_13_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-13-lower.md) | 92 | `result-track:08f34bad18706798c01a74902941c7f5991a9201ce05af63dc81da8d06fbe76d` |
| 11 | `theorem` | [log_17_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-17-lower.md) | 105 | `result-track:422ffea857d7a71fd741967fceffb56bbffa91eed5f921ac94c82225ba41f319` |
| 12 | `theorem` | [log_19_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-19-lower.md) | 118 | `result-track:d260827edd91649e4f039d84d79f2b7aa2f76518017fe3fef51777a68d68ed5f` |
| 13 | `theorem` | [log_23_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-23-lower.md) | 131 | `result-track:a36075748f54d699b95ab8e701f62d50c3885ab21dfa895510f1a4d25a53d591` |
| 14 | `theorem` | [log_29_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-29-lower.md) | 144 | `result-track:856e4a2a9ebf80ad05a66760c5e7fe1b33bb9bab5ee4ca3c5efd75acc58c72d1` |
| 15 | `theorem` | [log_31_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-31-lower.md) | 157 | `result-track:6dbf318ff29b7c150e84dd64ffc846b2e50eae6b7ab373e30df4a5a5400fa309` |
| 16 | `theorem` | [log_37_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-37-lower.md) | 170 | `result-track:b14c51be3b9bbdb3f11077d755358b2b350b56e1a28bf517785174b379fc4174` |
| 17 | `theorem` | [log_41_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-41-lower.md) | 183 | `result-track:42c5cdabf999010dfd6b2fc66d337f9edea514ebd595c93926f510e55643b80e` |
| 18 | `theorem` | [log_43_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-43-lower.md) | 196 | `result-track:d392763024ff81f075bed439609b54419b9cee30c6904d89ac0fec765c121508` |
| 19 | `theorem` | [log_47_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-47-lower.md) | 209 | `result-track:6f746cd215d07ebc284d1da1945c795f1752937b21d987cb3972968e89ff4bd1` |
| 20 | `theorem` | [log_53_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-53-lower.md) | 222 | `result-track:4abff7dad883f72f68cc4f68b92a00f3930dec1e97488fcc69cfd50a1586bada` |
| 21 | `theorem` | [log_59_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-59-lower.md) | 235 | `result-track:2d10f1c7e2c963dc73ab30d0dc9a690cc661c2550320ea32033016917811f0bb` |
| 22 | `theorem` | [log_61_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-61-lower.md) | 248 | `result-track:b4d880b2b0e95c518f07a7ad8571fcab0df1b582142b3473b162970d09906c7a` |
| 23 | `theorem` | [log_67_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-67-lower.md) | 261 | `result-track:55c10d2ea3c0806a2574289fac3dc955a60047a56eafff935bb1f9d13a8e8c9b` |
| 24 | `theorem` | [log_71_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-71-lower.md) | 274 | `result-track:8e3bd61634ad88fdfbeacf24bac9ed0f834659131bb732a05b99699c1de695f7` |
| 25 | `theorem` | [log_73_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-73-lower.md) | 287 | `result-track:926dab73a4af560e59bff3e6ef47199b9eae719f4aee2d3e3178a973c7c640c8` |
| 26 | `theorem` | [log_79_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-79-lower.md) | 300 | `result-track:ee6ec23840a6a704ddad39b01cc8ce34d1debf9f90a1aa21f831a06d492b387f` |
| 27 | `theorem` | [log_83_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-83-lower.md) | 313 | `result-track:14297c6cdf2cee1927f0eb6f689f8e4a09e7a128bfe010fda2abf3ff03aff7e3` |
| 28 | `theorem` | [log_89_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-89-lower.md) | 326 | `result-track:51a348d5445ed7123b364d2b57a43e67e3a9f9edf9ba11a2289ee771f349504b` |
| 29 | `theorem` | [log_97_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/log-97-lower.md) | 339 | `result-track:6fa045dd8c396ef530456775adbaebcd135e277331b1c45c6ae9f1f790ee3f1b` |
| 30 | `def` | [primeInventory](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/primeinventory.md) | 352 | `declaration-track:955a417ca4fa2ffdbd6260761dcaf8000f891fe10bdef429d08803bae289162b` |
| 31 | `def` | [certifiedLogLower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/certifiedloglower.md) | 354 | `declaration-track:21042c41d191ab7f5ef3d4beefc4e6e3263da4d32dab0830a937e3ddf6f333c7` |
| 32 | `def` | [powerCoefficient](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/powercoefficient.md) | 357 | `declaration-track:517e6f5dbe856493122207808567b7feb73cf0152321c259cd1ce67c3572caad` |
| 33 | `def` | [finiteProperPowerMoment](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/finiteproperpowermoment.md) | 359 | `declaration-track:acadb26f0f481ea8b4c3cfcebbe37965589b0a40f2031e08c77dd02d410c6403` |
| 34 | `theorem` | [inventory_primes](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/inventory-primes.md) | 362 | `result-track:941a4376d54962bb357912a6b5fc818ceaaa3e4f389255e5c31cd65226d70747` |
| 35 | `theorem` | [inventory_log_lower](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/inventory-log-lower.md) | 368 | `result-track:4219daae347f38afc74da5bfecf03b172e386618bc33919adbcf528d22b93129` |
| 36 | `theorem` | [finiteProperPowerMoment_gt_nine_quarters](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/finiteproperpowermoment-gt-nine-quarters.md) | 399 | `result-track:aa01108440f0c8d5611bec5bf2b1cf7756eb2ede11872fb137ec8e52b4099d07` |
| 37 | `theorem` | [finiteProperPowerMoment_eq_atoms](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/finiteproperpowermoment-eq-atoms.md) | 418 | `result-track:d25a12d8614d694d37652176b7192dcb90278bd472a1fb96a7e6f531d9047863` |
| 38 | `theorem` | [intercept_positive_of_actual_bridges](../../../../Combinatorics/Attempt02LogTwoLower.lean/declarations/intercept-positive-of-actual-bridges.md) | 430 | `result-track:fb50bca82b9181833f3865b6664b5e0d5db58b94f8efda67d10a818e8de31488` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d089b20d93e75c9f5c09fbc97753f84dc2f7465d4b1800fa6ddb82e2a58d085b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt02/Variant2cde4b272b1acad345935e85801dcf25b69d7064304668dd691a7714f15c0636.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Attempt02/Variant2cde4b272b1acad345935e85801dcf25b69d7064304668dd691a7714f15c0636.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
