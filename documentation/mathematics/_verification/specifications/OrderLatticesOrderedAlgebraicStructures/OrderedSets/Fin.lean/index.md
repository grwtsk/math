# Verification target: Fin

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a884a5eed25adad714383d3297be76c90048072",
  "lexical_observation_count": 179,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fin/Variant0a26c032737b91317118959e84bdf7bbb54a50ce6a521535c3eee2d432fa1185.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a884a5eed25adad714383d3297be76c90048072`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fin/Variant0a26c032737b91317118959e84bdf7bbb54a50ce6a521535c3eee2d432fa1185.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fin/Variant0a26c032737b91317118959e84bdf7bbb54a50ce6a521535c3eee2d432fa1185.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Fin.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.UnorderedInterval` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [range_val](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/range-val.md) | 37 | `result-track:8420b7f1e3ef37cb004300cd0b2ec922f59f9180904bb679af4a2af54bd4ce9d` |
| 2 | `theorem` | [preimage_val_Ici_val](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-val-ici-val.md) | 39 | `result-track:311b56e6f73eae19f984cb666b9fe47b55a98b69c539081215b225a1f9f12ecb` |
| 3 | `theorem` | [preimage_val_Ioi_val](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-val-ioi-val.md) | 40 | `result-track:6868e5f202d7c2c7c61b65f39e2c2dcd7006a10b0144548e8c0c5cce5ba02aac` |
| 4 | `theorem` | [preimage_val_Iic_val](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-val-iic-val.md) | 41 | `result-track:98afb5415e78310a0c186433f4e528edbc20d89e503b2155296f6f84d910bd56` |
| 5 | `theorem` | [preimage_val_Iio_val](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-val-iio-val.md) | 42 | `result-track:59584b0ff47c841d695e6f3d11fc99e875a770653f30c6accceea57f0141738a` |
| 6 | `theorem` | [preimage_val_Icc_val](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-val-icc-val.md) | 44 | `result-track:7b40b95e0867804af5315b017c7b7f62708436e8e239df5d0153d8517240eca8` |
| 7 | `theorem` | [preimage_val_Ico_val](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-val-ico-val.md) | 45 | `result-track:5c5c02aa145ae8ffd9ddc761f02f09d3244f5cb3003e17a8a256abd5cc741edd` |
| 8 | `theorem` | [preimage_val_Ioc_val](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-val-ioc-val.md) | 46 | `result-track:f063acc296f5bdf4e7c662124cf923d06868bc98cbb4d79c0f5a5694e7b33e9d` |
| 9 | `theorem` | [preimage_val_Ioo_val](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-val-ioo-val.md) | 47 | `result-track:d63cf017d9ffa6489b2269204f40c58f112b1f10d7e2f157ba65dab7b5dc8938` |
| 10 | `theorem` | [preimage_val_uIcc_val](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-val-uicc-val.md) | 48 | `result-track:1fa40fe12904e277f34a03c38954c3f8d2aec2a51ad66dec882cd05ccca565a8` |
| 11 | `theorem` | [preimage_val_uIoc_val](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-val-uioc-val.md) | 49 | `result-track:5798f448cc35d3c41275da76a3b84ba2f90c9bc9aa2b64fc0b2e42a7b0d55854` |
| 12 | `theorem` | [preimage_val_uIoo_val](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-val-uioo-val.md) | 50 | `result-track:82978608fc817bed92d9dba85fc1b71275e8001c759ec37d80dbb64e3a6bf449` |
| 13 | `theorem` | [image_val_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-val-ici.md) | 53 | `result-track:fcecd52db03acb8b5fd9af790239b2e87ed73b31a090fca66115abf244982402` |
| 14 | `theorem` | [image_val_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-val-iic.md) | 57 | `result-track:f4806b47f99ca205dbc4d1eac5d65810f85625ae77fbad8a3c94d11bd934244f` |
| 15 | `theorem` | [image_val_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-val-ioi.md) | 62 | `result-track:a4263555c9c842c0684aeab7802690fc16e68e4b9dfab29d0217d81e27bb33c3` |
| 16 | `theorem` | [image_val_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-val-iio.md) | 66 | `result-track:77082d1ddc9ea0e4cacc83b63757e092f9fc3535f768288904cad9e4c91c99c4` |
| 17 | `theorem` | [image_val_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-val-icc.md) | 71 | `result-track:56894103ac7721b395da03018d8a317cb36d9398f5baba11cd792d86485b47b7` |
| 18 | `theorem` | [image_val_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-val-ico.md) | 76 | `result-track:690cb8ddfbefd82e6f60febf68ace6cd71a987cf40c0ffdc75bec6909c46ad65` |
| 19 | `theorem` | [image_val_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-val-ioc.md) | 81 | `result-track:9f12480f11b382ca95966592a6feee2819d1c439a48983f3560168c4e84694b0` |
| 20 | `theorem` | [image_val_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-val-ioo.md) | 86 | `result-track:e303a182aa70ee00c6532c771f4cd5dfb0c1a59f843a0178265a8b97923e61fb` |
| 21 | `theorem` | [image_val_uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-val-uicc.md) | 90 | `result-track:0e8fc79e07f633527753fc702b38969f803226f160474d3b6c70b5fedf6b075a` |
| 22 | `theorem` | [image_val_uIoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-val-uioc.md) | 91 | `result-track:0983388f19cd8004752d4cd9760a03ccdea341a37fe9120a957ac52b810e691e` |
| 23 | `theorem` | [image_val_uIoo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-val-uioo.md) | 92 | `result-track:2a217ffa7b05f1feff48548de184145f67ad293872b7a0bce899751473d65e11` |
| 24 | `theorem` | [preimage_castLE_Ici_castLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castle-ici-castle.md) | 99 | `result-track:994c04a2e81e020ea56725320a9b43ca745b1e56473767cb1e3b470a89745348` |
| 25 | `theorem` | [preimage_castLE_Ioi_castLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castle-ioi-castle.md) | 104 | `result-track:9b710ac5defc02d47cf9c18a58afbebbdd9ba473552b1d256fa2476dbe9b4531` |
| 26 | `theorem` | [preimage_castLE_Iic_castLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castle-iic-castle.md) | 109 | `result-track:1bde5a3c7b232979c7f01cf0288443b9658027c339bf018f6894088113018cbf` |
| 27 | `theorem` | [preimage_castLE_Iio_castLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castle-iio-castle.md) | 114 | `result-track:9c3e4ef1674ccaeef1d8464c30a20694c20523f9c7fcdcb3929acc4842fd1180` |
| 28 | `theorem` | [preimage_castLE_Icc_castLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castle-icc-castle.md) | 119 | `result-track:84ae04a379eb99007750e69a8fea97c1846b680220e3185a354a8f2350180736` |
| 29 | `theorem` | [preimage_castLE_Ico_castLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castle-ico-castle.md) | 124 | `result-track:2657d19efe3b4588574c952f6c869ab62564bef6553d6177677e2e983882546a` |
| 30 | `theorem` | [preimage_castLE_Ioc_castLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castle-ioc-castle.md) | 129 | `result-track:f1631a414eb11c1f1e079a76925a701ea604a7898ec1c4b1b235c7bb5ee50674` |
| 31 | `theorem` | [preimage_castLE_Ioo_castLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castle-ioo-castle.md) | 134 | `result-track:7a8a8b6511ed821f3e46e8c38f173ba37835ab4a1d4f6aefad7f629bf1a789ec` |
| 32 | `theorem` | [preimage_castLE_uIcc_castLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castle-uicc-castle.md) | 139 | `result-track:71bb819bfd78f72f4262f16f24e3fd971ae4e7e2d38f89de376e041f169bf253` |
| 33 | `theorem` | [preimage_castLE_uIoc_castLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castle-uioc-castle.md) | 144 | `result-track:0dc2c477d50bda3a558d69b56eaf044be11c25dc1010f33a49443aaf69546b64` |
| 34 | `theorem` | [preimage_castLE_uIoo_castLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castle-uioo-castle.md) | 149 | `result-track:abb0f796234be93c5dc5453926eaaa92d4fd36495c6eff0ca98ddb1a8ef6756c` |
| 35 | `theorem` | [image_castLE_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castle-iic.md) | 154 | `result-track:b30d4c40e3e224021893c1f4cee754a81ad8a199236ccbb77eaea22f2e84c972` |
| 36 | `theorem` | [image_castLE_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castle-iio.md) | 158 | `result-track:2f4a93fa44b890836c89f14b641e6753be0a0ef87370023eef38e9068c4238fd` |
| 37 | `theorem` | [image_castLE_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castle-icc.md) | 162 | `result-track:97b1adcec4d8eb357e47b8818bf4d1ab7f1e5914c220cc449d016090383652c8` |
| 38 | `theorem` | [image_castLE_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castle-ico.md) | 167 | `result-track:c15b0d06b41799810eb463b5f892166c3ef28ebc89032f38a3898454a69fbaad` |
| 39 | `theorem` | [image_castLE_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castle-ioc.md) | 172 | `result-track:34310b0eb10b9bbaeefa13cc856a205a556aa8456b975423cd8a38076938e895` |
| 40 | `theorem` | [image_castLE_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castle-ioo.md) | 177 | `result-track:9ca56b9b527bb34e70aa4285a929daf57570ac673df90e55c70e5cc6fce6750d` |
| 41 | `theorem` | [image_castLE_uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castle-uicc.md) | 182 | `result-track:beef980573b8da1411e66b7c8b1b8c93f1d232ee5f849ac7400fbb6c8f004782` |
| 42 | `theorem` | [image_castLE_uIoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castle-uioc.md) | 187 | `result-track:c4b541ea30322a01b259752145c0447ce7c26416b1327d1d5aa3e92e13b864bd` |
| 43 | `theorem` | [image_castLE_uIoo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castle-uioo.md) | 192 | `result-track:7a8e80c6b2cd618de82b936683fe0fbb7a290fa3d78f88b3a505ca22c06e3a22` |
| 44 | `theorem` | [range_castAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/range-castadd.md) | 201 | `result-track:7b6697b3dbd3366a6c0543ca3aa551741071815e38c3b5623552e6eb6dd582d9` |
| 45 | `theorem` | [preimage_castAdd_Ici_castAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castadd-ici-castadd.md) | 205 | `result-track:da46c09da45a2b953123de9f3640941b405f107b6c2b86ed6b96f1f27e4db713` |
| 46 | `theorem` | [preimage_castAdd_Ioi_castAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castadd-ioi-castadd.md) | 209 | `result-track:fda2aa6867220fcb7e5ed2a4354a7e60413a83b891481acad6b4001b1a58d5cd` |
| 47 | `theorem` | [preimage_castAdd_Iic_castAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castadd-iic-castadd.md) | 213 | `result-track:1c5dad3ec0b857886cd029349aa9c5a19387eb822bd516db6d69fd0287e18c7d` |
| 48 | `theorem` | [preimage_castAdd_Iio_castAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castadd-iio-castadd.md) | 217 | `result-track:141669b3b0e7ca87d40ce041471d992a36571542986b3ceee1e2b62370d79ce0` |
| 49 | `theorem` | [preimage_castAdd_Icc_castAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castadd-icc-castadd.md) | 221 | `result-track:500e5ac4f4beb77c681315c8b3ef6b6eab4926890b37a41c97ddec390cc24559` |
| 50 | `theorem` | [preimage_castAdd_Ico_castAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castadd-ico-castadd.md) | 226 | `result-track:80bc7528a9e892faa00afda7f3de94a793a30dc2590d934a3acbfaa874f3e11b` |
| 51 | `theorem` | [preimage_castAdd_Ioc_castAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castadd-ioc-castadd.md) | 231 | `result-track:d364d33ede3f871b7a9ac32ce5d0545af6de88b0ac69b5eb0384b288f97d867d` |
| 52 | `theorem` | [preimage_castAdd_Ioo_castAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castadd-ioo-castadd.md) | 236 | `result-track:927cce4046819a63d8974add1cd15a2af1fc947847899b4193dd6f893db9e438` |
| 53 | `theorem` | [preimage_castAdd_uIcc_castAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castadd-uicc-castadd.md) | 241 | `result-track:db414af790d1d4db2a52c75aa403d747d24168699170403484ac3eeb2480ec39` |
| 54 | `theorem` | [preimage_castAdd_uIoc_castAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castadd-uioc-castadd.md) | 246 | `result-track:c1d188060d0ef55ce4a65a2d4a3218f9566c92e68212f0b46fbdf0f12ee09b6a` |
| 55 | `theorem` | [preimage_castAdd_uIoo_castAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castadd-uioo-castadd.md) | 251 | `result-track:f63c8b4acdae681c84fcbc4918f871c60968a85776da8c8260ecdd6facfef30f` |
| 56 | `theorem` | [image_castAdd_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castadd-ici.md) | 256 | `result-track:7a58b4b5b7d29377f9104b08a071157ad01015ab829f80e3dfa33bf329fb2f82` |
| 57 | `theorem` | [image_castAdd_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castadd-ioi.md) | 261 | `result-track:75472dab17c57876e7bac3a6e77c9860d62b1f065e044535d518d1f583b1158b` |
| 58 | `theorem` | [image_castAdd_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castadd-iic.md) | 266 | `result-track:12ee6c9c7f106be634a03cd4e583d32465854a1091795a083ab0cdf8d4da2721` |
| 59 | `theorem` | [image_castAdd_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castadd-iio.md) | 270 | `result-track:54246442d9bd10c447bc82efc20b1299a11db2122199a5d5919d2cd555ce6d91` |
| 60 | `theorem` | [image_castAdd_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castadd-icc.md) | 274 | `result-track:dec322f644bfff6866dcadccd1e25015318c1b70e044fd2615c9f23a8bf80443` |
| 61 | `theorem` | [image_castAdd_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castadd-ico.md) | 279 | `result-track:e9baee1409fc09d09b4d202eed88acb1d97204d125b4401602db255dcaa9757c` |
| 62 | `theorem` | [image_castAdd_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castadd-ioc.md) | 284 | `result-track:9339a6b6a8093f47dc7f32bc472275567dbe1c15fd86e7359243ce4a1c7e0fa4` |
| 63 | `theorem` | [image_castAdd_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castadd-ioo.md) | 289 | `result-track:e38bdf003ab66500de28d4a57164123b0e1d08071267fc9e81548d82ae07fe07` |
| 64 | `theorem` | [image_castAdd_uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castadd-uicc.md) | 294 | `result-track:55e5430c9e39a02977c294c838e6fba7cc5939612703c8b6b8570932f3eec047` |
| 65 | `theorem` | [image_castAdd_uIoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castadd-uioc.md) | 299 | `result-track:67aad78b2158de553fa57a64fcce3062a68d19e1ab5a89967b99ab96c120aa5b` |
| 66 | `theorem` | [image_castAdd_uIoo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castadd-uioo.md) | 304 | `result-track:2663f55fa829cc9ce417c8b726038a72b509427a5a0ad65ba8ef4d6f51415cac` |
| 67 | `theorem` | [image_cast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-cast.md) | 312 | `result-track:62db7042a48c75f67d7f1420cf99c926839d4679559e691bcb1d416609f2e66f` |
| 68 | `theorem` | [image_cast_fun](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-cast-fun.md) | 316 | `result-track:a64bb49bd062dab43e99d2d191b8e589bc8b906f14fd945dca50888e0159fb16` |
| 69 | `theorem` | [preimage_cast_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-cast-ici.md) | 320 | `result-track:b9d342ebeac0e5c8ece98634ee852103c52db4ec97041a516df2965f9bd7226c` |
| 70 | `theorem` | [preimage_cast_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-cast-ioi.md) | 323 | `result-track:8811fdd8d79eb0c78cd8a9e974382ec2f2f75124ab442e6c764ed58ee5b109cd` |
| 71 | `theorem` | [preimage_cast_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-cast-iic.md) | 326 | `result-track:c9f1d3e91df0646d137713cf88c69882aa221429fc49312df97e76a3f8dd0f14` |
| 72 | `theorem` | [preimage_cast_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-cast-iio.md) | 329 | `result-track:6d0e57aad2822720c930ac74859c6b3d0a889216aa625f4d083b7d605624372d` |
| 73 | `theorem` | [preimage_cast_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-cast-icc.md) | 332 | `result-track:982d759a734f891ddf3228f9aa2eae24efdb9ae1ff7e4a6890fe9a63f6ef22e9` |
| 74 | `theorem` | [preimage_cast_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-cast-ico.md) | 337 | `result-track:28fdf9f292a9d7631f7230589be48d00267d7eed56fe004c550a5496f673f0eb` |
| 75 | `theorem` | [preimage_cast_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-cast-ioc.md) | 342 | `result-track:7fae294a8fb5c4de8d7c2be5cd2675c3b3bb98ba0ebffee33163f92c59294bc0` |
| 76 | `theorem` | [preimage_cast_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-cast-ioo.md) | 347 | `result-track:501379190949b868012549e30592562c156b30217971693fe5e11d5f625ad9a4` |
| 77 | `theorem` | [preimage_cast_uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-cast-uicc.md) | 352 | `result-track:73e23afadc892b2abf6cb7b7c7ffd1eb0ca645f67ba8d0109db70705699b9bc2` |
| 78 | `theorem` | [preimage_cast_uIoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-cast-uioc.md) | 357 | `result-track:63006cd831889ec05906493facb906bc817f1a09a350b76f8b49d7f3ddc8d635` |
| 79 | `theorem` | [preimage_cast_uIoo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-cast-uioo.md) | 362 | `result-track:c017f5b8ed3b352e7ef5b2d58362a3e22a36cdc533076dcd227c5b7089c38684` |
| 80 | `theorem` | [preimage_castSucc_Ici_castSucc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castsucc-ici-castsucc.md) | 371 | `result-track:82cc3029da3006f95fec082ec8ef94117a918035b9c2d668a5ced688d6c75ece` |
| 81 | `theorem` | [preimage_castSucc_Ioi_castSucc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castsucc-ioi-castsucc.md) | 374 | `result-track:3b77a214d570318b6c5ba467934675b131511dfffa660a52e31cb43784dee889` |
| 82 | `theorem` | [preimage_castSucc_Iic_castSucc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castsucc-iic-castsucc.md) | 377 | `result-track:1ea0c274d04c50a3297580e245917681f7306b7076d7e92e6efd27aa25cf9a47` |
| 83 | `theorem` | [preimage_castSucc_Iio_castSucc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castsucc-iio-castsucc.md) | 380 | `result-track:0df72549010a30c09e00e554a9155e1deb508510a09176a21d212a5bc94e3fab` |
| 84 | `theorem` | [preimage_castSucc_Icc_castSucc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castsucc-icc-castsucc.md) | 383 | `result-track:b94b229a5aa2fc4c6652e77744df4609ebe76e5c43f67df01ba446eff7c2011b` |
| 85 | `theorem` | [preimage_castSucc_Ico_castSucc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castsucc-ico-castsucc.md) | 388 | `result-track:54ab02e3fb093806bdb5f152dca580522f33ff420a5339fd9f92b1f2f6ab8ed3` |
| 86 | `theorem` | [preimage_castSucc_Ioc_castSucc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castsucc-ioc-castsucc.md) | 393 | `result-track:af40709e6f7f8341e644b50ce68bbeaf2dd91f72e88d6f068c2591a80ca0f381` |
| 87 | `theorem` | [preimage_castSucc_Ioo_castSucc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castsucc-ioo-castsucc.md) | 398 | `result-track:ba77ac018c3f6137e88968fb2039c065afba8f3bece08043c98e395de4d40b2b` |
| 88 | `theorem` | [preimage_castSucc_uIcc_castSucc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castsucc-uicc-castsucc.md) | 403 | `result-track:84c6e01cd34ae1af0e6bb376031827a404f0f43220dba8bd5db007416a6c08c3` |
| 89 | `theorem` | [preimage_castSucc_uIoc_castSucc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castsucc-uioc-castsucc.md) | 408 | `result-track:f042c6da9d5e42a52626b6aae0b7184fceb1f154dda4cec2328836730a1836ba` |
| 90 | `theorem` | [preimage_castSucc_uIoo_castSucc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-castsucc-uioo-castsucc.md) | 413 | `result-track:b3bf494c35041a25f4ed2cffb01310e975191fbb00f16a2891fc6ff5d16f2fa9` |
| 91 | `theorem` | [image_castSucc_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castsucc-ici.md) | 418 | `result-track:bb2788dbe7e986da06140a18752e00d63f0ed350a4b1b350886264084954411f` |
| 92 | `theorem` | [image_castSucc_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castsucc-ioi.md) | 422 | `result-track:96dd3a8da83787becec012133e757ef4cd753e6add4d7d089be91dcfe779a38a` |
| 93 | `theorem` | [image_castSucc_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castsucc-iic.md) | 426 | `result-track:5ffe9961ed364a237d51ad54c0027d7cf3af24caa7d54ab873939358318aa617` |
| 94 | `theorem` | [image_castSucc_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castsucc-iio.md) | 430 | `result-track:7f29a670128354ab9611cc027a08763f61358a6cea0ea13c05da45170c2ed6f9` |
| 95 | `theorem` | [image_castSucc_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castsucc-icc.md) | 434 | `result-track:734358e97bce48ceed01adfe8cdae4c22154f28cc5b369c5b69aa3d29a5f0853` |
| 96 | `theorem` | [image_castSucc_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castsucc-ico.md) | 438 | `result-track:62c9c21b87a2171a3dd36d27a17aa82b74cddf85eb3babdc06bd4d85a69fc070` |
| 97 | `theorem` | [image_castSucc_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castsucc-ioc.md) | 442 | `result-track:a258d1f8b6fea898c4790725b06c02a8f31d2773aa7483799268e87411c85c9c` |
| 98 | `theorem` | [image_castSucc_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castsucc-ioo.md) | 446 | `result-track:0000539fdad205494806540996c9d70fc8c78f57a16d20519f27d2affafa79de` |
| 99 | `theorem` | [image_castSucc_uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castsucc-uicc.md) | 450 | `result-track:126461bae0491b2c73c6d2f3daa696c721f2f5bdcb948c7802357bfe94153eaa` |
| 100 | `theorem` | [image_castSucc_uIoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castsucc-uioc.md) | 454 | `result-track:f43edcbe56524c385bf3c1ef11d7ba8f22c2898c7af9a7835de4f14a57a5afec` |
| 101 | `theorem` | [image_castSucc_uIoo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-castsucc-uioo.md) | 458 | `result-track:659e96ab5e5154612fcb1c837267caa4c05fae2b853584a4256bb91a9c74f387` |
| 102 | `theorem` | [range_natAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/range-natadd.md) | 465 | `result-track:477a76df322ed98a22d2e0f3ad1fa46313f273c7e18eb16c0dc6ea4aee39104d` |
| 103 | `theorem` | [range_natAdd_eq_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/range-natadd-eq-ici.md) | 474 | `result-track:142816b8dffa99be961674a5c38bf4a8a8a284ac1049d6adbe81d87eab8e8cf1` |
| 104 | `theorem` | [range_natAdd_eq_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/range-natadd-eq-ioi.md) | 478 | `result-track:7c364d99d6fbeb5a2cbb1ea22b06a48f84e5ac0ab8ba4f86b52f2045caab7f8a` |
| 105 | `theorem` | [preimage_natAdd_Ici_natAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-natadd-ici-natadd.md) | 484 | `result-track:46342e92c838aaef0863baed7b791340c2a100c3bc8b876c301ecc42765a58b3` |
| 106 | `theorem` | [preimage_natAdd_Ioi_natAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-natadd-ioi-natadd.md) | 488 | `result-track:bcbae9b4908e4748f3b10846cbad1f4cb1dc9af62d51bd527e04135798f8fa70` |
| 107 | `theorem` | [preimage_natAdd_Iic_natAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-natadd-iic-natadd.md) | 492 | `result-track:dd2d1d20ebe0368bb5f12d81db8522b4f681d8cfe661019be2382dd0349ec888` |
| 108 | `theorem` | [preimage_natAdd_Iio_natAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-natadd-iio-natadd.md) | 496 | `result-track:53664d28800bce9e747d9b395925d0cb8cd7cec0b6d8154ea8a9d673251d1319` |
| 109 | `theorem` | [preimage_natAdd_Icc_natAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-natadd-icc-natadd.md) | 500 | `result-track:2d9afb516d9ad7fde6b15c4dc0148ba1c9fc87cb6214cf5d4ee2e2c3b8cb8028` |
| 110 | `theorem` | [preimage_natAdd_Ico_natAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-natadd-ico-natadd.md) | 505 | `result-track:d0a9bb1a607453587b4ce28300f85fce4e908dc9179432f35e1014772749505e` |
| 111 | `theorem` | [preimage_natAdd_Ioc_natAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-natadd-ioc-natadd.md) | 510 | `result-track:fa38e805e9a4bf4d074420496f524e20dd44d9b7fe29e947057a3f52eb596eee` |
| 112 | `theorem` | [preimage_natAdd_Ioo_natAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-natadd-ioo-natadd.md) | 515 | `result-track:9908b65ab043822bee0d7cda34570cf6ce922f7a8c59bd0132ec448862e82ec4` |
| 113 | `theorem` | [preimage_natAdd_uIcc_natAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-natadd-uicc-natadd.md) | 520 | `result-track:aaf7604b5550af0ba7a61f535a429483e524bd4d63662940dfddd5eb51c00aac` |
| 114 | `theorem` | [preimage_natAdd_uIoc_natAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-natadd-uioc-natadd.md) | 525 | `result-track:68c547163b46df74701e1aca904da873202e2cb90211b9c70018432a7d138098` |
| 115 | `theorem` | [preimage_natAdd_uIoo_natAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-natadd-uioo-natadd.md) | 530 | `result-track:68abba19a2a709990a5c90dfde1d3e11345a6ebf2004d0f73a0a04b9e37afdcd` |
| 116 | `theorem` | [image_natAdd_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-natadd-ici.md) | 535 | `result-track:676ae9f0696fd24a45f35ec8afc295fb8c992688ba03742c44a96599c09385d2` |
| 117 | `theorem` | [image_natAdd_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-natadd-ioi.md) | 541 | `result-track:7183d9071ab99158be80479eb770842b096c67158ee57acca1bdad4bfb5cf664` |
| 118 | `theorem` | [image_natAdd_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-natadd-icc.md) | 546 | `result-track:913f1b248855c5a34e89aa6a50c26b1374a9125a0fa6841fad4e01016232142f` |
| 119 | `theorem` | [image_natAdd_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-natadd-ico.md) | 552 | `result-track:381a3f00f251473a3b84f2caa44d846514d76e1f31b64e58d18a8d57ebddf947` |
| 120 | `theorem` | [image_natAdd_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-natadd-ioc.md) | 558 | `result-track:8c980ed9de88bc10625a16fda9d720d18d72b42b91633cbc74c5acd1069ca7d5` |
| 121 | `theorem` | [image_natAdd_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-natadd-ioo.md) | 564 | `result-track:3dbd36b2cdabdb4dbab119f745651b38a74f6611fe470ca08048bcf26da6a07f` |
| 122 | `theorem` | [image_natAdd_uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-natadd-uicc.md) | 570 | `result-track:5da922bed3b9cb30561acd01ffa8d4904f00ff1eee0e20fc52967d28e8ef6c78` |
| 123 | `theorem` | [image_natAdd_uIoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-natadd-uioc.md) | 575 | `result-track:9b26d633d2951a9624032c2e78b5632dfb5b8c0229a3afede250a90a39fdd3c9` |
| 124 | `theorem` | [image_natAdd_uIoo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-natadd-uioo.md) | 580 | `result-track:8db223758309e078add912bacd96ed9827320a18cd46bbbcce4335ba6736cced` |
| 125 | `theorem` | [preimage_addNat_Ici_addNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-addnat-ici-addnat.md) | 589 | `result-track:56e8b3f3ff727fbf59d754fcf5f6a14922e97a034900601398a9a532987935f7` |
| 126 | `theorem` | [preimage_addNat_Ioi_addNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-addnat-ioi-addnat.md) | 593 | `result-track:fecfc69e0c563116ab89b97ea6af867638734e370ef95ad1ae66c04a6ee0629d` |
| 127 | `theorem` | [preimage_addNat_Iic_addNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-addnat-iic-addnat.md) | 597 | `result-track:cf167d9b045ad6a678130a25f6c9379e5a290e9e95d27daedc3e5a3198059c84` |
| 128 | `theorem` | [preimage_addNat_Iio_addNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-addnat-iio-addnat.md) | 601 | `result-track:73cfc61976f9112884a9265808009e82d3fa744d94c30d07333869d1cce16bd9` |
| 129 | `theorem` | [preimage_addNat_Icc_addNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-addnat-icc-addnat.md) | 605 | `result-track:6341d53a3255389931ef201694428c82d6300be13034f53a10d56d521479b87b` |
| 130 | `theorem` | [preimage_addNat_Ico_addNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-addnat-ico-addnat.md) | 610 | `result-track:58bdf43dc5a0b8d95b05b21b4ba7f035eff9bac07b072b18fbf6babb9351afb5` |
| 131 | `theorem` | [preimage_addNat_Ioc_addNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-addnat-ioc-addnat.md) | 615 | `result-track:7439b66325167dfec62d1191f3363e2fe261f1028ff449bd613403e2f1a16bc8` |
| 132 | `theorem` | [preimage_addNat_Ioo_addNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-addnat-ioo-addnat.md) | 620 | `result-track:127736fd9a3626b26283022b58f14eb3c5680d458028e3284658c07f5414977c` |
| 133 | `theorem` | [preimage_addNat_uIcc_addNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-addnat-uicc-addnat.md) | 625 | `result-track:c3e1ae16be2e20442056e2a8375ca3570b48f1b8935b47c2e29c970bd18e84f1` |
| 134 | `theorem` | [preimage_addNat_uIoc_addNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-addnat-uioc-addnat.md) | 630 | `result-track:c02e39e0b75a94b642062f29fc08bf4ca5fb9bd0226e7de62f758843ffd7b4ae` |
| 135 | `theorem` | [preimage_addNat_uIoo_addNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-addnat-uioo-addnat.md) | 635 | `result-track:65af8e992e3112ff1195d2ea9b21ccc7fa09ac10b19d417a06457d08f9092220` |
| 136 | `theorem` | [image_addNat_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-addnat-ici.md) | 640 | `result-track:897746a6e0bd679477631e1cc7e3d198e0f73fc0174744d9f4f46d59a4aa0e12` |
| 137 | `theorem` | [image_addNat_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-addnat-ioi.md) | 648 | `result-track:6b2d6894ffa6f4ac74fbea9e7011065c16ad20297a78679c675cf7ddbafdc5a4` |
| 138 | `theorem` | [image_addNat_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-addnat-icc.md) | 653 | `result-track:dca53d8e94b81e5b67081d9c39a84963f01b1e5a702e0da1dc2f0ea0f99061f8` |
| 139 | `theorem` | [image_addNat_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-addnat-ico.md) | 659 | `result-track:29a5a58e75a3ad60e6ed89e9ee6de5a6fac8f7818b12ea5e0b8c1971b5811442` |
| 140 | `theorem` | [image_addNat_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-addnat-ioc.md) | 665 | `result-track:d1ffad86de2729f86312d48b2c1582ad1489c7b31eac6f6b1139b861e41a904d` |
| 141 | `theorem` | [image_addNat_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-addnat-ioo.md) | 671 | `result-track:c54635800e228d3ff5582b3ba61ba6c4af3e6bfb2dcc79e158fe035e16470f5a` |
| 142 | `theorem` | [image_addNat_uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-addnat-uicc.md) | 677 | `result-track:74c8c888760ecf433381cc4a93e1afcf590c16acf3736f23704a0f90e96ca0ef` |
| 143 | `theorem` | [image_addNat_uIoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-addnat-uioc.md) | 682 | `result-track:fefe95630fb3d6eb4742c9f361d6a3b8f56a95b007169c76c838aab41f8c0141` |
| 144 | `theorem` | [image_addNat_uIoo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-addnat-uioo.md) | 687 | `result-track:0d1afa12cac0c127d5b01cc997783b6d146de588ae72886d70158a1aff3428ea` |
| 145 | `theorem` | [preimage_succ_Ici_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-succ-ici-succ.md) | 696 | `result-track:88f27a8a6140c1c3d879832fb19e7b38645f9e935cfff08cd294bddb2d66f768` |
| 146 | `theorem` | [preimage_succ_Ioi_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-succ-ioi-succ.md) | 700 | `result-track:8fdd719fd089527b1830bbde84a0f15e8c0d0f26405eb2de2171f4fe7dcb013a` |
| 147 | `theorem` | [preimage_succ_Iic_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-succ-iic-succ.md) | 704 | `result-track:4df01d450eb098fadf48888f494e9e73d59f395f1d16fd4a6e0597fd2786326f` |
| 148 | `theorem` | [preimage_succ_Iio_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-succ-iio-succ.md) | 708 | `result-track:3c47d60ba1ff3a1f0e7000d718c1a21af4b1ebc959ea5672dd04a70a55dde8b2` |
| 149 | `theorem` | [preimage_succ_Icc_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-succ-icc-succ.md) | 712 | `result-track:0f025cfe6901e7ebac6fdac2957f800fd095f2be4b28151931d50de96f4bac94` |
| 150 | `theorem` | [preimage_succ_Ico_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-succ-ico-succ.md) | 716 | `result-track:3a0e56ebf27367afb9b01a97210144d74b3dc7d1fad1410aa2714976032b24aa` |
| 151 | `theorem` | [preimage_succ_Ioc_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-succ-ioc-succ.md) | 720 | `result-track:57a1f71f9becf3c2a04dbfd4fdecbb288c5947663547aa316e93a0d18de63f22` |
| 152 | `theorem` | [preimage_succ_Ioo_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-succ-ioo-succ.md) | 724 | `result-track:d9d044e3928604d0883267af7c7d4e95aedaa7ba3080c46d19d36fd23ce13497` |
| 153 | `theorem` | [preimage_succ_uIcc_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-succ-uicc-succ.md) | 728 | `result-track:04a8af208cbb86cb952123b0b04fd5f62d572fbc0c7c9e4a9ebd61560c3c10f4` |
| 154 | `theorem` | [preimage_succ_uIoc_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-succ-uioc-succ.md) | 732 | `result-track:f7ef59f90f9bdb73098569678532b8b2b776689b10e30ee27f00bf0a9d50d752` |
| 155 | `theorem` | [preimage_succ_uIoo_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-succ-uioo-succ.md) | 736 | `result-track:e5b907d28b2c66e92466bce3812aeed7ce4671003a92bd4bd01978c3d3962c54` |
| 156 | `theorem` | [image_succ_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-succ-ici.md) | 739 | `result-track:bd105ad942c0dd0c7b461de22d2ca3b3ee39f6c525d44890ed8417fd0fc00b99` |
| 157 | `theorem` | [image_succ_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-succ-ioi.md) | 740 | `result-track:0ac88edcf0609c9a584cc20e6334b8e9134920ba1a124beeb43f1bcf7d27d9ad` |
| 158 | `theorem` | [image_succ_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-succ-iic.md) | 743 | `result-track:e2df79c002b1b93c4805086a727e15c00527a67e8b0b24a0881620ea5894276f` |
| 159 | `theorem` | [image_succ_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-succ-iio.md) | 750 | `result-track:791e3788a4ea0f5265ed38d1f0436eeb10fa71c4dffc31b69efd8ad5135fd439` |
| 160 | `theorem` | [image_succ_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-succ-icc.md) | 757 | `result-track:65168f213b7fde329c6019294f8b89a7e73de805d42d28a983964fd6db47a52d` |
| 161 | `theorem` | [image_succ_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-succ-ico.md) | 760 | `result-track:aa272886d785fc5814d314ec5963d29e1cdb1a5f4c320d6f0edb9e26dfe18605` |
| 162 | `theorem` | [image_succ_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-succ-ioc.md) | 763 | `result-track:900e8488d9bc8b912bbf8d9b73d4ee59a29598110f11876e891b3bd261543fa8` |
| 163 | `theorem` | [image_succ_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-succ-ioo.md) | 766 | `result-track:be12f54d79006ca9103a5ca6aa19a2c7facc81ea8ff864e5eb9a08d42ebfe0b9` |
| 164 | `theorem` | [image_succ_uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-succ-uicc.md) | 769 | `result-track:67755517768913549a0087fc7e40b183fd1676cf686097b32af701035b4abd13` |
| 165 | `theorem` | [image_succ_uIoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-succ-uioc.md) | 773 | `result-track:b0dcc4f8910fd62210580599feb15915e599d00fcc0c4e339f19bb461a391601` |
| 166 | `theorem` | [image_succ_uIoo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-succ-uioo.md) | 777 | `result-track:efd7e03f59fa8c95974cfa55da869617d02c6592b7538e6f7db4eb27621bbc48` |
| 167 | `theorem` | [range_rev](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/range-rev.md) | 785 | `result-track:8fc49e8b2a3de0585a6d8a1ea314a1d6b46f7977e00a170bc46c1912ac0f7953` |
| 168 | `theorem` | [image_rev](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-rev.md) | 787 | `result-track:03d90d6e774515397d61b9215c970e24e3c7dd4908744c7446c23b5a2bc7f196` |
| 169 | `theorem` | [image_rev_fun](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/image-rev-fun.md) | 790 | `result-track:e8d1be3eb37b03aed7f276d671aab69e835c8ca83bc2ce0346d4e50819ea0afc` |
| 170 | `theorem` | [preimage_rev_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-rev-ici.md) | 793 | `result-track:2bcc946f4a08d7b8a77a523a6245a0e31df586aa01cc20642c879f9423f6404c` |
| 171 | `theorem` | [preimage_rev_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-rev-ioi.md) | 796 | `result-track:3a1bec167c8590fb5156ffbaedc0dc02eb73caaf43e6274455e2d1659962fc7f` |
| 172 | `theorem` | [preimage_rev_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-rev-iic.md) | 799 | `result-track:e260a48e8f0c15260596600999471d9c91693c27fafa5af363187ff316158a64` |
| 173 | `theorem` | [preimage_rev_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-rev-iio.md) | 802 | `result-track:24d6aa48b81ebed6f3ba7ed479c3fb8d186f49aa61faf4c48099f498e6e91956` |
| 174 | `theorem` | [preimage_rev_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-rev-icc.md) | 805 | `result-track:17408903890d40708b072ef89d5c2cab306970b3a53f939f236c7f37f69432f4` |
| 175 | `theorem` | [preimage_rev_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-rev-ico.md) | 809 | `result-track:81c916180c5326ca75a5158aeb79b6676613b0b1a7368423097fa0d0a6d26025` |
| 176 | `theorem` | [preimage_rev_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-rev-ioc.md) | 813 | `result-track:e20715ba9dfcc17790e50df31977726a23be28e87a55ec4fde6537fb9cdfa5d3` |
| 177 | `theorem` | [preimage_rev_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-rev-ioo.md) | 817 | `result-track:26c68d54b42a8b4164addbaff4c8bc7528bd1bb318116e8ae1ab9d1e6fd9a171` |
| 178 | `theorem` | [preimage_rev_uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-rev-uicc.md) | 821 | `result-track:a0be2556ac5d75bc2b7824f69ed564c59bcc9b42379ce4d40f0890b3f77a7c50` |
| 179 | `theorem` | [preimage_rev_uIoo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Fin.lean/declarations/preimage-rev-uioo.md) | 825 | `result-track:41ff95bd94f06212e7c7ea595e9d79103a2d28101883bd52d9210edac0ef746e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83d42d6aee3430368c44b8c67d76ae56444d90437b79cf7e1c5e074ef510368c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fin/Variant0a26c032737b91317118959e84bdf7bbb54a50ce6a521535c3eee2d432fa1185.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fin/Variant0a26c032737b91317118959e84bdf7bbb54a50ce6a521535c3eee2d432fa1185.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
