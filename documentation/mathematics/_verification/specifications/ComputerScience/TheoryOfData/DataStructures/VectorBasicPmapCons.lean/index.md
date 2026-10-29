# Verification target: Vector Basic Pmap Cons

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b22429f57fedb55d5af78f635541741fc6dfb04",
  "lexical_observation_count": 104,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd3279f1ed37a00dbd1073a57f0b98daaa9b1e08d690d35c33aecf949b7f531a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b22429f57fedb55d5af78f635541741fc6dfb04`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd3279f1ed37a00dbd1073a57f0b98daaa9b1e08d690d35c33aecf949b7f531a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd3279f1ed37a00dbd1073a57f0b98daaa9b1e08d690d35c33aecf949b7f531a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Vector.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Nodup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.OfFn` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Scan` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Applicative` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.List.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/instance-source-edition-2.md) | 31 | `declaration-track:b056136de430a79d2864371882670c70fb53ee001120ad04a00f856fbda2af92` |
| 2 | `theorem` | [toList_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/tolist-injective.md) | 34 | `result-track:3bb87d17f48989455c635cbfb685d0bdab8dfcf6f1121aa82cd54ac532ec65da` |
| 3 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/ext.md) | 39 | `result-track:3f3a00fd506c2b6dbd2ffca418b74cc2dce7f879b175cf8e7d1693a2a414aaf7` |
| 4 | `instance` | [zero_subsingleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/zero-subsingleton.md) | 44 | `declaration-track:9a2bffbdc648b1c65d29d5b3403dccddda66d7e6f042faffabb5ad2299ee7134` |
| 5 | `theorem` | [cons_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/cons-val.md) | 48 | `result-track:09a87f2d025d52583360d21e2586ddd81e599c3b5c1acb9f09ab39755cb1dad9` |
| 6 | `theorem` | [eq_cons_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/eq-cons-iff.md) | 51 | `result-track:3cc3e7c3631300f849cf14df8e986d374f092ede37b3ddd6a663a85b3d027008` |
| 7 | `theorem` | [ne_cons_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/ne-cons-iff.md) | 56 | `result-track:145a3d7882c8205df95f2256c9084b7d610113138ec4a7a361f3a8c36a6022dd` |
| 8 | `theorem` | [exists_eq_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/exists-eq-cons.md) | 59 | `result-track:723bba68e3e1b4a9c6c23b4b8b611f6f77ca43c4b82807a010816c65e0db180c` |
| 9 | `theorem` | [toList_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/tolist-offn.md) | 63 | `result-track:22332eff5d9befb63776594d10b52c80920274e5a0618a2968841c6ca5fc295a` |
| 10 | `theorem` | [mk_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/mk-tolist.md) | 68 | `result-track:47add2f60e301e65538685a3dec8e5fa22428be7bc5d192d36f0343ac4d9d925` |
| 11 | `theorem` | [length_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/length-val.md) | 72 | `result-track:f5b623653b6f18b151b17f3efca9f61fc54b5d108e3c668f6d66d97ad2d1fc3d` |
| 12 | `theorem` | [pmap_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/pmap-cons-source-edition-2.md) | 75 | `result-track:d65283c0601c406e59351b462381047bcf3a2fc01db95255d77a72645aaebb5a` |
| 13 | `theorem` | [pmap_cons'](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/pmap-cons.md) | 85 | `result-track:2ad6b8987c95454d65e2e926454fcfbb392ef958363aa61c726c25fd41a16b16` |
| 14 | `theorem` | [toList_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/tolist-map.md) | 90 | `result-track:2b933639f93083531d52eded92850d2a7dc410f84a5f7944f2253966cea2878e` |
| 15 | `theorem` | [head_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/head-map.md) | 94 | `result-track:6398660ca901934c759d80118222ab2a2ae64dddb63807657d52e63172861917` |
| 16 | `theorem` | [tail_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/tail-map.md) | 99 | `result-track:79bd3bbe467a4f48fa1a348a086644fc82af934c9d03a34a7346ad24b82c2811` |
| 17 | `theorem` | [getElem_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/getelem-map.md) | 105 | `result-track:0e26c4fc093ab8e8c371e896778df93d7b689588538af1a24082cadea93928ea` |
| 18 | `theorem` | [toList_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/tolist-pmap.md) | 110 | `result-track:c0d3b31b166b9f2b2bf4d2aadbae5af18cea11feca9a67780e34c456df8639e9` |
| 19 | `theorem` | [head_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/head-pmap.md) | 115 | `result-track:132074f13df9a96dbcbef8e5d0253443ab51166b75058a8acb9f764545c72a44` |
| 20 | `theorem` | [tail_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/tail-pmap.md) | 123 | `result-track:4cccb1189afd83025d5c6259c2a1dc3ce7bd879a50e8d1dbdd5477cbf9b8c450` |
| 21 | `theorem` | [getElem_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/getelem-pmap.md) | 131 | `result-track:fe9cc6cfdd35041ff66e0088852f8fcd8e915a85b10c4868cfe9293de40bc1fb` |
| 22 | `theorem` | [get_eq_get_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/get-eq-get-tolist.md) | 136 | `result-track:d38aabe19bfdb9ea7d8d55321e5e9a5586a6cc07058a3705de0ae518a41b15a9` |
| 23 | `theorem` | [get_replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/get-replicate.md) | 144 | `result-track:958ed235f693fff61bd2b33418ef964b7521df5091235ce0cdd334cfd2d7905a` |
| 24 | `theorem` | [get_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/get-map-source-edition-2.md) | 148 | `result-track:dd1b39594f8c7c47e1be41a29aa19ee2b866fe71b29c93758923a4f529babf42` |
| 25 | `theorem` | [map₂_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/map-nil.md) | 153 | `result-track:357cc88ec2c72ad0cd9390460e2f65edd7f1e864f967af6bdab3c736d31d3d6c` |
| 26 | `theorem` | [map₂_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/map-cons.md) | 157 | `result-track:9e3c006a9ddb4382f525b50f0a32be9f86e30f55b07e690f88dc590e3f12d815` |
| 27 | `theorem` | [get_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/get-offn.md) | 162 | `result-track:e1681bcc129f9732d0fc700397bad3384b9fe655091be86264e58e2501b6bd4f` |
| 28 | `theorem` | [ofFn_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/offn-get.md) | 168 | `result-track:e6bb4910e75a4078474e60dcc9bb69f4bb8968d8ed235357e64f3a370ff34c3a` |
| 29 | `def` | [_root_.Equiv.vectorEquivFin](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/root-equiv-vectorequivfin.md) | 175 | `declaration-track:8f4774f3b3fdc93db01958daeb2a7fb1ce3dda8a1f0fdfb6a9ef61545271aab2` |
| 30 | `theorem` | [get_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/get-tail.md) | 178 | `result-track:453afe153b159730bb083cc8acf90fc8db050cb01beebaa73c8c72d46bd79864` |
| 31 | `theorem` | [get_tail_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/get-tail-succ.md) | 186 | `result-track:76b2a59525db1eb75f8e584236e5f2b73be410438a1bc36d2689cecb64511e2f` |
| 32 | `theorem` | [tail_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/tail-val.md) | 190 | `result-track:222a799b3c2bd7f5ded673ca6435e6f1c5fce69cf8175e8589e3dba7000e6e44` |
| 33 | `theorem` | [tail_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/tail-nil.md) | 195 | `result-track:bbe8438a81f2430bdf212470e711b00d3a56a76c9a74a2b8150acbfc9da5d2cf` |
| 34 | `theorem` | [singleton_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/singleton-tail.md) | 200 | `result-track:6ef848a81e983da730e26f3a94071b37e0b840223cd238042b39bac2c7cfa103` |
| 35 | `theorem` | [tail_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/tail-offn.md) | 204 | `result-track:149015442e77b219e0105eaef96df337c5cea290ca8080444e842716ec8efc50` |
| 36 | `theorem` | [toList_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/tolist-empty.md) | 212 | `result-track:c3ffb35e8656675bb5538ca36f14ca6434b031ec3f09a0828b3ae7dd524d3a7e` |
| 37 | `theorem` | [toList_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/tolist-singleton.md) | 218 | `result-track:701897a1a7d4e3f209a8cce8362bb0dfaf70c35c59640136d474a7fd84bfafc5` |
| 38 | `theorem` | [empty_toList_eq_ff](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/empty-tolist-eq-ff.md) | 223 | `result-track:7183f94a788caf8c1058956a89800a9a5c563d00a16e52e2cd9915e5bda2bce3` |
| 39 | `theorem` | [not_empty_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/not-empty-tolist.md) | 227 | `result-track:c784bc62b0ed5410bbf5d5aceefa925bfa1534750d916f09f784147fbb609cc8` |
| 40 | `theorem` | [map_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/map-id.md) | 232 | `result-track:3cf2cd8cce6be4679abc6b60001bd306e323e4a4ca318d90ea2b993b448b623d` |
| 41 | `theorem` | [nodup_iff_injective_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/nodup-iff-injective-get.md) | 235 | `result-track:5dd42da8066830e27a60f29e46ecd8d64ae33314f3b6d6aea6e52e8ad5e68616` |
| 42 | `theorem` | [head?_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/head-tolist.md) | 240 | `result-track:1a1bcb4c0f4cf892c5c5361f6976578e9ceac54ee10cf924bd07206e94885108` |
| 43 | `def` | [reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/reverse.md) | 244 | `declaration-track:8580a6a0d9324d5da5d5fa09ab6990a2a9d209d3025cf3c3d9a59f72c978668d` |
| 44 | `theorem` | [toList_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/tolist-reverse.md) | 249 | `result-track:84c7205864a8298395ed7379d6b225e2e7bdff3f556e46724cd2171bedc3fab1` |
| 45 | `theorem` | [reverse_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/reverse-reverse.md) | 253 | `result-track:bc76bd666ae264e81351ea9fb19c5f1d4bb89464aff36d75306b281edfd4b6c8` |
| 46 | `theorem` | [get_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/get-zero.md) | 258 | `result-track:cda4849b065d2816eee317ca9a42a737b74f7fb25d31867ab6aa1f9cd712fcae` |
| 47 | `theorem` | [head_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/head-offn.md) | 262 | `result-track:ffde392664133faa728a7441c3de75f0fb6ad716833936a4ba11a7aac4973640` |
| 48 | `theorem` | [get_cons_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/get-cons-zero.md) | 265 | `result-track:e73b18469eff2bf5abcb97002a50557f6bd2b425ad14689be3a1569140cc2875` |
| 49 | `theorem` | [get_cons_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/get-cons-nil.md) | 270 | `result-track:76dbfec8632211def105d57bb529e2b582f402ced8fc1f728e743d07a3c80666` |
| 50 | `theorem` | [get_cons_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/get-cons-succ.md) | 274 | `result-track:d77c2e098ecd68866303126cf05812279abbe90a5e1da7874098c8e13b9a18e1` |
| 51 | `def` | [last](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/last.md) | 278 | `declaration-track:6027cfc4eee189338c210a63c9d8e850226507b77b898c6da214337f1d3fbf9b` |
| 52 | `theorem` | [last_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/last-def.md) | 282 | `result-track:beb01c5bc7ba5d3f956ac9f56a52ba13e495bed87d2167acd9112745c3b1f635` |
| 53 | `theorem` | [reverse_get_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/reverse-get-zero.md) | 286 | `result-track:99cc4346feaa56cac3574848d3bcdadf143faf4c57cdd923d5590bea73630aa2` |
| 54 | `def` | [scanl](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/scanl.md) | 304 | `declaration-track:eb1cda9e4c96bcb77943ac55a56b34a312b72827db7d25d0574290c922b61e33` |
| 55 | `theorem` | [scanl_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/scanl-nil.md) | 309 | `result-track:80343da2453f2e33c7856ceb0e6d17db6b29d027d7b2b408a659a98602fb7a4c` |
| 56 | `theorem` | [scanl_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/scanl-cons.md) | 319 | `result-track:363cb38398ee4f416f4ccd3c6041b7934d91e1d16d7728e506214d2fe1653e54` |
| 57 | `theorem` | [scanl_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/scanl-val.md) | 327 | `result-track:95e5e78183530309f961c76a5cce5e419b654754cda3be45b9d63ac4009bb1c0` |
| 58 | `theorem` | [toList_scanl](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/tolist-scanl.md) | 334 | `result-track:173ab5896894704bf48855377aef52b4f3bc271c8f61c13eaa66522832bd1bbf` |
| 59 | `theorem` | [scanl_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/scanl-singleton.md) | 342 | `result-track:b3ffdbe8609568fa5334acb19f4aa53b2ef4dc057c54ff7929adc23ae2149b3c` |
| 60 | `theorem` | [scanl_head](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/scanl-head.md) | 350 | `result-track:51dab271c3b4799465fcff7c8edb4ff0030be733e5ea73a550642c9ee7ae42ae` |
| 61 | `theorem` | [scanl_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/scanl-get.md) | 365 | `result-track:bb9322ee5ff8c50ea30cdba049f7903e3645985d92da83cf8b461937cf46f037` |
| 62 | `def` | [mOfFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/moffn.md) | 382 | `declaration-track:b4dc5b95354995b3d34c75778b49cba51254b4769cd593ac4177b212e274f45f` |
| 63 | `theorem` | [mOfFn_pure](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/moffn-pure.md) | 389 | `result-track:c6dde50a71083a4373635530d2b7878a703e677e3b9bacc4a47530836c56ef28` |
| 64 | `def` | [mmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/mmap.md) | 398 | `declaration-track:4c08b8151a24731f97bce00cb5ddc54c4f9377604404a1412ff89067cf932c0b` |
| 65 | `theorem` | [mmap_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/mmap-nil.md) | 406 | `result-track:599fe01ddda3302ecb056101582d4f9225fa17f92cb25e6b915c8624273dd183` |
| 66 | `theorem` | [mmap_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/mmap-cons.md) | 410 | `result-track:56e4ade2ace802e32d58cadefeaa4e1197225d408d1a3c23ffc20aef022aea6e` |
| 67 | `def` | [inductionOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/inductionon-source-edition-2.md) | 427 | `declaration-track:196b83437bfa2777079540b22c2248275a9af643919c784b10cb7f57fb04770c` |
| 68 | `theorem` | [inductionOn_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/inductionon-nil.md) | 437 | `result-track:2b9663c708c8ddc3b685be50de1571e753420a0fcb02dfe79549faf63f4d8cb3` |
| 69 | `theorem` | [inductionOn_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/inductionon-cons.md) | 443 | `result-track:463a7a147cc6c4e1b5847f334ea07c248afe30eebb05a91e907ff9a25d486304` |
| 70 | `def` | [inductionOn₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/inductionon.md) | 452 | `declaration-track:14a02e4d58c180c83cd64a2e90cfa6a05e65e7e8890c8f7a8a5bbba5dd6df3a1` |
| 71 | `def` | [inductionOn₃](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/inductionon-source-edition-3.md) | 470 | `declaration-track:646b69049e6ce8dd022a767bce7830a1ede64415ae56ed0d9ded14c1672e1215` |
| 72 | `def` | [casesOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/caseson.md) | 491 | `declaration-track:391db909f9be761f6e9631911f89f7fb8721117b42b472bd4c47f54276c1c5dd` |
| 73 | `def` | [casesOn₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/caseson-source-edition-3.md) | 498 | `declaration-track:fd5694d6e3cd7a24ae33202fc9f530e6e3ded5b3d9874d73fb8a9655432029e6` |
| 74 | `def` | [casesOn₃](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/caseson-source-edition-2.md) | 507 | `declaration-track:e85f76ba35c214c8bfba1f8ceb8470603191cf434a7a204dff813abd639d715c` |
| 75 | `def` | [toArray](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/toarray.md) | 515 | `declaration-track:bb3aa6a062418397c79e1026d8dac1c63d29c7146204de0847e1857082e8cb19` |
| 76 | `def` | [insertIdx](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/insertidx.md) | 524 | `declaration-track:a027f07920d45f466082ea1454822665b5a1df685550db9bfbe792f5d65cf8ef` |
| 77 | `theorem` | [insertIdx_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/insertidx-val.md) | 529 | `result-track:42995d684c1c95349a9c78b4bb18b62ec7df6a041831ba46ca0a9758a851ba38` |
| 78 | `theorem` | [eraseIdx_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/eraseidx-val.md) | 534 | `result-track:fd65f18f9655788510aa2e19e3185f7ac513d5baf06ed52b3676c598267ff48e` |
| 79 | `theorem` | [eraseIdx_insertIdx](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/eraseidx-insertidx.md) | 537 | `result-track:6d9a434776c8126f5bc1562f9d6d7941bdd76d8ec0577f827ff113cadbccae47` |
| 80 | `theorem` | [eraseIdx_insertIdx'](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/eraseidx-insertidx-source-edition-2.md) | 542 | `result-track:ff8aef184e05456437378400060e52402d9cc133d1cc659c39463559d8f4e9d3` |
| 81 | `theorem` | [insertIdx_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/insertidx-comm.md) | 562 | `result-track:b2508687c9ff4c11a0cf818b0e7f7cf6fafac23e1dd78fca1b6298c5dd39dfb8` |
| 82 | `def` | [set](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/set.md) | 578 | `declaration-track:6ae07daaac996f919e09b025af196b0d6d8bdc4e1d303ba96894aade2a109d12` |
| 83 | `theorem` | [toList_set](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/tolist-set.md) | 582 | `result-track:dfa1b1fd8cee76dde45b3e78b77ced58316577fc7f9dad5937dec3b54fd3bd1c` |
| 84 | `theorem` | [get_set_same](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/get-set-same.md) | 587 | `result-track:1bf13b074783f7b8ad956617a37f3d2e8d7025ffc8520e8716d1a91683f0b552` |
| 85 | `theorem` | [get_set_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/get-set-of-ne.md) | 590 | `result-track:dd2b5ff048c4b96fbdcefd7e2dcb67f66f4190a3afdf23afc6c3e95bd48560a2` |
| 86 | `theorem` | [get_set_eq_if](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/get-set-eq-if.md) | 597 | `result-track:bc9c9dd4ef54115cecd1a2bf6b3547d4211a5f00e6699bef54857c1fc2ff58b5` |
| 87 | `theorem` | [prod_set](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/prod-set.md) | 602 | `result-track:10397a28e8df2a89b717571277e4df89eb117a8fcf70dd595756e02fc6d88535` |
| 88 | `theorem` | [prod_set'](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/prod-set-source-edition-2.md) | 610 | `result-track:507f7de8507709093b99f8f01077493aec86284e4d563aab60b7f12e2ffcd3db` |
| 89 | `def` | [traverseAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/traverseaux.md) | 632 | `declaration-track:5807a852c0a5ae2dbf41d270f1450d07b579643f4041f7e67064fab9eeeb0af8` |
| 90 | `def` | [traverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/traverse.md) | 637 | `declaration-track:cf5d12f3a92e69cc0e09173a4fdbe529b6840551493b94bc604b745d0b89ea23` |
| 91 | `theorem` | [traverse_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/traverse-def.md) | 645 | `result-track:dd1b99bfe23b57352a81680a3052f8c6990d1a78d5f504dd63430c7b96290aef` |
| 92 | `theorem` | [id_traverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/id-traverse.md) | 649 | `result-track:57f7566d41a2ec42dd2bac4c323c4da49e74c52a86e3d403adf459b0916877c4` |
| 93 | `theorem` | [comp_traverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/comp-traverse.md) | 664 | `result-track:cc0d4bd06484781b65a7d840e4077d108675b013bdbfb135107ac3f7acb5df98` |
| 94 | `theorem` | [traverse_eq_map_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/traverse-eq-map-id.md) | 673 | `result-track:41877c8f6c2d518971d747b7946e09a401167797d18eee6ca292327db6bd0ef4` |
| 95 | `theorem` | [naturality](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/naturality.md) | 679 | `result-track:7edbb134f5e44bbe0e39b30264459c9109cc6c70bbb9a6d93ca47a2001a171e1` |
| 96 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/instance.md) | 688 | `declaration-track:51a784cf1d57dec574b6ec5b95f9750d9f48bf0948b9135f8b22b6c83d3b4fc0` |
| 97 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/instance-source-edition-3.md) | 692 | `declaration-track:f38436fbf501d380c9846e11505f3292ce256ed876f47f7c3c50894d28444455` |
| 98 | `theorem` | [replicate_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/replicate-succ.md) | 724 | `result-track:3f632e609b024b02b7795a8d2fc346925be94ef67caddaccda4a1c82652ac1f9` |
| 99 | `lemma` | [get_append_cons_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/get-append-cons-zero.md) | 731 | `result-track:0042fcdae3454293b0f2432afff3de0c7757fe110d069be466ebf1d892ef8406` |
| 100 | `theorem` | [get_append_cons_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/get-append-cons-succ.md) | 734 | `result-track:eaecb4fa5b3196f7c3db3167fbf64906e0fdd698abf759c5347e2ea2c37df3f3` |
| 101 | `theorem` | [append_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/append-nil.md) | 739 | `result-track:05712204cbb282077b0236fd561e6e87dd8bad15fd5e0941f4260ce9787442e4` |
| 102 | `theorem` | [get_map₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/get-map.md) | 747 | `result-track:2fab0ef6632d710465a42b6d182036873be298fa2e1b54aa8c86522d13062760` |
| 103 | `theorem` | [mapAccumr_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/mapaccumr-cons-source-edition-2.md) | 760 | `result-track:bd4e5ae9b6160f6353d31f0d7c8d9a52b93d1e2642287f9317375d927977bbbe` |
| 104 | `theorem` | [mapAccumr₂_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/declarations/mapaccumr-cons.md) | 768 | `result-track:77945b58a381e8df16fa44b0844c132720d9aed6e62556df25f36532d246df81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=16919e2c4acd144f6275b0892d0bd0524d2ac232da59b0a821b1abc1f451a7aa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd3279f1ed37a00dbd1073a57f0b98daaa9b1e08d690d35c33aecf949b7f531a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd3279f1ed37a00dbd1073a57f0b98daaa9b1e08d690d35c33aecf949b7f531a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
