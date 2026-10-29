# Verification target: Attach Namespaced Public Pmap

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "787dbef8c046074a405543d93401d8511220c787",
  "lexical_observation_count": 97,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant82afff6f506671c02863b791afa3df5cdec9802d1ed2a4cbd86a6d442301775e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `787dbef8c046074a405543d93401d8511220c787`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant82afff6f506671c02863b791afa3df5cdec9802d1ed2a4cbd86a6d442301775e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant82afff6f506671c02863b791afa3df5cdec9802d1ed2a4cbd86a6d442301775e.lean.json)

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
| 1 | `def` | [pmap](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/pmap.md) | 36 | `declaration-track:3de71459809477f0a8b1176355786ebb9cf9f22ad040f89589f67eb01491cb18` |
| 2 | `def` | [attachWithImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/attachwithimpl.md) | 43 | `declaration-track:170ca802d2c8a794def2ffe4f7193553de8b1fafaf2fbf667069f9045d980cf1` |
| 3 | `def` | [attachWith](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/attachwith.md) | 48 | `declaration-track:12dae8f41f13b80cba464c70527bc79d06ef95939aca0fc1b25aa2a42e2b74cb` |
| 4 | `def` | [attach](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/attach.md) | 54 | `declaration-track:d8f38318d84f01f27818d977ee6fe40530fb43fefbc8b8e6721d400e929577cf` |
| 5 | `theorem` | [attachWith_mk](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/attachwith-mk.md) | 56 | `result-track:543e37334129f6d39b210ec2a49d89aeecac22199e0bd070fc5766f3d3ff4c1a` |
| 6 | `theorem` | [attach_mk](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/attach-mk.md) | 60 | `result-track:8d934a0a891111b48c60ab36da015479922d8d156b13a7494a388e987f7444e4` |
| 7 | `theorem` | [pmap_mk](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/pmap-mk.md) | 64 | `result-track:f54cff32d00603dbe2948821fcf8a0a5899d3027e26146c3355eee6f7a8896ff` |
| 8 | `theorem` | [toArray_attachWith](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/toarray-attachwith.md) | 69 | `result-track:85084ad5bcfd85f4979c5594ab453a5631c8e51beb260af95c1659dc2bfb29e6` |
| 9 | `theorem` | [toArray_attach](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/toarray-attach.md) | 73 | `result-track:4f89754bae363c806608ca2809d73049f08c647679a2b18af58a7b422d42cc63` |
| 10 | `theorem` | [toArray_pmap](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/toarray-pmap.md) | 77 | `result-track:7da403902a8bff96b3b03de68375d4f2ff74d01c6349c4b47b94307eaa72d5af` |
| 11 | `theorem` | [toList_attachWith](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/tolist-attachwith.md) | 81 | `result-track:6c92cb293f5d1f3d7b22c68b681f8207798076d77fc55707ac89a02d96be4a31` |
| 12 | `theorem` | [toList_attach](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/tolist-attach.md) | 86 | `result-track:f135336e606555561d9768762bb3d7f20f63af79d553a2f75a16640e7b0fe600` |
| 13 | `theorem` | [toList_pmap](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/tolist-pmap.md) | 90 | `result-track:9cb58fee86ac8daa177dd32d28eb2cafea425ea3d5a155b8a202eb0f835727f0` |
| 14 | `def` | [pmapImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/pmapimpl.md) | 96 | `declaration-track:e7af72b4e887dd1c78e0588adc890bd3f70e0eb7cab7b135d971f1b746a2ab4a` |
| 15 | `theorem` | [pmap_eq_pmapImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/pmap-eq-pmapimpl.md) | 99 | `result-track:86c5a9c0b0e428fbbcd6e09668ea215ccd3e2489e62df8602b3425db1f7fcafd` |
| 16 | `theorem` | [pmap_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/pmap-empty.md) | 107 | `result-track:da5ea1a4f2b8d109301a61e495b9622e838015119690d9bccf0bd7f6466aa417` |
| 17 | `theorem` | [pmap_push](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/pmap-push.md) | 109 | `result-track:9aac3e6be9c660b9d63561d49001e62e10861197edb0c3a02be071384f498f5b` |
| 18 | `theorem` | [attach_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/attach-empty.md) | 114 | `result-track:a307e5b1a5768deb489849bcdd79bece52cae6fa4af64e49ce34bfffdc25620f` |
| 19 | `theorem` | [attachWith_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/attachwith-empty.md) | 116 | `result-track:3293e8c7217db754e7e2bde52e7dadd1127d4dbeaed2da7dc0dcdde619c010dd` |
| 20 | `theorem` | [pmap_eq_map](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/pmap-eq-map.md) | 119 | `result-track:b2960c203a0495fa27305d680a668b51c26fe049609905e57e7ee0e1225acd4e` |
| 21 | `theorem` | [pmap_congr_left](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/pmap-congr-left.md) | 123 | `result-track:9d0a25f46d1b75d19b7a3377c8509fd1c3b17445cdec11425a8480660ccee227` |
| 22 | `theorem` | [map_pmap](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/map-pmap.md) | 130 | `result-track:85f30c99bcfdcd9f10dbbbbc6f22c09e8dbfdb324e6040b35f2230d5407c08fc` |
| 23 | `theorem` | [pmap_map](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/pmap-map.md) | 135 | `result-track:53ae36a9a2e88b62a772f312098881381c3b81ac5808b40da18e69d521491807` |
| 24 | `theorem` | [attach_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/attach-congr.md) | 140 | `result-track:39beed175929a94abb84dd460273bd6782517caab77e6539400116c8d6f39e0d` |
| 25 | `theorem` | [attachWith_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/attachwith-congr.md) | 145 | `result-track:878d013c931a6c3d529230cf357f1000ef7762a8815e64e379d6444f8e2de2f8` |
| 26 | `theorem` | [mk_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/mk-congr.md) | 151 | `result-track:b975f9da877a40734d2d1ca12eab397c4971c5e997fa0fbfecb71ea900d58647` |
| 27 | `theorem` | [attach_push](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/attach-push.md) | 156 | `result-track:236d4eeefbe0c10d9a16c9297ac5da4ef0310c4660de0789eaa72a095f389a6f` |
| 28 | `theorem` | [attachWith_push](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/attachwith-push.md) | 163 | `result-track:5f6b82203b22e46f95d27f7c7a25dd1c242c5e58fd0ad3e7b0159aa1b78d1162` |
| 29 | `theorem` | [pmap_eq_map_attach](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/pmap-eq-map-attach.md) | 169 | `result-track:d413c0dfcba7ca956a56106f5a7689407d2a6486cda20659f42a10339c6c8c0f` |
| 30 | `theorem` | [pmap_eq_attachWith](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/pmap-eq-attachwith.md) | 177 | `result-track:44c2c66e3bc963b376386ff2d928a38364ee069c9a0ed393f14814c44c26beae` |
| 31 | `theorem` | [attach_map_val](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/attach-map-val.md) | 182 | `result-track:df047c2d975eacde88f2168a956ffbb3db087e2b8f5726766048f9b9cdfe8345` |
| 32 | `theorem` | [attach_map_subtype_val](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/attach-map-subtype-val.md) | 188 | `result-track:212e3803c080255674ac80228b6be49fec7a77f47b40185fd9016f8eaf37657e` |
| 33 | `theorem` | [attachWith_map_val](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/attachwith-map-val.md) | 192 | `result-track:7cd5059b224c3833f14d6a0dcdd8631cf3cb0547ee899a34314eec6fdccd78a6` |
| 34 | `theorem` | [attachWith_map_subtype_val](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/attachwith-map-subtype-val.md) | 197 | `result-track:693b650f5ce41159ac27b2d3476d917cccca1ef9c63f925979b76e30b24a6e97` |
| 35 | `theorem` | [mem_attach](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/mem-attach.md) | 203 | `result-track:1d64eb709e70613b03e6aefbf286b414c94417dc13b55fc9a73247911522f816` |
| 36 | `theorem` | [mem_attachWith](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/mem-attachwith.md) | 210 | `result-track:5b8b06ade9236bb3f75095e1b06925a34ebd86dae5d2e0ac2b3d73f53c3af2d2` |
| 37 | `theorem` | [mem_pmap](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/mem-pmap.md) | 216 | `result-track:95388eb7d5cdbaf46ee6df5a875a8f46470646bcd94dd57be0a7b51c108a1e07` |
| 38 | `theorem` | [mem_pmap_of_mem](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/mem-pmap-of-mem.md) | 220 | `result-track:6cc907cadffdf265802ee34acc8ddc06e65b24e781470e604dec2752b0d09106` |
| 39 | `theorem` | [pmap_eq_self](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/pmap-eq-self.md) | 227 | `result-track:b4c809d5b9c3da83d94349cd0b68bf2108e1a38ed91014b09fd344908001dd34` |
| 40 | `theorem` | [getElem?_pmap](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/getelem-pmap-source-edition-2.md) | 233 | `result-track:84c11bb134011b6a5d65b9b5563b076e9bcaee4c595a9a7bf7015ed5e83bdab9` |
| 41 | `theorem` | [getElem_pmap](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/getelem-pmap.md) | 240 | `result-track:68253ebe20156d03b4001a7e7d360ac2cc934d289a90da4dd77ffe7cc1274a9c` |
| 42 | `theorem` | [getElem?_attachWith](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/getelem-attachwith-source-edition-2.md) | 247 | `result-track:59b2ad075cc59af98aa463f8001b5503727c429ca1fdc03ba92610ee1d8ff472` |
| 43 | `theorem` | [getElem?_attach](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/getelem-attach.md) | 252 | `result-track:5485015f62910af20fc069e758bc7abc2b5f1b6ac43908885ea3dd44764d7db7` |
| 44 | `theorem` | [getElem_attachWith](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/getelem-attachwith.md) | 257 | `result-track:095830ef8ad4966e2fed09929ce62174d5ed70da2a50277af2da3c24f891312d` |
| 45 | `theorem` | [getElem_attach](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/getelem-attach-source-edition-2.md) | 263 | `result-track:c7466400b85b801c47ba302b0a18c4d1d56ca54dc2c7b56b26da8656ad3bd417` |
| 46 | `theorem` | [pmap_attach](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/pmap-attach.md) | 267 | `result-track:b4c63b474bb83f9c47c5d2be54666bbd61c1a861224d418c55d62e221b465959` |
| 47 | `theorem` | [pmap_attachWith](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/pmap-attachwith.md) | 274 | `result-track:407e580bfbd8e304fef0fed27acb9b1e40f5c0e076bbed903da6f4ed103e11da` |
| 48 | `theorem` | [foldl_pmap](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/foldl-pmap.md) | 280 | `result-track:cb7034bce6d5c41d63e2fc7d6b9da2d1225682602686e9f335b22dc10d6b4030` |
| 49 | `theorem` | [foldr_pmap](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/foldr-pmap.md) | 285 | `result-track:d9fe38b9f4bee63d1fbde4f64e04540628652ed04ca608756299a4cf8304d616` |
| 50 | `theorem` | [foldl_attach](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/foldl-attach.md) | 300 | `result-track:4affd2eda3d3f25c0fdfef30b0584bd9b85653c66daa00a774dd7994e3bad7ca` |
| 51 | `theorem` | [foldr_attach](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/foldr-attach.md) | 315 | `result-track:3bdbaf5d2f178a772ba5a7a351ecc7d415334442b1d81b579f6e19e6d71d3230` |
| 52 | `theorem` | [attach_map](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/attach-map.md) | 320 | `result-track:1763421d76e8ac88b85270b850ec5d103d6e40e9e64ed4a141b9e56e2eeef65d` |
| 53 | `theorem` | [attachWith_map](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/attachwith-map.md) | 325 | `result-track:c69afe789c78c6da87b61040918ac3b5ee58d56a5b790563fe0140477823e7ac` |
| 54 | `theorem` | [map_attachWith](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/map-attachwith.md) | 331 | `result-track:00ab476b700d622852e13a7b885d60abd67733039add9f776ec634e29fbca74d` |
| 55 | `theorem` | [map_attachWith_eq_pmap](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/map-attachwith-eq-pmap.md) | 337 | `result-track:92cde18fc9adec85e2dc9c7451c2719c061f015cae4266a9340b5caf72e316e1` |
| 56 | `theorem` | [map_attach_eq_pmap](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/map-attach-eq-pmap.md) | 345 | `result-track:35c95785875a1a435e945dcf7f4775ae95262da4b21e952afab5380c67ad6fef` |
| 57 | `theorem` | [pmap_pmap](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/pmap-pmap.md) | 350 | `result-track:14d0e8c9287266ee12f2fe122ab5cb0bb40ec89461e5abf82bc6b02ce3b73956` |
| 58 | `theorem` | [pmap_append](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/pmap-append-source-edition-2.md) | 357 | `result-track:be884b09d3419ddc93fba7a8e3d66fd8725c0456a1b17fcf597c260fd1e4a940` |
| 59 | `theorem` | [pmap_append'](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/pmap-append.md) | 366 | `result-track:b862726e2774d5dd6641a35ba4becfc57e1ff5d42f131944f4e2e2dcd27f5777` |
| 60 | `theorem` | [attach_append](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/attach-append.md) | 372 | `result-track:7c1d4375d992bd08fac55b363f734a726032c2010aa840e9eefe35859950ef1c` |
| 61 | `theorem` | [attachWith_append](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/attachwith-append.md) | 382 | `result-track:e86f40c40057a1b9c6d8b669bc90145a44ea268c402179e1bd69c637df413f0d` |
| 62 | `theorem` | [pmap_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/pmap-reverse.md) | 388 | `result-track:52751b10265048f99fa8cd08d72ca158a91dd98cb204ece0e9abb3ac44da355d` |
| 63 | `theorem` | [reverse_pmap](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/reverse-pmap.md) | 393 | `result-track:6747c68cdd91238cb59323e1ed0d688d73e1c1d8b7e93e7061a9ac99fd5ccf1a` |
| 64 | `theorem` | [attachWith_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/attachwith-reverse.md) | 398 | `result-track:695ca1a326f00616210d46e7951e89a3526a92010910b7b051af873dedea4322` |
| 65 | `theorem` | [reverse_attachWith](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/reverse-attachwith.md) | 405 | `result-track:b1fbe08bd0c8b3f587bbe4bdf86261877409419e246ddd4e1373dc65ffbb3a2c` |
| 66 | `theorem` | [attach_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/attach-reverse.md) | 411 | `result-track:8ea713d4926cef2b8675383303705cd977eb2331b66d1d7e849c38b0cf588e70` |
| 67 | `theorem` | [reverse_attach](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/reverse-attach.md) | 417 | `result-track:e8f50df7e28c91ec2b8f97221a413972a6613621daa31413324d1298014986f6` |
| 68 | `theorem` | [back?_pmap](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/back-pmap.md) | 422 | `result-track:7b7c9862cfa247f9445a4c0438379b826ce2d097615cd90a6d8fe685572e8a5e` |
| 69 | `theorem` | [back?_attachWith](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/back-attachwith.md) | 428 | `result-track:2138f7ba512c3c78f00c2e40e2f62528e580f3cbba4d56d487147b86acb05810` |
| 70 | `theorem` | [back?_attach](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/back-attach.md) | 435 | `result-track:3a61777921c799454c2b07adfc688aa2d6c2e2dcab41ad2ce4de4ff315506559` |
| 71 | `theorem` | [countP_attach](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/countp-attach.md) | 441 | `result-track:ddf855f9fff133deabc52548faa8e48f0795f41180c1f2ed5089af94abb495ae` |
| 72 | `theorem` | [countP_attachWith](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/countp-attachwith.md) | 447 | `result-track:98633c7eed7fce931cd8d40a1a51513a1876622fa35a910ca47562703631743a` |
| 73 | `theorem` | [count_attach](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/count-attach.md) | 453 | `result-track:df340fb411223513f832d948a05051707552e2581c57ad287746155badcb57c4` |
| 74 | `theorem` | [count_attachWith](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/count-attachwith.md) | 459 | `result-track:4ebfdb26caf70b06c6879173e18f623983d80fcb310e752b6301182b3d625f48` |
| 75 | `theorem` | [countP_pmap](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/countp-pmap.md) | 464 | `result-track:049cfbae6a6c908d3521372257f0f01f35b67c6f2fa9232e542faa55c8d7ce1a` |
| 76 | `def` | [unattach](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/unattach.md) | 489 | `declaration-track:c8a0c7e08db6c91102975b2c132f6898cbca190dca932d1b69ec7266b0102107` |
| 77 | `theorem` | [unattach_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/unattach-empty.md) | 491 | `result-track:02db0a7ae0c6595f7c6b741ddaa7b85ec168dd8980e9e29a40b948ab6f9c011a` |
| 78 | `theorem` | [unattach_push](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/unattach-push.md) | 493 | `result-track:9dccd87e249629a8d61db9eb9b6d4d24c86ac8e5f134689616961428308b38e6` |
| 79 | `theorem` | [mem_unattach](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/mem-unattach.md) | 497 | `result-track:ad13ea3b1e7311aed60f4912c94fbfb3830af100111d0b789fb991afcddf0d56` |
| 80 | `theorem` | [unattach_mk](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/unattach-mk.md) | 501 | `result-track:f2311545e3fec45f4281de8a2e84358c5a140682f540142700237b059745250b` |
| 81 | `theorem` | [toArray_unattach](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/toarray-unattach.md) | 505 | `result-track:0892f0ade92adf04a006f23bedfb220721873a35ab38088fe2346224201586fb` |
| 82 | `theorem` | [toList_unattach](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/tolist-unattach.md) | 509 | `result-track:936ba560e451da8857521b23f0fd2a0e337cd7467895855013d84ac0a32e102e` |
| 83 | `theorem` | [unattach_attach](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/unattach-attach.md) | 514 | `result-track:087a9d16bef411e5f40a45b1a57edab102350b37f0495efbaed3da10ce7bb4f1` |
| 84 | `theorem` | [unattach_attachWith](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/unattach-attachwith.md) | 518 | `result-track:f077b735c037505a1656fc90753b88dd921dd16a5d07b3a31d71bca2ada35240` |
| 85 | `theorem` | [getElem?_unattach](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/getelem-unattach.md) | 524 | `result-track:85aed26cafdb2b853f4268d532af41c1fb0c8c445a80eb68d4235e4aaa6808b1` |
| 86 | `theorem` | [getElem_unattach](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/getelem-unattach-source-edition-2.md) | 528 | `result-track:a58f625618d738984e13fa57d6326549ca9ef81d9d2b29c3913a362fb942cf32` |
| 87 | `theorem` | [foldl_subtype](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/foldl-subtype.md) | 539 | `result-track:f2250280e9536339f6c04f89b1317252d5a0a56f44a206ae670ba00f414a0a18` |
| 88 | `theorem` | [foldr_subtype](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/foldr-subtype.md) | 550 | `result-track:2e39f20164bfc5ecdf97e179fa90c76bad1f43d700bcee84475ea083a0b1071b` |
| 89 | `theorem` | [map_subtype](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/map-subtype.md) | 561 | `result-track:b0530a5c7ed2bf352e4d0df55ec3cbaa289f4ffd7058f36abb1b05a058eee4a3` |
| 90 | `theorem` | [findSome?_subtype](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/findsome-subtype.md) | 567 | `result-track:8f0c53deca7c5f2b2c9e328e5a45c3f6df979cf919e51930b2c75205121d2485` |
| 91 | `theorem` | [find?_subtype](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/find-subtype.md) | 574 | `result-track:0e193030cec6bf28cd65b8e4ae8ee71d3df30768ef282f4d49ac0d29dc3b0a9e` |
| 92 | `theorem` | [all_subtype](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/all-subtype.md) | 581 | `result-track:3723d8e1145c68d62a098a5fc8812441ea2ae3b2a7980bb99f92b20c4aca6025` |
| 93 | `theorem` | [any_subtype](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/any-subtype.md) | 587 | `result-track:b7dae1242dcd26e456737434213385f5a4f4fc4ce3683f4c200c297a77507ac4` |
| 94 | `theorem` | [unattach_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/unattach-reverse.md) | 595 | `result-track:c5f70e5996d561dd3aabddcf134bb8d450bd65ce316592a3151f7b3806796e5a` |
| 95 | `theorem` | [unattach_append](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/unattach-append.md) | 601 | `result-track:85b2b8069336ba98012881cfa1eddf838bb3a8fc668e2d48cd0e49a832e243e5` |
| 96 | `theorem` | [unattach_flatten](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/unattach-flatten.md) | 608 | `result-track:63339c707bcfe0a6c781b7649fdd97422de8e3ed053dbc80a23ef6cecbaa7060` |
| 97 | `theorem` | [unattach_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/declarations/unattach-replicate.md) | 618 | `result-track:9be33567c68d57e17c3191ffc99d65376fec16361704c3b24eeb9802636f9856` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=262073ba99ddd90f64c520b68e3a14b4a3ed8d9f829da326edbea306d2794ce2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant82afff6f506671c02863b791afa3df5cdec9802d1ed2a4cbd86a6d442301775e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant82afff6f506671c02863b791afa3df5cdec9802d1ed2a4cbd86a6d442301775e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
