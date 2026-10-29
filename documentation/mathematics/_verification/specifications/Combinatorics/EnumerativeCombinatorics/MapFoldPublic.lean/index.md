# Verification target: Map Fold Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0714a00d2b16cf54a45b25bf0de9979f4fd7bfb4",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MapFold/Variant32b9f96c7a2d091c3709e851f9badfbcec9d3a24904c312da70d94ea37f80f51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0714a00d2b16cf54a45b25bf0de9979f4fd7bfb4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MapFold/Variant32b9f96c7a2d091c3709e851f9badfbcec9d3a24904c312da70d94ea37f80f51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MapFold/Variant32b9f96c7a2d091c3709e851f9badfbcec9d3a24904c312da70d94ea37f80f51.lean.json)

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
| 1 | `def` | [map](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map.md) | 47 | `declaration-track:4f507f443fc1cdad9a54e3075b6deb1db6492dbfc8ee46f737edf13a026d6ad0` |
| 2 | `theorem` | [map_congr](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-congr.md) | 51 | `result-track:8869d09aaff0a71bbaea8ec9dce046fb8093faec04997c1811f0f52acfc9ec2c` |
| 3 | `theorem` | [map_hcongr](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-hcongr.md) | 57 | `result-track:22ba8bf7809bcf2a17927f9656c180d0c9f34dba0af03f8e51e443045795e754` |
| 4 | `theorem` | [forall_mem_map_iff](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/forall-mem-map-iff.md) | 62 | `result-track:d6b9bcc54a4cbde2004787cf0653894af2d9c5e2a24c0537710acb56ff29fbcd` |
| 5 | `lemma` | [map_coe](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-coe.md) | 66 | `result-track:c3d2edd8c3083abcb2b64f5b223b8d6749eef3a2993a4b52b23b1d4da2ee9a99` |
| 6 | `theorem` | [map_zero](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-zero.md) | 69 | `result-track:954849e61ef7c6d25fab9ece0cb9a1e8aaa6b7f51ca5d7b85151f384ea2487cb` |
| 7 | `theorem` | [map_cons](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-cons.md) | 73 | `result-track:4a227bce7d9fcd0992bf7ec7f729ee44f9743a3c8328aa425e8aea8f2cc4d272` |
| 8 | `theorem` | [map_comp_cons](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-comp-cons.md) | 76 | `result-track:d8d0b626695f811f8aed5972d4d12b77fe5b86e0a969216a4f4c6506aa002e20` |
| 9 | `theorem` | [map_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-singleton.md) | 81 | `result-track:b24d0b74238c5265a441cbc9a3f760a65275c1508da9e195dc18c829c3471df9` |
| 10 | `theorem` | [map_replicate](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-replicate.md) | 85 | `result-track:daac85d40ef7721bddaaa3cb354323c40f675ee718444d548b06afe5aed17149` |
| 11 | `theorem` | [map_add](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-add.md) | 89 | `result-track:26b145c1b6254de70998d25148d1500de1956382e61826d5d7567e7305a1b811` |
| 12 | `instance` | [canLift](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/canlift.md) | 94 | `declaration-track:32093a781b57ee41183c0bafcea954a4b3479553513abb696ada0f52b08dd2ba` |
| 13 | `theorem` | [mem_map](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/mem-map.md) | 102 | `result-track:8d6bbbedebf5fbe8a2873d883acac479dc0bc23e1bfcb804a9a58afd1ac01df2` |
| 14 | `theorem` | [card_map](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/card-map.md) | 106 | `result-track:39aad0268f52139c59983eaba92a7278c9a1277b828a39210d03690d48dabfda` |
| 15 | `theorem` | [map_eq_zero](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-eq-zero.md) | 110 | `result-track:9246aecf16f8d0ae81763f15c5e2671805cf244160127d97406843cbf020c7f4` |
| 16 | `theorem` | [zero_eq_map](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/zero-eq-map.md) | 114 | `result-track:7c0a61dacb5b1861afafd3f75c64c1f28e2b93dca98b68c4bc1a63bf126bccab` |
| 17 | `theorem` | [mem_map_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/mem-map-of-mem.md) | 117 | `result-track:529945e70c29238f05261dd09217995b04d795aa29b44060db1463a86acb6410` |
| 18 | `theorem` | [map_eq_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-eq-singleton.md) | 120 | `result-track:dc2c8a3624c71ba97f9c5a2ea4f758294a531d33d34d058263dcb34936fcb1e7` |
| 19 | `theorem` | [map_eq_cons](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-eq-cons.md) | 130 | `result-track:5395554a69791b41ed780c67973f69f0155fe03854a81b17a058f1f0d4bd3b2d` |
| 20 | `theorem` | [mem_map_of_injective](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/mem-map-of-injective.md) | 146 | `result-track:2992030cedcfcce50f4a3dd69d05d5fcfa093a1c11e43309b5457c0c7047e2fb` |
| 21 | `theorem` | [map_map](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-map.md) | 151 | `result-track:b74bf12954b9dd537dcde6f79199f66d1c1c52da9f9ee0fd75ad47796938d378` |
| 22 | `theorem` | [map_id](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-id.md) | 154 | `result-track:1a6c0ed02c5c5e272d13fe6c6bf69e2fd70ba56fba7e4a27920b867aeb16de2b` |
| 23 | `theorem` | [map_id'](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-id-source-edition-2.md) | 158 | `result-track:e688ff097c8292016f98c2b02572a3b79ffefaefe77f942a63449c5f094c2b98` |
| 24 | `theorem` | [map_const](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-const-source-edition-2.md) | 162 | `result-track:d04a5e8af4c553ce4e16228fe3a77bf2f24a9fcc13a3493c21d2946c8cc25b33` |
| 25 | `theorem` | [map_const'](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-const.md) | 165 | `result-track:b7089d206cf73e46821248c40c7e1349cd68f48c1262eadb0100a7cf7c7ee690` |
| 26 | `theorem` | [eq_of_mem_map_const](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/eq-of-mem-map-const.md) | 168 | `result-track:9a79944620c30b83169233dca27b168d45c9a14ae4bf918f1fca666e27a45588` |
| 27 | `theorem` | [map_le_map](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-le-map.md) | 173 | `result-track:d8b127cae6f7ae8a562a8d5c03c653092ad4602241185edfbb304b7e855d3986` |
| 28 | `theorem` | [map_lt_map](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-lt-map.md) | 177 | `result-track:1ade44b738f8b502bb8f8c48bd95bc3ba98756696ed75a9bd6d1725e5981ef55` |
| 29 | `theorem` | [map_mono](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-mono.md) | 183 | `result-track:d590c1f939856d7e5c95b0dd991e3069f8f2e14d8b98130f642c224a8a0ca12c` |
| 30 | `theorem` | [map_strictMono](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-strictmono.md) | 186 | `result-track:9ae0fc3e15b0290eb76a0eb5f90cc8129e353cb0e43c5666020fc3cbb1aee090` |
| 31 | `theorem` | [map_subset_map](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-subset-map.md) | 189 | `result-track:06b9f396aa264e4e5fb3812b1554663cb890acbf1d0a62efeefc04218fee2ea3` |
| 32 | `theorem` | [map_erase](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-erase.md) | 193 | `result-track:fe6a3c0e3e4e473db02e6f03dc6880971e1aa849f1398bfa738f502760eed69f` |
| 33 | `theorem` | [map_erase_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-erase-of-mem.md) | 201 | `result-track:3f58030152ffe015f8a506d5f095c92de97d2ea6be49b98d5c6fbbe4cebf13b7` |
| 34 | `theorem` | [map_surjective_of_surjective](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-surjective-of-surjective.md) | 209 | `result-track:2498e2950f79c5c7faa6441a6c90a0379ed44bce24b3d0b2d9dd65e18534d7a1` |
| 35 | `def` | [foldl](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/foldl.md) | 227 | `declaration-track:34eb0d520e680e3d228260c3b692d68c5140451a7b27ca97c2fdb7011cabda89` |
| 36 | `theorem` | [foldl_zero](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/foldl-zero.md) | 233 | `result-track:1129ab58988db254103b4297125031deab0f97806a7c8a4eb5f4a7df833a069a` |
| 37 | `theorem` | [foldl_cons](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/foldl-cons.md) | 237 | `result-track:dd156bb46f20a8a2c283c83a6412d70f662feb9c90e58a15e6841196cb7f7c24` |
| 38 | `theorem` | [foldl_add](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/foldl-add.md) | 241 | `result-track:b9116643f412713d8a9f0265510ac821e24decdcb34563d1db7f11e73aa72062` |
| 39 | `def` | [foldr](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/foldr.md) | 251 | `declaration-track:234eb56b4c10c02f6001a83bbca3f4f38d8b89ae54358589cfdc49d151b6de90` |
| 40 | `theorem` | [foldr_zero](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/foldr-zero.md) | 257 | `result-track:2feec59edd7cf904866c4bfabf73df4f7bf9107bc217bbd7c3a27e4438e3e1e4` |
| 41 | `theorem` | [foldr_cons](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/foldr-cons.md) | 261 | `result-track:218fdfc827fbc6c247975423305230db589ace5ca8f1a2a8062162c85e1281f1` |
| 42 | `theorem` | [foldr_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/foldr-singleton.md) | 265 | `result-track:ff05f062358814da0ce1b526d9f3e031f810ec109e1bbead333d96b0f75d2247` |
| 43 | `theorem` | [foldr_add](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/foldr-add.md) | 269 | `result-track:09d2b23f597ba52a2fb064ff1209cab1955b5f2b5e21238deecf3b840836a916` |
| 44 | `theorem` | [coe_foldr](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/coe-foldr.md) | 275 | `result-track:257dcdc9334485a051c92d9faca7485bead46bdc77389f75596eab968df3716c` |
| 45 | `theorem` | [coe_foldl](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/coe-foldl.md) | 280 | `result-track:cd04f8d944e0c794f0901daf7c78bc82707db92835e4ec9faea95ad696de2c1c` |
| 46 | `theorem` | [coe_foldr_swap](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/coe-foldr-swap.md) | 284 | `result-track:b318de271dda0370d1e487bad00028eed8043c943cf6713cca917a76c36ed738` |
| 47 | `theorem` | [foldr_swap](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/foldr-swap.md) | 288 | `result-track:b318e38ac6d781952b908ef9996a8edeb98fcfda64e5b4876f2feb1117bca375` |
| 48 | `theorem` | [foldl_swap](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/foldl-swap.md) | 292 | `result-track:c4cb5cb7c82e716abfa9d51e7f4baac86a299c9a05947bd40a9fc9a8a4bad9cd` |
| 49 | `theorem` | [foldr_induction'](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/foldr-induction.md) | 296 | `result-track:4cd474abdc517a654617c8cf9893faadfacc1a0b0c1a9b3d9ca041695c143456` |
| 50 | `theorem` | [foldr_induction](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/foldr-induction-source-edition-2.md) | 305 | `result-track:69aad1fdda511e4eee254524304f4888a9ef9b5b8e587b5d219ef6144d46014b` |
| 51 | `theorem` | [foldl_induction'](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/foldl-induction.md) | 310 | `result-track:c72a649b68682220927ceb4d300b24452f5b88e3fb2b4d80ddee59ce7c68b245` |
| 52 | `theorem` | [foldl_induction](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/foldl-induction-source-edition-2.md) | 316 | `result-track:fda9c49c0aefa0aab793c6c2ba86afdb20f1006adbef4f749dd378a4df5c653a` |
| 53 | `theorem` | [pmap_eq_map](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/pmap-eq-map.md) | 323 | `result-track:014867a16b4ec7848c25254183817fe1d614601ff69ab3c40f2c8feb7c66e67d` |
| 54 | `theorem` | [map_pmap](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-pmap.md) | 327 | `result-track:0aa9473e90b7f4b94b82b13bc60a79e8c70bcd46a8a6179f184e62738b3d5a9c` |
| 55 | `theorem` | [pmap_eq_map_attach](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/pmap-eq-map-attach.md) | 331 | `result-track:3c7ed94f61deffb509ea94f6c7b611b8f54150de43f6a0e167979cd68d4a7405` |
| 56 | `theorem` | [attach_map_val'](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/attach-map-val.md) | 336 | `result-track:126fa05d43bb23a2cb19bbc4544baf49d68d3b13e22dc2cfe5dcc05b3837820c` |
| 57 | `theorem` | [attach_map_val](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/attach-map-val-source-edition-2.md) | 340 | `result-track:fae17bd097ef41d03efac352cc05a4116e6ed393d2d9f874c71c13c8eb5d172f` |
| 58 | `theorem` | [attach_cons](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/attach-cons.md) | 344 | `result-track:9806a6dbe2f70d0d196066fdea1eda3f91c9a1ef1b6700641122a1aa68433d13` |
| 59 | `lemma` | [erase_attach_map_val](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/erase-attach-map-val.md) | 356 | `result-track:1a517be8c070142f6b14d10a2f183b051ad1d8bc318ee67dbf0e01ad5716c8be` |
| 60 | `lemma` | [erase_attach_map](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/erase-attach-map.md) | 360 | `result-track:27a2e8cf58e28e905b1d26ea67b9b17ef387f2739ad62493eeaa884650bca25c` |
| 61 | `lemma` | [sub_eq_fold_erase](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/sub-eq-fold-erase.md) | 372 | `result-track:fb74834f50828230451acde8df8e08af91cb7030a6e3bb5dfe1963db8ab7003b` |
| 62 | `theorem` | [rel_map_left](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/rel-map-left.md) | 388 | `result-track:2e3dd94233fd7105f0668ae49007230cad30154f90b9c9261200e96310bbd8c0` |
| 63 | `theorem` | [rel_map_right](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/rel-map-right.md) | 392 | `result-track:c8bcaa6853c39698414ee0900963c9b96c393d1d35fdfbe520c91502712902d9` |
| 64 | `theorem` | [rel_map](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/rel-map.md) | 396 | `result-track:a182894934c2acbcae0138fabc5d4dfe3cbd2349e6291cc6879a1f6f9f06240e` |
| 65 | `theorem` | [map_eq_map](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-eq-map.md) | 404 | `result-track:ba6d899d8d1c4815fce7338d9db9c8a699eb18d979019c0408887d2a5a18e820` |
| 66 | `theorem` | [map_injective](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-injective.md) | 409 | `result-track:0cbaf430f5cc2a9d382a31e47c3f45ff364a3a9c0f65174bf4f186087b3879a2` |
| 67 | `theorem` | [map_mk_eq_map_mk_of_rel](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-mk-eq-map-mk-of-rel.md) | 416 | `result-track:de0e77a5db0b8ddd81531e09be890400291e4445b9fe7341324d2d777dc028d0` |
| 68 | `theorem` | [exists_multiset_eq_map_quot_mk](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/exists-multiset-eq-map-quot-mk.md) | 420 | `result-track:ced9a3efda653f8c2c88a4d1739b8d20102bff42c0ed6b3992db4c101cff7659` |
| 69 | `theorem` | [induction_on_multiset_quot](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/induction-on-multiset-quot.md) | 425 | `result-track:682906cecb6f34cfe5e67e71dac7886367c6385db31d70f30ae3e06e00509bde` |
| 70 | `theorem` | [Nodup.of_map](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/nodup-of-map.md) | 436 | `result-track:468e4fc245ef7de662d2f48487e2be3d2ae23f27558ec73832a667760db9da4f` |
| 71 | `theorem` | [Nodup.map_on](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/nodup-map-on.md) | 439 | `result-track:92f2cae058700678af2537eef885d39c71dadb81ea526128818ef3e5bb7e8bb6` |
| 72 | `theorem` | [Nodup.map](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/nodup-map.md) | 443 | `result-track:fb92d9f333bd6f6c88801ab96ba3cea2dc1de749fa115974f555fe1ef91ce32e` |
| 73 | `theorem` | [nodup_map_iff_of_inj_on](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/nodup-map-iff-of-inj-on.md) | 446 | `result-track:49682de7f5420d92137b83fe797d29b356b8db24431406bf1622ecf6bbc211f1` |
| 74 | `theorem` | [nodup_map_iff_of_injective](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/nodup-map-iff-of-injective.md) | 450 | `result-track:b87e8169098750d769ef381a04c0281cbcfdd76c84dbb1fc20a29cb968dd4e37` |
| 75 | `theorem` | [inj_on_of_nodup_map](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/inj-on-of-nodup-map.md) | 454 | `result-track:0023bdf03c87d091f8fe81800b7e9739402fc249d25f4f4d6c00d67b04d41c6c` |
| 76 | `theorem` | [nodup_map_iff_inj_on](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/nodup-map-iff-inj-on.md) | 458 | `result-track:aeb4f531acf05d07214f219c94147995db636565a90d250ea69a922f0edd8334` |
| 77 | `theorem` | [Nodup.pmap](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/nodup-pmap.md) | 462 | `result-track:8d4bd557d8cfa525db370569228116b32a28a9a30ea4340c9ec840b69ce41cd9` |
| 78 | `theorem` | [nodup_attach](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/nodup-attach.md) | 467 | `result-track:d9510f86931854fd0d0d85c44afe07b8bbe0ea3f1d1090349f3225cf4930a1d7` |
| 79 | `theorem` | [map_eq_map_of_bij_of_nodup](../../../../../Combinatorics/EnumerativeCombinatorics/MapFoldPublic.lean/declarations/map-eq-map-of-bij-of-nodup.md) | 472 | `result-track:6391db9e7934ae55ab632b0c071f82d99be7b40f155b34c7e26255867e1c2c0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=84300a64296ecc3edd9a560771c4a1f7d37f060ce02e9f5299ef8ac91daa57f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/MapFold/Variant32b9f96c7a2d091c3709e851f9badfbcec9d3a24904c312da70d94ea37f80f51.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/MapFold/Variant32b9f96c7a2d091c3709e851f9badfbcec9d3a24904c312da70d94ea37f80f51.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
