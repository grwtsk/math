# Verification target: List Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c26f2ab61946301b30b827c7976e04f1011b12ae",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant9bee12a23641513416ee3d3ed463af60f6208e0ae7504730565f8ecabea0a72e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c26f2ab61946301b30b827c7976e04f1011b12ae`.

Source path: `GRWTSK/Algebra/Basic/Variant9bee12a23641513416ee3d3ed463af60f6208e0ae7504730565f8ecabea0a72e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant9bee12a23641513416ee3d3ed463af60f6208e0ae7504730565f8ecabea0a72e.lean.json)

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
| 1 | `theorem` | [rel_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/rel-prod.md) | 50 | `result-track:23d252a743ef1aaa88c61c0e2a95ab8c274dbe78b54fb125a2513fef57a049f8` |
| 2 | `theorem` | [prod_hom_nonempty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-hom-nonempty.md) | 55 | `result-track:b979e454cf8447b76f0b622740ec9086b984c18f73804d1482f2a3e5cc0d5605` |
| 3 | `theorem` | [prod_hom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-hom-source-edition-2.md) | 60 | `result-track:db6d07b0a54386fb02820cd439dc46182e9948857dea44456feed805d827ebab` |
| 4 | `theorem` | [prod_hom₂_nonempty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-hom-nonempty-source-edition-2.md) | 66 | `result-track:fe5cf6d8492eb3c1b0601a159e812a2af4aa1e286fb0c7707a009ba938e1063b` |
| 5 | `theorem` | [prod_hom₂](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-hom.md) | 72 | `result-track:3cf41764590dc0adb5070711671cce37c68b017b4ced0d3bdbeb22b2601d777e` |
| 6 | `theorem` | [prod_map_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-map-mul.md) | 79 | `result-track:fa8fee83db72cc6d18b978882222b3055dc1c9b3aff1827dcbf8187918ea8770` |
| 7 | `theorem` | [prod_map_hom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-map-hom.md) | 84 | `result-track:15538f572b01f47459500a7c611488c975f18c90f1162e3dc01945010ba497e9` |
| 8 | `theorem` | [prod_take_mul_prod_drop](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-take-mul-prod-drop.md) | 89 | `result-track:845b26c053973557e6e2149964eb54fcdc3fafeeba0aa40c2ce8f68090c06eae` |
| 9 | `theorem` | [prod_take_succ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-take-succ.md) | 94 | `result-track:4f7db25f2c96f038184773683cea5285266d0b66744f981e51b211b27da69690` |
| 10 | `theorem` | [length_pos_of_prod_ne_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/length-pos-of-prod-ne-one.md) | 101 | `result-track:d58e7ca813ee629d3efdc57d0f7a6a3ded2e697e248566dd5afd1e128b30c522` |
| 11 | `theorem` | [length_pos_of_one_lt_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/length-pos-of-one-lt-prod.md) | 108 | `result-track:317c78f87a7cc0fe4c6feedff431cd4444807cef69d8c6bba264d1914848ffae` |
| 12 | `theorem` | [length_pos_of_prod_lt_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/length-pos-of-prod-lt-one.md) | 113 | `result-track:9045f1c620f626dc4889cb236f251ec142dc18cfa95045d13d4b0a4168aa8edf` |
| 13 | `theorem` | [prod_set](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-set-source-edition-2.md) | 117 | `result-track:2e3645a77a47574e84ce325b425ec3656c83637cd44fd6aff57373df03609614` |
| 14 | `theorem` | [getElem?_zero_mul_tail_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/getelem-zero-mul-tail-prod.md) | 132 | `result-track:9fceab068c76496d3775dbc1c1b61a0eda0f9e1f66854dd35877c9eb6e6a0fef` |
| 15 | `theorem` | [headI_mul_tail_prod_of_ne_nil](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/headi-mul-tail-prod-of-ne-nil.md) | 139 | `result-track:325e783d56267059212b800af811b4c3b5c8b56fe87ac2e56908c12d80b93b05` |
| 16 | `theorem` | [List Basic Namespaced Public](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/list-prod-right.md) | 143 | `result-track:ef0fd565e3b907fc299430b26f63e4ae522715584938ebf061c04e20f2e4c489` |
| 17 | `theorem` | [List Basic Namespaced Public](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/list-prod-left.md) | 153 | `result-track:ec6b38f81e8cfdb2f27d2201941d6b12601914a0fee2c98d6279ae7a6913107f` |
| 18 | `lemma` | [prod_range_succ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-range-succ-source-edition-2.md) | 157 | `result-track:d4dc0615cf5ab5c34d402f0ddf789f582435fa8d188070e1df5c6bbaf559bbfe` |
| 19 | `lemma` | [prod_range_succ'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-range-succ.md) | 165 | `result-track:013b0638b94c39414483b6854094b1567509de1c231bd9d07a2f5bc8b59f0c4b` |
| 20 | `lemma` | [prod_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-eq-one.md) | 170 | `result-track:cbad725b7f35177389038f362999814a80a3fd15cbca52618bb2e27618133e1c` |
| 21 | `lemma` | [exists_mem_ne_one_of_prod_ne_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/exists-mem-ne-one-of-prod-ne-one.md) | 177 | `result-track:b1f097c1801f214dc9ca2cc53b5537d616b5db3f7b0be9a1c29894e043bbc30f` |
| 22 | `lemma` | [prod_erase_of_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-erase-of-comm.md) | 181 | `result-track:b5c54ba0c4786d3021d596ae5785a65e39f6933875e12c8b3cdec683c37e1310` |
| 23 | `lemma` | [prod_map_eq_pow_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-map-eq-pow-single.md) | 193 | `result-track:e5f786fa2c62a3dd2a3e3373e9df66132db6e26b31fb7e5e8545e4e62102815d` |
| 24 | `lemma` | [prod_eq_pow_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-eq-pow-single.md) | 206 | `result-track:2e976977a8df602f08be89483598a163b3073af81d423aa7298f18adb97db48e` |
| 25 | `theorem` | [prod_insertIdx](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-insertidx.md) | 211 | `result-track:93a6b448d8780a617bdb0660c56fe7793ab40ff8ba67307250b118f657825e3b` |
| 26 | `theorem` | [mul_prod_eraseIdx](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/mul-prod-eraseidx.md) | 222 | `result-track:1d96842a675d6df50eaf29d81596cef84f9e7872b6bf8f304bf3e629ed44808b` |
| 27 | `theorem` | [prod_filter_bne_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-filter-bne-one.md) | 229 | `result-track:8c4976b6d48c7dadb7629a6afdf2884cf709c2a90cb98f02213ff3588e05101b` |
| 28 | `theorem` | [CommMonoid.prod_insertIdx](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/commmonoid-prod-insertidx.md) | 239 | `result-track:87df02e9a2851220b3d42cf49ad319b4265294f70327fa3a479bdf5098d3b29d` |
| 29 | `theorem` | [CommMonoid.mul_prod_eraseIdx](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/commmonoid-mul-prod-eraseidx.md) | 243 | `result-track:88bb9d972a0b801a43214359a33b4cecb719557bed6010dd10001dcdb50d137b` |
| 30 | `lemma` | [prod_erase](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-erase.md) | 247 | `result-track:3856bfc732cd89ab1811ed07a06b08920459d5139cdfe0c7c8cf8f447db1d9af` |
| 31 | `lemma` | [prod_map_erase](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-map-erase.md) | 251 | `result-track:2a0d42f8af2746e884b42a190659d7be39c6e57b606cfe6aac18201a866a971b` |
| 32 | `lemma` | [Perm.prod_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/perm-prod-eq.md) | 259 | `result-track:3bd04351c5572fb089875c3b6c860de41b8f7e0374bbf541a8d6559d06b6b517` |
| 33 | `lemma` | [prod_mul_prod_eq_prod_zipWith_mul_prod_drop](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-mul-prod-eq-prod-zipwith-mul-prod-drop.md) | 264 | `result-track:4bf0d81bc5118d01b4357cd57e7448bbbacab154bea3b265cdf429f9aa5df799` |
| 34 | `lemma` | [prod_mul_prod_eq_prod_zipWith_of_length_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-mul-prod-eq-prod-zipwith-of-length-eq.md) | 278 | `result-track:f667f0e08ed81efa16ccb97962895413c2f64c2ecc51c5507bc0399e42dd6060` |
| 35 | `lemma` | [prod_map_ite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-map-ite.md) | 284 | `result-track:ad26fd743ee9d7c21105f2705cf928373521d926804a0c5f1429ee2f51c0465d` |
| 36 | `lemma` | [prod_map_filter_mul_prod_map_filter_not](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-map-filter-mul-prod-map-filter-not.md) | 300 | `result-track:05d02791580a93ca60ea16b96e0d196c3bd8f31722534af62404e35ce0857e85` |
| 37 | `lemma` | [eq_of_prod_take_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/eq-of-prod-take-eq.md) | 309 | `result-track:967f1838ea7530dd19489d931fac2ce1a8edbaaa8ab8fa11124dd1a77c61cfc8` |
| 38 | `theorem` | [prod_inv_reverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-inv-reverse.md) | 322 | `result-track:ae60f32d2b2daf1ced14e374fd842855aafc5df6708714a711ced7d46cd70667` |
| 39 | `theorem` | [prod_reverse_noncomm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-reverse-noncomm.md) | 328 | `result-track:a9a591944407c0d1482b73aefc784a13f9580116c35ecac535935fdc3b6862a0` |
| 40 | `theorem` | [prod_drop_succ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-drop-succ.md) | 334 | `result-track:b5d6c422bdabab00fdb337243e35ea4ba385e9fed8b335185bf499320cb59d2c` |
| 41 | `theorem` | [prod_range_div'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-range-div.md) | 342 | `result-track:008f8bd6dca9d90628d3590957b26ca5561baa96c679f4a8463c4804e81eb856` |
| 42 | `theorem` | [prod_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-inv.md) | 356 | `result-track:25461ea8c6a65dc4e3978e9f8ce6da5ce9b93ed28eebcea5e7f86abd40fad356` |
| 43 | `theorem` | [prod_range_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-range-div-source-edition-2.md) | 363 | `result-track:890154248443322b16e5e77344ebf3a8e873b8691303647b345bab9608012941` |
| 44 | `theorem` | [prod_set'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-set.md) | 370 | `result-track:28150c507553e624229372df49d5e04a8f65a9d0a6fcb422189967bec7be6c31` |
| 45 | `lemma` | [prod_map_ite_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-map-ite-eq.md) | 379 | `result-track:b2ba3e1b769a9b5ca82d7ed7511608eaa9ad8cee0cb8e87301bf502c74fa1c9e` |
| 46 | `theorem` | [sum_const_nat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/sum-const-nat.md) | 395 | `result-track:f7d2e7105aab792429dc2fd92cf2ed897645a6b8195c5dce375ba9e91bbbe496` |
| 47 | `theorem` | [headI_add_tail_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/headi-add-tail-sum.md) | 405 | `result-track:e7bf109c384f261dcb55298f1d71ef3aa7bcf15fb096a14a7dfe44d5018b782b` |
| 48 | `theorem` | [headI_le_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/headi-le-sum.md) | 409 | `result-track:ec5286354a4459a0d95a69817125c73345e49fbee307309223ac2f6a47b035ff` |
| 49 | `theorem` | [tail_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/tail-sum.md) | 413 | `result-track:8a7d1cf1931e1f77f97eae62a83507eb964377cbd8b81c3c5f485338448f2f5c` |
| 50 | `theorem` | [alternatingProd_nil](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/alternatingprod-nil.md) | 423 | `result-track:3f24ae2d37011cbcf08349fd4e620d915192bf10d8fd45ecea50fe6aa2898bfe` |
| 51 | `theorem` | [alternatingProd_singleton](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/alternatingprod-singleton.md) | 427 | `result-track:88e3f5aadb63be4a292d2f5906e8f65c7cd5d9a932266d3df198f72b0ca98e92` |
| 52 | `theorem` | [alternatingProd_cons_cons'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/alternatingprod-cons-cons-source-edition-2.md) | 431 | `result-track:dd0711006d5308253048600c786a4171ebac08e059f7e596cc6f6ca1de159461` |
| 53 | `theorem` | [alternatingProd_cons_cons](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/alternatingprod-cons-cons.md) | 438 | `result-track:04aeeeb0db80f15d4899df9b366b6f6f12ec679ed6aee0015138d55dcae6166e` |
| 54 | `theorem` | [alternatingProd_cons'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/alternatingprod-cons-source-edition-2.md) | 445 | `result-track:a41c64a23012086312c1120a9693d3b7026210678bffede38c69dd5004d5882c` |
| 55 | `theorem` | [alternatingProd_cons](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/alternatingprod-cons.md) | 452 | `result-track:5f916f441e4c23e265285534151bd510acc9194090aaa406342f09334e74022e` |
| 56 | `lemma` | [sum_nat_mod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/sum-nat-mod.md) | 458 | `result-track:26c5c91e8418de14705baa91ec228acd3f4f2b790059646fb5d31bb856bb248e` |
| 57 | `lemma` | [prod_nat_mod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-nat-mod.md) | 464 | `result-track:e6a32d3a045540af8d4c1fe327e407565bb84bafc5129f94381231785b43ceb6` |
| 58 | `lemma` | [sum_int_mod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/sum-int-mod.md) | 470 | `result-track:99a3c68e90a3bb3b1b6997a7763a8ce2aeb932afe178e44c6f76ea8e0fe65c13` |
| 59 | `lemma` | [prod_int_mod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-int-mod.md) | 473 | `result-track:0c2ee7480f66be89c35a1b88211dcdd6eff4ed51685d8e10ca70a4cb31f12e26` |
| 60 | `theorem` | [map_list_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/map-list-prod-source-edition-2.md) | 483 | `result-track:b90e002dd9071eaa857a0797aecaa6171d567cc2e182b96cb142ecf17cf1d1fc` |
| 61 | `theorem` | [map_list_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/map-list-prod.md) | 490 | `result-track:55c8a7a112def55a03f0fe8ad16abb18643aac2dff7212554b11ae3d5c80fefc` |
| 62 | `theorem` | [prod_zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/prod-zpow.md) | 499 | `result-track:d2ad639f7358a2492f4f040c8eba753e7bf7cc50b526b7cf420467a2e3bf8ab7` |
| 63 | `lemma` | [take_sum_flatten](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/take-sum-flatten.md) | 506 | `result-track:4ea27f7591b5823515e22a3386a95c4bf38d6be6aeafd798d7768227b0747e0d` |
| 64 | `lemma` | [drop_sum_flatten](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/drop-sum-flatten.md) | 514 | `result-track:d00afb31e23994d62b5f4ab68b5be3142c52c99ae1d44fa4ab841e792ca5d2b5` |
| 65 | `theorem` | [length_le_sum_of_one_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ListBasicNamespacedPublic.lean/declarations/length-le-sum-of-one-le.md) | 527 | `result-track:9f47f9c2d43ad921018f8045bd5ee5111267b3e693a317f4274fe7ed03797a05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be3a754589a211b45659d9d8fa47b94b62d9fdaf9f7dd35ebd2bc0cfc6aab7e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant9bee12a23641513416ee3d3ed463af60f6208e0ae7504730565f8ecabea0a72e.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant9bee12a23641513416ee3d3ed463af60f6208e0ae7504730565f8ecabea0a72e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
