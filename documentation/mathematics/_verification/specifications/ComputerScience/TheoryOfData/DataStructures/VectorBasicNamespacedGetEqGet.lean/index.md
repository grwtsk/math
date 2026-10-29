# Verification target: Vector Basic Namespaced Get Eq Get

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59caef7be1ea63c1051d749ce1c86cafcd44e3cb",
  "lexical_observation_count": 97,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantce850869f01857553fc24382e4294cda3db3a08aa28d1300675e58eb6ed444f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59caef7be1ea63c1051d749ce1c86cafcd44e3cb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantce850869f01857553fc24382e4294cda3db3a08aa28d1300675e58eb6ed444f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantce850869f01857553fc24382e4294cda3db3a08aa28d1300675e58eb6ed444f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Vector` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Nodup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.OfFn` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Applicative` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/instance-source-edition-3.md) | 44 | `declaration-track:ffd8b69128a127108856f782a1d2acd3572d67d692a3b9fc35e2771a6a5690d4` |
| 2 | `theorem` | [toList_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/tolist-injective.md) | 47 | `result-track:dc1e51ab7cbf9c8a95ab8ff8c06f4efc321274d489dfd2ff4d5eb491dd30e9cf` |
| 3 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/ext.md) | 53 | `result-track:0d10766436502148509a779c6e6b878f9fbeacd043de2cc49602bf7a213ed79c` |
| 4 | `instance` | [zero_subsingleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/zero-subsingleton.md) | 59 | `declaration-track:0cefca93b2afe2f50d8e3c8890662749f4c92d8d581f79cd8fc53431ca2769bb` |
| 5 | `theorem` | [cons_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/cons-val.md) | 64 | `result-track:5ad1c22b8ee3df160eca732b4cb82432163fb96bd14d5652f28001257c1596c3` |
| 6 | `theorem` | [eq_cons_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/eq-cons-iff.md) | 71 | `result-track:e3b1a5707142ffc09c226993facfa12cd540e7adf944e7f29fdc0d725bdc0341` |
| 7 | `theorem` | [ne_cons_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/ne-cons-iff.md) | 77 | `result-track:355606e862fd8bd82d638ad4f8f114c067e79b4353bb16d1fa0c6cd9f2a5b25d` |
| 8 | `theorem` | [exists_eq_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/exists-eq-cons.md) | 81 | `result-track:6b4d0e949e5c96c37f6bf5e591272bab3ea92fc2cde826ee8a6cc9848566a175` |
| 9 | `theorem` | [toList_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/tolist-offn.md) | 86 | `result-track:56286be2e19c53d3a025b8ad1c4401b1dca08482edcbfa8c5ac13a7d08239a6e` |
| 10 | `theorem` | [mk_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/mk-tolist.md) | 92 | `result-track:96ca97adeecf3a8e132edb8238d7aa8315a1ea0fcdd05604237da15175772021` |
| 11 | `theorem` | [length_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/length-val.md) | 97 | `result-track:d06c434dfaaaecca2bff6eab855fa627f552056016149c3c6ffe37f9a80669e6` |
| 12 | `theorem` | [toList_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/tolist-map.md) | 107 | `result-track:4b3632ddfc07d5a48682984f9f80723ac364ddf6889284e40e013d5ee080e069` |
| 13 | `theorem` | [head_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/head-map.md) | 112 | `result-track:5c20b401b04f908d33437b8c21969db8c502f8327a9830e180f3d970fd60f2e8` |
| 14 | `theorem` | [tail_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/tail-map.md) | 118 | `result-track:4ec9d7826bef8c707d3527e6dc2830c3768f88d41767e2c98b8c0bd81f567773` |
| 15 | `theorem` | [get_eq_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/get-eq-get.md) | 124 | `result-track:200b90c3a15e1b7c866ad1f25019ca73fd467eba341f47ba2e0e7bcb10131374` |
| 16 | `theorem` | [nth_eq_nthLe](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/nth-eq-nthle.md) | 131 | `result-track:257aa1ec3d812727a1a63a640f2a251c6bf91239f25880c189e089df8fe7f543` |
| 17 | `theorem` | [get_replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/get-replicate.md) | 136 | `result-track:585d6692d3aef76932262d0b6f21d9365ab60fc34cf81cd29021bec9f98a7b10` |
| 18 | `theorem` | [get_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/get-map-source-edition-2.md) | 141 | `result-track:92110623d413af59b8dce187122f64cc20b07a4e412580cf758cdf983c4a6fec` |
| 19 | `theorem` | [map₂_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/map-nil.md) | 147 | `result-track:887b10d7af5dd6d77c0db77aa781f2436bfc3b428f77aca95a10e9a1beb93bc0` |
| 20 | `theorem` | [map₂_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/map-cons.md) | 151 | `result-track:ec935cf9d5649863396cc82987d67d61dd635a65fc8a2466a104198039a5c33d` |
| 21 | `theorem` | [get_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/get-offn.md) | 156 | `result-track:31c3647b232e376a71cc737a7c0e4c930e1a48e14a24b1da0d48ef5c5e7f54ec` |
| 22 | `theorem` | [ofFn_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/offn-get.md) | 163 | `result-track:a68673c01e02f16f993bc1ddae10aff5bdd8240366a0302e0ee73b79d58b434d` |
| 23 | `def` | [Vector Basic Namespaced Get Eq Get](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-to.md) | 171 | `declaration-track:9fbb7e89d800afd225ee28d5e07019843d2c2cddb775700f1b0b676331fddb4d` |
| 24 | `theorem` | [get_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/get-tail.md) | 175 | `result-track:0f0c66b488bd24c23560882df4c8d53104b65c36ab780be0d2801f08c9d9e414` |
| 25 | `theorem` | [get_tail_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/get-tail-succ.md) | 185 | `result-track:182ece9a23a8472d83d0835fcfcf381cc0d5c2b3a8e6918c3d9c6c4ddb3ed439` |
| 26 | `theorem` | [tail_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/tail-val.md) | 190 | `result-track:9f314a1de0a049302dbfb42235497229461f52b7f48e920eb55c79cd54215ea7` |
| 27 | `theorem` | [tail_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/tail-nil.md) | 196 | `result-track:e4e990b70361ebbe65c4e6edcb49ffdfc07f88ce14838f5359dadfa11b0091e5` |
| 28 | `theorem` | [singleton_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/singleton-tail.md) | 202 | `result-track:2ce7c39778b88856c0348be44d58c7cad146eae9e5cce7648c49a36a748b7687` |
| 29 | `theorem` | [tail_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/tail-offn.md) | 207 | `result-track:594a4a96ce6ada3303ebbf6387733ab4df93c34d523a6fb7d403a85159956d8c` |
| 30 | `theorem` | [toList_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/tolist-empty.md) | 216 | `result-track:f0c2ea9571805250a005bc5c377e4997c33574320d1543a449efcb87fbc65017` |
| 31 | `theorem` | [toList_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/tolist-singleton.md) | 223 | `result-track:85f7e53b8d484b31ea4232192be019b7ee99eb879509a4baa0d8f5fcbf8e15f2` |
| 32 | `theorem` | [empty_toList_eq_ff](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/empty-tolist-eq-ff.md) | 229 | `result-track:0b8df949c9b6d273394fe1eb9cb0e2e854ebf64cd609993f5c75d00f330db983` |
| 33 | `theorem` | [not_empty_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/not-empty-tolist.md) | 234 | `result-track:3da273efc718d5410c7f0cb27f194e27ff58bcd98041d6e90c6bdf354e7050d7` |
| 34 | `theorem` | [map_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/map-id.md) | 240 | `result-track:c14e7b97ed37875175ef82fdf363a3cc76a5d4f6b7cb2dc0965f316cd5b715b7` |
| 35 | `theorem` | [nodup_iff_injective_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/nodup-iff-injective-get.md) | 244 | `result-track:d65d4af157285727b4018345989c1c5178b5b9fb317a1e4d260f759ae56584b3` |
| 36 | `theorem` | [head?_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/head-tolist.md) | 250 | `result-track:dfcf3b681b36ba89338099f4c6a89012bd380ea8cdef0da9d6ce0ab0b4ba232f` |
| 37 | `def` | [reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/reverse.md) | 255 | `declaration-track:fd2aafcb4923ccc92cbe91a45ea86d225aed9933f6515a96f06e3f23236504c4` |
| 38 | `theorem` | [toList_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/tolist-reverse.md) | 261 | `result-track:f906d903625be8e731d00b64df2d1bd56b1c37ba39ebd1feb5d98599ba01686b` |
| 39 | `theorem` | [reverse_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/reverse-reverse.md) | 266 | `result-track:82587f7ab2eb6622307843b2da3df179708592f585a17468469b40e36ee0ae02` |
| 40 | `theorem` | [get_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/get-zero.md) | 272 | `result-track:b2c5e89dfa6c01a279695569878b1240e204556b10f59178da0e1fcf0b17ae4a` |
| 41 | `theorem` | [head_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/head-offn.md) | 277 | `result-track:5504286239abe64b5354706af50781a88db7492753cea0c9ebeb480b94247de3` |
| 42 | `theorem` | [get_cons_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/get-cons-zero.md) | 282 | `result-track:5ad8c9ea457dfe1463641c442569d2961397aee2849d5c90a8819291a1821688` |
| 43 | `theorem` | [get_cons_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/get-cons-nil.md) | 288 | `result-track:bad52ce1f7e14760710c6f983d3fde400319263fcbacc066ac079a68b136587d` |
| 44 | `theorem` | [get_cons_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/get-cons-succ.md) | 293 | `result-track:554dad51ddeef112885023018eb96f6805de0d1a4d00f91fea8b94c171a21b02` |
| 45 | `def` | [last](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/last.md) | 298 | `declaration-track:ae8de2b724af0cfae5f8d4d57e6aa870aa684204f417fb915358e5e392e370c3` |
| 46 | `theorem` | [last_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/last-def.md) | 303 | `result-track:d1dd390453dbaa67f59efa209cf48c59cdb7598bc6146447e417876e90db081f` |
| 47 | `theorem` | [reverse_get_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/reverse-get-zero.md) | 308 | `result-track:f641c339431062018ab1738d56b12b760935a1a2b2ed9f089001a83eade8fca8` |
| 48 | `def` | [scanl](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/scanl.md) | 328 | `declaration-track:1104a5f71708e3ce4bc374d67ce4a68a86f68393cabf12201c528ba10b9125e7` |
| 49 | `theorem` | [scanl_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/scanl-nil.md) | 334 | `result-track:495277d21292d6c637504cbdb9c44e2b22a44c3c207c3d5821ea82b599c07148` |
| 50 | `theorem` | [scanl_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/scanl-cons.md) | 345 | `result-track:83a8d2f767c3ac1c1776f64443da8f1e53564135fcad9eeba75412a8e40b66a3` |
| 51 | `theorem` | [scanl_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/scanl-val.md) | 354 | `result-track:88eb62793dcb9ef9f23516ddeb2699770d0440c7884b90f8eec363f0085bbf83` |
| 52 | `theorem` | [toList_scanl](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/tolist-scanl.md) | 362 | `result-track:d0a4b27ade3ab2d8516531974b0c524885068222f894c7bc619b24f5a972e72f` |
| 53 | `theorem` | [scanl_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/scanl-singleton.md) | 371 | `result-track:3b354f70ccd4208cc5f8e4ced14b89e9d941d39f08d5cc1bb003cc9da6ba594c` |
| 54 | `theorem` | [scanl_head](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/scanl-head.md) | 380 | `result-track:2b2f9ec53f29cbcb0c4c4cabfb8ddd01b0abcb14e96ccb8119af93d910dbe6f0` |
| 55 | `theorem` | [scanl_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/scanl-get.md) | 397 | `result-track:37ef4b96b9d78108b47031878782503b5daa43c5d89af923f13f3d65331c2ebe` |
| 56 | `def` | [mOfFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/moffn.md) | 415 | `declaration-track:1c47f871c7fb4ecdbc6f4718337febd25ed4d0a12176d117342259be8549b713` |
| 57 | `theorem` | [mOfFn_pure](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/moffn-pure.md) | 423 | `result-track:97b8bf173e4e5ae9593ef2ee5950eaf56067089d69843a615f00b13d6b26910f` |
| 58 | `def` | [mmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/mmap.md) | 433 | `declaration-track:28df6a9f06f440f2fdff40a0e3207fc8e2dd9ead49d49f6b828b4ef096e147df` |
| 59 | `theorem` | [mmap_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/mmap-nil.md) | 442 | `result-track:4a831bdee354bb105b00099df4f6b15ae95330facc7a52163d3a303a62713003` |
| 60 | `theorem` | [mmap_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/mmap-cons.md) | 447 | `result-track:c30806b47f2615e796c986c52327c96226f59bfa624bbb87224b38734cc48b55` |
| 61 | `def` | [inductionOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/inductionon-source-edition-3.md) | 463 | `declaration-track:d3325d601745cdca563542535b2fbd9013911c398b744927c7f72ba1440c7f06` |
| 62 | `example` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/example.md) | 476 | `declaration-track:9102fffa2c62d9fbad91c733cd34b6e34500e8e61257e53798f16bde49b00d9a` |
| 63 | `def` | [inductionOn₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/inductionon.md) | 482 | `declaration-track:0cdff6aef6a0fc770f0637542bf1211180877f04ca4a8834ae2108408847e631` |
| 64 | `def` | [inductionOn₃](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/inductionon-source-edition-2.md) | 502 | `declaration-track:290753999f3031d3c9a10b29fada018daf85e068401efbd0747db55aa3ca621c` |
| 65 | `def` | [casesOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/caseson-source-edition-3.md) | 525 | `declaration-track:e2892a9e052c6b3af4c483f9a1ae5e12dc49bf885cc2470732972a453bd94803` |
| 66 | `def` | [casesOn₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/caseson.md) | 531 | `declaration-track:76f5b01fa12afdfdd81e1c6597acbe1d013727396837d56fea8552b128b36dfd` |
| 67 | `def` | [casesOn₃](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/caseson-source-edition-2.md) | 540 | `declaration-track:a757c06471826de5f5a144639902cd12b49ffd028eec8b928d229eb8e3a2f328` |
| 68 | `def` | [toArray](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/toarray.md) | 548 | `declaration-track:1a089426abc5339262f9ba9c8ea162cd078b539aa9af202d08da84371709b6da` |
| 69 | `def` | [insertNth](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/insertnth.md) | 558 | `declaration-track:d2b5043d10a8797501846da30496a7df4541253a7a4950c1918d220cd5d9da31` |
| 70 | `theorem` | [insertNth_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/insertnth-val.md) | 565 | `result-track:60ecd8ce6633dcae0a27810f454d9eb9575730a08d2ed4c69f3aa27531221f38` |
| 71 | `theorem` | [removeNth_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/removenth-val.md) | 571 | `result-track:a211962af5af110a948fda31518f47e24117070cbeae87577751520a988c7eb1` |
| 72 | `theorem` | [removeNth_insertNth](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/removenth-insertnth-source-edition-2.md) | 575 | `result-track:f561f11c6e71e82e418cebd4f94dd6a57285787d196afc59d87a5b3175e98173` |
| 73 | `theorem` | [removeNth_insertNth'](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/removenth-insertnth.md) | 580 | `result-track:4b2f5a7fad410e30d1950419868f840e789bb2ddc604fd1c1fafcd5137ed7730` |
| 74 | `theorem` | [insertNth_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/insertnth-comm.md) | 601 | `result-track:529c2fda094a1dfacd81291ae724efb11330b234acecd7fc70d67186291d532f` |
| 75 | `def` | [set](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/set.md) | 619 | `declaration-track:095fc5eb0708e957a1688f90886d4ebafe77464107886b8ceee7e82330fb190c` |
| 76 | `theorem` | [toList_set](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/tolist-set.md) | 624 | `result-track:c43c6efe3c1d87744d1b7c1ae055440d35e794c305f59878393b535217e90bde` |
| 77 | `theorem` | [get_set_same](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/get-set-same.md) | 630 | `result-track:0e1e19a4d62d4d84731b4c4be200dfe3bec8ddf5121c5ca4ef26b76b1a0e48b6` |
| 78 | `theorem` | [get_set_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/get-set-of-ne.md) | 636 | `result-track:35d379d3735f307f74c0b29cbf7b35713558306cea2dcdd4d96e58a06b30cbb6` |
| 79 | `theorem` | [get_set_eq_if](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/get-set-eq-if.md) | 645 | `result-track:050ae1fe42cf92cdd620a737167516f656e60bce3525d0f8bf27b695be21b692` |
| 80 | `theorem` | [prod_set](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/prod-set.md) | 651 | `result-track:1cded0b2d02c663a75c2713ac5814043130cfff1fb1ca97ff2817cbb7c3758ff` |
| 81 | `theorem` | [prod_set'](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/prod-set-source-edition-2.md) | 658 | `result-track:fcd9a73654d6870d70c44fa1e4dbb3dabf00c293d7ff1f12681e18b3450dc123` |
| 82 | `def` | [traverseAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/traverseaux.md) | 682 | `declaration-track:28cc3a5d2c95df4c0ae54aedc6b87258bb8baabf9431ed1b85082879261d34f5` |
| 83 | `def` | [traverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/traverse.md) | 687 | `declaration-track:c970af442b8d9334ab7c260ec39c438c2f49455f86dc49ddb3a806b7eafe8a70` |
| 84 | `theorem` | [traverse_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/traverse-def.md) | 696 | `result-track:66760d2a1a6b0b406949ea424be382c558dd148e3b669f2e11cb7527a68b6ea8` |
| 85 | `theorem` | [id_traverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/id-traverse.md) | 701 | `result-track:48fd5653c9db52cf30fc40adb1fe5189d5bb8cd19e8ca004191d81cf327a3fd8` |
| 86 | `theorem` | [comp_traverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/comp-traverse.md) | 718 | `result-track:7b9c372bc8a960b1046dd294e34d453fe3b7204660e7382db7e768fd7824500a` |
| 87 | `theorem` | [traverse_eq_map_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/traverse-eq-map-id.md) | 728 | `result-track:99601ee19f6d10fc70c79d0c049609c2c2cd5f21c7511939f6a1e076f097af6d` |
| 88 | `theorem` | [naturality](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/naturality.md) | 735 | `result-track:383dfd8dc5674f91ca10dd200b506aa207c0bf32ae2b46da08f8c4160e830969` |
| 89 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/instance-source-edition-2.md) | 745 | `declaration-track:98c4640b7c706fc0b55d56e33cd2eb7a020759a4bf6333c318831f1b5ccd57b6` |
| 90 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/instance.md) | 749 | `declaration-track:8ca4cd5a8fcfd7397de380d07440ff36fe5fd167d5ce128ef59e90c850d6839f` |
| 91 | `theorem` | [replicate_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/replicate-succ.md) | 783 | `result-track:67244ff9f0128166bb86335a70bcd7b4e6111e7d0da6802d73e238f5696233b1` |
| 92 | `theorem` | [get_append_cons_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/get-append-cons-zero.md) | 791 | `result-track:5f25f479c372b816368ff7fd30c9b9ac0067efb21f3c0b3d1b15f0c14305f06f` |
| 93 | `theorem` | [get_append_cons_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/get-append-cons-succ.md) | 795 | `result-track:6417adc8e9a8e69fb48174ee9bf9a34bbaae83c0d8cdd222f23cc01dfd1298d3` |
| 94 | `theorem` | [append_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/append-nil.md) | 800 | `result-track:75b496c9f7c72735068c6f7b86d68b922f18704260168b3e264a21c2b94b64c6` |
| 95 | `theorem` | [get_map₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/get-map.md) | 808 | `result-track:0be441486a7725d28f2c0e780eaa4e2045f29886329c868f704c7b5db329dcb9` |
| 96 | `theorem` | [mapAccumr_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/mapaccumr-cons.md) | 821 | `result-track:ba570c5a6fca02f045df8ec90fae5ff6493ea1ffc21c7c3f6ff6faa3132dd702` |
| 97 | `theorem` | [mapAccumr₂_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedGetEqGet.lean/declarations/mapaccumr-cons-source-edition-2.md) | 829 | `result-track:d61a5cab343069a763ecf6e458be6e89b83afa622556f71514e7c460ea90c462` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6928bc123daa08d14fc550780df881ed6a138186b26c2fedb71a365b0d003f27 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantce850869f01857553fc24382e4294cda3db3a08aa28d1300675e58eb6ed444f3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantce850869f01857553fc24382e4294cda3db3a08aa28d1300675e58eb6ed444f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
