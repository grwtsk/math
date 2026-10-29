# Verification target: Basic Basic Namespaced Public Import Graph

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e319843ad1210998e75e03afc81cdd2231b2efd1",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3fcfc93aaa59c33af79baf3bfba71d898e082b29afffaccadec915bd59a43827.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e319843ad1210998e75e03afc81cdd2231b2efd1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3fcfc93aaa59c33af79baf3bfba71d898e082b29afffaccadec915bd59a43827.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3fcfc93aaa59c33af79baf3bfba71d898e082b29afffaccadec915bd59a43827.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ImportGraph.Nat.numSetBits](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/importgraph-nat-numsetbits.md) | 30 | `declaration-track:07a5f0fa73e3d5618f7b0767cdfd675f9861f622f73f90575a6e9f38917a59ba` |
| 2 | `def` | [size](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/size.md) | 43 | `declaration-track:45f5b105aa91b6e23d82f6e392561d299fde4c4e2202b372eeb43c2cb5dd8571` |
| 3 | `def` | [isEmpty](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/isempty-source-edition-2.md) | 46 | `declaration-track:be24b1683192dbe4379438ab3992a26180623251948f8bca52ecb9933da1d260` |
| 4 | `def` | [univSize](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/univsize-source-edition-2.md) | 49 | `declaration-track:b72a2484bc3023b90866eda5456ad617ea7bc62f9b23783bcb733d6809d97869` |
| 5 | `def` | [univ](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/univ.md) | 52 | `declaration-track:57a9063745106fdc3e605785f98a5b706438f9958215182c83fb1cf7fb14b8ed` |
| 6 | `def` | [erase](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/erase.md) | 55 | `declaration-track:f534b439af18ec468859cf44143032fc464531cbe19dda42674781de632ac8fa` |
| 7 | `def` | [max?](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/max.md) | 59 | `declaration-track:5d150603fed203c94ada1dc32cfb42d1912191a4ef96b2b30cf45ca4a1aba981` |
| 8 | `def` | [min?](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/min.md) | 62 | `declaration-track:e82433d5ed8afdf45a00dbf35d001a07fc09ec34438d76698b4b01508ed7ecb4` |
| 9 | `def` | [le](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/le.md) | 67 | `declaration-track:f801138f808fb277e11ee59160e87509fe0a49e7a17b7e786460e0fe42cdef45` |
| 10 | `def` | [lt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/lt.md) | 69 | `declaration-track:083c2b15437705fdfc01dba9be667925aa9d435c2e2438c01649e1cda3f0474d` |
| 11 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/instance.md) | 71 | `declaration-track:037b9290aa63d80d1da493107ccccb7f2bf874d842672b51d5fcf39c59e4b2e4` |
| 12 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/instance-source-edition-5.md) | 74 | `declaration-track:3ec7b9ea59a98aa75b0a9c5ff25811e054c88977b878457310f8d67f9dc46a32` |
| 13 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/instance-source-edition-7.md) | 77 | `declaration-track:77be6061256f55b83876a7258003e5f6f8bbda42083a7cba69bf75bc4039a775` |
| 14 | `def` | [foldr](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/foldr.md) | 83 | `declaration-track:42836b027dbae5cad6740c9f3cfc96b272b6ace8f19bd0504a4f3a2f359c7e2f` |
| 15 | `def` | [foldl](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/foldl.md) | 95 | `declaration-track:02e4f21459038233463c08786173afdb79dd6266e93902c173d191cec5dfc98f` |
| 16 | `def` | [ofArray](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/ofarray.md) | 109 | `declaration-track:db58ed250b0b620a630a4920102c98750a698c2d3fb14e3053cb87ae6c393553` |
| 17 | `def` | [toIdxs](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/toidxs.md) | 114 | `declaration-track:73f4b81cfb7fbdbb29dfd4aaa1991a9b1f448cd4617bbd96c1e01bb86a9d6a71` |
| 18 | `def` | [toRevIdxs](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/torevidxs.md) | 117 | `declaration-track:015af0b7cdaccbee92b6ff878b51e4a36fdf8658804ae3fcdafaebb656ec9e77` |
| 19 | `def` | [forInRev](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/forinrev.md) | 122 | `declaration-track:138a230cbf5d40f337c709efdbafc0d18f55332575106b58c2265339086fa4e1` |
| 20 | `structure` | [HighToLow](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/hightolow-source-edition-2.md) | 136 | `declaration-track:3dc97a1b9180f3c1526de96bfbf399a1ef0c0d5eab9463ee56fec463198c8e35` |
| 21 | `def` | [highToLow](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/hightolow-source-edition-4.md) | 141 | `declaration-track:70f9510c4ed21b92825ee1785916998139e1b73f8d77de895b4648b96cd99f8b` |
| 22 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/instance-source-edition-9.md) | 143 | `declaration-track:9ef08c14859567877cba52df8ecfa9becf44a8b954a254bcc66c1539dd84c942` |
| 23 | `def` | [forIn](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/forin-source-edition-2.md) | 147 | `declaration-track:c3f470ff25e687e4f03d1bf1701040785bf06ba0a1a7d7a6938f521fb7a65350` |
| 24 | `structure` | [LowToHigh](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/lowtohigh-source-edition-2.md) | 162 | `declaration-track:8d1448efb920b14a69345260d67762bcc171344d2bfa99aacf2a12fa313d97cd` |
| 25 | `def` | [lowToHigh](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/lowtohigh.md) | 167 | `declaration-track:293aed5f9d9387bffe1da896a4724a3a498cd68ba319a770d9a7f5ce10cdf89a` |
| 26 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/instance-source-edition-4.md) | 169 | `declaration-track:3e9160554d8b7ab862cb3b0687030d984fc0afe839053a7cb38ff11425dcdd5f` |
| 27 | `def` | [all](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/all.md) | 174 | `declaration-track:a6eef190bdb2cc468c428d41946fd3078a9b5291f894bf812fe17ae86f96ad85` |
| 28 | `def` | [any](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/any-source-edition-2.md) | 182 | `declaration-track:f14da81652ab00c68cc689987d36250628f0d87e1c0907b2c051abb66a77d53c` |
| 29 | `def` | [extractArray](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/extractarray.md) | 190 | `declaration-track:6ce3f14f3c267e5609b98da74011dcc6f57663d45119956e2830fe8664857ef2` |
| 30 | `def` | [toString](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/tostring-source-edition-2.md) | 209 | `declaration-track:dc86a10d5263e4be507bcf18a6cb51e8dded5943d9628e43e093cf48a2e0a4d2` |
| 31 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/instance-source-edition-3.md) | 225 | `declaration-track:19cb5f46db20f2bf3866781c3a57832a8f0c77c484d9fc1a74d61810e220db28` |
| 32 | `def` | [forInRev](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/forinrev-source-edition-2.md) | 236 | `declaration-track:b3f365f46ac9e0fe3c4773181416f397c75ad1ba9c16145384bc83e926412e31` |
| 33 | `structure` | [HighToLow](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/hightolow.md) | 248 | `declaration-track:337612e67c6fe706037629a51e29ac9683564d277e0deec8906f12ef5f827156` |
| 34 | `def` | [highToLow](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/hightolow-source-edition-3.md) | 252 | `declaration-track:4f7e7e5cea3b3975979f6a2fc9871b110f31f6cdeae71336bf98a5efe49be22d` |
| 35 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/instance-source-edition-2.md) | 254 | `declaration-track:0a4db75af1c82e406d440b89a2e142d186ceddd306ba03767862d751d00e479b` |
| 36 | `def` | [forIn](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/forin.md) | 259 | `declaration-track:1db65bd3fdb2e11ad010b7ce92baf380b60565bd4ce85a53fd65934c7032db7c` |
| 37 | `structure` | [LowToHigh](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/lowtohigh-source-edition-3.md) | 270 | `declaration-track:91fedfa09310c367d4b745e3e316e726cd7f1cfe3c77f4f96a2fdc2fa32ce992` |
| 38 | `def` | [lowToHigh](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/lowtohigh-source-edition-4.md) | 274 | `declaration-track:c239746c7ac7319b7ad5fad1ed1426ad75e22e3ed179e845be8c796785f5520b` |
| 39 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/instance-source-edition-11.md) | 276 | `declaration-track:fc227a89ef3acd3b60631c417ac43820bf93cc4d0691357e72f1904dd22ce600` |
| 40 | `def` | [single](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/single.md) | 284 | `declaration-track:bcb0c05d137cf76d34dc28d94c5fef0a176d4336efd2299dbe2d7136dcbb28b2` |
| 41 | `def` | [applyAt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/applyat.md) | 288 | `declaration-track:f794bf7c0514f4bc97ccb3bb038649279512930d3a8f58d1198f438c97ceb23d` |
| 42 | `def` | [any](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/any.md) | 291 | `declaration-track:a4cb1eeb109f9f9d13887af8c8fb06e0cc24eead7369418d1f79d65810fecd27` |
| 43 | `def` | [anyWithKind](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/anywithkind.md) | 294 | `declaration-track:9ae853bec315106be34b573723f0a6d2e52902edd2857d2ff2c4865cf411a45a` |
| 44 | `def` | [all](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/all-source-edition-2.md) | 298 | `declaration-track:ae1d938a5ba55eb0bbe1b3c7ad47b4216339d5298dbb7599ba1e23863ea9baa4` |
| 45 | `def` | [allWithKind](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/allwithkind.md) | 301 | `declaration-track:418250037a3a3ef6c10df74ee74d25a3ea5ce09c14730590538fb39bffa2a273` |
| 46 | `def` | [fold](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/fold.md) | 305 | `declaration-track:e42009a1d42797b07e3b08acd7841803d967dd8e6f3c73e9a98747ce02364fe7` |
| 47 | `def` | [foldWithKind](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/foldwithkind.md) | 309 | `declaration-track:1cb5a9e514bcd47b53ed158ae1b9663846d2fb995d899a84b99c5d5ce811140d` |
| 48 | `def` | [map](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/map.md) | 313 | `declaration-track:b81bff2683e7e0f5f44b3466e6dd28fcdf91ed4e829b606c28f4b49f544abeb8` |
| 49 | `def` | [mapWithKind](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/mapwithkind.md) | 323 | `declaration-track:3df3b8e20b30ce2f16ee2fc5fe33591d39f8ad899f5f1fadfa6ce11baf707776` |
| 50 | `def` | [map₂](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/map-source-edition-2.md) | 333 | `declaration-track:bb6fb07f452bb360d5dd64347933333ac478af4300e35fc114875b09a19c0b1c` |
| 51 | `def` | [mapWithKind₂](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/mapwithkind-source-edition-2.md) | 343 | `declaration-track:e79461a078a9226b178604d50f38fbe5731319a32687859f2a232d2eb9f67356` |
| 52 | `def` | [isEmpty](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/isempty.md) | 353 | `declaration-track:af6dfec5d8e9d94252a60c7340101bb340a0494dc6f3fa1c0f31fc11cb72982b` |
| 53 | `def` | [isEmptyAt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/isemptyat.md) | 355 | `declaration-track:385b889b462cd65ca04305bae2ab0c6de3c1a306e5af8f5f4c7a8d01c5152c33` |
| 54 | `def` | [univSize](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/univsize.md) | 358 | `declaration-track:17a0d70ed0d4f6f477fa652ed8a7e7c99476d8edb36e505b5088c3f55dcfc330` |
| 55 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/instance-source-edition-10.md) | 360 | `declaration-track:f6d4639db5e3f547187acc226ee867f50534c92136853172973a374a3164088f` |
| 56 | `def` | [directLe](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/directle.md) | 368 | `declaration-track:bd8d1e82d54bb78827d4046043651a3b8491e113c434e2e4d517a266aab50172` |
| 57 | `theorem` | [directLe_eq_allWithKind_le](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/directle-eq-allwithkind-le.md) | 376 | `result-track:1ebf4cb80def874a31496a9212d93ba4122c3380ce499abafa5522596c689873` |
| 58 | `def` | [brailleCellAt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/braillecellat.md) | 385 | `declaration-track:17735f5393fb84fe616a7b1eadef0f64efc4b468b0f5c1176183952a2c7b4445` |
| 59 | `def` | [toString](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/tostring.md) | 406 | `declaration-track:15d097e4c7a1ff9ed4e71bb86cee57acac7a42fc58727803e61b12bd036f0de7` |
| 60 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/instance-source-edition-8.md) | 417 | `declaration-track:7d263b97054bc38866f590fe33cfc2655a89b1a8869009ed3640025321f33317` |
| 61 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/instance-source-edition-6.md) | 424 | `declaration-track:45b1b55225b325f9bef097977fd1fc9110950593306b2149992846c9bfd206cd` |
| 62 | `def` | [toPrivate](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/toprivate.md) | 434 | `declaration-track:2c4ed5ec27ea11515f9b4aa8c06addc5eafba26cdb48c02dc4b3c2e02bbe1b70` |
| 63 | `def` | [toPublic](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/topublic.md) | 437 | `declaration-track:f023a5d4a0462d77e209f6008e44681c556e9e69ed4d87397220af57d63dc928` |
| 64 | `def` | [fromPrivate](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/fromprivate.md) | 439 | `declaration-track:98e8b80f70ec4fdf0a59766cd215b67c1767564095445a020df785ef4e688d8b` |
| 65 | `def` | [fromPublic](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/frompublic.md) | 441 | `declaration-track:0263a33b7567809f74a5a79d332ccffb451f2dcbc92adf96a8ee2eba76443cee` |
| 66 | `def` | [to](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/to.md) | 444 | `declaration-track:46336ad6d0cd1cefe37153b799bc9ea0d3d1d653accfbc927b66934349486905` |
| 67 | `def` | [«from»](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/from.md) | 449 | `declaration-track:4df3f303dbdcf1d6b648645250887e3b93116bde4e956c5d708971ca5ce7fd3f` |
| 68 | `def` | [toPrivateTrans](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/toprivatetrans.md) | 456 | `declaration-track:8bb478914d5e731eab077ab8e6de913770ba3f57d2e7e68a192c3e749bd1232a` |
| 69 | `def` | [toPublicTrans](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/topublictrans.md) | 459 | `declaration-track:a9ad4c74eda9724305016ca9b1f1990d1abd2828707cb678cbb2bce323a6e5e1` |
| 70 | `def` | [fromPrivateTrans](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/fromprivatetrans.md) | 462 | `declaration-track:7a0956ba3e014bd0cb2515f6f890cd4d614ea0f17aaae22de7a0c4b3fabc0a55` |
| 71 | `def` | [fromPublicTrans](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/frompublictrans.md) | 465 | `declaration-track:c9e1a13fdeec9cc20f87bae0d97449011361442dff50c890c1da512ab9758228` |
| 72 | `def` | [source](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/source.md) | 468 | `declaration-track:f93fa5282853130f206b43672d6806038e2ffb8a262b8e51338dd866aab1e29b` |
| 73 | `def` | [target](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/target.md) | 471 | `declaration-track:37fe8a6dde627a95b3d5dd0bede280464b16714d64a52621e227d4eefc885c65` |
| 74 | `def` | [connects](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/connects.md) | 478 | `declaration-track:ebe9ba37d5be4bf0dce0cc175a75d6020383c7dace0eaf9ba4c648567379a787` |
| 75 | `def` | [yields](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/yields.md) | 487 | `declaration-track:9e36f228ae82879b053e0c7d13293a169c08b50e6d06beb947d088420f1d6d98` |
| 76 | `def` | [demands](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/demands.md) | 494 | `declaration-track:a4e427a55c65831dcef515d88e17e5fdeacd21bb4c83637118a5e75c7e1364c3` |
| 77 | `def` | [andThen](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/andthen.md) | 500 | `declaration-track:8c54141db5961cd813ed20aa285d5e9df2bf6b2dfad23f1afd709fdb52e7c5fa` |
| 78 | `theorem` | [target_andThen_eq_right_target](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/target-andthen-eq-right-target.md) | 507 | `result-track:c1870587b2a3a79dc91bf0077d5a8245b67b52347c5e64f18c22152c87b6577b` |
| 79 | `theorem` | [source_andThen_eq_left_source](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/source-andthen-eq-left-source.md) | 511 | `result-track:ceab46bf3d0bb9d6f902de60186613cce5abe484c3ebd3b732eb4cd3818ddc56` |
| 80 | `theorem` | [andThen_assoc](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/andthen-assoc.md) | 516 | `result-track:f10c24f5f42334ce916028af516d4a79eb19d38a44f4596439cabd5acbef1ede` |
| 81 | `def` | [connecting?](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedPublicImportGraph.lean/declarations/connecting.md) | 527 | `declaration-track:6e730f37db4e8c90e3ae1b16518dbcb796e7ffa2591ec2dc143df8d250a983cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cddb4c87b06e56267036f85c3f4f6cab2972cc1a3b8a0cf09d17b28af70a8984 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3fcfc93aaa59c33af79baf3bfba71d898e082b29afffaccadec915bd59a43827.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3fcfc93aaa59c33af79baf3bfba71d898e082b29afffaccadec915bd59a43827.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
