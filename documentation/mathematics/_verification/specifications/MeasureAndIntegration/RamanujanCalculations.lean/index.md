# Verification target: Ramanujan Calculations

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "453e830095347a4b4868e31bd20aa3dede73817f",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variant5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/RamanujanCalculations.lean/index.md) · [Full source](../../../../MeasureAndIntegration/RamanujanCalculations.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `453e830095347a4b4868e31bd20aa3dede73817f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variant5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variant5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `PrimeNumberTheoremAnd.Defs` — import line 1; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto` — import line 2; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.ChebyshevTheta` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [styleVal](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/styleval.md) | 9 | `declaration-track:40e876291ead285c863cbcfb8ff933048a80379f4c59e48d9e8d3ce1f1bff2cd` |
| 2 | `theorem` | [styleVal_bound](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/styleval-bound.md) | 15 | `result-track:56fad2391ef2d9480b8b00ffd665186ec95cbdea26c898df1226f3cd004b05dd` |
| 3 | `theorem` | [style_eq](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/style-eq.md) | 27 | `result-track:d2990ba7641324d7690d534a7b952217e412adcc6e4192a89318c1fde37e6bf1` |
| 4 | `lemma` | [rpow_652_split](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/rpow-652-split.md) | 45 | `result-track:e5be2fd9ab905a25699fc57e6bdfe1f0ed8058f8bd064ee9ced3034689a420e1` |
| 5 | `lemma` | [sqrt_ratio_5573412](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/sqrt-ratio-5573412.md) | 49 | `result-track:3b03a7c6209e339456bcaebdf0bd9b6aaac8e4d3a7be74848048ee65bfaa19c8` |
| 6 | `theorem` | [not_mem_Ico_of_ge_exp3000](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/not-mem-ico-of-ge-exp3000.md) | 54 | `result-track:95e8e9818967f63d453c1c33d3459e9ffdbaceade606b183e40357e3d606258e` |
| 7 | `theorem` | [styleVal_bound_3914_1311](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/styleval-bound-3914-1311.md) | 59 | `result-track:dab6ef38358efd6700dfe033454b50a9edaa588f4d5ccb6e81c01c3217b2766f` |
| 8 | `theorem` | [styleVal_bound_3870_1800](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/styleval-bound-3870-1800.md) | 63 | `result-track:5f7c6bea829547f0f4cb958e3b7abf3783462f72b1d67bacc34f5415a2860260` |
| 9 | `theorem` | [styleVal_bound_3915_13042_div_10](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/styleval-bound-3915-13042-div-10.md) | 67 | `result-track:940c0ee1defd1d04cf8d0ff21a187e8069fd6a0106fa83977b2320cded632a1c` |
| 10 | `theorem` | [tail_small](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/tail-small.md) | 72 | `result-track:e2410378bcda9f4474db1a49b2d07f47baa9f6f9070e6755449691fa65f72f59` |
| 11 | `theorem` | [exp_3914_poly_small](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/exp-3914-poly-small.md) | 79 | `result-track:e839a632af8ad5bc53e15cff7939abdba84f39a99607f5dd48e93685d4f4c56c` |
| 12 | `theorem` | [exp_1169_small](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/exp-1169-small.md) | 84 | `result-track:9f574be0438013c18959ad8ffd752e2d4e1da85e4201305857d8cfa5a50a3a65` |
| 13 | `theorem` | [high_branch_aux](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/high-branch-aux.md) | 90 | `result-track:8134ded299f1f7608a48a83397fd4292913ca5083a8c59df6d861855e145d34b` |
| 14 | `theorem` | [branch3_aux](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/branch3-aux.md) | 136 | `result-track:e9a98c5ab695942ac0a6b9be78cae16824ed280624b8b18d983a9c92c2dcc9b3` |
| 15 | `lemma` | [integral_Icc_split](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/integral-icc-split.md) | 180 | `result-track:2e40d676d2065fee07df8c68949f81a19961e5c03e50b083b16da44a5b9573ee` |
| 16 | `theorem` | [exp_neg44_small](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/exp-neg44-small.md) | 203 | `result-track:3be7ab757df443e933125066ea2d6274efbb3e9f84aa04b3f31e5dd6419d2da9` |
| 17 | `theorem` | [exp_neg1979_small](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/exp-neg1979-small.md) | 208 | `result-track:728205577318ecc327571d8e93f2686c21b2c68619e3e8d15b1a02fffdf249a7` |
| 18 | `theorem` | [inv_log2_pow8_le_1000](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/inv-log2-pow8-le-1000.md) | 215 | `result-track:6d4f7c678cde290d7062147963d1065f46bce0c12c4cf6c9d0aba51bb063cf07` |
| 19 | `theorem` | [low_contrib_le_three_tenths](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/low-contrib-le-three-tenths.md) | 224 | `result-track:472f0601b734b1a751c03650993c6e878ee6fa2bf61bc6b5d77b7f01df06634a` |
| 20 | `theorem` | [sqrt_exp_3870](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/sqrt-exp-3870.md) | 289 | `result-track:be601907d86c065fa6a2403091c4d9e695be6dfb7b8a1654848e254c6153f4ed` |
| 21 | `theorem` | [low_contrib_raw_le_three_tenths](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/low-contrib-raw-le-three-tenths.md) | 293 | `result-track:192782250d2b455dde66e102b888433e9aaeebc36cfbe0fcccf93ee3c1eca3f4` |
| 22 | `theorem` | [exp_23_gt_4e9](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/exp-23-gt-4e9.md) | 324 | `result-track:a2270ddd60c75fd04c86065d67df7a7c9d57aaefd09dc72f09df03b41ef3a027` |
| 23 | `theorem` | [exp_8_lt_3914](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/exp-8-lt-3914.md) | 328 | `result-track:a6e64215e2c12a38b51e8da4a4f417b39448261e812703d93214410aad8849ca` |
| 24 | `lemma` | [Li_eq_sub_add_integral](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/li-eq-sub-add-integral.md) | 333 | `result-track:ce30b3b944ad21a1889f9ccc7a0e9ddbbf9e2756a5c94cf15f6083fc5dd25227` |
| 25 | `theorem` | [pi_error_identity](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/pi-error-identity.md) | 372 | `result-track:ee5bcc5d3ee35a38cacccc647c4ac80eac1a5e4b3da5673fb2b882a364d28001` |
| 26 | `theorem` | [integrable_theta](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/integrable-theta.md) | 410 | `result-track:031406244fded2a23288f1783d1e637c60ff6cb6e93c8b953afb4284361cffd3` |
| 27 | `theorem` | [pi_upper](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/pi-upper.md) | 434 | `result-track:ecb9681494943e37cfb1bccc365749de6cf35234b70eaee1067e5529643beb0b` |
| 28 | `theorem` | [pi_lower](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/pi-lower.md) | 476 | `result-track:4734c7f03ad7a5ada607a461d20f4d4afa7ae9b00c2807ff1529693b0e46528e` |
| 29 | `theorem` | [log_7_IBP](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/log-7-ibp.md) | 538 | `result-track:d4011f9958dd1fc854f07cd5bf3281fd55d567037905c38bf135259fad2b7ff5` |
| 30 | `theorem` | [log_8_bound](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/log-8-bound.md) | 589 | `result-track:3a48cc825f9ddcdd1b591678d08c7f837d28589e595f25dc93c9bb09ee192100` |
| 31 | `theorem` | [log_7_int_bound](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/log-7-int-bound.md) | 677 | `result-track:9d082be0eeef779c2ec4f9e5b617a8510e88ceb2cc97a82a453992677ee78b68` |
| 32 | `theorem` | [a_exp_upper_of](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/a-exp-upper-of.md) | 683 | `result-track:f2a594c06ce03dd1eb46fbbc947f8df6ab81464d657684e76bc0efd455c8172c` |
| 33 | `theorem` | [sqrt_exp_3914](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/sqrt-exp-3914.md) | 711 | `result-track:b328809706647f0ea0ced7b70b948c000226fcc14425a6a5e98bf7cb8f16a8d5` |
| 34 | `theorem` | [B_le_small_of](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/b-le-small-of.md) | 715 | `result-track:250aa11a7e10a5dd9faee055cb52806eb994df2fe3af0b6fe175b6a901ca2589` |
| 35 | `theorem` | [C3_le_one_of](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/c3-le-one-of.md) | 733 | `result-track:0a22bdb2f09976a620d7c36a6f864f652292cb6cac825c9f2d53c5cebcb925a6` |
| 36 | `theorem` | [C1_le_one_of](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/c1-le-one-of.md) | 761 | `result-track:3575a47768722926deb42c5154affbecf4636253528d4b0320af45f5a48e0d00` |
| 37 | `theorem` | [m_upper_from_bounds](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/m-upper-from-bounds.md) | 930 | `result-track:6a82e72f5320c1ac6d36d6f0d499ee055b15117f9e9377c34654dec476800138` |
| 38 | `theorem` | [M_nonneg_from_bounds](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/m-nonneg-from-bounds.md) | 939 | `result-track:04e379146043d0271b9d96e26d2ed3131f70aeff60daacf8b36e7cafaef57b69` |
| 39 | `theorem` | [M_upper_from_bounds](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/m-upper-from-bounds-source-edition-2.md) | 948 | `result-track:a3725e140066dd789864350faf08eba9bbd0e28a3b8f69aa1364e04667ced38e` |
| 40 | `theorem` | [m_lower_from_bounds](../../../../MeasureAndIntegration/RamanujanCalculations.lean/declarations/m-lower-from-bounds.md) | 959 | `result-track:c9dcffe95ffeb2895d9cacbade2767a47cf0c61919c66cd5f4553b3147b11cea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7783571684cd65a36929af6b542dca136968ac4ed0c58504534e91db786bb59d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variant5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variant5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
