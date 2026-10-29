# Verification target: Measurable Space Def Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "366f0b8a98e92f3b62e015dde313d5df148e22fa",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MeasurableSpaceDef/Variant95a9443d199eb40d886987fd1753bb916422d91906953c4b727639800e9ee24b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `366f0b8a98e92f3b62e015dde313d5df148e22fa`.

Source path: `GRWTSK/Analysis/MeasureTheory/MeasurableSpaceDef/Variant95a9443d199eb40d886987fd1753bb916422d91906953c4b727639800e9ee24b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MeasurableSpaceDef/Variant95a9443d199eb40d886987fd1753bb916422d91906953c4b727639800e9ee24b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Countable` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Encodable.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Disjointed` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Measurability` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurablespace.md) | 56 | `declaration-track:296228671199c3e815bedc0842272be047c783a4c68a362be404a74155fbf96d` |
| 2 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/instance-source-edition-2.md) | 69 | `declaration-track:4b8d85bc49c03cfd450b5d37bacab7d59574d3caff219167a8b0d15bc56d93b4` |
| 3 | `def` | [MeasurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset.md) | 72 | `declaration-track:c603b476f5677bada7b6e5a1433892fc47ca71bb3be86299b2138dbd58324603` |
| 4 | `theorem` | [MeasurableSet.empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-empty.md) | 88 | `result-track:13e8c1a628e1f263a2fcf2a90458ff3538ffa6dfd766b26314f64a06d52625cb` |
| 5 | `theorem` | [MeasurableSet.compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-compl.md) | 95 | `result-track:bfd017b8ed26659233871656a89a705e2588651aca2dc6b1707b3e3644bdb007` |
| 6 | `theorem` | [MeasurableSet.of_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-of-compl.md) | 99 | `result-track:f08c4ef30f3c0ce2c10f340fed1d10a2c068d26e858c1bf12f28e95167679446` |
| 7 | `theorem` | [MeasurableSet.compl_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-compl-iff.md) | 104 | `result-track:a34e06f0b16afb6e9a732fb264362b4a63efb932b20d01a22762ad62ba99e39c` |
| 8 | `theorem` | [MeasurableSet.univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-univ.md) | 109 | `result-track:6a7eaa73a2ed2ea2a1597c4566600bd34723630cc353bbf5ab55cfe97d796468` |
| 9 | `theorem` | [Subsingleton.measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/subsingleton-measurableset.md) | 114 | `result-track:1c28b370c9525cf365360aa7c2440afd22db1e86db0eeef6b0d091daeb3c651d` |
| 10 | `theorem` | [MeasurableSet.congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-congr.md) | 118 | `result-track:6777f29f60147ab7d44e7238f3d006d3d22ce3858b3d3e6279bcc6c1faadccac` |
| 11 | `theorem` | [MeasurableSet.iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-iunion.md) | 123 | `result-track:e56541d597e9661566b3cc5d47bc2aa8dd22aa11464d898de20ee195bb4abac1` |
| 12 | `theorem` | [MeasurableSet.biUnion_decode₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-biunion-decode.md) | 133 | `result-track:d84f18d893bee6d0c7faa48e4337ba4277b90636c29339d0b53ca25bc087f735` |
| 13 | `theorem` | [MeasurableSet.biUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-biunion.md) | 138 | `result-track:8fbc14c15b2a40b961cefdb5e3b9e187e57dce511fea86a896d6b3fe7cf61428` |
| 14 | `theorem` | [Set.Finite.measurableSet_biUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/set-finite-measurableset-biunion.md) | 145 | `result-track:31aef659c7447e6a6e0155bae955c893364e1b6ca19d36cd959cf46510532d7d` |
| 15 | `theorem` | [Finset.measurableSet_biUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/finset-measurableset-biunion.md) | 150 | `result-track:4c3083a1f75e8cc28d6003e3ec12000eb1b66a9cc5c3d3c2577e3cdc8883c1bf` |
| 16 | `theorem` | [MeasurableSet.sUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-sunion.md) | 155 | `result-track:1887be670829148d25133be383204889db025b4fa4a2cc0cfa1d3310d18388b5` |
| 17 | `theorem` | [Set.Finite.measurableSet_sUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/set-finite-measurableset-sunion.md) | 161 | `result-track:d5a73f02786996d5f19ba394ad97eeceeca849dec1982a14d5f4a9c53fa4fc5e` |
| 18 | `theorem` | [MeasurableSet.iInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-iinter.md) | 167 | `result-track:d0bec541bd9e8b09810518c4bdcc590f49b4869334dcfe1d4a2a9de8e1fb4047` |
| 19 | `theorem` | [MeasurableSet.biInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-biinter.md) | 172 | `result-track:c0f026c552cb5a5d28e2dc6118b8c18d82fe281dc372306e99edfe04868e13c1` |
| 20 | `theorem` | [Set.Finite.measurableSet_biInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/set-finite-measurableset-biinter.md) | 177 | `result-track:07c8f4536cb6b3589c4173a9f8483de5d90c872a37fd3c7d72f6d30c46ac3efd` |
| 21 | `theorem` | [Finset.measurableSet_biInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/finset-measurableset-biinter.md) | 182 | `result-track:0a3c34d57190013a5cdd85a3a46dc3a0defb9cbf720efd026c848e9578834508` |
| 22 | `theorem` | [MeasurableSet.sInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-sinter.md) | 187 | `result-track:faf75baf099e27f801592825e030cfd2afed22c6882d0d6c79aeffa4b4c63369` |
| 23 | `theorem` | [Set.Finite.measurableSet_sInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/set-finite-measurableset-sinter.md) | 193 | `result-track:c83328ac6f17deca5c43285aeaccf2363e8db9e70e5c6bfd2a6911d60aeb3152` |
| 24 | `theorem` | [MeasurableSet.union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-union.md) | 199 | `result-track:641f9031a5e0e09a7cd6e74bff2aa2bf1d3ce232e50335a827e31cd49cdae420` |
| 25 | `theorem` | [MeasurableSet.inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-inter.md) | 206 | `result-track:234ec7f746ce98dc457916cb0c39590cce0579a0a63ae0d30015c4758711b6b2` |
| 26 | `theorem` | [MeasurableSet.diff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-diff.md) | 213 | `result-track:85613f218bb2dcb089f14e351635913938d5f44defbde8dd19ac0ac1d711e679` |
| 27 | `theorem` | [MeasurableSet.symmDiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-symmdiff.md) | 219 | `result-track:6ef102c10237d93f2931f4312287f07f366825a37bb4c6a84ceab07b0803c095` |
| 28 | `theorem` | [MeasurableSet.ite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-ite.md) | 225 | `result-track:ab3ca97e83038bd2d0d9456d349014ccc2c2a62d6be94f06e4f8bdf1e2890e94` |
| 29 | `theorem` | [MeasurableSet.ite'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-ite-source-edition-2.md) | 230 | `result-track:c2a81d95f571ee9bfe8a485fe949ff6c2cf676b3660dd7432fe90c83d01988b2` |
| 30 | `theorem` | [MeasurableSet.cond](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-cond.md) | 237 | `result-track:fc5e59d401c90e08db4ff2c19645315e4e1c91d5914fc3f563406440198bd2cd` |
| 31 | `theorem` | [MeasurableSet.disjointed](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-disjointed.md) | 244 | `result-track:d42b2f5bfe52f749c973409173d7d8242d07d04c131f6e2d61a97bb27e8402dd` |
| 32 | `theorem` | [MeasurableSet.const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-const.md) | 250 | `result-track:4c1d319c9f1a28ed80bd5b5c09d55c6f2e4442c39ea99b111065e31242e8bc2e` |
| 33 | `theorem` | [nonempty_measurable_superset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/nonempty-measurable-superset.md) | 255 | `result-track:2af37bcdb6ce9cf2c8980b2b16b00b4522142c4a5302e11daf5b949f79dc1099` |
| 34 | `theorem` | [MeasurableSpace.measurableSet_injective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurablespace-measurableset-injective.md) | 261 | `result-track:9522055f04f5c43cafc5c77dc3119c44cf361d2d485a2a25838c1d8648056853` |
| 35 | `theorem` | [MeasurableSpace.ext](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurablespace-ext.md) | 265 | `result-track:a30187cacf5d6120c70532fe9430bdecf398f5b49fc65e60abaec3176aed98ca` |
| 36 | `theorem` | [MeasurableSpace.ext_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurablespace-ext-iff.md) | 270 | `result-track:4190dce10117840e2deaedc97361b534972673ecd50f579e0bbc52f5e5713efc` |
| 37 | `class` | [MeasurableSingletonClass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurablesingletonclass.md) | 276 | `declaration-track:cca3b2b20b412bb4bc511d0e00fc8a864156fa469c52216c7acdbaf6e96672ac` |
| 38 | `lemma` | [MeasurableSet.singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-singleton.md) | 284 | `result-track:70f3668dd41ca93c44ff6cb88a2fe19b502ea7a6df1e537ad1f82d99bce934f2` |
| 39 | `theorem` | [measurableSet_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-eq.md) | 293 | `result-track:3aebec614a10c9eb1d98b8f56e5b83407a1a9bc18bf07d40dc19c542a635d567` |
| 40 | `theorem` | [MeasurableSet.insert](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-insert.md) | 297 | `result-track:beb1d680ae29c76873f2883b3f6a952cbbe47af5384718300592ca576f1c0b01` |
| 41 | `theorem` | [measurableSet_insert](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-insert-source-edition-2.md) | 303 | `result-track:d38652b2d438718a61802d0875c3cf2f364a3f6028ca6f8b1b8ce8bb18089dd8` |
| 42 | `theorem` | [Set.Subsingleton.measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/set-subsingleton-measurableset.md) | 310 | `result-track:926e8e53cbf5437027c9815056d142272ebd094bc04e55f2c14afabc1e014bbb` |
| 43 | `theorem` | [Set.Finite.measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/set-finite-measurableset.md) | 314 | `result-track:59633cdc951db017a5b6179ed967cce83a257d6bf8841af73ed75ca5adb48248` |
| 44 | `theorem` | [Finset.measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/finset-measurableset.md) | 319 | `result-track:362c4f73445a753856224dcb59afb2558a4cbf75ae77cedc6171c4d763779cd7` |
| 45 | `theorem` | [Set.Countable.measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/set-countable-measurableset.md) | 323 | `result-track:98a42c9bb32cd92e79d7cafde76eedd03d683732c43948ec94d2f7e5f76f552a` |
| 46 | `def` | [copy](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/copy.md) | 334 | `declaration-track:cbcaf47003bd8ecd8e93679689bedc54bb73d27a8bfc8e4ebdb892cd51686457` |
| 47 | `lemma` | [measurableSet_copy](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-copy.md) | 341 | `result-track:fda1dce18c0a26a05bc076accd64b6a5a8b964cfa3d811f7151bde7bc76e800d` |
| 48 | `lemma` | [copy_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/copy-eq.md) | 345 | `result-track:2491df3f768c80c4325c8ea61c148368db389189e8559c98d3c6be61dfb21777` |
| 49 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/instance-source-edition-5.md) | 351 | `declaration-track:f8622bc491c42f26e320c69b03a965b7b1bbc53f841f3fad0ac0e66f6912c76b` |
| 50 | `theorem` | [le_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/le-def.md) | 353 | `result-track:33ad1026b7710919aa868194f0198c8d4e2dbc71f4357c4f174051f5c16d6136` |
| 51 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/instance-source-edition-4.md) | 357 | `declaration-track:9a5069ad6c08ebc44a27a1d9030d8817560d7ec20e8886ae1eadd6479e3adade` |
| 52 | `inductive` | [GenerateMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/generatemeasurable.md) | 363 | `declaration-track:525acea402220abea5111a15028df84ba6db7667a94ffdbf4373d24dc6249c48` |
| 53 | `def` | [generateFrom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/generatefrom.md) | 372 | `declaration-track:48c624667630a7d1fa882c8983ce9ceaf547b3a4bef50654be394750e17523d4` |
| 54 | `theorem` | [measurableSet_generateFrom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-generatefrom.md) | 379 | `result-track:eaf07a4264cfdfe8e72a8435b737170513047414b27198218813a2222e8dd5a8` |
| 55 | `theorem` | [generateFrom_induction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/generatefrom-induction.md) | 385 | `result-track:675f2ee4f8d46e20f687afc3855efeafece9a2244a91e6344f45aa96019cdcf4` |
| 56 | `theorem` | [generateFrom_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/generatefrom-le.md) | 393 | `result-track:27384f72b6f1d98a221fdd35cf26249273434ea6735df7f2ba381ca793a7c94c` |
| 57 | `theorem` | [generateFrom_le_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/generatefrom-le-iff.md) | 399 | `result-track:b59d4a99e755da735aa9540fac5b7218c028fed696f1dff1c318e78592215beb` |
| 58 | `theorem` | [generateFrom_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/generatefrom-measurableset.md) | 405 | `result-track:51ca0067a987e5bd241906b60e4d2f397c1ac3186a177df7b76393749412dc2e` |
| 59 | `theorem` | [forall_generateFrom_mem_iff_mem_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/forall-generatefrom-mem-iff-mem-iff.md) | 410 | `result-track:53d7cb2c81ecd4a3865db7c6f87ba738107a4ede6a3b637be0d3ef78b2e3de9d` |
| 60 | `def` | [mkOfClosure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/mkofclosure.md) | 422 | `declaration-track:bed6d1c9002814e2c2196d504432b1dbe5899d0d746ab49defdbbe538418490c` |
| 61 | `theorem` | [mkOfClosure_sets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/mkofclosure-sets.md) | 427 | `result-track:9dd5325c2836f462bbc29b0c7923eaeb95f05b6a2bc5298d1d5e201b5163edaf` |
| 62 | `def` | [giGenerateFrom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/gigeneratefrom.md) | 434 | `declaration-track:fdfda687ba51f650a82b6be9899578cae1f7b8d33daa64f43e3b1cc33e6f1ef7` |
| 63 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/instance.md) | 441 | `declaration-track:0de88743eb5ba165f550efa2a98e3003da5fbff50a5af1672efb878368479a61` |
| 64 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/instance-source-edition-3.md) | 444 | `declaration-track:5e2111afcc7e17bd0a72f85ef1d259aab324ce86f1b3a06470b1de6f9bde9a39` |
| 65 | `theorem` | [generateFrom_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/generatefrom-mono.md) | 447 | `result-track:a1d8a9340fff907d9d8ed1cb2fc9f5c88023cba458e49d216b868c1d5b85c291` |
| 66 | `theorem` | [generateFrom_sup_generateFrom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/generatefrom-sup-generatefrom.md) | 451 | `result-track:9da65fc909774d218408465a5dc40ee1fbb84d72675bdb0736007c4e29d5ea83` |
| 67 | `theorem` | [generateFrom_singleton_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/generatefrom-singleton-empty.md) | 457 | `result-track:8668b9b97fed99127e305af2c3d09027035cd23828c819c655e7d5f79ba02b4d` |
| 68 | `theorem` | [generateFrom_singleton_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/generatefrom-singleton-univ.md) | 462 | `result-track:9a6ff7a232b324caec0d76167bffa9c82b8f60697ef7c64e9a52538ad89de7c8` |
| 69 | `theorem` | [generateFrom_insert_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/generatefrom-insert-univ.md) | 467 | `result-track:cf9518f935d0281379aa88762ed1a91989ef52dad201aa43ed65c1d05cacbf53` |
| 70 | `theorem` | [generateFrom_insert_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/generatefrom-insert-empty.md) | 473 | `result-track:f69c4d7e4bc116bff663012ddfa56d25abe953af0ec0d5d025edbe2d986f087e` |
| 71 | `theorem` | [measurableSet_bot_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-bot-iff.md) | 478 | `result-track:d6c9bb5c66b6b72e7b01375826e0fb5821d6a31ca5515cff57c41a7328d727d4` |
| 72 | `theorem` | [measurableSet_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-top.md) | 491 | `result-track:a8b256fc996b7688e5c271ec4eea4a1e2607765146fccba8601e132309ba4688` |
| 73 | `theorem` | [measurableSet_inf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-inf.md) | 495 | `result-track:1301558a88524cf424f81f70ebccd8e92445f88ada7e129ffcc9c0ce82d7b833` |
| 74 | `theorem` | [measurableSet_sInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-sinf.md) | 501 | `result-track:64ddbe5b1aeec97de77fb158037ed05820febd23cfeb2d41b4a2c7e628d98f32` |
| 75 | `theorem` | [measurableSet_iInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-iinf.md) | 506 | `result-track:f8b86acf7163f336f97c06e3136ddab9a2da3145dae8515cdb7742f1a7baf9eb` |
| 76 | `theorem` | [measurableSet_sup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-sup.md) | 511 | `result-track:59b0d30481e9b09831719d403cea03b0e99f40456669eaa77f8bb31807ac5adf` |
| 77 | `theorem` | [measurableSet_sSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-ssup.md) | 516 | `result-track:c3620ed123d35799e795bf621d1d7fe01b77102070f3bed07f26151734595978` |
| 78 | `theorem` | [measurableSet_iSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurableset-isup.md) | 523 | `result-track:c1c13d51e791f0758b8d6fc6781598797f2dfb5aa8de118789382e0c5365a6b0` |
| 79 | `theorem` | [measurableSpace_iSup_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurablespace-isup-eq.md) | 528 | `result-track:dadd943d5eb5027fd51c1b4012f3599583234d17024e688cf1dfb7bb312c01a7` |
| 80 | `theorem` | [generateFrom_iUnion_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/generatefrom-iunion-measurableset.md) | 535 | `result-track:208fed79e601c12be4fde59b8296db302bcf35dc64efdec239b12ac6ac96b475` |
| 81 | `def` | [Measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurable.md) | 546 | `declaration-track:b18f856706feb4553b37bacfc971f4821537d6282588d3cefd1e26d61e38a1fe` |
| 82 | `theorem` | [measurable_id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurable-id.md) | 561 | `result-track:313a9f759755a9d8d579585dfab2c8e9a1b19f4cb7f33325a26907d6f871e651` |
| 83 | `theorem` | [measurable_id'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurable-id-source-edition-2.md) | 565 | `result-track:ce5070c15e90e5e293864e8fa785a1dd1839b1b216c997de19f82e789f821aa1` |
| 84 | `theorem` | [Measurable.comp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurable-comp-source-edition-2.md) | 568 | `result-track:42908ae7d8eef070c4d9a721549e2ca76eaa357da343ea793c04db5f767eb656` |
| 85 | `theorem` | [Measurable.comp'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurable-comp.md) | 576 | `result-track:0680b1d0981e5487b1b1e38bb7a48edf8ae1e3b70b3952c4bba55a4e2e834473` |
| 86 | `theorem` | [measurable_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurable-const.md) | 581 | `result-track:45c89d1fbff70b2e02028f363d0df2095896e4f40fd67ebff5db72283caaa1a9` |
| 87 | `theorem` | [Measurable.le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurable-le.md) | 585 | `result-track:2c7d6ee0952e1d6a36f6ec0f726df47daae1a799b234b16ef01fc02855243487` |
| 88 | `theorem` | [MeasurableSpace.Top.measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceDefNamespaced.lean/declarations/measurablespace-top-measurable.md) | 589 | `result-track:eb5c628f23834a970e2e1dbe900fc13fbcb99a23c211e7e2652eed24713d93de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56a5fd40526928a2d1ff40801033a8d8b47c902ff0f7777d4e6ac9052061e55b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/MeasurableSpaceDef/Variant95a9443d199eb40d886987fd1753bb916422d91906953c4b727639800e9ee24b.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/MeasurableSpaceDef/Variant95a9443d199eb40d886987fd1753bb916422d91906953c4b727639800e9ee24b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
