# Verification target: Local Invariant Properties Lift Prop Within At Congr Set

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "704caf6b4ef1ea88ecb99bbc90bc38d18b5b9d15",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variantafb909df2d4c538d7c5255e645d8c9dac8113c300bf19b4b8abbb4878b4b1627.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/index.md) · [Full source](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `704caf6b4ef1ea88ecb99bbc90bc38d18b5b9d15`.

Source path: `GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variantafb909df2d4c538d7c5255e645d8c9dac8113c300bf19b4b8abbb4878b4b1627.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocalInvariantProperties/Variantafb909df2d4c538d7c5255e645d8c9dac8113c300bf19b4b8abbb4878b4b1627.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ChartedSpace` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalInvariantProp](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/localinvariantprop.md) | 63 | `declaration-track:68d5543e79d7ece343a5f2abe10f3de58857731d451db73961a5577ae819e2f6` |
| 2 | `theorem` | [congr_set](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/congr-set.md) | 77 | `result-track:746770982e0ce4bcd9fc76c99dbb59bffd0eb280f11649ebf717c57f1e889dd6` |
| 3 | `theorem` | [is_local_nhds](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/is-local-nhds.md) | 82 | `result-track:e7b025381631243187e7202dd0c10793a14c68c65b8db29d68acce072af927d0` |
| 4 | `theorem` | [congr_iff_nhdsWithin](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/congr-iff-nhdswithin.md) | 86 | `result-track:69330ec341c205460e5af1fcf55e6ff963ca6af39f9bcf5bc595ad83f7ea023e` |
| 5 | `theorem` | [congr_nhdsWithin](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/congr-nhdswithin-source-line-91-occurrence-2.md) | 91 | `result-track:e41da1e699c192051e38e6f06a8e5dcdaf6aff111d69acf6e58d2087fafa6edb` |
| 6 | `theorem` | [congr_nhdsWithin'](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/congr-nhdswithin.md) | 95 | `result-track:34a679aa0fabaafc9355ce6fa0c76990ead9120a15dcd4103065ef282a037183` |
| 7 | `theorem` | [congr_iff](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/congr-iff.md) | 99 | `result-track:bdff101781acb68c163baaf4e621b49687c52a360d6ba4e61fd4a659cdc8c591` |
| 8 | `theorem` | [congr](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/congr-source-line-102-occurrence-2.md) | 102 | `result-track:77f4f49f1a2a9dbf30e41cf591245b7b99aea97880fe0232cf7b0d5e4c35374d` |
| 9 | `theorem` | [congr'](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/congr.md) | 105 | `result-track:02ab3e73d503da904d36f1074c003c51dff388a26dd03f52a990e7b389aa2e0a` |
| 10 | `theorem` | [left_invariance](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/left-invariance.md) | 108 | `result-track:9cec0e7df91c8f75f8c639af5eea3ffc60948f84b0bab5fca0d6ebc4ad8b5e09` |
| 11 | `theorem` | [right_invariance](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/right-invariance.md) | 125 | `result-track:ffa737e30532246cbb9d71a230124be991cbb00ef1bf6295bd015c592a9e8c29` |
| 12 | `structure` | [LiftPropWithinAt](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat.md) | 150 | `declaration-track:13d138f61fbe565abc804d855688a086572e5def4479684166a4666feccb75a3` |
| 13 | `def` | [LiftPropOn](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropon.md) | 158 | `declaration-track:5843359b69bc40af79c0654e83f5c7ac2256f5b6cdd533797cc87294ac91b7dc` |
| 14 | `def` | [LiftPropAt](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropat.md) | 164 | `declaration-track:ae5ded06d7ef4d37039f512f01828c00889d9ca02812c62ab901698aa66e07f0` |
| 15 | `theorem` | [liftPropAt_iff](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropat-iff.md) | 167 | `result-track:885b9aa9dcc7b6b5aeaf485f0dec3e3c8f20614840d664f5cb5d906f994d4484` |
| 16 | `def` | [LiftProp](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftprop.md) | 175 | `declaration-track:da1f0c2a2e7d7ad90f4eb8568c6b8e0fd77f8fd0e1cd50f84aa6eb0cad4a06cd` |
| 17 | `theorem` | [liftProp_iff](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftprop-iff.md) | 178 | `result-track:5e1a716145a2a5a630d21263a90b2ed9761daf9856a5fc8acf92d40e664cab7e` |
| 18 | `theorem` | [liftPropWithinAt_univ](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-univ.md) | 193 | `result-track:22a76f7492ae729a2f5ddf68216bcb5925ac72966f3a618e1bf24176d276c316` |
| 19 | `theorem` | [liftPropOn_univ](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropon-univ.md) | 195 | `result-track:2bef8a38874c9ede261033dc55352a82c55f559c191828ab052c70766ccbd6c5` |
| 20 | `theorem` | [liftPropWithinAt_self](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-self.md) | 198 | `result-track:fe4d3cfcbf942482d1726ffb40dadc7d9b3c57e2ac3570946875c8252b13e69b` |
| 21 | `theorem` | [liftPropWithinAt_self_source](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-self-source.md) | 202 | `result-track:de7d796d0f0c35415ef23a589884211e70d8b4f6b6e8bbd2944b345f420e9b12` |
| 22 | `theorem` | [liftPropWithinAt_self_target](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-self-target.md) | 206 | `result-track:50a798b73f20495e61c4f55732ebb9447c4305ea76c5a676f0b4d96a123d778d` |
| 23 | `theorem` | [liftPropWithinAt_iff](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-iff.md) | 219 | `result-track:a0a36e515185e1b5a43b32bd285a8bba2d64e416a233940c5faca4c46e84fe1b` |
| 24 | `theorem` | [liftPropWithinAt_indep_chart_source_aux](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-indep-chart-source-aux.md) | 230 | `result-track:aaa7d515ea97e52786873c26fd3619da7087f46fa6e4b5714300244603be97dd` |
| 25 | `theorem` | [liftPropWithinAt_indep_chart_target_aux2](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-indep-chart-target-aux2.md) | 247 | `result-track:36adb7d1267e5dfc000de7a40e898b85a35014a8f05d8ac5c976cf8117799f7c` |
| 26 | `theorem` | [liftPropWithinAt_indep_chart_target_aux](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-indep-chart-target-aux.md) | 256 | `result-track:dfed34afb242f9a68772adc52e22b81c35168ecd434e6cfe6f19b6bbdfdf72f5` |
| 27 | `theorem` | [liftPropWithinAt_indep_chart_aux](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-indep-chart-aux.md) | 270 | `result-track:9a19d955fd8e94da7bba873daa82b7d90d2a989fb198e336801397050662d162` |
| 28 | `theorem` | [liftPropWithinAt_indep_chart](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-indep-chart.md) | 278 | `result-track:aaca9b874d4ad6fc702450025f98cb2518bf0e4589b76e04d6d4d66e9ef63009` |
| 29 | `theorem` | [liftPropWithinAt_indep_chart_source](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-indep-chart-source.md) | 289 | `result-track:723bbd06b8adf64496f4475852d2e0cb1cf719e31978abad85b861adb6853609` |
| 30 | `theorem` | [liftPropWithinAt_indep_chart_target](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-indep-chart-target.md) | 300 | `result-track:b6c83e4ed72b481320c91063ec298d5e440537c35cb33a63126eabd6c1b4d0e7` |
| 31 | `theorem` | [liftPropWithinAt_indep_chart'](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-indep-chart-source-line-310-occurrence-2.md) | 310 | `result-track:c67035d1b7870adc83a3e48a664ccb7f1d6af1e62783f26a5e6bbcb86b550e31` |
| 32 | `theorem` | [liftPropOn_indep_chart](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropon-indep-chart.md) | 323 | `result-track:3f717ebfe22b3c1f6f09811c1c8143903adae4e88a283f275e337320d93438b2` |
| 33 | `theorem` | [liftPropWithinAt_inter'](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-inter.md) | 330 | `result-track:1d0f68b6bdfdfa53065aada81c54e98eb65b29a3d7448bc12012474faf348911` |
| 34 | `theorem` | [liftPropWithinAt_inter](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-inter-source-line-337-occurrence-2.md) | 337 | `result-track:847bba8614c7787884a5a201cdd128755f66fb2312fa398d9cd0c581034337e8` |
| 35 | `theorem` | [liftPropWithinAt_congr_set](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-congr-set.md) | 341 | `result-track:2ae15cab27ba7989af3c320f2922e25cb7abf1432b0b8488458860975e04ac4b` |
| 36 | `theorem` | [liftPropAt_of_liftPropWithinAt](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropat-of-liftpropwithinat.md) | 348 | `result-track:7b1f4281212bf9cc72b63722a484ca59e515d03fc79ce9fe1282ce4827b4f32b` |
| 37 | `theorem` | [liftPropWithinAt_of_liftPropAt_of_mem_nhds](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-of-liftpropat-of-mem-nhds.md) | 352 | `result-track:f93d7f5aadd3e82025b744b9447d618186b53062e7e68b634d584d5c510abdc4` |
| 38 | `theorem` | [liftPropOn_of_locally_liftPropOn](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropon-of-locally-liftpropon.md) | 356 | `result-track:2199bd188f9e8daa76efa4cc69fb2fbef004f1b7b84140951a4556958e4e23b4` |
| 39 | `theorem` | [liftProp_of_locally_liftPropOn](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftprop-of-locally-liftpropon.md) | 364 | `result-track:a29e75b8d1c81e72d3becedc43e10084dd5da2c2ed2d7d8c322417a8daa9f451` |
| 40 | `theorem` | [liftPropWithinAt_congr_of_eventuallyEq](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-congr-of-eventuallyeq.md) | 370 | `result-track:91467d77cca49734886da4a1b96daabacd193184a2ee9ba2cf97bfe5b5c84b9b` |
| 41 | `theorem` | [liftPropWithinAt_congr_of_eventuallyEq_of_mem](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-congr-of-eventuallyeq-of-mem.md) | 380 | `result-track:7fc19e4692e9c85738cd0aacb3bb7fc18e5075d8248d2a454fd8b819f514c799` |
| 42 | `theorem` | [liftPropWithinAt_congr_iff_of_eventuallyEq](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-congr-iff-of-eventuallyeq.md) | 384 | `result-track:a18a5e3a7925357e158b2afc3684882abc602b925187b859493045f07a2ae28d` |
| 43 | `theorem` | [liftPropWithinAt_congr_iff](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-congr-iff.md) | 389 | `result-track:216df34af032f5512c18811eca8b13c39e4b83089d12c33b67d607f8aca47474` |
| 44 | `theorem` | [liftPropWithinAt_congr_iff_of_mem](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-congr-iff-of-mem.md) | 393 | `result-track:c1ef42e7fe44a72d6f9515a3f337917c51173b3783ffc1a5b2b5dc0a37519149` |
| 45 | `theorem` | [liftPropWithinAt_congr](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-congr.md) | 397 | `result-track:10c0099d45d9b731bb1809b0de21be1a11d57c757f8c4a077729f725eda42d23` |
| 46 | `theorem` | [liftPropWithinAt_congr_of_mem](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-congr-of-mem.md) | 401 | `result-track:ed8dec0d339d1795eb2ad16d5f39083f2c7f1267ce606891724ea53a9ef8ac58` |
| 47 | `theorem` | [liftPropAt_congr_iff_of_eventuallyEq](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropat-congr-iff-of-eventuallyeq.md) | 405 | `result-track:d072d3595a662735d48e7b78e40620ab5dbc3476eba208d7e061ea403427e182` |
| 48 | `theorem` | [liftPropAt_congr_of_eventuallyEq](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropat-congr-of-eventuallyeq.md) | 409 | `result-track:7706293a00a1917d71f3279ce91d7b9f5e29ecf0442807143c2a5f8338919856` |
| 49 | `theorem` | [liftPropOn_congr](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropon-congr.md) | 413 | `result-track:6276dcb5380d6e9eb3edb8a2b040d4b4de4d2bfab061b47f6ab5211faab2c8a4` |
| 50 | `theorem` | [liftPropOn_congr_iff](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropon-congr-iff.md) | 416 | `result-track:4bf00370f5f0c7c065ed8fcd5bfd2dc6cd44bca3d46fc68b1043a4924748536c` |
| 51 | `theorem` | [liftPropWithinAt_mono_of_mem_nhdsWithin](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-mono-of-mem-nhdswithin.md) | 421 | `result-track:163a2dc2d3dfec9d4acc5f4a46097ea2ec06f6694537ad918b582e2591315a6b` |
| 52 | `theorem` | [liftPropWithinAt_mono](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-mono.md) | 432 | `result-track:da9a3d4ee5e60188398c1bc84cf532b6eccdc8979dd582769b128f8b2596e619` |
| 53 | `theorem` | [liftPropWithinAt_of_liftPropAt](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-of-liftpropat.md) | 438 | `result-track:06c74345aa81fc0186edb4b416871e35cd1405f09a770312f9adafeb9e8e919c` |
| 54 | `theorem` | [liftPropOn_mono](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropon-mono.md) | 443 | `result-track:604f8d80c606e22bd67cda8dacdcce1536ba6b413f304cf89752a51b64ed48d9` |
| 55 | `theorem` | [liftPropOn_of_liftProp](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropon-of-liftprop.md) | 447 | `result-track:de4c0ab9639dc82d506007dcc1477805726e3bb561d99cde29f5be81dc2512f7` |
| 56 | `theorem` | [liftPropAt_of_mem_maximalAtlas](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropat-of-mem-maximalatlas.md) | 452 | `result-track:d23644187cd7a10b7cd98e65f57be443fd93bf4176d7901b4f0cd43268005bc6` |
| 57 | `theorem` | [liftPropOn_of_mem_maximalAtlas](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropon-of-mem-maximalatlas.md) | 458 | `result-track:93dfc67514b86638b59c1e8c0e33385b478b6dcc743c08654f10b38d0b644443` |
| 58 | `theorem` | [liftPropAt_symm_of_mem_maximalAtlas](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropat-symm-of-mem-maximalatlas.md) | 464 | `result-track:ce397f3d1a282e6917b0e51b05256c5ab045da613886f95f94e6e63258e139ce` |
| 59 | `theorem` | [liftPropOn_symm_of_mem_maximalAtlas](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropon-symm-of-mem-maximalatlas.md) | 474 | `result-track:92a990df6f028addefb3c1819f5468ef579e408b9ee00580e7e8206afa456052` |
| 60 | `theorem` | [liftPropAt_chart](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropat-chart.md) | 481 | `result-track:d19dbcfd6468828d884831d42ece727f1fa9c87a2b4daa2229d6200a2a8aaff7` |
| 61 | `theorem` | [liftPropOn_chart](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropon-chart.md) | 485 | `result-track:b671c775d3381003a46bf8e623cdc1ef2c05c4498c2c9fd42a952cd1564103f6` |
| 62 | `theorem` | [liftPropAt_chart_symm](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropat-chart-symm.md) | 489 | `result-track:54380a8d1b62f14bf3b02ded75666ee9d1f8d828990ff670598bd3160a01021e` |
| 63 | `theorem` | [liftPropOn_chart_symm](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropon-chart-symm.md) | 493 | `result-track:d98665bcfcfee561201a66d5bc7b667d0dad4eef4c213c45e8eb27151358b12d` |
| 64 | `theorem` | [liftPropAt_of_mem_groupoid](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropat-of-mem-groupoid.md) | 497 | `result-track:b37a077bdb3552d93063ee01bb021e84e0cfbb2711e07cf201f79dc2dc5225f5` |
| 65 | `theorem` | [liftPropOn_of_mem_groupoid](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropon-of-mem-groupoid.md) | 501 | `result-track:fe12fc3576cf69d0fbae174dbc93902bae44b3dcbe824b66fbbd48e65f44f447` |
| 66 | `theorem` | [liftProp_id](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftprop-id.md) | 505 | `result-track:78a1a72cffce73315a6d176b1070396732db60e7c0b0b9938e3209ae77eed923` |
| 67 | `theorem` | [liftPropAt_iff_comp_subtype_val](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropat-iff-comp-subtype-val.md) | 510 | `result-track:37830da00d1a874abdc7942b1c718661409fcdbb864111834663e2c024f525d8` |
| 68 | `theorem` | [liftPropAt_iff_comp_inclusion](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftpropat-iff-comp-inclusion.md) | 519 | `result-track:a88e28ca28ed3c515309319a95e72ef80c0f37c3df53a1c3c180ca28b694e6e5` |
| 69 | `theorem` | [liftProp_subtype_val](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftprop-subtype-val.md) | 530 | `result-track:5924581b69be4f708c50cef02266d1dce96c06e368d8aae5573acdef99981d9f` |
| 70 | `theorem` | [liftProp_inclusion](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/liftprop-inclusion.md) | 538 | `result-track:88a69280d0cb132d4c9d3bcb9f14966b2fe0cf31470d9d3a060463efa61ad20a` |
| 71 | `def` | [IsLocalStructomorphWithinAt](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/islocalstructomorphwithinat.md) | 557 | `declaration-track:f5bdbebd2d22926882c1bd35b99d4127bb05ea8e7d0f9affe90cef124c6560eb` |
| 72 | `theorem` | [isLocalStructomorphWithinAt_localInvariantProp](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/islocalstructomorphwithinat-localinvariantprop.md) | 562 | `result-track:4ddd9315550e1dc69827f74906e71d2d8dcba090d5a80c1ce19656b8b6905038` |
| 73 | `theorem` | [_root_.PartialHomeomorph.isLocalStructomorphWithinAt_iff](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/islocalstructomorphwithinat-iff-source-line-604-occurrence-2.md) | 604 | `result-track:d4ad605d849c22efb6b545e145c2b4a9a424de3cf5e2f36f1f956d35cd114652` |
| 74 | `theorem` | [_root_.PartialHomeomorph.isLocalStructomorphWithinAt_iff'](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/islocalstructomorphwithinat-iff.md) | 626 | `result-track:8c24becc3c228614f0a810d5a111118dcf048f0c628f4a6ecb205597bac7cab2` |
| 75 | `theorem` | [_root_.PartialHomeomorph.isLocalStructomorphWithinAt_source_iff](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/islocalstructomorphwithinat-source-iff.md) | 639 | `result-track:d93b073a56d06fa286e1a3ce3592dc3faaa122da6c3b92d85300f2ae463a0f9f` |
| 76 | `theorem` | [HasGroupoid.comp](../../../../DifferentialGeometry/LocalInvariantPropertiesLiftPropWithinAtCongrSet.lean/declarations/comp.md) | 651 | `result-track:786d6c255d1de9bdd48764216d6ab81deefe01328383ffe745711dd3e5dce3f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ba9d21ab145e374b6b3df2a2b9f26778076c48b3964bb7aea84d207d60a931e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variantafb909df2d4c538d7c5255e645d8c9dac8113c300bf19b4b8abbb4878b4b1627.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LocalInvariantProperties/Variantafb909df2d4c538d7c5255e645d8c9dac8113c300bf19b4b8abbb4878b4b1627.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
