# Verification target: GRWTSK.Analysis.Calculus.CompactProfileNormalization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be1e5042ecc6aefd5ea86e7f63837b441e9846ea",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Calculus/CompactProfileNormalization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be1e5042ecc6aefd5ea86e7f63837b441e9846ea`.

Source path: `GRWTSK/Analysis/Calculus/CompactProfileNormalization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Calculus/CompactProfileNormalization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.SpecialFunctions.SquaredInverseBump`](../../../../GeneralTopology/SquaredInverseBump.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scaledProfile](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/scaledprofile.md) | 27 | `declaration-track:76379bfb24e56fa312ef70445ba2ac35ed7e4938ebd7b9fdcb1504c9fca8686d` |
| 2 | `def` | [dilationOperator](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/dilationoperator.md) | 31 | `declaration-track:18484aef23feff42c4bef6659e8528de2d36a360bfeafebbf338d8ca3c8558fe` |
| 3 | `def` | [normalization](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/normalization.md) | 35 | `declaration-track:1ae3d33aaecab398759028492c5ce4a43028dd7702b8ab33ff461e7d3338bd93` |
| 4 | `theorem` | [integrable_square](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/integrable-square.md) | 38 | `result-track:96270bb9865fd88f62998d9a4365f47580fe98a50607536c7a5be9e16402e14b` |
| 5 | `theorem` | [continuous_second](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/continuous-second.md) | 43 | `result-track:66cb1450d6ebdfb8375a73c5c36eed1257a9d4e3c6d1599313a016900464ad95` |
| 6 | `theorem` | [integral_second_mul_profile](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/integral-second-mul-profile.md) | 49 | `result-track:6b04f40abd6cb2ea4f791caedb052d74da8ed315412be5b1a4dca6d03665a83f` |
| 7 | `theorem` | [deriv_scaledProfile](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/deriv-scaledprofile.md) | 68 | `result-track:ff74b58f8e6f217380d5fc4dc51a8716082cfa3f594b57b621042ad1ea3e970e` |
| 8 | `theorem` | [second_scaledProfile](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/second-scaledprofile.md) | 79 | `result-track:596c637aa5254d85aabe71778a68ada6ea80990eff70b6ea8e6ddf341c674518` |
| 9 | `theorem` | [dilationOperator_eq](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/dilationoperator-eq.md) | 96 | `result-track:365376cda24ea25ef88d9d6455a5ad649770ea8261abd372d148c00910bad4c4` |
| 10 | `theorem` | [scaledProfile_eq_rpow](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/scaledprofile-eq-rpow.md) | 104 | `result-track:723c6c53eda4708793afc29168d58e5de4a1ce199da931fa92d4edd33f3c995d` |
| 11 | `theorem` | [deriv_scaledProfile_eq_rpow](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/deriv-scaledprofile-eq-rpow.md) | 110 | `result-track:5397d99e86c574672481d505c5ae868648fdd83ae58778994145880e74b609fa` |
| 12 | `theorem` | [second_scaledProfile_eq_rpow](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/second-scaledprofile-eq-rpow.md) | 120 | `result-track:6ee5b70bfb9a90506dd6b13d64044e293f64f08bb4c540f09fdf6d5d1a0c84c6` |
| 13 | `theorem` | [dilationOperator_eq_rpow](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/dilationoperator-eq-rpow.md) | 131 | `result-track:3e3602dadf88ba9901bc84eae40c5979e647baad7f40493f72ce9580bd85555f` |
| 14 | `theorem` | [profile_square_integrable](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/profile-square-integrable.md) | 141 | `result-track:2836d8dcfdcebb9d80ee5d95798d00b8be663a396c04effc19d8fe09ef40ae02` |
| 15 | `theorem` | [base_square_integrable](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/base-square-integrable.md) | 150 | `result-track:61279c252599b4dc2b5769f27646c1ba0567b7e259cce6c445a11dfe32ccecc1` |
| 16 | `theorem` | [dilationOperator_square_integrable](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/dilationoperator-square-integrable.md) | 162 | `result-track:4c8d7aa34bb5a961cee401262f96300f2b9225de98a4669f5f3683cddb9164a5` |
| 17 | `theorem` | [dilationOperator_integrable](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/dilationoperator-integrable.md) | 174 | `result-track:3b1092061ef3658a5add979f9d9ed407218614edf8fe96113978e6c3472670ec` |
| 18 | `theorem` | [normalization_expanded](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/normalization-expanded.md) | 187 | `result-track:a36b49a8aaba7b8a386be77116dc6a9d398a7b548fcb5f513fd0fa55cf8fb729` |
| 19 | `theorem` | [normalization_eq](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/normalization-eq.md) | 223 | `result-track:2b91c07f6f649400a2f97edc48a2249ffad2c05eef39b1e4f4e2a6c1d1e236b5` |
| 20 | `theorem` | [tendsto_normalization](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/tendsto-normalization.md) | 233 | `result-track:331baa402e00be3feb05474e9ab54495ace5fd33f0cb4663e69366e447d9b637` |
| 21 | `theorem` | [normalization_uniform_lower_bound](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/normalization-uniform-lower-bound.md) | 255 | `result-track:b5c2e7c2480108e44e71349467e7b6860d7e5e233675619c9ca087f3a60c2c91` |
| 22 | `theorem` | [normalization_pos](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/normalization-pos.md) | 266 | `result-track:bb500a9586ac3e83ca3b18ac591143fb142db2846b35737e24f65d1fbd6458a0` |
| 23 | `theorem` | [normalization_uniform_positive_lower_bound](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/normalization-uniform-positive-lower-bound.md) | 280 | `result-track:c49a5c9ec809e25ad5343003a00f5037d538d85a770ee5d5981ff030bbb68b71` |
| 24 | `def` | [normalizedOperator](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/normalizedoperator.md) | 293 | `declaration-track:ea5f5c8e6fa0c7c938f32b5c3d80b757afff019d18d7de780fb628d62f6ce828` |
| 25 | `theorem` | [normalizedOperator_square_integral](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/normalizedoperator-square-integral.md) | 297 | `result-track:5e4e57e976c4541fee34b6f640527e887521948613a874324d2d540f7ba82839` |
| 26 | `theorem` | [normalizedOperator_integrable](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/normalizedoperator-integrable.md) | 306 | `result-track:e5e6d7d6d9dbd9d737759ae10b4abba783e339cb50eecde4b38a7e9b92fd3825` |
| 27 | `theorem` | [profile_normalization](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/profile-normalization.md) | 315 | `result-track:4edbd36e1df97f8cd8d28a01bab488e33e3ab2597c320b2a4845d854d89203d0` |
| 28 | `theorem` | [profile_normalization_lower_bound](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/profile-normalization-lower-bound.md) | 323 | `result-track:648b13fd3aed1d7e6d6a4ec5c0fd30f6f6e7a21d08492bb9f44fa8cd608f1f8b` |
| 29 | `theorem` | [profile_normalization_pos](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/profile-normalization-pos.md) | 330 | `result-track:a1e2c13e5b2c1b9177d0e7af9dddf5e3d4f82495ba2daac7c280ca7e00f045cb` |
| 30 | `theorem` | [profile_normalization_uniform_positive_lower_bound](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/profile-normalization-uniform-positive-lower-bound.md) | 336 | `result-track:b390f5735adbf30cdbc6c1c7a8ce073a1c67e751a4fe44b019a85313c74fc1ae` |
| 31 | `theorem` | [profile_normalizedOperator_square_integral](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/profile-normalizedoperator-square-integral.md) | 342 | `result-track:c8d786fb7042e7955019e93a674a2a05a65acddcfce217a95711720837c0647d` |
| 32 | `theorem` | [profile_normalization_expanded](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/profile-normalization-expanded.md) | 348 | `result-track:a9b35dfd016d9c2957b31b2f06f2be40f7a3a515a38091cb81a6e993535d54af` |
| 33 | `theorem` | [tendsto_profile_normalization](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/declarations/tendsto-profile-normalization.md) | 358 | `result-track:1e4a152c1caf0927deebc94898c03c70154bc1d3e8d65781527e46bdde3ce34b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0fe67f09bd203b8cba0b5713b98798f1f4799c354cf796d807398118a4821971 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Calculus/CompactProfileNormalization.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/CompactProfileNormalization.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
