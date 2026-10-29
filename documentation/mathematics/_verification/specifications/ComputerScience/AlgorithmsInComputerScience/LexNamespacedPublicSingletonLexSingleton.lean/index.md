# Verification target: Lex Namespaced Public Singleton Lex Singleton

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73f46aee5569175c91d7be602ef3d83958937718",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantb328075bf7979b64ab68ec3d398b3bd66bbd4b0f77a71e11b93086e4941acdd2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73f46aee5569175c91d7be602ef3d83958937718`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantb328075bf7979b64ab68ec3d398b3bd66bbd4b0f77a71e11b93086e4941acdd2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantb328075bf7979b64ab68ec3d398b3bd66bbd4b0f77a71e11b93086e4941acdd2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Range.Polymorphic.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lex.Lemmas` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Lemmas` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lt_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/lt-toarray.md) | 37 | `result-track:f99067bf863c86d5340d3838bcdbe93792e73a33abb7828fba80faef97b91e67` |
| 2 | `theorem` | [le_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/le-toarray.md) | 38 | `result-track:921addc05657192463d78f74c4b2cfbe11496dfdbcb0ec86f5e1c8cc3c6f07c8` |
| 3 | `theorem` | [lt_toList](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/lt-tolist.md) | 43 | `result-track:a94e91eab58eb9e5b7c20e937f6987286c075e563247d9f14da267ba19c89658` |
| 4 | `theorem` | [le_toList](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/le-tolist.md) | 44 | `result-track:f582d36b609dbed0bafd6fdc9e4174883e312eaa147b5091695c8aa4713a6080` |
| 5 | `theorem` | [not_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/not-lt.md) | 47 | `result-track:b4690089e411fb98d8d2cc7ccde55eed9f13bedf6260456d1e27945cbaed7d65` |
| 6 | `theorem` | [not_lt_iff_ge](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/not-lt-iff-ge.md) | 50 | `result-track:b8598a4963291c2ce2f5f079dccf7b06499e087294879c6c3735aef3fd410f4f` |
| 7 | `theorem` | [not_le](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/not-le.md) | 53 | `result-track:7561541c9be80b20f6f34cbacfb83f9fc70d167d46aa3a3dfbae7a09906e5efc` |
| 8 | `theorem` | [not_le_iff_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/not-le-iff-gt.md) | 58 | `result-track:f12c487668c4682b955963ccc9d6a6e2969fb344f044b2f77697fa85c23948dc` |
| 9 | `theorem` | [mk_lt_mk](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/mk-lt-mk.md) | 62 | `result-track:fc66e6d45f1c9b74eaef6e47b1ae020f3954700a6e26bdae4652ad72527402c9` |
| 10 | `theorem` | [mk_le_mk](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/mk-le-mk.md) | 65 | `result-track:475e948985331b2a1cb138bd65e0fc6f8f41955f7df086f9e57477ac81db74fa` |
| 11 | `theorem` | [mk_lex_mk](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/mk-lex-mk.md) | 68 | `result-track:e9fd42b9315e0dfa5c3cec70b3bc332d941d8222d8dab874d72b535c519196c4` |
| 12 | `theorem` | [lex_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/lex-toarray.md) | 73 | `result-track:c2868c7bf0d39262c2ac3f5072849a37727089199cc281d170233555e65fcc5b` |
| 13 | `theorem` | [lex_toList](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/lex-tolist.md) | 79 | `result-track:79462c519b07e05d2ecf3765aad602a16b633aae8ad357bb512deebcd35332b5` |
| 14 | `theorem` | [lex_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/lex-empty.md) | 85 | `result-track:72acd933184ff643338c42f55056ad8c9417a4ff5bed402ca996034efb81c1f6` |
| 15 | `theorem` | [singleton_lex_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/singleton-lex-singleton.md) | 90 | `result-track:d33fead7c5a549513f2a61395d8e0d9f5300ddfb6ebdb89908bcbad58104c6aa` |
| 16 | `theorem` | [lt_irrefl](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/lt-irrefl.md) | 93 | `result-track:2fdb1bc33d383f136ca83b8132898ac3d8e36582130409f4a3e867994f01e1f5` |
| 17 | `instance` | [ltIrrefl](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/ltirrefl.md) | 96 | `declaration-track:5104c7b3087112fab349992d655af07ae3ddafb8d32b5522c3ff4d0190c9c8e1` |
| 18 | `theorem` | [not_lt_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/not-lt-empty.md) | 99 | `result-track:4b9c746178e61ff05e7790507f0db23c1d7d64289884b808bc75ddc9b465207a` |
| 19 | `theorem` | [empty_le](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/empty-le.md) | 100 | `result-track:8498b3275341cb03e39a920a2a6cef3e27869c295df740187684939275590851` |
| 20 | `theorem` | [le_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/le-empty.md) | 102 | `result-track:fc7462cdf0ab7363dd2c7abbb7a1823d7bc849f20d0dca7ce518b814b447a831` |
| 21 | `theorem` | [le_refl](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/le-refl.md) | 106 | `result-track:52d3de2dd39b470b35eb05bb7daf8ec6e349b8374a8f260230e5b15e68db85c1` |
| 22 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/instance-source-edition-2.md) | 109 | `declaration-track:4cfc9ff5181e38a159df8e77de09379ffd4426b2add7cfeb25b1f026a68566c5` |
| 23 | `theorem` | [lt_trans](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/lt-trans.md) | 112 | `result-track:4bd3c654749aae7c84b083c5e6507405b0c06647ba9c77d228ee806c37639456` |
| 24 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/instance-source-edition-6.md) | 117 | `declaration-track:dd3c8181a20fe9cd171bbc273ab7745bdc53d9f9738aa2f4e0aaa58a2845130f` |
| 25 | `theorem` | [lt_of_le_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/lt-of-le-of-lt-source-edition-2.md) | 122 | `result-track:98e2785e2a10ba0facd2977e59aff17d9bd8c4c2d888b33ae4474637ae6ecc36` |
| 26 | `theorem` | [lt_of_le_of_lt'](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/lt-of-le-of-lt.md) | 127 | `result-track:74bda96cb2128a5540a0907a23f9cf1c2b50ae2191baf467c722bfe41c553332` |
| 27 | `theorem` | [le_trans](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/le-trans-source-edition-2.md) | 136 | `result-track:f2a150f51966a15f43397f5cf504cc27237293aec0971a06bb2df05e2dc7b962` |
| 28 | `theorem` | [le_trans'](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/le-trans.md) | 141 | `result-track:c333f0a74241aef9babb7225042edbb0d23f155c3c4e909b8dca412d47922c16` |
| 29 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/instance-source-edition-8.md) | 150 | `declaration-track:f3dae7b8a3da1cd811f8ae53691b9107acfce3d549a471521bec036e140054fd` |
| 30 | `theorem` | [lt_asymm](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/lt-asymm.md) | 154 | `result-track:773e60c2b0a4380d2f2657d9ab367b22a5cdc0ba42e4da394132f63dddc32503` |
| 31 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/instance.md) | 158 | `declaration-track:13de99a562ce0bbfc594608a16375ba826cc98d239124020a29be61ad0533704` |
| 32 | `theorem` | [le_total](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/le-total.md) | 163 | `result-track:69730ee45b45ac796f84f54fbb833b4d2762201d4d3541924b725979ccc7bd7b` |
| 33 | `theorem` | [le_antisymm](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/le-antisymm.md) | 167 | `result-track:7dc8df5b099b2b7de0554386236780130c290fa5a00bda827ec77c6ddf126710` |
| 34 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/instance-source-edition-9.md) | 171 | `declaration-track:f45a4eacf23ceb905c7852317763fcb711d43a1de2944f8fc2985abe178f421b` |
| 35 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/instance-source-edition-3.md) | 175 | `declaration-track:87c3fdbfd354dd9512d7f98a2120dee1d5909a88c902f9012ee4946e9c42e18e` |
| 36 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/instance-source-edition-4.md) | 182 | `declaration-track:a6d36d33dcaca172c20bb661d0cf3215552ae2ca1185130150d0d007bcfed1b1` |
| 37 | `theorem` | [le_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/le-of-lt.md) | 187 | `result-track:7f0e2fa3ac637a741e85005571f6aaff71b9391be78d16ba20b8e55ed555d8e7` |
| 38 | `theorem` | [le_iff_lt_or_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/le-iff-lt-or-eq.md) | 192 | `result-track:a69604cb9aee52edc73673af20057ec5e312fb29ce5c6fa4e5ffc3d527462a9c` |
| 39 | `theorem` | [lex_eq_true_iff_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/lex-eq-true-iff-lt.md) | 198 | `result-track:bb3964f6dea048b15296eab9375f2910b10a4addd81509bc80848627599392d1` |
| 40 | `theorem` | [lex_eq_false_iff_ge](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/lex-eq-false-iff-ge.md) | 204 | `result-track:c5ee4d37b2e505d1cb8006c9121511e3e5652973f8d9d1694b75af2cf495e665` |
| 41 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/instance-source-edition-5.md) | 210 | `declaration-track:c8a0753a2c394ec8a4c85194c1628af6bc4c6b1c98fc2e35cef588bea1b36180` |
| 42 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/instance-source-edition-7.md) | 213 | `declaration-track:f0e6710537fe3b9296a95e06502d2415ed7c5f0c54265454b24cade0c3b7346a` |
| 43 | `theorem` | [lex_eq_true_iff_exists](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/lex-eq-true-iff-exists.md) | 222 | `result-track:a876ad022f7cea92a1cc8867f60e18706b979e2287e86c1c06fb897800be0be6` |
| 44 | `theorem` | [lex_eq_false_iff_exists](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/lex-eq-false-iff-exists.md) | 244 | `result-track:433711ee4050934d9e99867def4461f5aae03aa5ef753354ca7d37f5ae108011` |
| 45 | `theorem` | [lt_iff_exists](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/lt-iff-exists.md) | 256 | `result-track:b9b6e93787c77efb019f0fec1dc35429e75fd5f7f0c028af2e56d288214f9ea8` |
| 46 | `theorem` | [le_iff_exists](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/le-iff-exists.md) | 263 | `result-track:c9c19340ff29086275d05501648b2fed471ee541d1566c83f86dfb42ff35a14e` |
| 47 | `theorem` | [append_left_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/append-left-lt.md) | 273 | `result-track:7d3ef8d4151d208dc48aac240dd809a2706b227375fe11535df7341b9c713e79` |
| 48 | `theorem` | [append_left_le](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/append-left-le.md) | 277 | `result-track:0691e04c90eef48833c6843523dbe2a8a69d9a56da5463c7da1df0d4e8211e0c` |
| 49 | `theorem` | [map_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/map-lt.md) | 284 | `result-track:6c099d33b0dc374f399469815aafdd90736d5ff1f5c1886a6eaf077c2fa6c490` |
| 50 | `theorem` | [map_le](../../../../../ComputerScience/AlgorithmsInComputerScience/LexNamespacedPublicSingletonLexSingleton.lean/declarations/map-le.md) | 289 | `result-track:87ba87ae2dbe5a76fee5e6a65bff3b67a2fe20a3cb7803e26774806e6671482c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34ef4532e255ec4d84e2f130edda0357b204e7ae8dcf70ea0c09984325d1eafd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantb328075bf7979b64ab68ec3d398b3bd66bbd4b0f77a71e11b93086e4941acdd2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantb328075bf7979b64ab68ec3d398b3bd66bbd4b0f77a71e11b93086e4941acdd2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
