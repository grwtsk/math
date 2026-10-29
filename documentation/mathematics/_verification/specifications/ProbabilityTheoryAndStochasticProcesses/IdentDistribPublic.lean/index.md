# Verification target: Ident Distrib Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b7e88d48394bd8d97462a995106752a1041c46d",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantdadbcbe5739a97cc3f3643ba2a37a4404a5f8c6bbdd7e276ecfbde52f55191f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b7e88d48394bd8d97462a995106752a1041c46d`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantdadbcbe5739a97cc3f3643ba2a37a4404a5f8c6bbdd7e276ecfbde52f55191f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantdadbcbe5739a97cc3f3643ba2a37a4404a5f8c6bbdd7e276ecfbde52f55191f5.lean.json)

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
| 1 | `structure` | [IdentDistrib](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/identdistrib.md) | 71 | `declaration-track:b067dd093863291d3518fbf1629325317e2e4fb41831da61f32d1d1b249bbff4` |
| 2 | `theorem` | [refl](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/refl.md) | 84 | `result-track:3d90e4d4c8b7fd6a8877facf143495c7e8583a8a83684a5e8390ab512fa98b20` |
| 3 | `theorem` | [symm](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/symm.md) | 89 | `result-track:097e356dff65cfea3bf3064e539c60fddfe8d0b46dcf9b8411cd219cc8aed148` |
| 4 | `theorem` | [trans](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/trans.md) | 94 | `result-track:3dead00c3d2cedf227318ce4ff1c5a2256f456bbcd9fd3428e18a5a1b6e20eab` |
| 5 | `theorem` | [comp_of_aemeasurable](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/comp-of-aemeasurable.md) | 100 | `result-track:2db190912d7a85b98dc53ed74d4e43acaf304d6a376c04694826ddeedbb531c3` |
| 6 | `theorem` | [comp](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/comp.md) | 109 | `result-track:6202a2da41341c4fe12025e7f5f76dfce57f9bb2827ca1fd7c916b5c9b166df2` |
| 7 | `theorem` | [of_ae_eq](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/of-ae-eq.md) | 113 | `result-track:f1386b6de24c0ce933ff8c404ab2372fd58079d696d3d11753ede8b410ad341a` |
| 8 | `lemma` | [_root_.MeasureTheory.AEMeasurable.identDistrib_mk](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/root-measuretheory-aemeasurable-identdistrib-mk.md) | 119 | `result-track:cfc41bc47c0faa68e60f4565d09ce02c8d5ded511a91f640fc2cf69f74d2ba2f` |
| 9 | `lemma` | [_root_.MeasureTheory.AEStronglyMeasurable.identDistrib_mk](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/root-measuretheory-aestronglymeasurable-identdistrib-mk.md) | 123 | `result-track:affe15034d1b6830795de95bd8953321e32d5cccb0ab3de82f23aaabe935d650` |
| 10 | `theorem` | [measure_mem_eq](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/measure-mem-eq.md) | 128 | `result-track:a95f0c986d2adc786df9b49b7d8f625364001b70f1d1d578f6ff836e579927aa` |
| 11 | `theorem` | [ae_snd](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/ae-snd.md) | 135 | `result-track:19082c5287e02944103283501fc513a1eeaa41ce727ed90e93a11a9b0cddfbc4` |
| 12 | `theorem` | [ae_mem_snd](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/ae-mem-snd.md) | 141 | `result-track:3dad32aebb83363ca2bac58cf4e2b8e8363a1b79f12491486cf7d8596fad7843` |
| 13 | `theorem` | [_root_.ProbabilityTheory.HasLaw.identDistrib](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/root-probabilitytheory-haslaw-identdistrib.md) | 145 | `result-track:e7dccb8a1640eebde0f4e29b7a88a4733d766d59ec41a068328aafe7374a29c6` |
| 14 | `theorem` | [hasLaw](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/haslaw.md) | 149 | `result-track:7610d18ed080d01092f45b6b7ede6706ebc59434a8fde036955e156db61c6622` |
| 15 | `theorem` | [aestronglyMeasurable_fst](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/aestronglymeasurable-fst.md) | 155 | `result-track:9a691748138239591a826ac3718af33c8c4b7a857419d8b0eaa2edc965216ad5` |
| 16 | `theorem` | [aestronglyMeasurable_snd](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/aestronglymeasurable-snd.md) | 161 | `result-track:a9c4feb92ac2732ea6c6973022701472b9fa87860b1b3e56b839fb85cdf862e4` |
| 17 | `theorem` | [aestronglyMeasurable_iff](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/aestronglymeasurable-iff.md) | 169 | `result-track:13fab7269ea43bdd8f9e2434bc27cc39fdd895755548bb87501596da18365247` |
| 18 | `theorem` | [essSup_eq](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/esssup-eq.md) | 173 | `result-track:456352edb877b4ab260c81489cda9e2a7db331e67f24fc546a2024b58614eae3` |
| 19 | `theorem` | [lintegral_eq](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/lintegral-eq.md) | 179 | `result-track:dd8c9687b3438db25cdfff20bc6be251851c3ae01bbfab17166d47f72498d36d` |
| 20 | `theorem` | [integral_eq](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/integral-eq.md) | 185 | `result-track:03a041af0e619cc51ecd0a382973d532edd47d27f3d4438488329369fc6fd5ad` |
| 21 | `theorem` | [eLpNorm_eq](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/elpnorm-eq.md) | 203 | `result-track:e5eae0168114872b912e065eb4d867edf51ebebc682141773f0bcd31e97bc739` |
| 22 | `theorem` | [memLp_snd](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/memlp-snd.md) | 224 | `result-track:33358ab9789fc76caac319f3e6f67f7b01ba6c6054ab18b36a448ffa9f4dbd0c` |
| 23 | `theorem` | [memLp_iff](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/memlp-iff.md) | 230 | `result-track:b9bf5ee31d86608a072958e418e7ef9834473d6406500bf3d9a7bbf424583bce` |
| 24 | `theorem` | [integrable_snd](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/integrable-snd.md) | 234 | `result-track:25f1e4a7c198c64286a32be61c82d8786acea1048d407b6661c0059fbea448a5` |
| 25 | `theorem` | [integrable_iff](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/integrable-iff.md) | 239 | `result-track:34baa2d389481cc9c2e6c72af555cdf59aac91474315359f7f006f34c13af202` |
| 26 | `theorem` | [norm](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/norm.md) | 243 | `result-track:4de5c32af21eca958b3d94dcfacf4a98a7c7002177e33c808016e73cd7bcb50a` |
| 27 | `theorem` | [nnnorm](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/nnnorm.md) | 247 | `result-track:0709380ba2be56ad8dafc00052a4da3b809f1f9e1867e8a319ca8b06892b7082` |
| 28 | `theorem` | [pow](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/pow.md) | 252 | `result-track:24f472fcc51f7207bb35ef8f354595459d729f7b636dc710db4802d0a989ba5f` |
| 29 | `theorem` | [sq](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/sq.md) | 256 | `result-track:12d5a354138b20ec4c13a56c824df4c5d7bc4145652562e64c23ce85d27c306d` |
| 30 | `theorem` | [coe_nnreal_ennreal](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/coe-nnreal-ennreal.md) | 260 | `result-track:089900478d3973e299a15b4f366d3f0fb661d041c85045be2d9fe5c2a7c89352` |
| 31 | `theorem` | [mul_const](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/mul-const.md) | 265 | `result-track:1780cf68c5f8388806ddf4e2d2957db560f4564bf0811a57255ab7ecd032a5de` |
| 32 | `theorem` | [const_mul](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/const-mul.md) | 270 | `result-track:d3af73f7730d65e3ad462bb6de29427a89396c10b8a56e7db5d7b6cb14b7cca2` |
| 33 | `theorem` | [div_const](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/div-const.md) | 275 | `result-track:fe9c0d30f32a44d445e9934ef94258734a6d6bfb90ae8bdd147055fd4ed32379` |
| 34 | `theorem` | [const_div](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/const-div.md) | 280 | `result-track:62b12ea1145cb0ad8bd8ddd1fbf646901640fe7cadcfd3ee245ed3f3d2b3d16c` |
| 35 | `lemma` | [inv](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/inv.md) | 285 | `result-track:13952a4243df063176c0ffd5a73f98b9e9db490ed893917131bfa6d95e2f464f` |
| 36 | `theorem` | [evariance_eq](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/evariance-eq.md) | 288 | `result-track:b70eb1a02cc2b54da2191feba0c3eda8eb95107e6064e929b8bac50981e8aa07` |
| 37 | `theorem` | [variance_eq](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/variance-eq.md) | 294 | `result-track:3e7e5ca7719889ba7b89db75f1c207ee320e3a595636a8ecbe244db255f63cd7` |
| 38 | `theorem` | [MemLp.uniformIntegrable_of_identDistrib_aux](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/memlp-uniformintegrable-of-identdistrib-aux.md) | 306 | `result-track:fd0c8277eeae70e9be7722d956db1b65553aa604e638a9bf8533657e21e0b10a` |
| 39 | `theorem` | [MemLp.uniformIntegrable_of_identDistrib](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/memlp-uniformintegrable-of-identdistrib.md) | 343 | `result-track:5818ded36cb0ea0884da3dcec0ee6c723649413bc7ebcc874a5cc0561ddc20c3` |
| 40 | `lemma` | [indepFun_of_identDistrib_pair](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribPublic.lean/declarations/indepfun-of-identdistrib-pair.md) | 361 | `result-track:8898984cd64b5fa43d9b7721372cb10c81b03308904af270606c29391c1e3d30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa775213332247b578754d84bc91f75f71324e9a209a9cd397537edb31a5f419 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantdadbcbe5739a97cc3f3643ba2a37a4404a5f8c6bbdd7e276ecfbde52f55191f5.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantdadbcbe5739a97cc3f3643ba2a37a4404a5f8c6bbdd7e276ecfbde52f55191f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
