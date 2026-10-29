# Verification target: Stopping Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25c9a07faa8890caf333b83750be2ecf7d4bdb48",
  "lexical_observation_count": 139,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Stopping/Variant9c861e299606b510460eca3f71cae201ae2d012f62213d92d37764f1c7995dc3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25c9a07faa8890caf333b83750be2ecf7d4bdb48`.

Source path: `GRWTSK/Analysis/MeasureTheory/Stopping/Variant9c861e299606b510460eca3f71cae201ae2d012f62213d92d37764f1c7995dc3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Stopping/Variant9c861e299606b510460eca3f71cae201ae2d012f62213d92d37764f1c7995dc3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsStoppingTime](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/isstoppingtime.md) | 76 | `declaration-track:e0d37e84abf76ce7fbce27964a4e8fec5ad275e81249bc63554a3db3882d3a2c` |
| 2 | `theorem` | [isStoppingTime_const](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/isstoppingtime-const.md) | 79 | `result-track:6e006f909e7df503de8a8a5ffa6b2f39bed31f64d893d53e7f57389e22e9eeb4` |
| 3 | `theorem` | [IsStoppingTime.measurableSet_le](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/isstoppingtime-measurableset-le.md) | 88 | `result-track:00f1fd7c49608da8f9204873ca4f3e7126a0c3b901a79baaa625e00bfb313b90` |
| 4 | `theorem` | [IsStoppingTime.measurableSet_lt_of_pred](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/isstoppingtime-measurableset-lt-of-pred.md) | 92 | `result-track:803bd1b9687cd4b44ea3f7b62e3007bfaee1f5f6f7d3693d90829e078199a9b8` |
| 5 | `theorem` | [measurableSet_eq_of_countable_range](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-eq-of-countable-range-source-edition-2.md) | 121 | `result-track:33713de45e87249441d3eefdc311fa9ca7497da26ea53bc5b33c993f7eb71e40` |
| 6 | `theorem` | [measurableSet_eq_of_countable](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-eq-of-countable.md) | 140 | `result-track:343d73edccf29351120c5e64e20a4fd215e30acd56c6e44468c686e6cbef84ec` |
| 7 | `theorem` | [measurableSet_lt_of_countable_range](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-lt-of-countable-range-source-edition-2.md) | 144 | `result-track:ff4765b528e6f571c2992d2c6a9dae3e1baeadf6f1cbd1500ddbb855fc7a844f` |
| 8 | `theorem` | [measurableSet_lt_of_countable](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-lt-of-countable.md) | 150 | `result-track:5237740eb9f378aac0629e5866e8f8436f9efb5c936921236f248afb2834f338` |
| 9 | `theorem` | [measurableSet_ge_of_countable_range](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-ge-of-countable-range-source-edition-2.md) | 154 | `result-track:c6b25ab3a9ff38a622354c00f8c292a582e705058cc2179e6581c5e9c2276546` |
| 10 | `theorem` | [measurableSet_ge_of_countable](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-ge-of-countable-source-edition-2.md) | 162 | `result-track:4f7306c40a1a305b994985e1c985fd7ff5b36b3e970e466b2da64075329afcd6` |
| 11 | `theorem` | [IsStoppingTime.measurableSet_gt](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/isstoppingtime-measurableset-gt.md) | 175 | `result-track:1e0b418e688ce8bb4c59646a3ac45e1bda3b89132dae39543126bdd530bd469f` |
| 12 | `theorem` | [IsStoppingTime.measurableSet_lt_of_isLUB](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/isstoppingtime-measurableset-lt-of-islub.md) | 187 | `result-track:65173a0af7814afc27ee985bfbe04abd490468dbedb67a95bfdd7b4e67339fd1` |
| 13 | `theorem` | [IsStoppingTime.measurableSet_lt](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/isstoppingtime-measurableset-lt.md) | 220 | `result-track:fd498f829be9cf09369f62f97153118ec810acfee2e74b516e11eb114eede933` |
| 14 | `theorem` | [IsStoppingTime.measurableSet_ge](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/isstoppingtime-measurableset-ge.md) | 232 | `result-track:0cab526e9d9aecb340852b165b1bd2254a408e463e4e447a689b397b5205d9b8` |
| 15 | `theorem` | [IsStoppingTime.measurableSet_eq](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/isstoppingtime-measurableset-eq.md) | 239 | `result-track:2de524275cf8acd88c25c333b1fed63afdc827876786e7bad6542ab1379b67f4` |
| 16 | `theorem` | [IsStoppingTime.measurableSet_eq_le](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/isstoppingtime-measurableset-eq-le.md) | 246 | `result-track:dbc8290d1df727a5f57dab8d8ec4a1dbf415e41559715dc7a4ada0b4ae5ec612` |
| 17 | `theorem` | [IsStoppingTime.measurableSet_lt_le](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/isstoppingtime-measurableset-lt-le.md) | 250 | `result-track:d221f03a6e27cbbe982acfba7423738bb9e56322775bb24bc0deb1127508556e` |
| 18 | `theorem` | [isStoppingTime_of_measurableSet_eq](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/isstoppingtime-of-measurableset-eq.md) | 260 | `result-track:17fb984264e9710f98d217d80422f2bb0f6fa4b1db45639721886e6674a5f350` |
| 19 | `lemma` | [isStoppingTime_of_measurableSet_lt_of_isRightContinuous'](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/isstoppingtime-of-measurableset-lt-of-isrightcontinuous.md) | 280 | `result-track:34f8382dd3a4b98260b172e2b23925c7a358eac6b4af2c007fef9a69009b91e4` |
| 20 | `lemma` | [isStoppingTime_of_measurableSet_lt_of_isRightContinuous](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/isstoppingtime-of-measurableset-lt-of-isrightcontinuous-source-edition-2.md) | 335 | `result-track:c554bfdf990b59013c8333c0fde38eadbdc7dd3849c75b1ed3da37db70e5ae1d` |
| 21 | `theorem` | [max](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/max.md) | 347 | `result-track:a89c868781359d946bd7e2526b65b44ca2abd5bd5068abd21351ba387d89659f` |
| 22 | `theorem` | [max_const](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/max-const.md) | 354 | `result-track:8911b547cbafb283e64e7e254f160aebf208f297b096aa1584eca927697dd236` |
| 23 | `theorem` | [min](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/min.md) | 358 | `result-track:d2d65b8fcc241f41ec1c1f55db0f2afa3540de3932fbdea7441df028084cff67` |
| 24 | `theorem` | [min_const](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/min-const.md) | 365 | `result-track:df9a02eeb1550a2f3c4e3152a54a9ed45562f5677056718f935e816b6117463e` |
| 25 | `lemma` | [biInf](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/biinf.md) | 369 | `result-track:187a87bfd6c28138ccdb40d6135ca50a376c4dd6720510d28d7e03a1ec6a47fd` |
| 26 | `lemma` | [iInf](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/iinf.md) | 381 | `result-track:8ca946e21e6063df77b2caef90fcf7db848c285cc7e38512e85aaa0ff2decf6e` |
| 27 | `theorem` | [add_const](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/add-const-source-edition-2.md) | 389 | `result-track:c6deaa5649941d24a2f5c19242335243d559d12a15923cd84580efba9e4d090d` |
| 28 | `theorem` | [add_const'](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/add-const.md) | 403 | `result-track:9b3e841458a69286dfa73ce79f40863b53df70f5736082a02d9cd8fe7548460a` |
| 29 | `theorem` | [add](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/add.md) | 417 | `result-track:aa8f4de1b51b36c273770579322c69d9e62982d5ad9fe19c47a5586bd6737696` |
| 30 | `def` | [measurableSpace](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurablespace.md) | 440 | `declaration-track:2f032e25c637c453d8ff496d9729f5b7b89552d5a9833293aa875e3900a6ece4` |
| 31 | `theorem` | [measurableSet](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset.md) | 459 | `result-track:cb31812ee07ef7556ba71d8c2a46b79c15fcf448447a5f0e8946093f905d265d` |
| 32 | `theorem` | [measurableSpace_mono](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurablespace-mono.md) | 464 | `result-track:b94469d416e46caf8047ee31666a9e0b4921042e2c64cd320c714e9c8b770e68` |
| 33 | `theorem` | [measurableSpace_le'](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurablespace-le.md) | 474 | `result-track:8d74125784d0d94699c322a261e852504185c5dd7fd0b5f1284f28123d0f0455` |
| 34 | `theorem` | [measurableSpace_le](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurablespace-le-source-edition-2.md) | 477 | `result-track:f6c09423516dc1fcbcce880f2ee138ddbe7f1d5653205614bab6027a965fa69b` |
| 35 | `theorem` | [measurableSpace_const](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurablespace-const.md) | 481 | `result-track:e72d3484fb66635d938b689ae4751f47d233b7cc93ed02f7d804b69416b0147c` |
| 36 | `theorem` | [measurableSet_inter_eq_iff](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-inter-eq-iff.md) | 496 | `result-track:2a923369d0fd709dd2e8baef2d6e726c55721d6fbd51625c114a21dedc852c2d` |
| 37 | `theorem` | [measurableSpace_le_of_le_const](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurablespace-le-of-le-const.md) | 515 | `result-track:89d785d6cf817dc1f07aaf5f658d0fb627f770c7c04e1ce311c9bfd4ec27581a` |
| 38 | `theorem` | [measurableSpace_le_of_le](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurablespace-le-of-le.md) | 519 | `result-track:8dc220c80e833828b526767e22ae36506ced111b70a08ecc722b4b816471e319` |
| 39 | `theorem` | [le_measurableSpace_of_const_le](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/le-measurablespace-of-const-le.md) | 523 | `result-track:c3c8bf0abb649984fb469eae4a4410fe47980808484903b9ad8af33ab244e0a1` |
| 40 | `instance` | [sigmaFinite_stopping_time](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/sigmafinite-stopping-time.md) | 529 | `declaration-track:bb75c27d9285c206c444fb750375e74a50c6a161fa6e5c9ed6fbc13d2d80f6cb` |
| 41 | `instance` | [sigmaFinite_stopping_time_of_le](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/sigmafinite-stopping-time-of-le.md) | 538 | `declaration-track:e538e8ae6861d9e485fefc78ecd3cf947b1e03b0a4c7661fe51f53318c1816c2` |
| 42 | `theorem` | [measurableSet_le'](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-le.md) | 551 | `result-track:9f4f79377216e01547ba3af5d57fe78c6ff7c9d3f1da63f83da1c3904996c8e6` |
| 43 | `theorem` | [measurableSet_gt'](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-gt.md) | 560 | `result-track:bee970c831c87adf25bc712109d7c8088d0cf1ca7cf0f0607e36796f14ebb75a` |
| 44 | `theorem` | [measurableSet_eq'](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-eq.md) | 566 | `result-track:7f5cc1b96734db748a449a281b90a24c932c158713a7e56b4ce4fd6c6c393871` |
| 45 | `theorem` | [measurableSet_ge'](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-ge.md) | 572 | `result-track:023cc17a7021ab0445abf9fc83c29aab6071bca0f4fdeb9ad33eecba479c6d5b` |
| 46 | `theorem` | [measurableSet_lt'](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-lt.md) | 586 | `result-track:ecfc6b5c46ca5ac02cd9e944601ad13555c9267e6394bdc0432f1bc0aaeecf0c` |
| 47 | `theorem` | [measurableSet_eq_of_countable_range'](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-eq-of-countable-range.md) | 597 | `result-track:1941448d6724d654fcec5010a5d4023b9e8d7c0d283af32db7cd0f81fdb7a204` |
| 48 | `theorem` | [measurableSet_eq_of_countable'](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-eq-of-countable-source-edition-2.md) | 603 | `result-track:e1cd948c02a73636ccad83e7d402562ae0246fa914890cf9aea7bac18dad94c4` |
| 49 | `theorem` | [measurableSet_ge_of_countable_range'](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-ge-of-countable-range.md) | 607 | `result-track:863766eabfe384409a0f18b56ab4c575d984154ae2af6c1fc1f301292cc91963` |
| 50 | `theorem` | [measurableSet_ge_of_countable'](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-ge-of-countable.md) | 621 | `result-track:30ff959c9977ee1b4c67f501f88434b7519d4f16300064436b47aa377724308b` |
| 51 | `theorem` | [measurableSet_lt_of_countable_range'](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-lt-of-countable-range.md) | 625 | `result-track:f6bd3a6acf4009b1a1d1d968c6fed30613bd50827005dff8ce77aadb18fec3e9` |
| 52 | `theorem` | [measurableSet_lt_of_countable'](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-lt-of-countable-source-edition-2.md) | 634 | `result-track:c32ad7adb8572be111b218bda2f17fe1f82ba57d97a17b550749467ec70828b2` |
| 53 | `theorem` | [measurable](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurable.md) | 640 | `result-track:a82b815ba8d6b5570e2a4cf95055a0fb5995d21ed0a3ad96644f5ec32029bb35` |
| 54 | `theorem` | [measurable'](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurable-source-edition-2.md) | 648 | `result-track:f44a7da3aaa143c181d8f27c7f152ccc655573d5e4bc325720acc689e8de52b7` |
| 55 | `theorem` | [measurable_iSup](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurable-isup.md) | 652 | `result-track:617631fb073415e13b2c34907af7022f92ec6b96876522124401e463088abb2c` |
| 56 | `lemma` | [measurableSet_eq_top](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-eq-top-source-edition-2.md) | 656 | `result-track:aa9d2861bf18d557f5e49f58cd2d740dec444688bcffba6f3d54bf1cad3452dc` |
| 57 | `lemma` | [measurableSet_eq_top'](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-eq-top.md) | 661 | `result-track:a71950a0e2dc15b63371415b053bbb9df3a4776e9c9a4603a44efc07d40f5c69` |
| 58 | `theorem` | [measurable_of_le](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurable-of-le.md) | 666 | `result-track:6b08d9206ae7dc3f251d6ab02d0ee29915be62dbcbb8b92c381b87027d424589` |
| 59 | `theorem` | [measurableSpace_min](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurablespace-min.md) | 671 | `result-track:3d61c5bcf84e5c4358241ffef8aaab4ed82830e8856690287c3600db3799a64b` |
| 60 | `theorem` | [measurableSet_min_iff](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-min-iff.md) | 685 | `result-track:bb5426b94597496c7f040a49c294a456fae9c5023078abe04a94989bf9c72013` |
| 61 | `theorem` | [measurableSpace_min_const](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurablespace-min-const.md) | 690 | `result-track:cfb20c0a1553496eb44012982f76022fdad806ff2cc7300bb728b33389008f8e` |
| 62 | `theorem` | [measurableSet_min_const_iff](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-min-const-iff.md) | 694 | `result-track:d09822ea6566c0757c55447c5dc4d021002d4f1ad0efae80908dcc635393a264` |
| 63 | `theorem` | [measurableSet_inter_le](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-inter-le.md) | 699 | `result-track:1a43c46473a08b0efd573cb8a4af1f7b5b7b7777cd1bd05b6263c751574d2767` |
| 64 | `theorem` | [measurableSet_inter_le_iff](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-inter-le-iff.md) | 716 | `result-track:d9dda2d64e17229878564281aeb7c0ff9105b8762d4c1a28451abe67109af91b` |
| 65 | `theorem` | [measurableSet_inter_le_const_iff](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-inter-le-const-iff.md) | 729 | `result-track:394f2fa4be01ca0146fe4932d3042bc759cb99fee064324fb34662c035313f4c` |
| 66 | `theorem` | [measurableSet_le_stopping_time](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-le-stopping-time.md) | 738 | `result-track:be617af313061accb47f3060812a9ce5f20835872d947e084cfcdb6e30f275c4` |
| 67 | `theorem` | [measurableSet_stopping_time_le_min](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-stopping-time-le-min.md) | 752 | `result-track:846579c07fb443feecee888c71e9879576063a6c4d237dd2e432ea18a085e8c4` |
| 68 | `theorem` | [measurableSet_stopping_time_le](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-stopping-time-le.md) | 758 | `result-track:4710364235ef4c42ea3a34e5125be24b0fefbadd78ab09a6f6d210cbe6b0f1df` |
| 69 | `theorem` | [measurableSet_eq_stopping_time_min](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-eq-stopping-time-min.md) | 765 | `result-track:54a9618e372dcc4dca295dc462c3696229d4d299e55c6ae96510f2dcf0617ca2` |
| 70 | `theorem` | [measurableSet_eq_stopping_time](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-eq-stopping-time.md) | 776 | `result-track:d1071d7ecff852f1bbfc6c73f5381fbdd4676718a68c649e14476297452df2f4` |
| 71 | `def` | [stoppedValue](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedvalue.md) | 797 | `declaration-track:08a6030f9cb22fa8519577c37b29659e42e838ef4e7d61d4d209f509dfbfbe4b` |
| 72 | `theorem` | [stoppedValue_const](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedvalue-const.md) | 800 | `result-track:539b484d929a0e28f5f60f8b946c9d122cb894ef41338176f26ae766e2c998d1` |
| 73 | `lemma` | [stoppedValue_comp](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedvalue-comp.md) | 802 | `result-track:fc71d7414672a15aa9cc4e155b04d07fd34e820bce82ef2fd65a166f604fdb45` |
| 74 | `lemma` | [stoppedValue_norm](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedvalue-norm.md) | 805 | `result-track:ba99531ec5c5d679183d0a25d786fe660757c6b1aa924c74ca76ce5e2a23a170` |
| 75 | `lemma` | [stoppedValue_inv](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedvalue-inv.md) | 809 | `result-track:0e85bbc1af9e911019c94192df7b8b9c732eebc0f379d2fc937aedbdd28734d7` |
| 76 | `lemma` | [stoppedValue_mul](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedvalue-mul.md) | 812 | `result-track:12af89db20f8063a481b492849ca6c23fda36703aaf138de613f2eda9f761817` |
| 77 | `lemma` | [stoppedValue_div](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedvalue-div.md) | 816 | `result-track:54ca20acb9056540a4a8c2111d04e90a3ed1e1003c7a64f62dfef39ab1fa2d08` |
| 78 | `lemma` | [stoppedValue_const_smul](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedvalue-const-smul.md) | 819 | `result-track:efdca2c54a4ce65e3968fe368ceae3e62c5df050312b58a4417fa0e288fa41b9` |
| 79 | `lemma` | [stoppedValue_const_bot](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedvalue-const-bot.md) | 822 | `result-track:a27be4bb5dd303f2a1c4a757e95fad6f6683b6ade08e4c4a2fbe39513e654977` |
| 80 | `def` | [stoppedProcess](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedprocess.md) | 833 | `declaration-track:2cbc12dc683ab2b6be0ffc630535a0f9af977653532030c8031a120890cc6042` |
| 81 | `theorem` | [stoppedProcess_eq_stoppedValue](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedprocess-eq-stoppedvalue.md) | 836 | `result-track:ed7b6daa73c6b86d2bb8bd70ae9b7f4e27777bbf355b545434a84c0d304efa4a` |
| 82 | `theorem` | [stoppedProcess_eq_stoppedValue_apply](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedprocess-eq-stoppedvalue-apply.md) | 839 | `result-track:11860dfdede835e4d5df128680fd475931d7c1ce385b7165645dc54be16ed543` |
| 83 | `lemma` | [stoppedProcess_const](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedprocess-const.md) | 842 | `result-track:121301ad2af30a2a0ba958159302bd4035b0d5b5148b87e1baa297cc8fb13ee3` |
| 84 | `lemma` | [stoppedProcess_comp](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedprocess-comp.md) | 845 | `result-track:67cfd0dcdad2b8314bbb778f1459536d8f211ce484293cff80d2a74e9e233bb8` |
| 85 | `lemma` | [stoppedProcess_norm](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedprocess-norm.md) | 848 | `result-track:d285257475e1e17a9b974014902c08756bc2ccaedd76df44dd30eb8279a41e40` |
| 86 | `lemma` | [stoppedProcess_inv](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedprocess-inv.md) | 852 | `result-track:ea1cd80881f6e520dba441976e9d9e90e50978ab0c83e04eb20e2b2a267cd174` |
| 87 | `lemma` | [stoppedProcess_mul](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedprocess-mul.md) | 855 | `result-track:a6914f69c5ad6aa26c91b0543993d0025004f24c2688dd65286e705b461d1559` |
| 88 | `lemma` | [stoppedProcess_div](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedprocess-div.md) | 859 | `result-track:5b2161b6d1b735008ac683f8c5b94f438b5106b7b1f84ed2ba748ffc461a1759` |
| 89 | `lemma` | [stoppedProcess_const_smul](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedprocess-const-smul.md) | 862 | `result-track:84812f6a1a93a37c733b283c2b66d7145c652e1718f6155fb9a466f508109b44` |
| 90 | `lemma` | [stoppedProcess_const_bot](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedprocess-const-bot.md) | 865 | `result-track:bead8ce99f3ef15a719307df583b7b1b67083248ec2c18b71fa43f5fd567fcd8` |
| 91 | `lemma` | [stoppedProcess_const_top](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedprocess-const-top.md) | 869 | `result-track:8d2211fe4d71e646320e4827f4d72fe2b0ec577129d0c00047288eeefa89c75f` |
| 92 | `theorem` | [stoppedValue_stoppedProcess](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedvalue-stoppedprocess.md) | 872 | `result-track:cd305a09af377e420eb13372f1ae6765e4fcaa19fc91c0629f6fa9ddd323956e` |
| 93 | `theorem` | [stoppedValue_stoppedProcess_apply](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedvalue-stoppedprocess-apply.md) | 880 | `result-track:4cad93b457f2fe161c8be1e18caf4c9e0c0ff1ffda3bed45521a44a7ca5d2527` |
| 94 | `theorem` | [stoppedValue_stoppedProcess_ae_eq](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedvalue-stoppedprocess-ae-eq.md) | 884 | `result-track:d93fb81b61299d54647d57607d11d89abf7fd540b0862f92163767b280a674bf` |
| 95 | `theorem` | [stoppedProcess_eq_of_le](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedprocess-eq-of-le.md) | 889 | `result-track:2b2762feb61398c53c0eca8de8847164fed56669be4f0e06eee4a1f92526cd29` |
| 96 | `theorem` | [stoppedProcess_eq_of_ge](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedprocess-eq-of-ge.md) | 892 | `result-track:c9355b45d72609785e49bfda38a584aecd47940dfc63b21509231efd4a2725b3` |
| 97 | `lemma` | [stoppedProcess_indicator_comm](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedprocess-indicator-comm-source-edition-2.md) | 895 | `result-track:bef41427959055b621bc73fa19ad647f7caababe1340feace14c1691d8466fa1` |
| 98 | `lemma` | [stoppedProcess_indicator_comm'](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedprocess-indicator-comm.md) | 900 | `result-track:624ad799303004f0db3d212e21db57a1436bf3ba94731df648643a495d2644ec` |
| 99 | `theorem` | [stoppedProcess_stoppedProcess](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedprocess-stoppedprocess.md) | 906 | `result-track:325f92d86c4ea00422e6c942ef67382a7d3d4d77b93494d14c6c2f3ed7bc1c7e` |
| 100 | `theorem` | [stoppedProcess_stoppedProcess'](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedprocess-stoppedprocess-source-edition-2.md) | 923 | `result-track:db946c032609ee9acab5f0fa216ccf9824cd10b247c4e133d0356db45715f041` |
| 101 | `theorem` | [stoppedProcess_stoppedProcess_of_le_right](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedprocess-stoppedprocess-of-le-right.md) | 927 | `result-track:99ca68af6aa083499aca27349759cca7bb51da64835399150aa2f100ef81075e` |
| 102 | `theorem` | [stoppedProcess_stoppedProcess_of_le_left](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedprocess-stoppedprocess-of-le-left.md) | 930 | `result-track:2f7a3d3050a86f35694a5f1bc5b48e1033a6744e3e561ae17c3a3559e78baee5` |
| 103 | `theorem` | [isStronglyProgressive_min_stopping_time](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/isstronglyprogressive-min-stopping-time.md) | 938 | `result-track:f4ac127c80fd627e3bbb46656f91bfe6d6c2389a0c2c4adcb93ee0ff8fe3259f` |
| 104 | `theorem` | [IsStronglyProgressive.stoppedProcess](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/isstronglyprogressive-stoppedprocess.md) | 987 | `result-track:f638aa74a944b373ad49f83b965031e303c03693d963c1252306a5f058ee85ce` |
| 105 | `theorem` | [IsStronglyProgressive.stronglyAdapted_stoppedProcess](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/isstronglyprogressive-stronglyadapted-stoppedprocess.md) | 1002 | `result-track:2d4a33b059f57193e8411aee1d65d6a0a5da287e2c8a4b5695f056e6cc10b168` |
| 106 | `theorem` | [IsStronglyProgressive.stronglyMeasurable_stoppedProcess](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/isstronglyprogressive-stronglymeasurable-stoppedprocess.md) | 1011 | `result-track:a76812adaf1e46aec1729ca14b27984536c1a6311c2a9ffaee214e3eb3070af8` |
| 107 | `theorem` | [stronglyMeasurable_stoppedValue_of_le](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stronglymeasurable-stoppedvalue-of-le.md) | 1016 | `result-track:a232fb8f4f08e72e396642b539c669ea0ab1d07ac6495365251d1d80cf01bd79` |
| 108 | `lemma` | [measurableSet_preimage_stoppedValue_inter](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurableset-preimage-stoppedvalue-inter.md) | 1028 | `result-track:171164702af86f6022d4a8296f6c6f533be3ec4f3d44e548d79aa1c2f61af2f2` |
| 109 | `theorem` | [measurable_stoppedValue](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/measurable-stoppedvalue.md) | 1044 | `result-track:33661aa2bc3b58f0bb421752cdf1f46a198abd42073cc6ca848c2aeedd1ba0e4` |
| 110 | `theorem` | [stoppedValue_eq_of_mem_finset](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedvalue-eq-of-mem-finset.md) | 1090 | `result-track:58d4d98fd03fede54a4aac57c3cfbd58a71d183ff00dc4792f9fef0f4398b49f` |
| 111 | `theorem` | [stoppedValue_eq'](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedvalue-eq-source-edition-2.md) | 1108 | `result-track:4530a2555fd8fa6f6028410db29f11d993c1a049fc4db13c085bc5ceea2dccc0` |
| 112 | `theorem` | [stoppedProcess_eq_of_mem_finset](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedprocess-eq-of-mem-finset.md) | 1118 | `result-track:ccb5bc9bcf773931a66cbe701d3fe895022096acd369817824332a99fa67e2a1` |
| 113 | `theorem` | [stoppedProcess_eq''](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedprocess-eq-source-edition-3.md) | 1151 | `result-track:6378cb8d916aee196232ab804a3ee12841b19f74262a002335d865f2132e041f` |
| 114 | `theorem` | [memLp_stoppedValue_of_mem_finset](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/memlp-stoppedvalue-of-mem-finset.md) | 1168 | `result-track:93d3f9c32e4d14dd20fb00089be836fe08b78320ad00011d3f3ce50a892179bf` |
| 115 | `theorem` | [memLp_stoppedValue](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/memlp-stoppedvalue.md) | 1179 | `result-track:64bcd2600f8705b065098880080dfb4015b4616745cb351e48ae3a2f3920fc69` |
| 116 | `theorem` | [integrable_stoppedValue_of_mem_finset](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/integrable-stoppedvalue-of-mem-finset.md) | 1188 | `result-track:2e98d1bd1f99dacfe798e3aebbe5e57d1539d6aaea2eacb72590d6c304656e76` |
| 117 | `theorem` | [integrable_stoppedValue](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/integrable-stoppedvalue.md) | 1197 | `result-track:1d1a44288f14e0587920c2af0e012f2a3b3445034f7a3e916fc5454e661f5762` |
| 118 | `theorem` | [memLp_stoppedProcess_of_mem_finset](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/memlp-stoppedprocess-of-mem-finset.md) | 1214 | `result-track:24771592aed5899af029c973176598457d00d5f04bc4273f66c4bc416972cd23` |
| 119 | `theorem` | [memLp_stoppedProcess](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/memlp-stoppedprocess.md) | 1225 | `result-track:f6f0969a6135f898d78980ba65f7eb4b67b4681ca0cb5120d13fa5b272feedf5` |
| 120 | `theorem` | [integrable_stoppedProcess_of_mem_finset](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/integrable-stoppedprocess-of-mem-finset.md) | 1234 | `result-track:33645902465bc80a438c6453af175f02acc45d006bc631b1d3fcc86ffb9b451b` |
| 121 | `theorem` | [integrable_stoppedProcess](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/integrable-stoppedprocess.md) | 1241 | `result-track:aad0771fcb5c3d1a984ae3202818ee98219143a811f5fdc2bbb08b476d60f354` |
| 122 | `theorem` | [StronglyAdapted.stoppedProcess](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stronglyadapted-stoppedprocess.md) | 1261 | `result-track:01fc036897b188139f0c254278267ada22e43329da3270955f9c7a651ce5582e` |
| 123 | `theorem` | [StronglyAdapted.stoppedProcess_of_discrete](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stronglyadapted-stoppedprocess-of-discrete.md) | 1268 | `result-track:66a2e1cfd83d8eb4243a29cc4d5bb0858c79b27798db66fbebc2ac9bccfd4ddb` |
| 124 | `theorem` | [StronglyAdapted.stronglyMeasurable_stoppedProcess](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stronglyadapted-stronglymeasurable-stoppedprocess.md) | 1272 | `result-track:e7ac9c55d7c397ffefa1d33d1e5db5831af7c9fcf582a1aa883b1a64cb9012c1` |
| 125 | `theorem` | [StronglyAdapted.stronglyMeasurable_stoppedProcess_of_discrete](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stronglyadapted-stronglymeasurable-stoppedprocess-of-discrete.md) | 1277 | `result-track:9226b33056485dce587655d4f51a2d88584b316fa9a90b5c8483db142befbf1b` |
| 126 | `theorem` | [stoppedValue_sub_eq_sum](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedvalue-sub-eq-sum.md) | 1290 | `result-track:208644fab2f26fa041bcc0337e383c5f748ee73f6abd07e29b7adff0f9bccbb7` |
| 127 | `theorem` | [stoppedValue_sub_eq_sum'](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedvalue-sub-eq-sum-source-edition-2.md) | 1298 | `result-track:21dae4c88453757c98cf52460ec90d6a037df8660a9794ea0b168fbac3c51ce5` |
| 128 | `theorem` | [stoppedValue_eq](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedvalue-eq.md) | 1320 | `result-track:2dcaed8deba1e3b008182a68baa94b4c7f2bd42c4f50ffbfbb4985dc2dc794cd` |
| 129 | `theorem` | [stoppedProcess_eq](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedprocess-eq-source-edition-2.md) | 1329 | `result-track:079f3ec7b5fe025550b465208f12f239e51bb95cf5abe5042007ff9272ec77e2` |
| 130 | `theorem` | [stoppedProcess_eq'](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedprocess-eq.md) | 1335 | `result-track:015ea0a5b0ea3c9baa1779cee1984cac5c51de9bbaf1a36600b83b881682bd35` |
| 131 | `theorem` | [IsStoppingTime.piecewise_of_le](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/isstoppingtime-piecewise-of-le.md) | 1369 | `result-track:7dcc77d71633f5662ad36b5370aab7a96bea5bb1681e37c02fd8f92dfcc29309` |
| 132 | `theorem` | [isStoppingTime_piecewise_const](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/isstoppingtime-piecewise-const.md) | 1385 | `result-track:47223dc43d5500f21aaba1551de18ecc91c84e873ba4e910f8a4928315a845d8` |
| 133 | `theorem` | [stoppedValue_piecewise_const](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedvalue-piecewise-const.md) | 1390 | `result-track:2c4c778e206739219a942d55e91d51d461260f766d2932ddb162e708ffba0879` |
| 134 | `theorem` | [stoppedValue_piecewise_const'](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/stoppedvalue-piecewise-const-source-edition-2.md) | 1394 | `result-track:a0b3eb0c54dad33afe9a555e0f1e61ea607bda229682c6f7d2ef686cae920e3c` |
| 135 | `theorem` | [condExp_stopping_time_ae_eq_restrict_eq_of_countable_range](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/condexp-stopping-time-ae-eq-restrict-eq-of-countable-range.md) | 1410 | `result-track:47cdf516ecd37efd0407ac5e5cd5cf92c77e1488e1a972e350b4956ccbd1a752` |
| 136 | `theorem` | [condExp_stopping_time_ae_eq_restrict_eq_of_countable](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/condexp-stopping-time-ae-eq-restrict-eq-of-countable.md) | 1419 | `result-track:c46807c92d6ea953dcf0adfa42cdeeaa4c9ce1fa9693e179514a72d3af0f7d38` |
| 137 | `theorem` | [condExp_min_stopping_time_ae_eq_restrict_le_const](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/condexp-min-stopping-time-ae-eq-restrict-le-const.md) | 1425 | `result-track:895af9299b947dadd01046c57224ec09f38b5dde1bdcffc9f5ed3ca113d265ff` |
| 138 | `theorem` | [condExp_stopping_time_ae_eq_restrict_eq](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/condexp-stopping-time-ae-eq-restrict-eq.md) | 1440 | `result-track:093578c24103b8f6b5d34f4d396e835712d07e54943222115bcde7a170eb1f10` |
| 139 | `theorem` | [condExp_min_stopping_time_ae_eq_restrict_le](../../../../ProbabilityTheoryAndStochasticProcesses/StoppingPublic.lean/declarations/condexp-min-stopping-time-ae-eq-restrict-le.md) | 1448 | `result-track:134eeec6f4bab691a4028ce68ab52735da9e1970ce6d06dd0a2c836c6f8a29f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=adcf62b0ce774b2da95d7a373c82c58545c0aa175138bbc6a012d11d8fc7c8e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Stopping/Variant9c861e299606b510460eca3f71cae201ae2d012f62213d92d37764f1c7995dc3.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Stopping/Variant9c861e299606b510460eca3f71cae201ae2d012f62213d92d37764f1c7995dc3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
