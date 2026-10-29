# Verification target: Pow Continuity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdd10ff27c78ae0cf56be8a1a70368b8baa4f4ac",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/PowContinuity.lean/index.md) · [Full source](../../../../SpecialFunctions/PowContinuity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdd10ff27c78ae0cf56be8a1a70368b8baa4f4ac`.

Source path: `GRWTSK/Topology/GeneralTopology/Continuity/Variant2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Continuity/Variant2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../SpecialFunctions/PowContinuity.lean/declarations/macro-rules.md) | 24 | `declaration-track:9f9d25531c56c4de55c7747835c1df456c138ca8ba9c8d6ea8dcb2fa636ae2c7` |
| 2 | `theorem` | [zero_cpow_eq_nhds](../../../../SpecialFunctions/PowContinuity.lean/declarations/zero-cpow-eq-nhds.md) | 37 | `result-track:c1096959106042dd29412b74b8baf20ca014c717c09a01e7c4244aeefba382f9` |
| 3 | `theorem` | [cpow_eq_nhds](../../../../SpecialFunctions/PowContinuity.lean/declarations/cpow-eq-nhds.md) | 46 | `result-track:1d6f68e352224a1999b792c1513e0e2f05d15b9c7ac8e0079fdd2dc34cbb4160` |
| 4 | `theorem` | [cpow_eq_nhds'](../../../../SpecialFunctions/PowContinuity.lean/declarations/cpow-eq-nhds-source-edition-2.md) | 56 | `result-track:5c17f2ea40a254558c29cd2c16ec483b0fc8ad83de3dcf79a88da3a0632d53d7` |
| 5 | `theorem` | [continuousAt_const_cpow](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuousat-const-cpow-source-edition-2.md) | 70 | `result-track:ec169832d27444ac2f28dfb2dbddfcb974f487eae028adf07ec8d049ffb15d8f` |
| 6 | `theorem` | [continuousAt_const_cpow'](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuousat-const-cpow.md) | 78 | `result-track:ca4ee0225e665bca414f577563e47cc57e113f18167e2cfef9dd1613a21e3e89` |
| 7 | `theorem` | [continuousAt_cpow](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuousat-cpow-source-edition-2.md) | 88 | `result-track:9f01a2ce913cdde24ed488975cd8d3d06da7268955ffd134d3b8e3dd6ab30efe` |
| 8 | `theorem` | [continuousAt_cpow_const](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuousat-cpow-const.md) | 103 | `result-track:a35517db078bd81878fcdc6d51d01f89142763ea1cd2fbf781252d174b2d6fe7` |
| 9 | `theorem` | [Filter.Tendsto.cpow](../../../../SpecialFunctions/PowContinuity.lean/declarations/filter-tendsto-cpow.md) | 108 | `result-track:1902119ba5408068d86ee5717be28a3307db2b30dcd0d3eafc428ab95b93664e` |
| 10 | `theorem` | [Filter.Tendsto.const_cpow](../../../../SpecialFunctions/PowContinuity.lean/declarations/filter-tendsto-const-cpow.md) | 114 | `result-track:342ca62d669cbcdae15b6b639236d4e8de65e9b1c70abac9ea53047edbec6e36` |
| 11 | `theorem` | [ContinuousWithinAt.cpow](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuouswithinat-cpow.md) | 123 | `result-track:fb88cd4968a3bdb7ced166d746d123fe2ca43a8db8b405123253feb2ed80c795` |
| 12 | `theorem` | [ContinuousWithinAt.const_cpow](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuouswithinat-const-cpow.md) | 129 | `result-track:58879c4ca80541025144c7021d1c03a4e86e3d71e82afd9062388c531ddb9a87` |
| 13 | `theorem` | [ContinuousAt.cpow](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuousat-cpow.md) | 134 | `result-track:3780267d2ad99b080fa78da2ccf49739771d00a060291d4153d4fbff44f72d28` |
| 14 | `theorem` | [ContinuousAt.const_cpow](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuousat-const-cpow-source-edition-3.md) | 139 | `result-track:f35f56728c8a7634b644d02806a3e7bbb97e8a0175258060fe46824728a51cce` |
| 15 | `theorem` | [ContinuousOn.cpow](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuouson-cpow.md) | 144 | `result-track:0f9ad340cd53caf55e819d9c19f54ad37fad24b24ad1e53c1a2e855694d81ea4` |
| 16 | `theorem` | [ContinuousOn.const_cpow](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuouson-const-cpow.md) | 149 | `result-track:da67645faf0dacd000f8bbdadc25f0658fa39f3c5c1f6c4549642e3e5aa7c1f6` |
| 17 | `theorem` | [Continuous.cpow](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuous-cpow.md) | 153 | `result-track:dcdc41dfa2633c1697e3f8b2b95135b63415801b8768a7f28be2fe97dec59286` |
| 18 | `theorem` | [Continuous.const_cpow](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuous-const-cpow.md) | 158 | `result-track:1a45f2956c83c846196fef7d3daa25b3333af954073cef078d95025121801248` |
| 19 | `theorem` | [ContinuousOn.cpow_const](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuouson-cpow-const.md) | 163 | `result-track:94661e7a0617d14a04d694bd9e6a2fde97e36526792f5f25778a5e8000d34e6d` |
| 20 | `theorem` | [continuousAt_const_rpow](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuousat-const-rpow-source-edition-2.md) | 179 | `result-track:518fd2abfa37d2d6317f11e1391b2972da069e3b24316a7e7808ae22deb665a2` |
| 21 | `theorem` | [continuousAt_const_rpow'](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuousat-const-rpow.md) | 189 | `result-track:3a16210bc4abad6e18d471e24755dc622cdcecbf753f7b3f581983349e46712f` |
| 22 | `theorem` | [rpow_eq_nhds_of_neg](../../../../SpecialFunctions/PowContinuity.lean/declarations/rpow-eq-nhds-of-neg.md) | 199 | `result-track:c8f7136d7cfef3169510dd32e7a90ca7f6420ec775209d2ddbbb27946b8d4872` |
| 23 | `theorem` | [rpow_eq_nhds_of_pos](../../../../SpecialFunctions/PowContinuity.lean/declarations/rpow-eq-nhds-of-pos.md) | 209 | `result-track:b5b2343e10305999bf3da450c87395f48c4ff557768b8b06cc342ca49d811563` |
| 24 | `theorem` | [continuousAt_rpow_of_ne](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuousat-rpow-of-ne.md) | 219 | `result-track:2d6babc5372ddf08bad6fe1dc18980b7b415f057565202fed3124de67c033a52` |
| 25 | `theorem` | [continuousAt_rpow_of_pos](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuousat-rpow-of-pos.md) | 237 | `result-track:b803e4eb8e2962ca9bc6bdf271a81d8aa6c6dfe75a9dc126f582f764dcd3f9e7` |
| 26 | `theorem` | [continuousAt_rpow](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuousat-rpow.md) | 255 | `result-track:e479cc44c2b3d127afe4bc7b88a894bb5ffc35d2737676c621d1faaeb4565e16` |
| 27 | `theorem` | [continuousAt_rpow_const](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuousat-rpow-const-source-edition-3.md) | 260 | `result-track:d85c5d87add2e4752d985dd74fcbb218209894cbe4daaa40011087d8ee373d51` |
| 28 | `theorem` | [Filter.Tendsto.rpow](../../../../SpecialFunctions/PowContinuity.lean/declarations/filter-tendsto-rpow.md) | 274 | `result-track:3db4ae355bb0688f6d10ac094d726163de70513c199886a916ee025ed1c99739` |
| 29 | `theorem` | [Filter.Tendsto.rpow_const](../../../../SpecialFunctions/PowContinuity.lean/declarations/filter-tendsto-rpow-const.md) | 279 | `result-track:efd641f683f9706b2a01d75ccee7dc7874148160dc25cdfa5597bf88fdb49c50` |
| 30 | `theorem` | [ContinuousAt.rpow](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuousat-rpow-source-edition-3.md) | 287 | `result-track:ea81ab016e19f972d441f536556501a365bb2bf0be12f90590e07cac355d6c31` |
| 31 | `theorem` | [ContinuousWithinAt.rpow](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuouswithinat-rpow.md) | 292 | `result-track:156b3afabbda4d8a181f23fd9a87ddf7c6271c7309c63548b1cc18db7e4019f4` |
| 32 | `theorem` | [ContinuousOn.rpow](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuouson-rpow.md) | 298 | `result-track:e51d2e52b52a8719170ab33b625042a5e6826521e18aaba84e06f702d526fb62` |
| 33 | `theorem` | [Continuous.rpow](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuous-rpow.md) | 303 | `result-track:94aa391794e8ff02779034ba5622559cb8842bbd2c10751a0b677cc76a05affc` |
| 34 | `theorem` | [ContinuousWithinAt.rpow_const](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuouswithinat-rpow-const.md) | 308 | `result-track:192d3cb9b714d363a08b0ce9222d1f85dab49408e95430330027cb43bcc68517` |
| 35 | `theorem` | [ContinuousAt.rpow_const](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuousat-rpow-const-source-edition-2.md) | 313 | `result-track:0bd9e6adc1a0d013ee77d66ffd22741d263216850cbd0005942c9f8dadba6ad7` |
| 36 | `theorem` | [ContinuousOn.rpow_const](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuouson-rpow-const.md) | 318 | `result-track:191015debe9606f5847b1245a5bdde8e88fafa2671829835965fd4ecc5ac1856` |
| 37 | `theorem` | [Continuous.rpow_const](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuous-rpow-const-source-edition-3.md) | 322 | `result-track:d2b3c69b7c52daf8d9b63f2f31dc919a28b632efc3e7bca4be44d75480653875` |
| 38 | `theorem` | [continuousAt_cpow_zero_of_re_pos](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuousat-cpow-zero-of-re-pos.md) | 342 | `result-track:554614d85a8ebe228c65f580e51f8f2b0cb19b1937b053e3e05bbfaa5d10ddb0` |
| 39 | `theorem` | [continuousAt_cpow_of_re_pos](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuousat-cpow-of-re-pos.md) | 368 | `result-track:7a4a61ca5a6d82bad387697b573b2aabfdb5ba3d1cf0c27a6df2f8b7593973ad` |
| 40 | `theorem` | [continuousAt_cpow_const_of_re_pos](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuousat-cpow-const-of-re-pos.md) | 379 | `result-track:85d95719591ebb27623a6a603330bb030d28c87dcfeba5780cbe46c402305ef2` |
| 41 | `theorem` | [continuousAt_ofReal_cpow](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuousat-ofreal-cpow.md) | 385 | `result-track:bddcd405e14ab2f6d50456c7e6f4fe0d3146180063cefc0ea7b0c142b00ff86b` |
| 42 | `theorem` | [continuousAt_ofReal_cpow_const](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuousat-ofreal-cpow-const.md) | 413 | `result-track:c7e025170c6371db09010d0fd168e8e0ed43fae6d86d2d14eb2786bb2eab0e11` |
| 43 | `theorem` | [continuous_ofReal_cpow_const](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuous-ofreal-cpow-const.md) | 419 | `result-track:afdb49ea8da12d48e14dc9794fd4b963780a47155097b20599bc3aee4f2cc9ea` |
| 44 | `theorem` | [continuousAt_rpow](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuousat-rpow-source-edition-2.md) | 433 | `result-track:e47ed31b9e65fc2a5eb87c69220e91a52a2fd30e6ddf67664982a80d75ce7b6a` |
| 45 | `theorem` | [eventually_pow_one_div_le](../../../../SpecialFunctions/PowContinuity.lean/declarations/eventually-pow-one-div-le.md) | 450 | `result-track:260d329d891e07aa2af551aafccac8630c8b75dd81bf4abeb3550913e0b4d79d` |
| 46 | `theorem` | [Filter.Tendsto.nnrpow](../../../../SpecialFunctions/PowContinuity.lean/declarations/filter-tendsto-nnrpow.md) | 463 | `result-track:eddf44d6d5b1135a30e3e7bc998558458370a9489955704a0ffb39a204fbb025` |
| 47 | `theorem` | [continuousAt_rpow_const](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuousat-rpow-const.md) | 471 | `result-track:065004ae0a3d6a7b35fc4020d7e91600bbc1103f6af1c48d3527197c102932a6` |
| 48 | `theorem` | [continuous_rpow_const](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuous-rpow-const-source-edition-2.md) | 478 | `result-track:53e9882f110bf22b9d67e6375a8ba0cf270ef8996a8cad1bbec8eae6e442c151` |
| 49 | `theorem` | [eventually_pow_one_div_le](../../../../SpecialFunctions/PowContinuity.lean/declarations/eventually-pow-one-div-le-source-edition-2.md) | 489 | `result-track:f43f8ddfbf34c01710dc0c5820ab7e9db90a1461f3b2376a1aa2e1c6633e5750` |
| 50 | `theorem` | [continuousAt_rpow_const_of_pos](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuousat-rpow-const-of-pos.md) | 500 | `result-track:1bdd87e34079db3a8233add5521c79c60b1317408315870efcaa49d94fa27d4f` |
| 51 | `theorem` | [continuous_rpow_const](../../../../SpecialFunctions/PowContinuity.lean/declarations/continuous-rpow-const.md) | 513 | `result-track:05a10c831be3b6c174608ad36048ae40a7a1cc162d27adcffed436dc88164f92` |
| 52 | `theorem` | [tendsto_const_mul_rpow_nhds_zero_of_pos](../../../../SpecialFunctions/PowContinuity.lean/declarations/tendsto-const-mul-rpow-nhds-zero-of-pos.md) | 525 | `result-track:f14ff8a400fb99d0ee500aa59bcb1ac4eaadf795b07d48b7644a51a6f0732a06` |
| 53 | `theorem` | [Filter.Tendsto.ennrpow_const](../../../../SpecialFunctions/PowContinuity.lean/declarations/filter-tendsto-ennrpow-const.md) | 534 | `result-track:3850002b78e8e499a8c24604d9befa9240d450b452cc03babed7e114434ca033` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=39331414b431272f5705d37b0bb4a4fedb86e8cc81a4ea0ed72570158a6a69fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Continuity/Variant2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Continuity/Variant2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
