# Verification target: Basic Basic Namespaced Public WPMonad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d26428deffc3eaf0ce2ce9ddcc383dd1b0a51f51",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09f445fe20be527a8254585e0b4ff3a84968e4d1f94f5d2965b6cf2bf1480f91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d26428deffc3eaf0ce2ce9ddcc383dd1b0a51f51`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09f445fe20be527a8254585e0b4ff3a84968e4d1f94f5d2965b6cf2bf1480f91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09f445fe20be527a8254585e0b4ff3a84968e4d1f94f5d2965b6cf2bf1480f91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [WP](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/wp.md) | 70 | `declaration-track:9296aa7e7795f900c4d2d43905b8870fecf00a6c4b87987b324a74e2580a9c09` |
| 2 | `def` | [WP.wp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/wp-wp.md) | 79 | `declaration-track:9608f074b07a26cee711a4e24a227438740c5a864629c6a46a71f010c10e5b0a` |
| 3 | `class` | [WPMonad](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/wpmonad.md) | 87 | `declaration-track:9a213872e90bd1443b6e8b9f859fd5d5ef2b3ee6bbf834d0b847cae7a3655aa3` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/instance.md) | 102 | `declaration-track:023d2e46b49992d09423b2a134098b96cba8822cc665060ff9f73669ad06d1b2` |
| 5 | `theorem` | [WP.wpTrans_apply_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/wp-wptrans-apply-eq.md) | 112 | `result-track:ee55fb0faa9a120e8f7a3814958c855fb619426b6ec348f3bc990f66a2cb92f9` |
| 6 | `theorem` | [wp_consequence](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/wp-consequence.md) | 127 | `result-track:19e615dad0d09624830789d1e2ab1f345f148558965dd4605f33ee418ae4bc22` |
| 7 | `theorem` | [wp_consequence_econs](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/wp-consequence-econs.md) | 132 | `result-track:5782ecfabf718f16e1b2425259b9c924074fc93c82d74fd84d1d04e6c0082498` |
| 8 | `theorem` | [wp_econs](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/wp-econs.md) | 137 | `result-track:8406ecc375604feaec2850eb52c81b2285d39fbace33f4d72e3e2d7ad20b979c` |
| 9 | `theorem` | [wp_econs_bot](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/wp-econs-bot.md) | 142 | `result-track:3fe4bdf1eb2fd3d844dd4e757bb10dc57fdd3b0f2d7651c45c877b1e1874ebb3` |
| 10 | `theorem` | [wp_consequence_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/wp-consequence-le.md) | 147 | `result-track:271348752dff9715b6241f0ac172d65582ab73059941f7be9b5bf102572b83c6` |
| 11 | `theorem` | [wp_econs_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/wp-econs-le.md) | 153 | `result-track:67db79ac962b7dc7522dcd3d65632b69ad405271d4196accf1d71968e452b239` |
| 12 | `theorem` | [wp_econs_bot_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/wp-econs-bot-le.md) | 159 | `result-track:df753da765d27ec5ef450fe380c7dbf60e263b5b8d70f1f7518e3011048b9e7d` |
| 13 | `theorem` | [wp_le_wp_of_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/wp-le-wp-of-eq.md) | 168 | `result-track:d473036e367e5d038ad398cec774758b4c97b9e07ed37d7ffd7ab3d607158ae7` |
| 14 | `theorem` | [map_le_wp_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/map-le-wp-map-source-edition-2.md) | 185 | `result-track:8401af94a44b315903763addd27e1efdbaf5fefd493f63d872faae57b8044e77` |
| 15 | `theorem` | [map_le_wp_map'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/map-le-wp-map.md) | 195 | `result-track:5db407d034ba0222b531c6d2d4dac8811afdc31552cf45133e9359fc17df34d5` |
| 16 | `theorem` | [seq_le_wp_seq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/seq-le-wp-seq.md) | 203 | `result-track:d25781e19a54cf30cb44713a5b11de41802660047d7e41cb7d0c8600795a4d6f` |
| 17 | `def` | [Id.wpInst](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/id-wpinst.md) | 219 | `declaration-track:7388c513ee2d462a3486fae7da37ae5dd08402440e87eb26d9a7b29519df3a03` |
| 18 | `instance` | [Id.instWPMonad](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/id-instwpmonad.md) | 224 | `declaration-track:d7d59e37d077b772e2fcd4709d4d41a0bd38562fc51bd8b5b1b2ac67f4d2dd34` |
| 19 | `theorem` | [PredTrans.apply_pushExcept](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/predtrans-apply-pushexcept.md) | 230 | `result-track:02d9bc6e22b3136a475bb56cf3215df674bae3f8a266efba6d2fcca7e78d6c66` |
| 20 | `def` | [ExceptT.wpInst](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/exceptt-wpinst.md) | 237 | `declaration-track:ae662811ddb9daa12b7879eee93ae9dc9f4053d9139f8ee94f981662365e8aff` |
| 21 | `instance` | [ExceptT.instWPMonad](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/exceptt-instwpmonad.md) | 256 | `declaration-track:44793b2b7f93baf38c446972e8be86b44f35e334bf5d0c7c301088b03d4640a2` |
| 22 | `theorem` | [ExceptT.wp_apply_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/exceptt-wp-apply-eq.md) | 272 | `result-track:c54fff3f8cebd867c2c1118cdd18d078a80a2ec21966975e8a76673595327ee5` |
| 23 | `def` | [OptionT.wpInst](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/optiont-wpinst.md) | 279 | `declaration-track:63262ef935f4991c3c4a0c468e1dfd21f6cc3e6dd2b8983ca162446622940c8d` |
| 24 | `instance` | [OptionT.instWPMonad](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/optiont-instwpmonad.md) | 294 | `declaration-track:16cab4d593ada619ddafc874548ebb4dc229fbf260968a15541d4d2cf078dd5e` |
| 25 | `theorem` | [OptionT.wp_apply_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/optiont-wp-apply-eq.md) | 310 | `result-track:e9846f47922755f48764021b471adf488a750a6e1353f02de53081bcb05a2e03` |
| 26 | `def` | [StateT.wpInst](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/statet-wpinst.md) | 316 | `declaration-track:80806467ae5a6a81465ba57596c39a8be93625012fb61033fa065f2c9950c04d` |
| 27 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/instance-source-edition-2.md) | 327 | `declaration-track:2235e20ba902b5853e8dc5941c2c5cce935d544068fd6710e9f05808c33e9d79` |
| 28 | `theorem` | [StateT.wp_apply_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/statet-wp-apply-eq.md) | 337 | `result-track:91d26b70a001b976d577a36d2e780a36f07a6ec97e9dc82b89441cf1081959dc` |
| 29 | `def` | [ReaderT.wpInst](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/readert-wpinst.md) | 343 | `declaration-track:2297b5075cda7fa432c93736729b18fc0d8e58899d6983317e16ac2a4ac4e1c9` |
| 30 | `instance` | [ReaderT.instWPMonad](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/readert-instwpmonad.md) | 354 | `declaration-track:8551aea9b16999cb70cecfbd493304267ff71fab186211ff1582b5778754e8b9` |
| 31 | `theorem` | [ReaderT.wp_apply_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/readert-wp-apply-eq.md) | 367 | `result-track:9fb874d5de5046eed01d38d316681e8cb16c7a9af114ac680e4ebdd00789be73` |
| 32 | `def` | [Option.wpInst](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/option-wpinst.md) | 379 | `declaration-track:75a758763b7094dc4052348a00cf50bccf9a70dc5faade8a30a65893ebf1c728` |
| 33 | `instance` | [Option.instWPMonad](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/option-instwpmonad.md) | 387 | `declaration-track:eb327c38899f052b38f3e4edf3850829cc1fdc2816e3e2746d5671ae1d61ac6b` |
| 34 | `def` | [Except.wpInst](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/except-wpinst.md) | 393 | `declaration-track:2e02c147650bab49a7deef91886e7b620408dcd2064116dddc6d4af93d48769d` |
| 35 | `instance` | [Except.instWPMonad](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/except-instwpmonad.md) | 408 | `declaration-track:18a100689286f94d7271f3a3be9ba07a781b8781f795b91934cf9b7ecf88bd41` |
| 36 | `def` | [EStateM.wpInst](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/estatem-wpinst.md) | 414 | `declaration-track:0589107ac02c45011d9c55b3b52b873b5e9d97b7f6dec2df591095a457cc9002` |
| 37 | `instance` | [EStateM.instWPMonad](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/estatem-instwpmonad.md) | 426 | `declaration-track:d0e032d35d199d9cdaca64ce1e5742e779981bf895a78ecdc4572e300d4d8d52` |
| 38 | `theorem` | [Id.of_wp_run_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/id-of-wp-run-eq.md) | 441 | `result-track:2d407fa86a587fb7f69f6dee5e564429b56c11bb9d8d8964cdcf1ba02095f5d4` |
| 39 | `theorem` | [Option.of_wp_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/option-of-wp-eq.md) | 448 | `result-track:10d5f03b6e7aa8e3bfab92fc5751d96e8ac42ff5f81ec9e56d131ce2c8f2c11d` |
| 40 | `theorem` | [StateM.of_wp_run_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/statem-of-wp-run-eq-source-edition-2.md) | 457 | `result-track:759b05c5ebfaba3853dd91e888d103356e49ff694a43d824ae724e5baa12c266` |
| 41 | `theorem` | [StateM.of_wp_run'_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/statem-of-wp-run-eq.md) | 464 | `result-track:72b64fcb033045b914ccc76a937ee7cb470e6d38ebf2d6a997417d710977a1c1` |
| 42 | `theorem` | [ReaderM.of_wp_run_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/readerm-of-wp-run-eq.md) | 471 | `result-track:80f8c7d3dda56f7a5e528d200474abdb12c9b8dbfcd74f6a82d014868941b1be` |
| 43 | `theorem` | [Except.of_wp_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/except-of-wp-eq.md) | 478 | `result-track:2d10c9e1ec37dbde20d5b25d28484810f5e0d2255aba0d25a25de2bb14d24854` |
| 44 | `theorem` | [EStateM.of_wp_run_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicWPMonad.lean/declarations/estatem-of-wp-run-eq.md) | 487 | `result-track:b9d4a6da285f12e53ccb09ddf0977ac505bf63076e0de487fc58696d4ca70b63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=895d072e9d485bd34ef5646f5581e61740b46a9a71f1a04fb62fc78077d5f6e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09f445fe20be527a8254585e0b4ff3a84968e4d1f94f5d2965b6cf2bf1480f91.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09f445fe20be527a8254585e0b4ff3a84968e4d1f94f5d2965b6cf2bf1480f91.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
