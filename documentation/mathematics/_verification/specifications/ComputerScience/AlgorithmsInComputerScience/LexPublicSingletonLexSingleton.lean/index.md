# Verification target: Lex Public Singleton Lex Singleton

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8928f01b9fb654fccc41b278d2dc35f6ed19e63f",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant162916244f1068880d3b8030811c4382e9f99dbbc58e636ea7264b13153a3238.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8928f01b9fb654fccc41b278d2dc35f6ed19e63f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant162916244f1068880d3b8030811c4382e9f99dbbc58e636ea7264b13153a3238.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant162916244f1068880d3b8030811c4382e9f99dbbc58e636ea7264b13153a3238.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Range.Polymorphic.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lex.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Lemmas` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lt_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/lt-toarray.md) | 29 | `result-track:ea3827d4289c21775a1cb3ec06635e72c157e891b48d83251d34f463269c0718` |
| 2 | `theorem` | [le_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/le-toarray.md) | 30 | `result-track:4c7ff11c62aaf2d5e379d1bb378bfa0115f5641655e8a553506c49fcfdce3f7e` |
| 3 | `theorem` | [lt_toList](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/lt-tolist.md) | 35 | `result-track:ec1e20da950c784d2ac7c24b7dc263d2520fedfd6a17adac90233999097b0ab4` |
| 4 | `theorem` | [le_toList](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/le-tolist.md) | 36 | `result-track:45510f80dcdec59670b50642f51c751c2f3dec9dd96e2597354c4038852d8db5` |
| 5 | `theorem` | [not_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/not-lt.md) | 39 | `result-track:388a41edf2e890d0465af76ca37afb2e3538dc0db79a43a8e7ad8d074a2cf8a9` |
| 6 | `theorem` | [not_lt_iff_ge](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/not-lt-iff-ge.md) | 42 | `result-track:70f39630876427d39dc5130e317e3812f3eb836837e0c2083daf1eb6acc74e37` |
| 7 | `theorem` | [not_le](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/not-le.md) | 45 | `result-track:97f7b5484ac01093beef99e902873a176f2f21e920c35c825d7bed3cc6d7985e` |
| 8 | `theorem` | [not_le_iff_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/not-le-iff-gt.md) | 50 | `result-track:255ba27893f51c44c2f3d8408f5981bbdd1def1e31c0f6cac42cab3a48ed29f5` |
| 9 | `theorem` | [mk_lt_mk](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/mk-lt-mk.md) | 54 | `result-track:c5b8f8bdd4437b742f7263f700f87761f907d538cf634ec7f4955e1a7af18212` |
| 10 | `theorem` | [mk_le_mk](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/mk-le-mk.md) | 57 | `result-track:1b506464a9e17bb01496902f0042cfcec85a9995a45837d19290c6ead0f762d6` |
| 11 | `theorem` | [mk_lex_mk](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/mk-lex-mk.md) | 60 | `result-track:33888648d308ed9ae8afbcdd3e2f006e05b2ad3fd910e0885fcb7d620158af97` |
| 12 | `theorem` | [lex_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/lex-toarray.md) | 65 | `result-track:bb134e973d71d91b9731e88b06fd14e74ad5ee63ce7da8e0a27da54b689b9a93` |
| 13 | `theorem` | [lex_toList](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/lex-tolist.md) | 71 | `result-track:b7356b0cabd5a276cd291b797f53004acd128cf7d35290053dcef47555faab97` |
| 14 | `theorem` | [lex_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/lex-empty.md) | 77 | `result-track:8f6da8f61142baf130566911757aa61345d45862d8f68a6404813931a489c3db` |
| 15 | `theorem` | [singleton_lex_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/singleton-lex-singleton.md) | 82 | `result-track:c2b68078e1ef59e635f3776fcbe7e7182373e3576b6c0b6b7d70b227f6ccbbf4` |
| 16 | `theorem` | [lt_irrefl](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/lt-irrefl.md) | 85 | `result-track:05cd1ff57e3a1ddb2bf885c443479b6f8a3c35808f3d1e1e0a530ef1c8abf62a` |
| 17 | `instance` | [ltIrrefl](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/ltirrefl.md) | 88 | `declaration-track:d9ffc9aac05930572ab1ce4459981165a339b38b9aad331c01f7020acbf4f57b` |
| 18 | `theorem` | [not_lt_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/not-lt-empty.md) | 91 | `result-track:63a2ac085522103e5aae9dde33a4eb1a57fb0c0fa7c6162cffc16e75b44d66d3` |
| 19 | `theorem` | [empty_le](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/empty-le.md) | 92 | `result-track:73bf471d104b7527f318836389d54c282867066041cc1f0e9a871bc35c232cae` |
| 20 | `theorem` | [le_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/le-empty.md) | 94 | `result-track:8f2aac2f24ed5b719f696f1c4bca74a8bd7acd66390b4103190a8809832b36bd` |
| 21 | `theorem` | [le_refl](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/le-refl.md) | 98 | `result-track:278bdc20157c67fc4e84d05f8bff5c56c437beeb766b77bec84532c16effea56` |
| 22 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/instance-source-edition-9.md) | 101 | `declaration-track:f8c005c925ddae635eafa535d29d53e21afdb33138f946d23919ab96e48edba9` |
| 23 | `theorem` | [lt_trans](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/lt-trans.md) | 104 | `result-track:986464a395345c148081f4d0fb71592c51d851ce06ab087bab98a6dc590a69d9` |
| 24 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/instance-source-edition-3.md) | 109 | `declaration-track:45d0a16e41c83a60454f6f19ae30fe9a596846810c9a01b6e34f9b2dceaf7886` |
| 25 | `theorem` | [lt_of_le_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/lt-of-le-of-lt.md) | 114 | `result-track:78769d75abcba78be7cd6339693710c2fcd12971161d85a34a9ddb2b02e1b478` |
| 26 | `theorem` | [lt_of_le_of_lt'](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/lt-of-le-of-lt-source-edition-2.md) | 119 | `result-track:da447ffebee4afc4bf340ab7c4153ac04e09bd004e049b85606fda6a936c118a` |
| 27 | `theorem` | [le_trans](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/le-trans-source-edition-2.md) | 128 | `result-track:d51c4fab604f287190eb2772e09cc6d310abf6c8c7f1a8f845da5c9dc4e9be59` |
| 28 | `theorem` | [le_trans'](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/le-trans.md) | 133 | `result-track:752a7822c209890accfa914020186fbcf731897343e93dd2f5a5df8643ccc59d` |
| 29 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/instance-source-edition-8.md) | 142 | `declaration-track:d2354adacb7059aeaac516106e865cb62a10e9e03bed76e568c949a1d3193074` |
| 30 | `theorem` | [lt_asymm](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/lt-asymm.md) | 146 | `result-track:04d542dc36fd60eff8c756e58fbbdb6bda1b5bb13ea7fae87e49fb11dfe7f827` |
| 31 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/instance-source-edition-7.md) | 150 | `declaration-track:ca3d83a0d7dce1ca0cb1b60bf13163b7d28f0d469e22d44e541dbb79876238b0` |
| 32 | `theorem` | [le_total](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/le-total.md) | 155 | `result-track:9b0c93a2e3d0386d13b045ee00aae4284f8b222dbcfc214127df8ded020f58f5` |
| 33 | `theorem` | [le_antisymm](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/le-antisymm.md) | 159 | `result-track:020c7d2a57335b93ab5710c2eb4bccab36ce2dc66b466e463d6df1efe3fb8e51` |
| 34 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/instance-source-edition-6.md) | 163 | `declaration-track:acfac5c653c54404c6547c8d9c8dde90c27cf98c8533a346f2ce1785708ad3aa` |
| 35 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/instance-source-edition-4.md) | 167 | `declaration-track:5625288bfe080950961524e2378cb6c5ef84a3eeda23d08717ea23ebfa7cd699` |
| 36 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/instance-source-edition-2.md) | 174 | `declaration-track:2d59b7da8667ab0d795203ea35c236d5b99f3844e9fe2dc9a29572332c888b74` |
| 37 | `theorem` | [le_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/le-of-lt.md) | 179 | `result-track:ad02cdc51da7740bdac6a71c6c367f9625763abfe2a49dd0582973e66613bb18` |
| 38 | `theorem` | [le_iff_lt_or_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/le-iff-lt-or-eq.md) | 184 | `result-track:4fc14475c18e0eac1927615e23f5aafcf2e03a991ba74ccbf9c13c58942da20e` |
| 39 | `theorem` | [lex_eq_true_iff_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/lex-eq-true-iff-lt.md) | 190 | `result-track:03be83a6a3beb7fbfd3fc73868b58d4910358e5f7e7ccf811c6d2747c8f06944` |
| 40 | `theorem` | [lex_eq_false_iff_ge](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/lex-eq-false-iff-ge.md) | 196 | `result-track:d1999889bf22b890d715a7c81e6ad44a4fd8afb2ff9e3b0c0f5df5783e4f6623` |
| 41 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/instance.md) | 202 | `declaration-track:041ded6f957c1349e11a55b5503bedb6942630fe4edfb686752b091232e5f9ea` |
| 42 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/instance-source-edition-5.md) | 205 | `declaration-track:72d69b2cf2106adbbfac845f27a9b0c97f11ee80b3e64d2f0e03223987e31bae` |
| 43 | `theorem` | [lex_eq_true_iff_exists](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/lex-eq-true-iff-exists.md) | 214 | `result-track:ee970e3a92f2b27991813bcf3599687e5668da4142f09915313ab0f87a2a9dc0` |
| 44 | `theorem` | [lex_eq_false_iff_exists](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/lex-eq-false-iff-exists.md) | 236 | `result-track:5934acc80a1e820f739fbafd4323606484405a200121cfbfbdb9934b677cb337` |
| 45 | `theorem` | [lt_iff_exists](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/lt-iff-exists.md) | 248 | `result-track:aa67424d973b31705ef5454b2218a288e079e9a50d231c194566c36c51bbb929` |
| 46 | `theorem` | [le_iff_exists](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/le-iff-exists.md) | 255 | `result-track:58dcc65f58896ae6402063969ee48f05ac3940859224b4f6461f81c9861e9e51` |
| 47 | `theorem` | [append_left_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/append-left-lt.md) | 265 | `result-track:572f61d494ad66c0448ebd42264494e4ea8dff2c0205ed79ccbb0d0caa3d57ce` |
| 48 | `theorem` | [append_left_le](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/append-left-le.md) | 269 | `result-track:7e3c5ef3247c25061ac812221787afb660bf33c57a028977978f97be828e69f8` |
| 49 | `theorem` | [map_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/map-lt.md) | 276 | `result-track:8e9afaa73963192b12414ff97009d44e1ad6b90d92da74860a2ff02744b0e353` |
| 50 | `theorem` | [map_le](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicSingletonLexSingleton.lean/declarations/map-le.md) | 281 | `result-track:216c2646ebecfbd401d2d9a8509e9d1ebec69d416c056a0828506df9637af29d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=392e108b102d6b1909ece2be43a1d01d374e83816ac46d42f616d6576846114d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant162916244f1068880d3b8030811c4382e9f99dbbc58e636ea7264b13153a3238.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant162916244f1068880d3b8030811c4382e9f99dbbc58e636ea7264b13153a3238.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
