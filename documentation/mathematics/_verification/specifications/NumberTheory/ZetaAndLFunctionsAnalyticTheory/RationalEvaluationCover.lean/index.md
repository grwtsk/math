# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.RationalEvaluationCover

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b99bcebf1f7758bfb60c58a3ffa7b85d495d1047",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/RationalEvaluationCover.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b99bcebf1f7758bfb60c58a3ffa7b85d495d1047`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/RationalEvaluationCover.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/Positive/RationalEvaluationCover.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalEvaluationCover`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluationCover.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [baseOne](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/baseone.md) | 22 | `declaration-track:26272af37ecd7f3eab1176ca0e9f0637a6a623f16163b9c3f7d30bef5c0a693e` |
| 2 | `def` | [baseTwo](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/basetwo.md) | 23 | `declaration-track:6cc2a6888ae3d59fd9a1da631d91888e1b4a713d9bcb7b08c5fb7fb52aa06ae0` |
| 3 | `def` | [actual](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/actual.md) | 26 | `declaration-track:f4396f48f364946ef80383697a8a166567b9209371ac3c8e7016b668eef177d4` |
| 4 | `theorem` | [actual_check](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/actual-check.md) | 36 | `result-track:9bbae54b12be9f75be3474bfab28ea76948e08cb933c4e39a2db0a6a041a3bcd` |
| 5 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example-source-edition-25.md) | 37 | `declaration-track:b69c995680974affefa7144a594cc198a540af7d8684298fe41652c86617c4a8` |
| 6 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example-source-edition-22.md) | 38 | `declaration-track:9e131885bae93060095c443e262650b3eec0b8081791d117f543fd074458dc48` |
| 7 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example-source-edition-6.md) | 40 | `declaration-track:29d65f88ca2aa82f724b952143b9a96547b6a91637eaa1c3ebacc295d12707cf` |
| 8 | `def` | [box](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/box.md) | 42 | `declaration-track:38a16c3a41d7811c9eae7cb656377f7fc3cd8dabf8b712445e89dbbb35dfcbe8` |
| 9 | `def` | [packets](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/packets.md) | 43 | `declaration-track:37af66d2ebb36719b49d004f87b0a15569a0037656753f90dad730467bea48c3` |
| 10 | `def` | [tree](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/tree.md) | 44 | `declaration-track:623909e7cc5b76f87345b7605d2dda2222d34a5e90769a4509a0021c90cf9e3a` |
| 11 | `theorem` | [checked](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/checked.md) | 46 | `result-track:867bb513de40222aebbff8b42bb8f95e5e8205782d89c227457a68aeac831970` |
| 12 | `def` | [splitTree](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/splittree.md) | 49 | `declaration-track:822578a84879733bd596e30047a937fcbe32043a8878571f64d5b91b88201503` |
| 13 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example-source-edition-14.md) | 51 | `declaration-track:6b0beead1cd4c81ba465330cd11447d0fec9aa0e20106ec796bd22d854b1e939` |
| 14 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example-source-edition-16.md) | 52 | `declaration-track:77d72a1da080ca63f477d8c2c8ef4e144fad3113d2e86148fd9b6be891f9ba35` |
| 15 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example-source-edition-17.md) | 53 | `declaration-track:79c27e4bd1228535f03bfe64f7d4cccac8a3ad2ff1a404b351a8fd2e498fc361` |
| 16 | `def` | [cover](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/cover.md) | 55 | `declaration-track:3e5015a700f6ff48e3597f10e591a0504a7d4c37d4a46625801ce0c4cbdd7f55` |
| 17 | `theorem` | [disk_norm_lower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/disk-norm-lower.md) | 59 | `result-track:50ed140796beb671a044fe8dc37c4046128ec36889a0d6a1b4c9755cab552e1a` |
| 18 | `theorem` | [box_norm_lower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/box-norm-lower.md) | 65 | `result-track:3d493930269ca2843115ea7f73b42bce1a6caec64ebacebcea0759aa10b4490c` |
| 19 | `theorem` | [box_clear](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/box-clear.md) | 69 | `result-track:74af1cc673ff342554c6aa0b6b6986916d0d8b2d61521aaf09f973c5f4a36f4b` |
| 20 | `theorem` | [reflected_box_clear](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/reflected-box-clear.md) | 71 | `result-track:3e01ac396b3dad46bc58caed70b0ec1194dce7e2b1afe5e5bbc2138444868032` |
| 21 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example-source-edition-5.md) | 75 | `declaration-track:21788f6a593e4cffdb1c3b9615474aa1993b176b2ab735e48218ea91d8136c7c` |
| 22 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example-source-edition-11.md) | 76 | `declaration-track:5acceca7f94f6e72d4c7bfd3c1d170bd41d9f858ef72e77d3c04146896850c2b` |
| 23 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example-source-edition-4.md) | 77 | `declaration-track:19639b417b221ca8bfd5023b62f7278177f7b739dd4b49fef9208202a0ad60c6` |
| 24 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example-source-edition-21.md) | 80 | `declaration-track:9d2c6f337c4e3ec4e4093eb7eed1e2ef7d7416f34c3d3a1482e898af92ff617b` |
| 25 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example-source-edition-7.md) | 81 | `declaration-track:2c569f988680e38ad245af414ca9d6fae7240926cc9543ffd886ea2c39e95645` |
| 26 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example-source-edition-13.md) | 82 | `declaration-track:686bd33bd724edc50907b98a6d1c2af294ff126bf1530073860a0051247471e9` |
| 27 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example-source-edition-12.md) | 85 | `declaration-track:5b71ae1929d0c5ed93aa49c26a8932b259ec0c6a77f644bdfb0bc098de72a0df` |
| 28 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example-source-edition-3.md) | 86 | `declaration-track:16e36af3fd7b14b8e1a1a8fea17b86d6aec522d689c8905fc8b0510a4dbedeb3` |
| 29 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example-source-edition-15.md) | 87 | `declaration-track:7789c72063f04b38c8209ad957918b0315bb658d42ee2ec5d1a5a6fb0665a00a` |
| 30 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example-source-edition-20.md) | 88 | `declaration-track:92c9019ac525d3312d9ebcf0049044e5487a370bf0b2f7721bb520f7933e8c15` |
| 31 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example-source-edition-26.md) | 89 | `declaration-track:e6e5cca6d3351039cf4e03c8a3ad27513f5f59384cccfeb41b6e97411ced4479` |
| 32 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example-source-edition-23.md) | 90 | `declaration-track:a23765bd272f7f8d63b932c7ed4f736b00e345d0e7e0de024d89acae65364683` |
| 33 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example-source-edition-24.md) | 91 | `declaration-track:a868321b0c2d371b91e9b8136885a3e2bd9abd3f058b95dff49e14a45d1596ed` |
| 34 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example-source-edition-19.md) | 92 | `declaration-track:842de6b8f70a6c2bb19d3ed04e077208756d9fbec6f010938cebeab4860713b1` |
| 35 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example-source-edition-9.md) | 93 | `declaration-track:4b6a31b7a40845644ce55a651f6fae4b35e1a2224e26205a1f77aea09ca6add5` |
| 36 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example-source-edition-2.md) | 94 | `declaration-track:081dc52514ca6fa46159c1710ab70c52db32e33de94ea23e725b0cc3f03aaace` |
| 37 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example-source-edition-8.md) | 95 | `declaration-track:49a969c480b6b1e385e4c65c99e1cfba2ffc3fc9c4ddc132535de634419264df` |
| 38 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example.md) | 98 | `declaration-track:04feef96ed1f0b609881e2bbd4495ccbe3796ae1cc0ca6de3ff299c6d14ecefb` |
| 39 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example-source-edition-18.md) | 100 | `declaration-track:81d96029247c967c462aa389306f7d478843e188885492b66c21f44326c74509` |
| 40 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEvaluationCover.lean/declarations/example-source-edition-10.md) | 104 | `declaration-track:55e1f5a693896b276d966e77908e666428c1f3526659163d322a0db363e56b38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee2ac197a664755a4123b533edc59b71a87143564b5ed37ebfaa8a8155259cdb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/RationalEvaluationCover.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/Checks/Positive/RationalEvaluationCover.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
