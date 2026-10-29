# Verification target: Implementation Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8b6591954dd3adf74158525b5c3fafc522b4f8d",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Implementation/Variant9a04a29d7ac7d89b715632fc180ac3dd2ef46caf2dab20a3762deb14aa5e0179.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8b6591954dd3adf74158525b5c3fafc522b4f8d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Implementation/Variant9a04a29d7ac7d89b715632fc180ac3dd2ef46caf2dab20a3762deb14aa5e0179.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Implementation/Variant9a04a29d7ac7d89b715632fc180ac3dd2ef46caf2dab20a3762deb14aa5e0179.lean.json)

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
| 1 | `structure` | [DefaultFormula](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/declarations/defaultformula.md) | 69 | `declaration-track:43608e1a72dc9f926ccad3bc6703fd36f531602092802f6a22ed014563699077` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/declarations/instance.md) | 79 | `declaration-track:2791f3138da1dcfbf04b156ea6eaff70aae5233aea4c0e9ece36ad3e7720c8e4` |
| 3 | `def` | [toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/declarations/tolist.md) | 83 | `declaration-track:9d3363aadf1705fbf9f470958e6bd16711c894f6cdd007baf85bb4c4297b7eef` |
| 4 | `def` | [ofArray_fold_fn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/declarations/ofarray-fold-fn.md) | 86 | `declaration-track:dbaf4b5b3225b603c8dd391c86fcde81e6c51d5bd23102e511a6247afb9457c3` |
| 5 | `def` | [ofArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/declarations/ofarray.md) | 100 | `declaration-track:71e8b9f4003f18790a176b8d24bcd23f1e46a9fcadb7e0cd47980092a1629280` |
| 6 | `def` | [insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/declarations/insert.md) | 104 | `declaration-track:d55cfa411e4443e250248e2fd82067fb278d62351acae750d6e2e903215729c6` |
| 7 | `def` | [deleteOne](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/declarations/deleteone.md) | 111 | `declaration-track:e4c2db6bfffc5d1f89015ac84cafb320549a7c6fe05487834093b652d29d785b` |
| 8 | `def` | [delete](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/declarations/delete.md) | 119 | `declaration-track:a3a1151a85bdcd6b3c420965a58045af93ea8dd6075c8197bfe88f8cfe516468` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 122 | `declaration-track:bb42d4204bb61b3d666f6a412fa286a83e50921f0134bd944108c3fddd4eb1e2` |
| 10 | `theorem` | [formulaEntails_def](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/declarations/formulaentails-def.md) | 125 | `result-track:40b7a53356e2d67f3b17db455c8a7de614c9ab57ab69468173729eb636687dbe` |
| 11 | `def` | [insertUnit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/declarations/insertunit.md) | 128 | `declaration-track:25a36fb0cfe0498578ed4c5d4732db668b241ef4ddd4c3a475fd4302e4f50165` |
| 12 | `def` | [insertRupUnits](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/declarations/insertrupunits.md) | 144 | `declaration-track:ae99149bfb834bcb6ab9911e26464452e9f8b7343d749e919a61725efb36c942` |
| 13 | `def` | [insertRatUnits](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/declarations/insertratunits.md) | 154 | `declaration-track:a5439471138c924b23a346909a395cc543c3be7024da5c9cc269e6636b7fc064` |
| 14 | `def` | [clearUnit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/declarations/clearunit.md) | 159 | `declaration-track:02c830238ba433f5ebe982c38258debbd614d1f8ebf13bb554024eca5b09ed1a` |
| 15 | `def` | [clearRupUnits](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/declarations/clearrupunits.md) | 162 | `declaration-track:05ac715a7883de2f5bce7f7c271d6b99e7dc4e999d6a0da105dcfb3ed29d2ae8` |
| 16 | `def` | [clearRatUnits](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/declarations/clearratunits.md) | 168 | `declaration-track:a04fec917d12ed4ab341f0c8142b29423d1e0677589cc1b7ca0afad1e990cc68` |
| 17 | `def` | [restoreAssignments](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/declarations/restoreassignments.md) | 177 | `declaration-track:2b40eaa71cb027805482b7ca6ffd89b92cc015f32b4b9ab86b78d7110317c2df` |
| 18 | `def` | [confirmRupHint](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/declarations/confirmruphint.md) | 184 | `declaration-track:971e6367545d740987377eb08ff7849eab2a4b4cbfa1a75e63d51ae1ee98c3af` |
| 19 | `def` | [performRupCheck](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/declarations/performrupcheck.md) | 216 | `declaration-track:8e74e3657f87d84979802d736504006b2265179dc69c6750dd58957731875f65` |
| 20 | `def` | [performRupAdd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/declarations/performrupadd.md) | 227 | `declaration-track:f1c8eecc1ba6b85507ad7695ce7ad98316a1e310dfa7becd6ae8e2f981042442` |
| 21 | `def` | [getRatClauseIndices](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/declarations/getratclauseindices.md) | 249 | `declaration-track:b39b8799e8568a361f606a8c2807ba31e99d3aecfd86b8b0ff59b939e2b81a6b` |
| 22 | `def` | [ratHintsExhaustive](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/declarations/rathintsexhaustive.md) | 264 | `declaration-track:c82966715cb8e6ee6455f166c91dbdf9bdd9873f5f56c710a869380b6a95bd40` |
| 23 | `def` | [performRatCheck](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/declarations/performratcheck.md) | 283 | `declaration-track:28cba13c1ecbe8059cb3548c34ffa2acb9290c4e4cd012de42ec58df78b7f759` |
| 24 | `def` | [performRatAdd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/declarations/performratadd.md) | 312 | `declaration-track:b86efd1fd333c95292c64af6ed4980cae72c02b5dc04d90c3c3708ce96223371` |
| 25 | `def` | [numClausesInFormula](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ImplementationNamespacedPublic.lean/declarations/numclausesinformula.md) | 339 | `declaration-track:759d45c4df1391d290f72642fcc3f498d9732addeeb090651ba418ab50a6ddba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2b6fa38353b3c735ce73fe212a08e626f9adcd879e94f31d319ee4791b5cc30 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Implementation/Variant9a04a29d7ac7d89b715632fc180ac3dd2ef46caf2dab20a3762deb14aa5e0179.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Implementation/Variant9a04a29d7ac7d89b715632fc180ac3dd2ef46caf2dab20a3762deb14aa5e0179.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
