# Verification target: Walk Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e13256d3741c0138802880d961077409f7ed83df",
  "lexical_observation_count": 237,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Walk/Variantd816791aaeac6b28f6975acd932e19f8c6ac120af451c633dffa60dbf791efff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e13256d3741c0138802880d961077409f7ed83df`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Walk/Variantd816791aaeac6b28f6975acd932e19f8c6ac120af451c633dffa60dbf791efff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Walk/Variantd816791aaeac6b28f6975acd932e19f8c6ac120af451c633dffa60dbf791efff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.DeleteEdges` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Walk](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/walk.md) | 61 | `declaration-track:42bc41297d61282e21495d710fd32b11656a34a46762c7485e331d320d1e600a` |
| 2 | `instance` | [Walk.instInhabited](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/walk-instinhabited.md) | 69 | `declaration-track:79cc84ee08e0ce846d5cbfd984f7398777b0c7466a4420907833de991105396f` |
| 3 | `def` | [Adj.toWalk](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/adj-towalk.md) | 73 | `declaration-track:25055cf0e5f9c7d86f119319ec148cd197c5610a643ea1ec88fb38374b511c9f` |
| 4 | `abbrev` | [nil'](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/nil.md) | 82 | `declaration-track:764b7d48f41b580ad94d7cdf392d2a6d78117a261da21bc61f21ae4729853d85` |
| 5 | `abbrev` | [cons'](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/cons.md) | 86 | `declaration-track:e706977f43093f65c85e1b51fd6f13608e769afd551846aed334a4b8add35e2c` |
| 6 | `def` | [copy](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/copy.md) | 94 | `declaration-track:85f83ac8a4e845bd7f10e76f99ba6245aaa2dbffce4430bf0a9bcac4ef195559` |
| 7 | `theorem` | [copy_rfl_rfl](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/copy-rfl-rfl.md) | 98 | `result-track:18838accd10b21e43cfacbb5f49e73145adc7e40d98947c867384232848a2e53` |
| 8 | `theorem` | [copy_copy](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/copy-copy.md) | 101 | `result-track:814c2b2e70b9f2e86497cf2a0070074fd4c8c1a1aaf6121e38d85572a2ede4ad` |
| 9 | `theorem` | [copy_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/copy-nil.md) | 108 | `result-track:a3bab9c9ea617779517572a3878795033a2cddc180587008d1e16bfe63c427af` |
| 10 | `theorem` | [copy_cons](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/copy-cons.md) | 112 | `result-track:97ddfff0aa2783480794ba52c2aabe3e9b85c6490b2ce5867e2dca0b980b99df` |
| 11 | `theorem` | [cons_copy](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/cons-copy.md) | 118 | `result-track:1092770771aad0a375c4af9d1f63d25ee6beb52ae020654319fc1a6e78084e6c` |
| 12 | `theorem` | [exists_eq_cons_of_ne](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/exists-eq-cons-of-ne.md) | 123 | `result-track:d5c0f64342363f3f8b47511dbcce7a4cc8cff28fe94926c656b3ac0134e461c6` |
| 13 | `def` | [length](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/length.md) | 129 | `declaration-track:f0ede5a32124c86673a62f9246ad86341f814fbcf8e37d7163420424926edec2` |
| 14 | `def` | [append](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/append.md) | 135 | `declaration-track:4a5ba158ac70acc1737542f897471ab94d7a644b99f63458b471a8a825582dbd` |
| 15 | `def` | [concat](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/concat.md) | 141 | `declaration-track:ee0328dfdb7bd1d0cf941d9d64f7e0d8d988da0cac6f3d3bbb7c2a490c55faa5` |
| 16 | `theorem` | [concat_eq_append](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/concat-eq-append.md) | 143 | `result-track:6629e92ecb7354abc313dcded54effc63750ef77e13dd97c226d12911b7f1e21` |
| 17 | `def` | [reverseAux](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/reverseaux.md) | 147 | `declaration-track:a5c393a1f20734742433bc96cfe516d120b77614871bdce925151ba3b91b8317` |
| 18 | `def` | [reverse](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/reverse.md) | 153 | `declaration-track:b73e0401fbf797ce144ad28b59925a46853b72dfba48f7dca0b7402cfa605979` |
| 19 | `def` | [getVert](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/getvert.md) | 158 | `declaration-track:3d1f2f3f0e7b3b13c8e790c4997fe149a34008102750547e66b0a1c739f539bb` |
| 20 | `theorem` | [getVert_zero](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/getvert-zero.md) | 164 | `result-track:57b346611a9ac2878428deef9698eb228fb97b3a26d51ed6a851e0423d94fdb5` |
| 21 | `theorem` | [getVert_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/getvert-nil.md) | 167 | `result-track:8133b02c6901f042d0e902d68cb4045adddb464763ddbb26f0604e88e3e1604a` |
| 22 | `theorem` | [getVert_of_length_le](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/getvert-of-length-le.md) | 169 | `result-track:77cc7abaa9e4df820e82857a6c670093b56c8dd1dcbe6a4ed7a217d651a34fc2` |
| 23 | `theorem` | [getVert_length](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/getvert-length.md) | 179 | `result-track:2108257a6956e6feca10655a7c344e5e715ff7006e3935f04b7021f6346f42e5` |
| 24 | `theorem` | [adj_getVert_succ](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/adj-getvert-succ.md) | 182 | `result-track:e36b124cc2eeda864b076f3489bde4aed5eac6290f020de0d27fd1385868108b` |
| 25 | `lemma` | [getVert_cons_succ](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/getvert-cons-succ.md) | 192 | `result-track:d2981d69c0317f260cfe76fb64ae4458972dc4d48aa12ed456dd88d4e1aeecdf` |
| 26 | `lemma` | [getVert_cons](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/getvert-cons.md) | 195 | `result-track:8419ba593244042063034da61dd6781c18e1c15078e9770fc39d804ec87b8f4c` |
| 27 | `theorem` | [cons_append](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/cons-append.md) | 201 | `result-track:38eeafb33e013e53dee5e3d1b03a87cc80c85e1d52f339bdf5ccdb1d44c77038` |
| 28 | `theorem` | [cons_nil_append](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/cons-nil-append.md) | 205 | `result-track:3ad4939a368e838e611192301bf1ec6ff5d5bbbcd76b0d3631cc33a8b5bd4989` |
| 29 | `theorem` | [nil_append](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/nil-append.md) | 209 | `result-track:7993b7f3038e8718de1c7eb4307b9629fbf1c894f339f10512a683319ee4ed3f` |
| 30 | `theorem` | [append_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/append-nil.md) | 213 | `result-track:eeecdfe6e41acea05492e5a3765e8689aaad8a868a59e30beff58d57c353d987` |
| 31 | `theorem` | [append_assoc](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/append-assoc.md) | 218 | `result-track:926f8d5877d0cdda0a0ce99b891c71c0e160de79eff63f68b72359aabc0bdda3` |
| 32 | `theorem` | [append_copy_copy](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/append-copy-copy.md) | 225 | `result-track:23efd061fc598ff5fbe093fa865149f1685288ec9c4d612bd6054af8949f51dc` |
| 33 | `theorem` | [concat_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/concat-nil.md) | 231 | `result-track:8c1897c7568a02e8e234abcf122d56ed89bc77b1c53e2a4ff07e32ba1cbb585e` |
| 34 | `theorem` | [concat_cons](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/concat-cons.md) | 234 | `result-track:75efb04226eb2b1898a24b3cadf4f499ba2af750be172086655bdc72c5d05307` |
| 35 | `theorem` | [append_concat](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/append-concat.md) | 237 | `result-track:1feaf26bdbad1af4fe724cfdcd9472efa0ac007820243799fd965a201ca1277e` |
| 36 | `theorem` | [concat_append](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/concat-append.md) | 240 | `result-track:1fd96c6a3d79e1921c0673cb213f98e985cd506e001c167aebcb1a5954c91295` |
| 37 | `theorem` | [exists_cons_eq_concat](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/exists-cons-eq-concat.md) | 245 | `result-track:2a97165d03ca23b657cdc673c61d2e2919f67999a46fbc1dd4559b97db4b8089` |
| 38 | `theorem` | [exists_concat_eq_cons](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/exists-concat-eq-cons.md) | 255 | `result-track:5420a652fd0ee118f7db2bac4a4f7addeb5922008400728c57a516d716332f63` |
| 39 | `theorem` | [reverse_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/reverse-nil.md) | 262 | `result-track:b2aeb7be7224511b3de5c2cd880c785783665a7be3aa7a8c66d1f87ab2ac7ec8` |
| 40 | `theorem` | [reverse_singleton](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/reverse-singleton.md) | 264 | `result-track:8bf7d9336170ae9ac4017bc309f17dc424fef3a20cd8c76d3cbc05096f5c13f7` |
| 41 | `theorem` | [cons_reverseAux](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/cons-reverseaux.md) | 268 | `result-track:45db996d3a60b1f4a7687a4dc1ff341a14615bd7ced304bf6aa0e310cdc16641` |
| 42 | `theorem` | [append_reverseAux](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/append-reverseaux.md) | 272 | `result-track:e876b3518a0a926d6388fd0454918f5dc74b74202a02bab26ebeb18f9e7acce3` |
| 43 | `theorem` | [reverseAux_append](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/reverseaux-append.md) | 280 | `result-track:cb99842da9ca2498db3ff5d122383862f41926d57932ec8c17700a8176f441de` |
| 44 | `theorem` | [reverseAux_eq_reverse_append](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/reverseaux-eq-reverse-append.md) | 287 | `result-track:ffcfc6c6573b13667f438ded9935bb220fe2cd6062535ae26a60fa4adbefd667` |
| 45 | `theorem` | [reverse_cons](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/reverse-cons.md) | 291 | `result-track:0aa5edb92fb9bfbd576c5fc3328c86351198ffecb6c4c0160109874a245ab16d` |
| 46 | `theorem` | [reverse_copy](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/reverse-copy.md) | 295 | `result-track:11653b4e76abd1c05cbcb58d7e9a9a9d093e916bf8cd7ff7f3d68981e604fa5a` |
| 47 | `theorem` | [reverse_append](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/reverse-append.md) | 301 | `result-track:39dca5149a989cafb73d53d3e1deaa81403ea1e17d86de0f882d5a998115b877` |
| 48 | `theorem` | [reverse_concat](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/reverse-concat.md) | 305 | `result-track:e80cedc3ae843569dd4e1499bfd72fad750b84e6e7c532c420a46d78869cd75c` |
| 49 | `theorem` | [reverse_reverse](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/reverse-reverse.md) | 309 | `result-track:804b0b2c3ed8e83b770feba775254344de95361038d789df0e65796df9aa1b44` |
| 50 | `theorem` | [reverse_surjective](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/reverse-surjective.md) | 314 | `result-track:117f8b29d0f0a009909eb2ea689c1ef703a43f58b8d3ef50d6890422bef5edc3` |
| 51 | `theorem` | [reverse_injective](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/reverse-injective.md) | 317 | `result-track:0fda3c6c62a7c6c73a52bcf978d911e339ab23eeff0cfa60c2501176ca98e224` |
| 52 | `theorem` | [reverse_bijective](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/reverse-bijective.md) | 320 | `result-track:5a2f3d40823ca2036c08e357a9c4439e34f862645a456d3002b6508395bee996` |
| 53 | `theorem` | [length_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/length-nil.md) | 324 | `result-track:4ccb5ef936075f876ac933ff3054c8e89730c750382bab32a4c1fcce8057d9eb` |
| 54 | `theorem` | [length_cons](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/length-cons.md) | 327 | `result-track:df06c24b39a587e0324fde2488e4bf7bd1392f359ec7bfae603c5908cf05b9ad` |
| 55 | `theorem` | [length_copy](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/length-copy.md) | 331 | `result-track:33ec70b33077373d6b1cb94beceb703adbe4996b97a4d17a606724d329976a8a` |
| 56 | `theorem` | [length_append](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/length-append.md) | 337 | `result-track:7503df1c0e66d9a5d5148bc61b20cc2839b8429d87908b33809c466a1cb10f3d` |
| 57 | `theorem` | [length_concat](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/length-concat.md) | 344 | `result-track:da483943d6f52d8bfc02caca1c7acb27093e0cdffd5e7af2ed6af00692b14b4d` |
| 58 | `theorem` | [length_reverseAux](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/length-reverseaux.md) | 348 | `result-track:080847fd35c521ec2ced3a0143fbf97c546c6130c324a2ea32bf2007e0c0e499` |
| 59 | `theorem` | [length_reverse](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/length-reverse.md) | 355 | `result-track:bae64a46a26f3630493b8d3205be9c6174a62a842e7b28800cebc3fe62a1a5a0` |
| 60 | `theorem` | [eq_of_length_eq_zero](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/eq-of-length-eq-zero.md) | 357 | `result-track:e7ebf6358c806a7a7385176100380898555062ca305fc649b945765fc1706af1` |
| 61 | `theorem` | [adj_of_length_eq_one](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/adj-of-length-eq-one.md) | 360 | `result-track:30417935be4d1d18ce010fbf90478a08ae10ad38cb2781589ca9d13223596e79` |
| 62 | `theorem` | [exists_length_eq_zero_iff](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/exists-length-eq-zero-iff.md) | 364 | `result-track:0b9b3bc58fd8c2347758fae58620922a3a0c25ff351d9d98daaecda1ce424ba0` |
| 63 | `lemma` | [exists_length_eq_one_iff](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/exists-length-eq-one-iff.md) | 372 | `result-track:370a92a4b18dd663fed2e2e9f1e36da0dbab7cb7090fad3f137c05af84787c00` |
| 64 | `theorem` | [length_eq_zero_iff](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/length-eq-zero-iff.md) | 382 | `result-track:508a12717cdd506a04b24c70cb7ba40e6ac009834593f0b02a1b4d00d7cfb98d` |
| 65 | `theorem` | [getVert_append](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/getvert-append.md) | 384 | `result-track:44f07a706a04a63613bd7c172143e6a422a463a97e118d86e7a047c6900fe704` |
| 66 | `theorem` | [getVert_reverse](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/getvert-reverse.md) | 390 | `result-track:20b5ee52bd7382cf1ac2a3c96c832b91455f59bf800d026807e743179f4c1f67` |
| 67 | `def` | [concatRecAux](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/concatrecaux.md) | 412 | `declaration-track:fbbbf6158e1ea043dc773f451a2da50832ddb624081ed51f4746481cfc6d0af7` |
| 68 | `def` | [concatRec](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/concatrec.md) | 421 | `declaration-track:f2f9a01f5d0612cfc6aeb89e8d7bb04c93cf9fb2ed59d1ce7174f1c3ef860a93` |
| 69 | `theorem` | [concatRec_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/concatrec-nil.md) | 425 | `result-track:51ad042a92f14d83a2dec0cbddda6dde64255bc456109e485b72ef5567d4cb67` |
| 70 | `theorem` | [concatRec_concat](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/concatrec-concat.md) | 429 | `result-track:463f8ecab49cc30a52d115431b69233ed6f663819d0ea84a98ff79d38fe70d7c` |
| 71 | `theorem` | [concat_ne_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/concat-ne-nil.md) | 443 | `result-track:f79278c9a82ea8d666aa300eedc846d2e383fb3746f85b7f503db78c2a0be40a` |
| 72 | `theorem` | [concat_inj](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/concat-inj.md) | 446 | `result-track:137dc7ecae0e769cea0d6693851ec6aa8c8a4c531e0ba9d56d06b263db54863b` |
| 73 | `def` | [support](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/support.md) | 472 | `declaration-track:41a7b3a5d318b9749002e8942506ca81abf734e0e6a2db8a0b2f4876ee8c4fb7` |
| 74 | `def` | [darts](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/darts.md) | 477 | `declaration-track:1f3b6d0e91a8d01d4be3811433c4972dc70e39e942547e84b69b398e116cc5d3` |
| 75 | `def` | [edges](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/edges.md) | 483 | `declaration-track:3891b386c9871c492047354ccf9d81a9a88041000d6e6234eabee0a85d76a0e6` |
| 76 | `theorem` | [support_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/support-nil.md) | 486 | `result-track:e4f5dd020e04b87b570d6f6aef975022992d1fb750c646157ffce020743da9ea` |
| 77 | `theorem` | [support_cons](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/support-cons.md) | 489 | `result-track:d68daa41779705ab93c24c9df15878e7a9fb4000920d17f57526c49fe309e54f` |
| 78 | `theorem` | [support_concat](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/support-concat.md) | 493 | `result-track:bb395e7699e63c2cbfc388987e153109e057520cb549d896ae639fc7e2885a9e` |
| 79 | `theorem` | [support_copy](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/support-copy.md) | 498 | `result-track:7620e6246d9c3f9c0fe9844d0c718911e020867c63344c1980bb1cdacf7ca1f6` |
| 80 | `theorem` | [support_append](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/support-append.md) | 503 | `result-track:b0d18a55848e22e0562f97609132436394572a3d39c53e8828c987e24c44c880` |
| 81 | `theorem` | [support_reverse](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/support-reverse.md) | 508 | `result-track:509b4ff6ae5ead9d0525897637d49b98fd95b5e5731f9c6480a3494e3d73f8b0` |
| 82 | `theorem` | [support_ne_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/support-ne-nil.md) | 512 | `result-track:38510f450f4b33ec57fc18478444e27719e6c9094f765e230fb1a34d23ad48cb` |
| 83 | `theorem` | [head_support](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/head-support.md) | 515 | `result-track:258f51f173cb48ac16baed892616db71a1ed1e3be17349933d9e11dbaf91c45e` |
| 84 | `theorem` | [getLast_support](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/getlast-support.md) | 519 | `result-track:13bae45ca89ab86e77498b3f5209d378b9f7fcb17af3d60d035d11142c021ae8` |
| 85 | `theorem` | [tail_support_append](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/tail-support-append.md) | 525 | `result-track:b0e949ea384f6730d2327acc1b07917caf6b2038e425cf8a7ac7a9621870daaf` |
| 86 | `theorem` | [support_eq_cons](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/support-eq-cons.md) | 529 | `result-track:e3b59a7b3890f7d4856248676e0b9b097f18cf2a4c71b28a5b7e0a44e8c7c3e5` |
| 87 | `theorem` | [start_mem_support](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/start-mem-support.md) | 533 | `result-track:722ffcd93a15aeba228f8ba6f8255616f825ebedd66feb3f6de3ae4e9c0eb584` |
| 88 | `theorem` | [end_mem_support](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/end-mem-support.md) | 536 | `result-track:58b43dd15bb4333f3edad01488ce37cce6461ab58dcf326ce54ab96b5278b89c` |
| 89 | `theorem` | [support_nonempty](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/support-nonempty.md) | 539 | `result-track:d2729d90dda2f1b3f38523e190150ad435ff6e0ac408476efe43fb0c1d4abf54` |
| 90 | `theorem` | [mem_support_iff](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/mem-support-iff.md) | 542 | `result-track:316e9679e9d8af006185d41776ab3a647eca1c97255b241c9e1444284b4976e0` |
| 91 | `theorem` | [getVert_mem_support](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/getvert-mem-support.md) | 546 | `result-track:5f034cdff41e92d792c1875b925db62552b1f41adfcb8ac7ba1b4bd24fffb2ff` |
| 92 | `theorem` | [mem_support_nil_iff](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/mem-support-nil-iff.md) | 554 | `result-track:8298b33a6e5b7c7339117fd69687f0555e69ad513a0431bf59c171be095fdcd7` |
| 93 | `theorem` | [mem_tail_support_append_iff](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/mem-tail-support-append-iff.md) | 557 | `result-track:27e5e49e49ae474c8995ae4229fb7d96566454b7e7b874d5187f2feb683313ec` |
| 94 | `theorem` | [end_mem_tail_support_of_ne](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/end-mem-tail-support-of-ne.md) | 562 | `result-track:80de95dbee4a0307e438b459fed27daca1f6d4cfd87e9b5a3a770f90b5e659a7` |
| 95 | `theorem` | [mem_support_append_iff](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/mem-support-append-iff.md) | 567 | `result-track:2eec36ca59b3ad391c8c96487ea9f551e20d18bca69c06b5d265b0f4364b298f` |
| 96 | `theorem` | [subset_support_append_left](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/subset-support-append-left.md) | 575 | `result-track:7d1459857d485654981c92a9e1230cbffc24271d0314c0cb57fd8e1326a2ef13` |
| 97 | `theorem` | [subset_support_append_right](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/subset-support-append-right.md) | 580 | `result-track:b028e7f359c0cee3a40c802be3f4cb4fe45593908aeac786ca20b155ae7bab6f` |
| 98 | `lemma` | [getVert_eq_support_get?](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/getvert-eq-support-get.md) | 585 | `result-track:e6689a542925461d5a5840757e2fb7c035465977d7c068991c18e7ec707fc035` |
| 99 | `theorem` | [coe_support](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/coe-support.md) | 599 | `result-track:62fbf43d9a5a20bdd58e17dd87dc7ae8d71f4db4f91c9b677cd67ee31c2fc45b` |
| 100 | `theorem` | [coe_support_append](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/coe-support-append.md) | 602 | `result-track:bbf0604222e63f04800fe3ca968c2698bd1016f9fd8e5499d14dc0b29aa1dc8f` |
| 101 | `theorem` | [coe_support_append'](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/coe-support-append-source-edition-2.md) | 606 | `result-track:eea60a2c7d26b30d15ef6a88c3209b5432e0669008def6f0d88c435448e4a684` |
| 102 | `theorem` | [chain_adj_support](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/chain-adj-support.md) | 613 | `result-track:3972f473089b67ebe6321ef75d536387a2214b62fad934f5eca32d4a10873d8b` |
| 103 | `theorem` | [chain'_adj_support](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/chain-adj-support-source-edition-2.md) | 618 | `result-track:6a1f586fb1af36f1f9c8e39997450b4c08ce69bbfab4601631e66020b49ec0e5` |
| 104 | `theorem` | [chain_dartAdj_darts](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/chain-dartadj-darts.md) | 622 | `result-track:8f2e32fbb5880537ffe0fd904dd773e6770ece7108d5faf22afbdd813a164f4e` |
| 105 | `theorem` | [chain'_dartAdj_darts](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/chain-dartadj-darts-source-edition-2.md) | 628 | `result-track:ee26298fb0ead69ea12edf9b33545775343b3d0be25a4a331352b23cd5875428` |
| 106 | `theorem` | [edges_subset_edgeSet](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/edges-subset-edgeset.md) | 635 | `result-track:6531421d06012dcd9d84b2734f30ba7a763aa81163e206a3935647325b2ef158` |
| 107 | `theorem` | [adj_of_mem_edges](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/adj-of-mem-edges.md) | 642 | `result-track:b03bcfdba073be92069c67f87bc3fc7ba06a2a24ec89402bacc5c44834969786` |
| 108 | `theorem` | [darts_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/darts-nil.md) | 646 | `result-track:bf197c2ff6a8c8c2a130f4ed6022b7fd00f5e01cb6d61b9a11e632239435f6f4` |
| 109 | `theorem` | [darts_cons](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/darts-cons.md) | 649 | `result-track:dd521bbd05df1c480890b2bce1fcd016f51e299dc0d4a2501c7d8a23d7da13b7` |
| 110 | `theorem` | [darts_concat](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/darts-concat.md) | 653 | `result-track:fcb4d86389eb9640bfdd83519aacfa2c0ca282da6a8aa6603a3ebc5cec9cdb85` |
| 111 | `theorem` | [darts_copy](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/darts-copy.md) | 658 | `result-track:be27f68a06e6ce53b559a0ddb245be70705c36b8b9fa0903ed30a26edb731130` |
| 112 | `theorem` | [darts_append](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/darts-append.md) | 664 | `result-track:159153759fb3c2ea9c83253479a328264577ad3d8883be0b1c642e2f9e26268b` |
| 113 | `theorem` | [darts_reverse](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/darts-reverse.md) | 669 | `result-track:e9dbca321fa789b79a2bf9bc9460739d0ee9a7a499229adc0d8057a0947e57b6` |
| 114 | `theorem` | [mem_darts_reverse](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/mem-darts-reverse.md) | 673 | `result-track:c4ff24c21494cd3ab33787dbd2a2536821ed9781eaee2b30e871bc1c1170aaaf` |
| 115 | `theorem` | [cons_map_snd_darts](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/cons-map-snd-darts.md) | 676 | `result-track:e3b7bc347a582ddc97fd2be6ba587fb16f64b03a494940cfbd499538b73a201e` |
| 116 | `theorem` | [map_snd_darts](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/map-snd-darts.md) | 679 | `result-track:2b88b87a104b729fd97f8d2b1fe9924a0c87c9c3007e9c4267069e4acbd5ea4e` |
| 117 | `theorem` | [map_fst_darts_append](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/map-fst-darts-append.md) | 682 | `result-track:ca4e4880891b80b8b8902184ddf7d8e38d25cf5a60a0733f7b44fd4240f8d06a` |
| 118 | `theorem` | [map_fst_darts](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/map-fst-darts.md) | 686 | `result-track:67dcdbfdd5eb48ea9e078371146b15ee4db0fbbd56e75e4486badf7c63efcbd9` |
| 119 | `theorem` | [head_darts_fst](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/head-darts-fst.md) | 690 | `result-track:a0c890c1bb14c1231500e7a8c9dd2faedf4099f994f9275706f84f4abe8d81f6` |
| 120 | `theorem` | [getLast_darts_snd](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/getlast-darts-snd.md) | 697 | `result-track:e7a9a1cb7ec4fb724a55d8c0dd79bf544edb2833c1b4c429beaa230fceadd4ec` |
| 121 | `theorem` | [edges_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/edges-nil.md) | 704 | `result-track:436bd8769737ab8aacbe9b1cf477076776546e59b6ed5f9f61ae169d711a3aa5` |
| 122 | `theorem` | [edges_cons](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/edges-cons.md) | 707 | `result-track:390300339e590ba0a0e2f4a4b2f7e816ffbc7ae4e2ef9b18b204fb737078efe8` |
| 123 | `theorem` | [edges_concat](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/edges-concat.md) | 711 | `result-track:b102303eed4215eac3634b9a7a847040dbfa756805bb07e2c6e305f9110237aa` |
| 124 | `theorem` | [edges_copy](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/edges-copy.md) | 715 | `result-track:d746eb62b65c7eea9bae4f6fd1d861686b161e2ee9e0e2147face52a636c2764` |
| 125 | `theorem` | [edges_append](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/edges-append.md) | 721 | `result-track:d76c4d49df07d5aa5f4f15521333257739bdc268f228940522ac5fc62e3dfd9c` |
| 126 | `theorem` | [edges_reverse](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/edges-reverse.md) | 725 | `result-track:254ec229fab1deae89837917b103efe09900e7deebd6466ee1ea6e799b27fec7` |
| 127 | `theorem` | [length_support](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/length-support.md) | 729 | `result-track:4b4adb3f4269256de968a7b1dbe286abb3471e4c4b9a59480a3dac4f807cd83a` |
| 128 | `theorem` | [length_darts](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/length-darts.md) | 733 | `result-track:8adfd26f38a6957383ecfb0be0ffa42b067ee797a7d869c5223fef0a2b72756b` |
| 129 | `theorem` | [length_edges](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/length-edges.md) | 737 | `result-track:6e174a75b7a0933ce9ca902666bdd935175c2c2c1276b786666071550283e67e` |
| 130 | `theorem` | [dart_fst_mem_support_of_mem_darts](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/dart-fst-mem-support-of-mem-darts.md) | 739 | `result-track:a398d4edc37283ef0c9673a1b473cd4204e7e2689a36ac2a16d222d19fc1fe17` |
| 131 | `theorem` | [dart_snd_mem_support_of_mem_darts](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/dart-snd-mem-support-of-mem-darts.md) | 747 | `result-track:12e08d25dab4ac3b4cdc74853e4d85f568a5e1ad9dfdc6ef2ab041dc13852316` |
| 132 | `theorem` | [fst_mem_support_of_mem_edges](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/fst-mem-support-of-mem-edges.md) | 751 | `result-track:79ae9ce4d6443ca14fe5628a2e5dc5dc2724be753c223dd43f15d507bdb24305` |
| 133 | `theorem` | [snd_mem_support_of_mem_edges](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/snd-mem-support-of-mem-edges.md) | 759 | `result-track:66a1d6c321381d0686f894392cc04973591820e468f93c1a2b1974fc823c937d` |
| 134 | `theorem` | [darts_nodup_of_support_nodup](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/darts-nodup-of-support-nodup.md) | 764 | `result-track:f9a908574bffd2adf64308477487b3b2670dc1cc6f7c48561a6e58c7608ba5d1` |
| 135 | `theorem` | [edges_nodup_of_support_nodup](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/edges-nodup-of-support-nodup.md) | 772 | `result-track:0f6ba69094281e281000e4941c62507436c669cea87530a2b729b15ad6d0eb38` |
| 136 | `theorem` | [nodup_tail_support_reverse](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/nodup-tail-support-reverse.md) | 780 | `result-track:2e37538e79011bf97f9e1869c16314954eaef393f9268f94f0e01fd8d774d7db` |
| 137 | `theorem` | [edges_injective](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/edges-injective.md) | 788 | `result-track:667a6fb662a9dd0877439365461fc6d5a3453c337eb5fdff6d4402153b51fbf3` |
| 138 | `theorem` | [darts_injective](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/darts-injective.md) | 798 | `result-track:a8c69f17ea3427a25f23b8a5fb3812b7deca47ae4d48c1a754057bad47b947c6` |
| 139 | `def` | [edgeSet](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/edgeset.md) | 802 | `declaration-track:d7330de0ae7ecb4f396a0295c041d0121ac6a46875b6d984156d1d2b5a72fc86` |
| 140 | `lemma` | [mem_edgeSet](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/mem-edgeset.md) | 805 | `result-track:c8abbd8f49d36c76e03f63d12f6fe7180e3e981c49c0c634c9d36ef68eaf6ec7` |
| 141 | `lemma` | [edgeSet_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/edgeset-nil.md) | 808 | `result-track:7e8ebe6fdf1d7d257d2460e67de6eba7cf6f69350d69da84cba448e52877bc73` |
| 142 | `lemma` | [edgeSet_reverse](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/edgeset-reverse.md) | 811 | `result-track:a288f44f3dc3cf386c317204267fac81c445fea6f238febeff49cf516190cd62` |
| 143 | `theorem` | [edgeSet_cons](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/edgeset-cons.md) | 814 | `result-track:7da3a01634bfaa2da123e5291231592cc1ee7b516396ebb204ed7d709372632e` |
| 144 | `theorem` | [edgeSet_concat](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/edgeset-concat.md) | 818 | `result-track:8245fa4032d4c89b4a63a2323fe186da845e11e79a1d11ae0026a4d360ed183d` |
| 145 | `theorem` | [edgeSet_append](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/edgeset-append.md) | 821 | `result-track:69ec339f66e32505661a22edcc66f716aa2d038e446673e56e956320fe242f64` |
| 146 | `theorem` | [edgeSet_copy](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/edgeset-copy.md) | 825 | `result-track:d4238909d975853c199ffa8c7633a4be4e9318342fc4f0e811bab949fc354fa1` |
| 147 | `theorem` | [coe_edges_toFinset](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/coe-edges-tofinset.md) | 828 | `result-track:36813a0a9c1755cba67675dd77b49ca93bb1a4fa2b32f39f3b7efb89fc6cb98c` |
| 148 | `inductive` | [Nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/nil-source-edition-2.md) | 836 | `declaration-track:8c0b11c27b0a0f106a29e9d681dbc7d1c70b779c08c3012c12d1904d2e5f1d2e` |
| 149 | `lemma` | [nil_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/nil-nil.md) | 841 | `result-track:957c9b1fd3119cd6eedb3bb0d9d619c61ac0b523d42e417231b0b3636f137900` |
| 150 | `lemma` | [not_nil_cons](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/not-nil-cons.md) | 843 | `result-track:efc82105173555ea512092cb4a0e9092f015e10a2cd39d5de2bbd2cbb411dfd4` |
| 151 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/instance.md) | 845 | `declaration-track:08df8195aa02120e8420054eeb600ba1c46b57031140a2784ee9224f97c0869f` |
| 152 | `lemma` | [Nil.eq](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/nil-eq.md) | 850 | `result-track:e9e7e8aeef1d227e257e3e4790a56a3144e1545b9065f8c7e64eaafbc184141e` |
| 153 | `lemma` | [not_nil_of_ne](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/not-nil-of-ne.md) | 852 | `result-track:5e8218fc143f29b2f07f0a9e7792ad5e4ccf4986a6cc458a196a062d7bcfb2e0` |
| 154 | `lemma` | [nil_iff_support_eq](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/nil-iff-support-eq.md) | 854 | `result-track:0542fe314f69d1d47e9e63f6d284816233bcc9e1ee09d6d74f98a28673db0f46` |
| 155 | `lemma` | [nil_iff_length_eq](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/nil-iff-length-eq.md) | 857 | `result-track:d2e380712c035f24fca7f86533f1e7fae79db7be77e04cbc6cdaa80ade23401f` |
| 156 | `lemma` | [not_nil_iff_lt_length](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/not-nil-iff-lt-length.md) | 860 | `result-track:de23a72677d036f339352fad403e926e364ac7bb946821d6729107fefc2477a3` |
| 157 | `lemma` | [not_nil_iff](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/not-nil-iff.md) | 863 | `result-track:62eea4ec28d22e2e8d80dc69d6bc73b144686c636eae2cfea4886d082bcca927` |
| 158 | `lemma` | [nil_append_iff](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/nil-append-iff.md) | 868 | `result-track:65d155599691372991ee211c6cd885367d38d5b9076a6c737f8273edc1e86496` |
| 159 | `lemma` | [Nil.append](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/nil-append-source-edition-2.md) | 871 | `result-track:a0e12b01b708526bd3fa859f440070c05f2e39df1bda5e1bdf66082a441da3a4` |
| 160 | `lemma` | [nil_reverse](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/nil-reverse.md) | 875 | `result-track:d1ba05d95273e6980e9aed8818d02f1cb2f889f34eb1a95a3a61582f268bf6b1` |
| 161 | `lemma` | [nil_iff_eq_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/nil-iff-eq-nil.md) | 879 | `result-track:7bcdbc3d5f370c04ec01b59659f9b5653328e8b4af0db2b89edabe83866afc64` |
| 162 | `def` | [notNilRec](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/notnilrec.md) | 886 | `declaration-track:2500cd344dde3445fb4427b58b8b9d0537b955414d23d632a396c791153f66c8` |
| 163 | `lemma` | [notNilRec_cons](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/notnilrec-cons.md) | 894 | `result-track:ef09987af1a7aa064925b4597c1b7f8fd400f2202cee6ba7c08fe7895156552e` |
| 164 | `theorem` | [end_mem_tail_support](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/end-mem-tail-support.md) | 899 | `result-track:e7b765dce162f73eb924a6bac48e2f26bfb39804a01dce8e1bcbfbbcbf6c22d9` |
| 165 | `def` | [drop](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/drop.md) | 903 | `declaration-track:356a334cc5e79671895e86f9adabd4974f609a27663d4e37c5eb93bc887bc592` |
| 166 | `abbrev` | [snd](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/snd.md) | 910 | `declaration-track:65ccbfc430fed4bf5e215e0a265372c32428d711d5c1e742e1910ca20622e178` |
| 167 | `lemma` | [adj_snd](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/adj-snd.md) | 912 | `result-track:4f138af6ef36f47b7590abee29ee7ce8470a518ee5526abd5312fb627398df44` |
| 168 | `lemma` | [snd_cons](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/snd-cons.md) | 916 | `result-track:a28d8e092eb7df82a112db67094bdaf5cab2b654a62ef377564802bbad9ec5ca` |
| 169 | `def` | [take](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/take.md) | 920 | `declaration-track:1347845d4dd19d162ea7ae5403c3ba972719fec2d24a1cc9c38b69aa818caf8d` |
| 170 | `abbrev` | [penultimate](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/penultimate.md) | 927 | `declaration-track:3f46b89d22d8cc77e7cdb53dead71766c5ec6e45aa54dd337ab36466ddb51d32` |
| 171 | `lemma` | [penultimate_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/penultimate-nil.md) | 930 | `result-track:38eb0169fd26bc65205161d256cc05aaaf3e911cc8e5a7b83ab79e6de0409af2` |
| 172 | `lemma` | [penultimate_cons_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/penultimate-cons-nil.md) | 933 | `result-track:7597b322e77b67d5ef1d84a7d95ca259f7162f1cdf05cee44830bd567d8fa857` |
| 173 | `lemma` | [penultimate_cons_cons](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/penultimate-cons-cons.md) | 936 | `result-track:63caf46b67d16e190b6b488879ee1e7beed82f69e5cfe394f9eae67856b7ac1f` |
| 174 | `lemma` | [penultimate_cons_of_not_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/penultimate-cons-of-not-nil.md) | 939 | `result-track:fa83dbe6206577b8954065756936ef44d26ee003c2610b06acf14c64712e3898` |
| 175 | `lemma` | [penultimate_concat](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/penultimate-concat.md) | 944 | `result-track:7f4e00d54d0b01be630c2981c6d9a4b5cc11e0e1f3e2928f92619856338183f9` |
| 176 | `lemma` | [adj_penultimate](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/adj-penultimate.md) | 948 | `result-track:4684ece73baf590bda16685045eefb8997bba882f65b95554458fbfa960d2da6` |
| 177 | `lemma` | [snd_reverse](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/snd-reverse.md) | 955 | `result-track:81c5a60bbf6d5601452f5ec1be264e8312b4727aed90ac449cf01bd0b5f0c1bd` |
| 178 | `lemma` | [penultimate_reverse](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/penultimate-reverse.md) | 959 | `result-track:9fb4daa23787333d988c9fa7227ce13b9dfe81aa485e5f2ac9c428e71b6eda21` |
| 179 | `def` | [tail](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/tail.md) | 963 | `declaration-track:31265989da4d07d363c2e75fd8aeb2d219ff0bad23802511f0ac9a7439a43dd3` |
| 180 | `def` | [dropLast](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/droplast.md) | 966 | `declaration-track:5b7377a56c735254f7c3e4881eab1578ee84a4c8e5dd38dd270dc53ab8d76839` |
| 181 | `lemma` | [tail_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/tail-nil.md) | 969 | `result-track:090be2eeee51e99ad8fbdd9b72bbc7acd4b3b7d34b88370ed3f94d63494f2f79` |
| 182 | `lemma` | [tail_cons_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/tail-cons-nil.md) | 972 | `result-track:9d1fb7c3c3ec39824b8833bddec51d2ec2ce8a0b2eddf1a1616863a24e9c24ad` |
| 183 | `lemma` | [tail_cons_eq](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/tail-cons-eq.md) | 974 | `result-track:3835611d2cecec1e8c94aa967b967223c04d79ba3bef9fc40e760f6739a9b694` |
| 184 | `lemma` | [dropLast_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/droplast-nil.md) | 981 | `result-track:74240c60d4431767fe831341afc30699d1e9364baa1dce72fe1849e85a8a78cb` |
| 185 | `lemma` | [dropLast_cons_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/droplast-cons-nil.md) | 984 | `result-track:acc1591a25d9da55daa48d48e1914293dc820f34e6db3cc0b9554d7211c4aea9` |
| 186 | `lemma` | [dropLast_cons_cons](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/droplast-cons-cons.md) | 987 | `result-track:7b465bc48a181db296b8a23df2bcdfbc011d512a3a8ca4a98ca15fb5a1349589` |
| 187 | `lemma` | [dropLast_cons_of_not_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/droplast-cons-of-not-nil.md) | 990 | `result-track:d3623c31621e7709fa4d11f920dc6b4c6a3f55659916cd9575f987620af2dfa1` |
| 188 | `lemma` | [dropLast_concat](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/droplast-concat.md) | 995 | `result-track:6f580346cf2d9f26207739f83e34ed73a9fd719068ae09a37ed6ba1f4e835645` |
| 189 | `def` | [firstDart](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/firstdart.md) | 1006 | `declaration-track:7e706d27c314ad5bf6296d1045fa7c58f4eb4736e49dcbc995ec84f107c6806d` |
| 190 | `def` | [lastDart](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/lastdart.md) | 1013 | `declaration-track:335a01a42493ae6201ec60c96da5a0f9914bf6841d2e00027ec70fcbf683c78d` |
| 191 | `lemma` | [edge_firstDart](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/edge-firstdart.md) | 1018 | `result-track:30210668829c9cda82a05e22353b9a8df9cde0960ce491fdd1a850f870016a36` |
| 192 | `lemma` | [edge_lastDart](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/edge-lastdart.md) | 1021 | `result-track:eded000eacaf51de7b828c7128aee471f800269172ebef87980341f71b3d10a8` |
| 193 | `lemma` | [cons_tail_eq](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/cons-tail-eq.md) | 1026 | `result-track:e916337937b2cf91915cc204c600acf2f5eb0f7acf5aea17ab33000a7eb6d435` |
| 194 | `lemma` | [concat_dropLast](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/concat-droplast.md) | 1034 | `result-track:ba0b4c9b747c0c361e9a20c2b21748a5c6105b21e3c652b3a50852b64616d03b` |
| 195 | `lemma` | [cons_support_tail](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/cons-support-tail.md) | 1043 | `result-track:6512e3e4cc2aa26709938d4f3777de71e6c3386be0a380af3cd4b3276acf937f` |
| 196 | `lemma` | [length_tail_add_one](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/length-tail-add-one.md) | 1047 | `result-track:b959da45767063aebdc353543afa263ff16b60a8c7b1be5beadc2956402abd82` |
| 197 | `lemma` | [Nil.tail](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/nil-tail.md) | 1051 | `result-track:e881ab22d9e5a2e05969b6c3378460aaadc6c5e36f48c698b2a40cf1492e2682` |
| 198 | `lemma` | [not_nil_of_tail_not_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/not-nil-of-tail-not-nil.md) | 1053 | `result-track:64e03e65eb96816839af81a3583d188772438511298a781337d0699eeb3fa133` |
| 199 | `lemma` | [nil_copy](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/nil-copy.md) | 1055 | `result-track:676188b8311dc30838652f09f43fd56093c421f33e25be5a9eb99ea3687cbca3` |
| 200 | `lemma` | [support_tail](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/support-tail.md) | 1059 | `result-track:bf2320f3347d3214cad19690dabaeec8437f7f2af78bd5b1dad94b5249689d80` |
| 201 | `lemma` | [tail_cons](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/tail-cons.md) | 1064 | `result-track:4467252b17bf54a593f0bceee4ef60564909838316a199d5e135adc83e5eb94c` |
| 202 | `lemma` | [support_tail_of_not_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/support-tail-of-not-nil.md) | 1070 | `result-track:d8c4a749dc04b88e53e6830c1b7c4a85d8a7a00587fcc500f94d4aff30e0759d` |
| 203 | `theorem` | [exists_boundary_dart](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/exists-boundary-dart.md) | 1079 | `result-track:01f36f8df57b2d074dc88f854a895c14a0098c285136ca0e3dd6af638c23d323` |
| 204 | `lemma` | [getVert_copy](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/getvert-copy.md) | 1090 | `result-track:cc6ecec97f46849b0a3a53bddf1c3459533951966ef572efde2e8ddb1cf8f460` |
| 205 | `lemma` | [getVert_tail](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/getvert-tail.md) | 1095 | `result-track:97ca3140d5bc9139fd45188b46a7320a07cc8c8b7f9b650fc2f7dc447d01a83e` |
| 206 | `def` | [map](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/map.md) | 1111 | `declaration-track:dea9914bb24cf4832148053c2dda5880eee0219441518a23f83d9438ba20de3e` |
| 207 | `theorem` | [map_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/map-nil.md) | 1118 | `result-track:b2b9dd1fd7eb0a9254d288e78a17a406da50f8bd346b805293739b34da9ab812` |
| 208 | `theorem` | [map_cons](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/map-cons.md) | 1121 | `result-track:1644b2f6a4d6e63e7ba1cec6ad853a4d350da8cd7fc64a60762f54c59f51a983` |
| 209 | `theorem` | [map_copy](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/map-copy.md) | 1124 | `result-track:ff83c800d41911ddfd8fededb0f46415fd14b296cd1187cf02872e1ee5356ea0` |
| 210 | `theorem` | [map_id](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/map-id.md) | 1130 | `result-track:ac39e7bc85988ac5b8e069c34cf60c605921094dba1c93e24f19feb6cb809c21` |
| 211 | `theorem` | [map_map](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/map-map.md) | 1136 | `result-track:22b86b49dbc42e3d08e2ce4854f59a1d45e3076a5d280aa3eeea41459b1dcb84` |
| 212 | `theorem` | [map_eq_of_eq](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/map-eq-of-eq.md) | 1143 | `result-track:1743f211a763a29632d8f022d47bf2361cce97eb330fb2cec0215ea300937f64` |
| 213 | `theorem` | [map_eq_nil_iff](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/map-eq-nil-iff.md) | 1149 | `result-track:43e0744c9eafd811fe7f33a24a5e091fb19ea29285393be520a6c39e5402126c` |
| 214 | `theorem` | [length_map](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/length-map.md) | 1152 | `result-track:6b31d97abd1096cabca57d09528cfea191ae7a39af236da7583bb2a4bf872caa` |
| 215 | `theorem` | [map_append](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/map-append.md) | 1154 | `result-track:3e0967e0353b37d0a3081cc6971d35668a905fbbe7777b38d5d800a4892b4353` |
| 216 | `theorem` | [reverse_map](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/reverse-map.md) | 1158 | `result-track:4db620cab954efc64eab48150f4073fcb937b9a1e9a87aecc2bd356d8e79d45c` |
| 217 | `theorem` | [support_map](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/support-map.md) | 1161 | `result-track:6705addcd90b104bdb28bac8ebcaa3d70b632323035aa89ebb833411d7e5da35` |
| 218 | `theorem` | [darts_map](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/darts-map.md) | 1164 | `result-track:ac702360e4c701f6dcaa7ce833d52209f6d6093eb402aab0286a03d58ec8be12` |
| 219 | `theorem` | [edges_map](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/edges-map.md) | 1167 | `result-track:2bc201ab697a3b3f0d9242ad4ec8bf3d45f5a84a073c7ff946e044ab2df02676` |
| 220 | `theorem` | [edgeSet_map](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/edgeset-map.md) | 1175 | `result-track:5b5c4917d0a736d3326f4c4b45b9d962e7f11d63b46f6453d047e35a86b6d030` |
| 221 | `theorem` | [map_injective_of_injective](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/map-injective-of-injective.md) | 1177 | `result-track:c793fad7c434f53c930b9009e18e8bceaf9e8837793e50e7926c143700bd0cd6` |
| 222 | `abbrev` | [mapLe](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/maple.md) | 1196 | `declaration-track:cc9d90c2158b5f750deb4445978d6cf7d09ea92243a179bbabc127868cd3bb67` |
| 223 | `def` | [transfer](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/transfer.md) | 1203 | `declaration-track:137050c96d020395f9afe4a070ad31f271e0b6c8c914655c9bba52bb8ccac022` |
| 224 | `theorem` | [transfer_self](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/transfer-self.md) | 1212 | `result-track:fd37521086cb95c0fa83b2e1597701d8bf6815d8a41f02496016406a825e7931` |
| 225 | `theorem` | [transfer_eq_map_ofLE](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/transfer-eq-map-ofle.md) | 1217 | `result-track:4d53959b787b3b3b7cdbce44614166d430e5238a18817b949c9db7adc2399d67` |
| 226 | `theorem` | [edges_transfer](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/edges-transfer.md) | 1223 | `result-track:d04426822a6df43b53745f386deaaddb1f120ed201798ef4080fa71c2d380668` |
| 227 | `theorem` | [edgeSet_transfer](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/edgeset-transfer.md) | 1227 | `result-track:c6ccefad14b430c73e73a82c963e10e7ef035c5409ebc02a6603421ff20abd12` |
| 228 | `theorem` | [support_transfer](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/support-transfer.md) | 1230 | `result-track:3c608906fb62b12f786c97d0f0cb0a1ab45e5edd0d81c5b860a744601cb41958` |
| 229 | `theorem` | [length_transfer](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/length-transfer.md) | 1234 | `result-track:75848cdb55a8040eaf9ac9f3b6b08fbbe331c221e5b3e3e651a53a596e1b455b` |
| 230 | `theorem` | [transfer_transfer](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/transfer-transfer.md) | 1238 | `result-track:17a139e18b096edff08bb49032532df9e20ec1be95b73dbca0e437908cf5d419` |
| 231 | `theorem` | [transfer_append](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/transfer-append.md) | 1247 | `result-track:b595976c94a03b28e3d50dd0b17cb7b09a38a7f2564856877f1a506891ab23e3` |
| 232 | `theorem` | [reverse_transfer](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/reverse-transfer.md) | 1256 | `result-track:39fef6dadb17a2cee20e95c1de80b5661d163376b0fcfd37c16f389471cc4e1b` |
| 233 | `abbrev` | [toDeleteEdges](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/todeleteedges.md) | 1273 | `declaration-track:96b0ae08ba5d1960998464fca7809d955137834bc825c93c0f8edb37fcf7a218` |
| 234 | `theorem` | [toDeleteEdges_nil](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/todeleteedges-nil.md) | 1280 | `result-track:36741c7b4657968e427e01df8b3c959a8a24eab99b43e33b1dc8d6fddee1f625` |
| 235 | `theorem` | [toDeleteEdges_cons](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/todeleteedges-cons.md) | 1284 | `result-track:1cc89629c2cb605bd1fbd8bec400527396eed63792baf69150773cba595e4cc2` |
| 236 | `abbrev` | [toDeleteEdge](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/todeleteedge.md) | 1294 | `declaration-track:ddc5efd982e3ba32df7aedd33da3d333d9cd161d8a2642514ebd4f92b8b22366` |
| 237 | `theorem` | [map_toDeleteEdges_eq](../../../../../Combinatorics/GraphTheory/WalkNamespaced.lean/declarations/map-todeleteedges-eq.md) | 1299 | `result-track:9adf74f47941779150117f4d4bd6a7478eb81c1dedc5b4d0fc96e402bc0f2984` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a46cb1cf4b01e2a571747c6b71391ce215597ac6868c1cc4e1925c4db4614db7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Walk/Variantd816791aaeac6b28f6975acd932e19f8c6ac120af451c633dffa60dbf791efff.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Walk/Variantd816791aaeac6b28f6975acd932e19f8c6ac120af451c633dffa60dbf791efff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
