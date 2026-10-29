# Verification target: Rel Series

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8896971211c230ef2e4e80551ee4ee3f216674b3",
  "lexical_observation_count": 158,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Variant8270fa3d998124996535384c2c45952ee8005b0ba89d1f5a903697ecafc28f07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8896971211c230ef2e4e80551ee4ee3f216674b3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Variant8270fa3d998124996535384c2c45952ee8005b0ba89d1f5a903697ecafc28f07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Variant8270fa3d998124996535384c2c45952ee8005b0ba89d1f5a903697ecafc28f07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Nat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pigeonhole` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pi` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sigma` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rel` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OrderIsoNat` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RelSeries](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/relseries.md) | 29 | `declaration-track:eba31d24f50870d5dbef0946d875e70bba0c18982ff963abc1f082465c9a3832` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/instance-source-edition-4.md) | 39 | `declaration-track:98782f754cd25eb8162cfe8a2c4fef23aaab03a5a653333f6a20deb83334b3b6` |
| 3 | `def` | [singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/singleton.md) | 45 | `declaration-track:8214e223b16955959d010559f58238bc4a88d25a35a31cc1adc616e3f60d9cbc` |
| 4 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/instance-source-edition-2.md) | 50 | `declaration-track:2418c3d4a02d40004c78623ae8dea09cd0e20572aa4b5743ec07534be429bc11` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/instance-source-edition-3.md) | 53 | `declaration-track:62fddb1ed60dc7a6117344e70371863893e8dc54531f9173a5d5d296d8dfb8e2` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/instance.md) | 56 | `declaration-track:1d3e2b1ac9a86b367ef9cd580df4191bf492cef52b4f03728f1103fb978a439f` |
| 7 | `lemma` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/ext.md) | 62 | `result-track:0a201b46e066891b385c0b28d410ece18ab1ad0869499fc890ec60b3113d4a4d` |
| 8 | `lemma` | [rel_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/rel-of-lt.md) | 69 | `result-track:13dd610cd4471245ef52a50045bbacc5bc3dae954c175bfefb12d278bf51a670` |
| 9 | `lemma` | [rel_or_eq_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/rel-or-eq-of-le.md) | 73 | `result-track:55f0d3011f481e41b8878998b2ebd464763ede9014d7cda684075fe085b6a0d2` |
| 10 | `def` | [ofLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/ofle.md) | 82 | `declaration-track:66980ad444f62a691842a75cf134cb6f218c366ab64e5e8307931c3087dd9b98` |
| 11 | `lemma` | [coe_ofLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/coe-ofle.md) | 87 | `result-track:02b0b6ff151ec038143af95bacebf57a35c332bc9065c81bafbe44da513053f2` |
| 12 | `def` | [toList](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/tolist.md) | 91 | `declaration-track:ed0ea8f0f03b889940f9d308d386dc60cd025d8bf90a42b038c9a863a98b6a12` |
| 13 | `lemma` | [length_toList](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/length-tolist.md) | 94 | `result-track:b6dfd661cea8db5a85c3c1a8ee65d813d53a16004b7275610df312abb672f3b6` |
| 14 | `lemma` | [toList_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/tolist-singleton.md) | 98 | `result-track:c0eca6d9aac8e372c08ff0dff2bb7e749b25bf69b2a57ab2e8eed35130263482` |
| 15 | `lemma` | [toList_chain'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/tolist-chain.md) | 101 | `result-track:b9f5d8ddbaeadb01c5379881d661695f64f7211485a1d77ba79ec00aa36987df` |
| 16 | `lemma` | [toList_ne_nil](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/tolist-ne-nil.md) | 106 | `result-track:cd46664b7a6e571f95b80f9d8a36aa14166e82ad7432c67a3e0e0acc97ed4dd6` |
| 17 | `def` | [fromListChain'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/fromlistchain.md) | 111 | `declaration-track:37267b8b5bd0ddf7ed8d8dd5c4eefe3ae15b67dd4660a094ce20d375fa127626` |
| 18 | `def` | [Equiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/equiv.md) | 118 | `declaration-track:e2e4e115c8595e7b65fa59302698b3e413d4ca9806e72b71de00a9bca00a5754` |
| 19 | `lemma` | [toList_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/tolist-injective.md) | 127 | `result-track:0bc3ef5251a7bcee5da962d6dd998ba826a0966d2b7c2babff3ee9f3e02852b0` |
| 20 | `class` | [FiniteDimensional](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/finitedimensional.md) | 139 | `declaration-track:41511db131fbee99c0e2e36cd814b346e1847b2482e8c76a385f67cbb8ec1f2a` |
| 21 | `class` | [InfiniteDimensional](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/infinitedimensional.md) | 147 | `declaration-track:4460b4f4be8e882fe66a82091430ed653063173a06f2035adbd1949dd5f7d2c2` |
| 22 | `def` | [longestOf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/longestof-source-edition-2.md) | 157 | `declaration-track:c5fc0aedab3211e4f1f21f757534255819cb5d69789395e8fa9afe4100c884c7` |
| 23 | `lemma` | [length_le_length_longestOf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/length-le-length-longestof.md) | 160 | `result-track:58838149ba55536db428db46064c5cdc07c596b68c974ad36a06715281a13dae` |
| 24 | `def` | [withLength](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/withlength.md) | 165 | `declaration-track:4bbe0d16ee42deba311df738a5531d0f4d543a78d116937a09c160b314254cd0` |
| 25 | `lemma` | [length_withLength](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/length-withlength-source-edition-2.md) | 168 | `result-track:4b10243cb03ed964177e7d6955876228c3f13e4de0c2dc7f35b15cddd131eb7f` |
| 26 | `lemma` | [nonempty_of_infiniteDimensional](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/nonempty-of-infinitedimensional.md) | 176 | `result-track:3a6f12be13df67d0f94b71a524e67c9a4c0c3f79ac743f22d313db6eb1aec303` |
| 27 | `lemma` | [nonempty_of_finiteDimensional](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/nonempty-of-finitedimensional.md) | 179 | `result-track:97daff4713e3dc6a4a31915c3fb2b700acac557d36689ea0e532bb86fc2f8c67` |
| 28 | `instance` | [membership](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/membership.md) | 183 | `declaration-track:a7cd2c69397c35ad234fc1d2790b40e019c0363a06a799b9a57b039492e02009` |
| 29 | `theorem` | [mem_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/mem-def.md) | 186 | `result-track:fb27d001dce872d6e1a9faeea9fa56735db56960cf0acf7eb33f53cde7d9335b` |
| 30 | `theorem` | [mem_toList](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/mem-tolist.md) | 188 | `result-track:e778d6e3ee0d4801f020286b77089ecb5c13727068309c8e58cb96833227eb18` |
| 31 | `theorem` | [subsingleton_of_length_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/subsingleton-of-length-eq-zero.md) | 191 | `result-track:3e78675b7565a53f9e31dd3bff8f2137014d0789f243d9130a170ee561d78272` |
| 32 | `theorem` | [length_ne_zero_of_nontrivial](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/length-ne-zero-of-nontrivial.md) | 196 | `result-track:98a8ee943909ab3ddccd3ba2f312839b4e45e5f03aefec4960ea6115cb01200b` |
| 33 | `theorem` | [length_pos_of_nontrivial](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/length-pos-of-nontrivial.md) | 199 | `result-track:e823cd951d3160d65737532d9213bec1ffdd4e7ff07b15f789cc06bd52726a2c` |
| 34 | `theorem` | [length_ne_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/length-ne-zero.md) | 202 | `result-track:c6f385238699be7ebe6e2c8822ee244b3c900e139b17623e8229a33555f1cfc7` |
| 35 | `theorem` | [length_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/length-pos.md) | 210 | `result-track:a0a8dab8f0e6b4aa7a0720cbd5784c37bc31872538b8c2406accf954aeba60ae` |
| 36 | `lemma` | [length_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/length-eq-zero.md) | 213 | `result-track:3bdc584a63e8a752094fa46bf6a744fdd7521e75d265e2ebb46bdd62e98e62f0` |
| 37 | `def` | [head](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/head.md) | 219 | `declaration-track:ba2d91d5c495afd884c818b332b0abdbd961166f332f10c94225850c47841696` |
| 38 | `def` | [last](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/last.md) | 224 | `declaration-track:770eb980df5f23c9bb04559a65249fb949f4e4472519538ca8d08c68fb2564bc` |
| 39 | `lemma` | [apply_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/apply-zero.md) | 226 | `result-track:d05ff0a36347a7083cef1e3367382808756ae83379749364af5782ef9b667598` |
| 40 | `lemma` | [apply_last](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/apply-last.md) | 228 | `result-track:48efacc3a580f37178577bbf630735ce5f301dae98c5945ef4a89b483d778165` |
| 41 | `lemma` | [head_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/head-mem.md) | 230 | `result-track:13d79031e71535ba4fa8c8cea80bf861216b862756de9efe4ca15db512e96f58` |
| 42 | `lemma` | [last_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/last-mem.md) | 232 | `result-track:d53fe2f43e8ae2237f5441bf2a3fb957908ff34d9fc942f62048c11dddee991a` |
| 43 | `lemma` | [head_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/head-singleton.md) | 235 | `result-track:2794e461f3a9a7bab89381b4b6da29299d4db71a08855d51872ddfa4cdd45313` |
| 44 | `lemma` | [last_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/last-singleton.md) | 238 | `result-track:13adb65c35798c8a62c74c2f6caf2d1357097742bb218e1a68fe731fbc539c50` |
| 45 | `lemma` | [head_toList](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/head-tolist.md) | 241 | `result-track:6d25e0b355c85b8cf0f76187aea96c40412a65d32890c41e65cb8fb65fbe85ce` |
| 46 | `lemma` | [toList_getElem_eq_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/tolist-getelem-eq-apply.md) | 245 | `result-track:5264688ccc7b7fc9c319a3773674f5d8ef599a14809b07fe56b0d2184dcfa349` |
| 47 | `lemma` | [toList_getElem_eq_apply_of_lt_length](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/tolist-getelem-eq-apply-of-lt-length.md) | 249 | `result-track:a2f5221caf1c2f13926719463d2abee5ca322e74680f211c1b4fcf4d4024bcd6` |
| 48 | `lemma` | [toList_getElem_zero_eq_head](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/tolist-getelem-zero-eq-head.md) | 254 | `result-track:65deebb174587b5a3710dddd234f57cfef36f6135f441caebf1d61e6d9ce2d96` |
| 49 | `lemma` | [toList_fromListChain'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/tolist-fromlistchain.md) | 258 | `result-track:1cec55bcb4b282f3bce92edf948cf3eea684a857700ed27e099c60cb206abaa1` |
| 50 | `lemma` | [head_fromListChain'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/head-fromlistchain.md) | 263 | `result-track:de8d6c643142517d570748753865d8f67d3825bd0bd1e292773d8556dd48330b` |
| 51 | `lemma` | [getLast_toList](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/getlast-tolist.md) | 269 | `result-track:8d5f9ec35146ab23a12e603c565eb8c1e545219fce41d566a81a2cf5039c199f` |
| 52 | `def` | [append](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/append.md) | 282 | `declaration-track:a79cb5669caa40c57c0db18cdd77e082770e3d09f6e61aa110bb91e2a2a23111` |
| 53 | `lemma` | [append_apply_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/append-apply-left.md) | 310 | `result-track:3665635bb8d6e55c8ac93f6d0ca9afb73f1e82cf2e4914440448e0ff169318a1` |
| 54 | `lemma` | [append_apply_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/append-apply-right.md) | 317 | `result-track:6608b86e3f29895155239463c997f9b81839f38488cb4dc10582e17ac54e0b28` |
| 55 | `lemma` | [head_append](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/head-append.md) | 330 | `result-track:aa468c171765861ea5de7b06245df9562834cccdcbda9e75012771a133a77822` |
| 56 | `lemma` | [last_append](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/last-append.md) | 334 | `result-track:fbe7257ede5751bdbe3937dea8f9669a5bf6f117fcdb5754df77df0e07a2c68c` |
| 57 | `lemma` | [append_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/append-assoc.md) | 343 | `result-track:31a83aa6f1a0cce03063ce40f7579a84263952c31ce7f2f61f512eecfffb60a8` |
| 58 | `lemma` | [toList_append](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/tolist-append.md) | 351 | `result-track:b946c42557c53f14b7f82f5794fcc4132c857bd081b7e948aa2f6da32b0ddc35` |
| 59 | `def` | [map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/map-source-edition-2.md) | 374 | `declaration-track:decfa80b5889d993a63c5eaecb15b34db207beafb96f2662226cd3cb53ef53d0` |
| 60 | `lemma` | [map_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/map-apply.md) | 379 | `result-track:a360cc88cf5fa58ae9224d3370d58a677b7a304b5fc9020950758fbff4a35013` |
| 61 | `lemma` | [head_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/head-map-source-edition-2.md) | 382 | `result-track:e05f826ebcfba450a8dfb636c10894377899b53fc78f700f73aed7d927346541` |
| 62 | `lemma` | [last_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/last-map-source-edition-2.md) | 384 | `result-track:f6f927fcd31c6c0d3477b02411f9906a088344ad9ef5fd6f4fdca74e9195d11b` |
| 63 | `def` | [insertNth](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/insertnth.md) | 393 | `declaration-track:51e1f244ca627074315edeb07a078b575c4b6b4ab150d094f805a147392b189e` |
| 64 | `def` | [reverse](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/reverse.md) | 449 | `declaration-track:eb9377922ce4c6728092f6cf13effeae15222dd98ec4a860e9076ccd80caec94` |
| 65 | `lemma` | [reverse_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/reverse-apply.md) | 461 | `result-track:648184591a00f41308aceb5ee445b921b0986c42fae3456403696348defa089d` |
| 66 | `lemma` | [last_reverse](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/last-reverse.md) | 464 | `result-track:1d9c7b979b3b092438e8f32d7c59957bca92b1b15dd74403103a457c855e97f6` |
| 67 | `lemma` | [head_reverse](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/head-reverse.md) | 467 | `result-track:b9e362fa7fd306de45244c8026771a587de39c25d36691308bdd3d70ab52065c` |
| 68 | `lemma` | [reverse_reverse](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/reverse-reverse.md) | 470 | `result-track:3d9283e53c29f540cfeb0a1354f37eb3c2600c5076a1fa306a48cf5aafdd81d3` |
| 69 | `def` | [cons](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/cons.md) | 478 | `declaration-track:7161c7a712283bb9be8385be1d52c4d1cad6eef8744177bcf2360521ebf333e9` |
| 70 | `lemma` | [head_cons](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/head-cons.md) | 481 | `result-track:28b4abd5542486ef38136e2ee7aca44ab6f481112daedefc2568534b0e1bbf53` |
| 71 | `lemma` | [last_cons](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/last-cons.md) | 484 | `result-track:dbc6e4479b4937e2770888408eeff2efb3e366d5400d30bebf3475f29d99bd79` |
| 72 | `lemma` | [cons_cast_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/cons-cast-succ.md) | 489 | `result-track:0e11ce2ac2f1b87f98e1b672651fe519a71f0b6204a113fa2a26681806eeb6ff` |
| 73 | `lemma` | [append_singleton_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/append-singleton-left.md) | 498 | `result-track:6a3b6668f471a0e795b5e9c892a8f48275255e0de067e77553037c4e97251247` |
| 74 | `lemma` | [toList_cons](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/tolist-cons.md) | 503 | `result-track:f012458459724d6447ab4d295686c2cedd7bfc3e7b44f4e7444c0d7344c45381` |
| 75 | `lemma` | [fromListChain'_cons](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/fromlistchain-cons.md) | 508 | `result-track:e51a0f64b3bfa3d6ac878db6ed7426ec563ae7cd42f3acc2a30ad00408262cb0` |
| 76 | `lemma` | [append_cons](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/append-cons.md) | 515 | `result-track:9e83ce8de899b4f97aff76ff8e4dc736d2bcb7105bdf66c227b463eaee30ef95` |
| 77 | `def` | [snoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/snoc.md) | 525 | `declaration-track:7320669ec127b605c61b4247d955b072f5c007e0578624f9f54e28f0f6229211` |
| 78 | `lemma` | [head_snoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/head-snoc.md) | 528 | `result-track:73bf3c6410e938f098f571b29a5baa57612ed7bea0425681761636ceaf45cce4` |
| 79 | `lemma` | [last_snoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/last-snoc.md) | 532 | `result-track:78637f112aeb68633fd4fd15689a5943a61c6a7da0a80b8e7bfacdf1aaea9d91` |
| 80 | `lemma` | [snoc_cast_castSucc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/snoc-cast-castsucc.md) | 535 | `result-track:7417fd164401e8355bfec829bbb933c7ba5b6a2783ab97ba9877b7616f1fe978` |
| 81 | `lemma` | [last_snoc'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/last-snoc-source-edition-2.md) | 542 | `result-track:8a1fa1989231b307291e61b1ea9f7fcc9b40dacd115891bcfe4d803f07c3edc2` |
| 82 | `lemma` | [snoc_castSucc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/snoc-castsucc.md) | 545 | `result-track:c9a8367baf59eed66b78cd42dccba3ba4d90cfd63735396938f4d8b22fb84864` |
| 83 | `lemma` | [mem_snoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/mem-snoc.md) | 549 | `result-track:899c5cc2644d9001fdf0190edaedc45b83d17abea75575b6ed7be22a57579d14` |
| 84 | `def` | [tail](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/tail.md) | 566 | `declaration-track:ba406607195d61f9c4ccbfc7a422b0398425e7fde5030f5f4c063e2e7d3663a2` |
| 85 | `lemma` | [head_tail](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/head-tail.md) | 571 | `result-track:ccb6ae5122f8a620637b0e03acb40933e9cfd7cb7ebdaef6d4cbdcea365e3cd0` |
| 86 | `lemma` | [last_tail](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/last-tail.md) | 580 | `result-track:0fc73fc552c8a497a7f7c6700b3222f048ce23c90758481cbfd445c9c60f42ab` |
| 87 | `lemma` | [toList_tail](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/tolist-tail.md) | 589 | `result-track:508966699161ecbac7a77c061a34fbdf85b44c50f908d3158be980f0c7430286` |
| 88 | `lemma` | [tail_cons](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/tail-cons.md) | 598 | `result-track:5c55455aa1e2b69dd0150a24bfc738f2f48cecd7812863e881fc958046cb67e2` |
| 89 | `lemma` | [cons_self_tail](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/cons-self-tail.md) | 603 | `result-track:6c54425a2a86180e68436809caaed45772484f2679500eefd6c567290fa85fd1` |
| 90 | `def` | [inductionOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/inductionon.md) | 616 | `declaration-track:3b1a7a0048487c96fc009b2e03cfef17d7612493a9fce2041cf879cf7b614769` |
| 91 | `lemma` | [toList_snoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/tolist-snoc.md) | 637 | `result-track:2ed23ff6e6b1f3ea327a3d970ce14ea2df7acd680ef7b4f59b5ccae76503405a` |
| 92 | `def` | [eraseLast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/eraselast.md) | 645 | `declaration-track:7d574e38f7d95b30bb620d5dc1852a6ca121e8ff96b679c65703cc674d515abd` |
| 93 | `lemma` | [head_eraseLast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/head-eraselast.md) | 650 | `result-track:51a9091be60b1930abff8583125a77f5aca77a12a378704f0d7c706c637767ef` |
| 94 | `lemma` | [last_eraseLast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/last-eraselast.md) | 652 | `result-track:d24a6aae3326c9d18b4cb8f69a69a3afc26b8bf405982e2b45fd50bc2eeb1de8` |
| 95 | `lemma` | [eraseLast_last_rel_last](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/eraselast-last-rel-last.md) | 656 | `result-track:f206498bad1cc0988aab70fc8a899544ab3e475fbe3f30ade5c0720202edfd10` |
| 96 | `lemma` | [toList_eraseLast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/tolist-eraselast.md) | 663 | `result-track:d53dfd59462422d0fbd787a47bd019456aaf210ee35c3f2eaaa01f51edb2c1b9` |
| 97 | `lemma` | [snoc_self_eraseLast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/snoc-self-eraselast.md) | 671 | `result-track:c55108ef2b21f360264198a64d78a8a0f05430b47462567fc8f44e9b2674bf91` |
| 98 | `def` | [inductionOn'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/inductionon-source-edition-2.md) | 681 | `declaration-track:df933144c88dafbc91f6c4a8b486c30539464cbae0149ff92d3ef6b000d1ca39` |
| 99 | `def` | [smash](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/smash.md) | 706 | `declaration-track:dcb2ba2c5239226797c2ba420e8b63634456695ec8c7679cabced95bac9dcb6d` |
| 100 | `lemma` | [smash_castLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/smash-castle.md) | 718 | `result-track:22a584cea708838bb0f99cf694fb255ba4d175ca19a0cf7f916455bab57723e1` |
| 101 | `lemma` | [smash_castAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/smash-castadd.md) | 724 | `result-track:2695107bebd43f3cb329aa96235919c96466111b56fec35953c35ee514dc6668` |
| 102 | `lemma` | [smash_succ_castAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/smash-succ-castadd.md) | 728 | `result-track:51492ecbdb95674a9bb9f7a280b70df193aa29793962d47957d8574e6440975c` |
| 103 | `lemma` | [smash_natAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/smash-natadd.md) | 732 | `result-track:253f569b571d4c276317ade23465ff3ee66c3d79f9cb903f80673fc9e0223370` |
| 104 | `lemma` | [smash_succ_natAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/smash-succ-natadd.md) | 737 | `result-track:0bcb31b9877590db9270757c062d799fc73c11b534bd57517853b4fbae5200c0` |
| 105 | `lemma` | [head_smash](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/head-smash.md) | 742 | `result-track:0a60c0c12ca94933e812dc954544bc989eceb3c070af1b5107f5ec43f7f860bd` |
| 106 | `lemma` | [last_smash](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/last-smash.md) | 749 | `result-track:ddae058491edc2ac698cfbad7975790e176116cc6e3f8ad63f7803b25cb2af9c` |
| 107 | `def` | [take](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/take.md) | 756 | `declaration-track:ffee5ddf8fcb53360b8fcf062eafb93e802bb1a5123a82c9a2dba943b28cfe7d` |
| 108 | `lemma` | [head_take](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/head-take.md) | 762 | `result-track:dcef1e8ea57aca0b7fc71e8a6fdb3e91f23a2d653a1500fcb5be47323f56bf5a` |
| 109 | `lemma` | [last_take](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/last-take.md) | 766 | `result-track:f72462d2e2d0923202269b846fed24916b40ba1bece879f96d659f26a0f605dc` |
| 110 | `def` | [drop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/drop.md) | 771 | `declaration-track:447ba399c7c4cd510e0994852434c79a3024588867bd34a211144ce3ffad5367` |
| 111 | `lemma` | [head_drop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/head-drop.md) | 779 | `result-track:ceac2f6a2c6abc74a9ef4dcbb2e9c900bd930b9d0ea64e6854dc82642d13c3b7` |
| 112 | `lemma` | [last_drop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/last-drop.md) | 783 | `result-track:7ea5f42be26f1a837bb1fd9cee17ddf5c84b1cb6ff21259cc63e42b3d1351bab` |
| 113 | `lemma` | [Rel.not_finiteDimensional_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/rel-not-finitedimensional-iff.md) | 791 | `result-track:12afcbf6ab808bcb555b2f471de57e54a7fe9cc9d8a285ddfdc4cac56aa8da21` |
| 114 | `lemma` | [Rel.not_infiniteDimensional_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/rel-not-infinitedimensional-iff.md) | 808 | `result-track:37f66288571f54aa05a17765c52f83ebb74d8f96ee11fe2f085769aa544719cd` |
| 115 | `lemma` | [Rel.finiteDimensional_or_infiniteDimensional](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/rel-finitedimensional-or-infinitedimensional.md) | 812 | `result-track:62c3b16f1d42aa63bcee8beffb667e95320429e06142a07846c4ef5581f22fe4` |
| 116 | `instance` | [Rel.FiniteDimensional.swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/rel-finitedimensional-swap.md) | 817 | `declaration-track:00a23afef647e0065852bc247dbd50212a7e8dc42206285ae98d81151d362a19` |
| 117 | `lemma` | [Rel.finiteDimensional_swap_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/rel-finitedimensional-swap-iff.md) | 822 | `result-track:249de5b1241810530e179dab13425cde1b25d619b0bba17700146f5444cd0683` |
| 118 | `instance` | [Rel.InfiniteDimensional.swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/rel-infinitedimensional-swap.md) | 826 | `declaration-track:e99b83e021f3e8947c9dd129e37e84a44491c39e7541c9a69d340dd7bd58bd3c` |
| 119 | `lemma` | [Rel.infiniteDimensional_swap_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/rel-infinitedimensional-swap-iff.md) | 832 | `result-track:45853597a24b3400bbc1a3a5fc77bdaf822a99a7965cd4d2ee56a5a3ace73b2a` |
| 120 | `lemma` | [Rel.wellFounded_swap_of_finiteDimensional](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/rel-wellfounded-swap-of-finitedimensional.md) | 836 | `result-track:eb3b454d6b157d884fe7457cd7dac4362d4bf3f81f59bac8c7ae1f0fe684fd71` |
| 121 | `lemma` | [Rel.wellFounded_of_finiteDimensional](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/rel-wellfounded-of-finitedimensional.md) | 843 | `result-track:51bfbd09e16f9ae5efc50e40a3154920454d4a48b4a20f71b544801c5a672ecc` |
| 122 | `abbrev` | [FiniteDimensionalOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/finitedimensionalorder.md) | 848 | `declaration-track:fb06c1bb7bc51a5206e48dd3b03e4be3613c426638b6ec29872633d22653dd0e` |
| 123 | `instance` | [FiniteDimensionalOrder.ofUnique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/finitedimensionalorder-ofunique.md) | 851 | `declaration-track:04ee57503299cee25341d87b219516f102c361821cfc84238b3c65c4f00ffcaa` |
| 124 | `abbrev` | [InfiniteDimensionalOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/infinitedimensionalorder.md) | 858 | `declaration-track:3ad8095b2f2f151a74bbaafea2427675304b80ef0380618a43aec3cc87e7d098` |
| 125 | `abbrev` | [LTSeries](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/ltseries.md) | 867 | `declaration-track:d0ac2fb12fcb128e1562e464ce926ea10beed890784215eefde06ae84ca759d7` |
| 126 | `def` | [longestOf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/longestof.md) | 872 | `declaration-track:52eb71ca5f716c84c73719e8cb22a3b60da0f747f5e21d90b80cea5e73b8b1c6` |
| 127 | `def` | [withLength](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/withlength-source-edition-2.md) | 876 | `declaration-track:e4b3ce77bc8df286af4a23248970c7700dfe8a8af42430164463fd292049ee3c` |
| 128 | `lemma` | [length_withLength](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/length-withlength.md) | 879 | `result-track:0b37b79d004f8711b2499b70095640542048040a52d6ce10beaca96898158d46` |
| 129 | `lemma` | [nonempty_of_infiniteDimensionalOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/nonempty-of-infinitedimensionalorder.md) | 884 | `result-track:8e955dc1c4e5910a579ffbc7c4efe05bfe380608303767fce05234a7d24ed798` |
| 130 | `lemma` | [nonempty_of_finiteDimensionalOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/nonempty-of-finitedimensionalorder.md) | 890 | `result-track:5a08b18a6b890129698a34b848ec1d917a6812e4355459d35fcc8f616f2c3561` |
| 131 | `lemma` | [longestOf_is_longest](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/longestof-is-longest.md) | 896 | `result-track:bf60c2b149d3e0b3aca18e4787b2500942d443a57751fd18c6866fb7e9443e83` |
| 132 | `lemma` | [longestOf_len_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/longestof-len-unique.md) | 900 | `result-track:95239a00a9a20a16b76a7bc8aa481f27a27ac2a2899af74de117c8155b6f19f3` |
| 133 | `lemma` | [strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/strictmono.md) | 906 | `result-track:6d40584a4ed5c673c432700770311791334e0c96f8b3b2b0b3236ccf0a5758da` |
| 134 | `lemma` | [monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/monotone.md) | 909 | `result-track:9725faa3512eebeae5b333d0999873268f2be10d85f501d2286ff7465e9492de` |
| 135 | `lemma` | [head_le_last](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/head-le-last.md) | 912 | `result-track:570eacb41d616c0e1ebb25ca6183f7efb88b0eb5553555f1210ecbcba3c3d5f1` |
| 136 | `def` | [mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/mk.md) | 917 | `declaration-track:182c5a94b1f244e6c9d9594a4779af5f69fa2c19ceb1fd6aa61c9fdb0a3bfee5` |
| 137 | `def` | [injStrictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/injstrictmono.md) | 924 | `declaration-track:674402755a8b1a8edf1bc52225121ae43683fc9303c3895b7044e71d9826cdd3` |
| 138 | `def` | [map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/map.md) | 945 | `declaration-track:7c4f80157f6530803724cadf20b44d5247167a4f5daf42095f8497b473b0ccaa` |
| 139 | `lemma` | [head_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/head-map.md) | 948 | `result-track:bf34b9e505c5cb0b411b798acc21acada9b2bed9f93984a39d49c3e509081a01` |
| 140 | `lemma` | [last_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/last-map.md) | 951 | `result-track:6e50907a3e41ba57ce393cb26d3128c64f3ba806f449a7f9ecbedddccb1cfa13` |
| 141 | `def` | [comap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/comap.md) | 961 | `declaration-track:d508fa1fe849455d0bca3b7848400e8a0fb0490d41b681457ca4e56d863bce94` |
| 142 | `def` | [range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/range.md) | 968 | `declaration-track:3043c43a37fcb44cbd83312e9bc2f6c0f6fb39e865dd001891be35a0af21f42a` |
| 143 | `lemma` | [length_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/length-range.md) | 973 | `result-track:728486cc693a58ce9725434255b6ef7c461bad06000ae624931e44db753c5628` |
| 144 | `lemma` | [range_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/range-apply.md) | 975 | `result-track:9bf06262a339de3a46b1089e429a46af83fff8b15cf7308cb76437fb6c885b87` |
| 145 | `lemma` | [head_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/head-range.md) | 977 | `result-track:8af018de5aba8d10e6276456d5816bfa191470b634d884c7530735ff6d43c2dd` |
| 146 | `lemma` | [last_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/last-range.md) | 979 | `result-track:9c1ce6df36dc4d2bb278c67d8feafcc9f4f60dcf59831a8cd7ee6c43dde9b22e` |
| 147 | `theorem` | [exists_relSeries_covBy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/exists-relseries-covby.md) | 983 | `result-track:941b5cef55f50d7f02a9899abfa91996b40e1ba176cbc567b7d18bc258c7cc83` |
| 148 | `theorem` | [exists_relSeries_covBy_and_head_eq_bot_and_last_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/exists-relseries-covby-and-head-eq-bot-and-last-eq-bot.md) | 1010 | `result-track:ede108b16a7ed6d3c6b31b6e73504fe0913c51bd39f26153d10a4065ed4a169c` |
| 149 | `lemma` | [apply_add_index_le_apply_add_index_nat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/apply-add-index-le-apply-add-index-nat.md) | 1031 | `result-track:2ef5f2a000ddab6fc37fa565f3329173ad6b9f84186af4eb5e042ccb642d6af7` |
| 150 | `lemma` | [apply_add_index_le_apply_add_index_int](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/apply-add-index-le-apply-add-index-int.md) | 1048 | `result-track:fc1285f7accd85aaa4cb26fb68b5e045b12f9acc41e144098aa4bc810cbf2bf1` |
| 151 | `lemma` | [head_add_length_le_nat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/head-add-length-le-nat.md) | 1064 | `result-track:f756a24d27ce6ddd425a7637ad01a6cdcb559c1012ed4e6e69893ff047827ff4` |
| 152 | `lemma` | [head_add_length_le_int](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/head-add-length-le-int.md) | 1068 | `result-track:763aeaff5ecedfc3401071828d94cdd5f8a7c24bb0d24f7d9b6a08d77a5c72fb` |
| 153 | `lemma` | [length_lt_card](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/length-lt-card.md) | 1075 | `result-track:156058b90b7bcf52b6666b31d05dfcb42e97df92189662c2933e653aef182641` |
| 154 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/instance-source-edition-5.md) | 1082 | `declaration-track:eafd28f10ff079da891df086970aed2f1e1e8bb844447cc3b9b0ea79cd003f5b` |
| 155 | `lemma` | [not_finiteDimensionalOrder_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/not-finitedimensionalorder-iff.md) | 1096 | `result-track:068b2297d57ea10c631d1ffc20b1bbcdf774029103fc39178af764f8a2121a18` |
| 156 | `lemma` | [not_infiniteDimensionalOrder_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/not-infinitedimensionalorder-iff.md) | 1100 | `result-track:c7a6bf65d353d9df063f81357544708aa8c554ae09d52640fe59c7d6eb662b95` |
| 157 | `lemma` | [finiteDimensionalOrder_or_infiniteDimensionalOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/finitedimensionalorder-or-infinitedimensionalorder.md) | 1105 | `result-track:3aa2a72d1e36b05554ca0028a0492893cce65161be57a2739b17675621a3d2be` |
| 158 | `lemma` | [infiniteDimensionalOrder_of_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelSeries.lean/declarations/infinitedimensionalorder-of-strictmono.md) | 1111 | `result-track:c37ee2f84e9713fddecf23d4386632a91fce3e439a1d5ee3e902f6c6ffcc7b2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eeb4c954a0492c624138ef751882f06b82c81058d86b69267f767b62335f86a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Variant8270fa3d998124996535384c2c45952ee8005b0ba89d1f5a903697ecafc28f07.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Variant8270fa3d998124996535384c2c45952ee8005b0ba89d1f5a903697ecafc28f07.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
