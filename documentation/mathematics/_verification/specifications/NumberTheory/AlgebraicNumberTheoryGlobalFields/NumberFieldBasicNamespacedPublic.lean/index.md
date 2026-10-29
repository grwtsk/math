# Verification target: Number Field Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8874e33155d70a350e061360fa6f273f1633d8a7",
  "lexical_observation_count": 84,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantd9ecbef191fbf4415280f5edad044c1b1ecd7ad63dd5a4353ecc2baa0172653b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8874e33155d70a350e061360fa6f273f1633d8a7`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantd9ecbef191fbf4415280f5edad044c1b1ecd7ad63dd5a4353ecc2baa0172653b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Basic/Variantd9ecbef191fbf4415280f5edad044c1b1ecd7ad63dd5a4353ecc2baa0172653b.lean.json)

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
| 1 | `class` | [NumberField](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/numberfield-source-edition-2.md) | 53 | `declaration-track:bb7d32a21d5101791b90ae1cfbfe1f3de0e142e6b8c0b7824d6a15919e809c76` |
| 2 | `theorem` | [isAlgebraic](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/isalgebraic.md) | 68 | `result-track:a2e2ae409e0919e9414be9209fad215c00e8ec2caa964e8f739ae368a24413a9` |
| 3 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 71 | `declaration-track:252009fbfc490781d7fc028a62d4054855f2ab5d601c3d148eeb37cb7cc0de06` |
| 4 | `theorem` | [of_module_finite](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/of-module-finite.md) | 75 | `result-track:93dd7654fd312bdac9341be0d718ca34eab2a4dc4e2d270da52702439c7de959` |
| 5 | `instance` | [of_intermediateField](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/of-intermediatefield.md) | 82 | `declaration-track:8589895b1715874f72865374c437ab933edd77c111b307e007b0e8263fc5fd26` |
| 6 | `instance` | [of_subfield](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/of-subfield.md) | 87 | `declaration-track:34d63f8619667ea1836b4500c3f65b156455fd152b3240df7336930e8e68264c` |
| 7 | `theorem` | [of_tower](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/of-tower.md) | 90 | `result-track:7bac27e86eb476b463b66315f983ee8dc9ff7509a94f49e548dda3dcb3001945` |
| 8 | `theorem` | [of_ringEquiv](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/of-ringequiv.md) | 95 | `result-track:b1bfaae6ec84b92648f81e733e1a42065ea133ad75894868198c246f00a68cdc` |
| 9 | `def` | [RingOfIntegers](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/ringofintegers.md) | 112 | `declaration-track:d007f41c5ae75558a4cd3c63acfce5b94279c6994524a18a3962d9b1fb7b3a66` |
| 10 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-26.md) | 120 | `declaration-track:fc7344c3294863f59cc532488466462bc0826013d331cbc78e442edbed377957` |
| 11 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-22.md) | 123 | `declaration-track:daa60df7c4a4fc82fe6507e85a8d7db155860eea1f0373396916af664eb4a28b` |
| 12 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-16.md) | 126 | `declaration-track:a04f011a962c082b2cc0a9298fac0077290a6bed11ec8d7a7e96951a60b74546` |
| 13 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-25.md) | 128 | `declaration-track:fa0646b102c1a0055e47527d04a808dd9bbdea987e5e66debff3c42f29392dcd` |
| 14 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance.md) | 132 | `declaration-track:0a52077a8bb85e5a48139e2aa653b7b62bdc71e1d82f3662908c8d1a06e09a13` |
| 15 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 135 | `declaration-track:7f6de41ecb84ca511a743f8871c931729ca6972a92f07606c2d9dbe821408bb7` |
| 16 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-17.md) | 138 | `declaration-track:aa09ab8d7330b0733a5827d9ea943134c8f86345c8372c59ff02863b5a354eab` |
| 17 | `example` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/example.md) | 142 | `declaration-track:0a7659e3d82e32b628a077be33d4e2b942293465ba6237584c7d3ac7aee0ce3d` |
| 18 | `abbrev` | [val](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/val.md) | 149 | `declaration-track:9459ded349f0e42172fe9b4ef6d59a4ae65914eab97b5bd1ce42d7a4d848457c` |
| 19 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-21.md) | 152 | `declaration-track:ce8f54b7c0e11ef97e30b99b49f39800852ce1f4c73198fa7c5b957b4769a6db` |
| 20 | `lemma` | [coe_eq_algebraMap](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/coe-eq-algebramap.md) | 154 | `result-track:47ac4b799ba857ddd9bc11244a56025ba6988cfa859ca290adb15135a2c71658` |
| 21 | `theorem` | [ext](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/ext.md) | 156 | `result-track:109630c1bc051127959a6932381fa0470414900a196f7babb59f5fa9d7372568` |
| 22 | `theorem` | [eq_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/eq-iff.md) | 160 | `result-track:1e371665693471628920ec3fcf24245d721937af68119e03fcdb38c59e6a3729` |
| 23 | `lemma` | [map_mk](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/map-mk.md) | 163 | `result-track:5e5afb6b272ae60eb7744a555cfd25151dc69b017fb8dbec31a7871081807e14` |
| 24 | `lemma` | [coe_mk](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/coe-mk.md) | 165 | `result-track:f17c1ff447dea473b05bd1f892e83c77287e3f693a6d344f178a3b4b60a99c88` |
| 25 | `lemma` | [mk_eq_mk](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/mk-eq-mk.md) | 167 | `result-track:59e1c5907498ba4ffabf0d79e9c7362158fc264c14b185b4f069537a1f195999` |
| 26 | `lemma` | [mk_one](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/mk-one.md) | 169 | `result-track:b29e911338f3fdfc13e457f4bd56a4c04695e462f08e88a51d8d02565a985983` |
| 27 | `lemma` | [mk_zero](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/mk-zero.md) | 172 | `result-track:ffb19461fea9c1f8a8fac1a1e6fbaadf11eb1a67cce13387091ed186f421a321` |
| 28 | `lemma` | [mk_add_mk](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/mk-add-mk.md) | 175 | `result-track:7b1221708e2b3ce68daa079bd344e506d02fbf4144997daf04c3ef076e915a6e` |
| 29 | `lemma` | [mk_mul_mk](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/mk-mul-mk.md) | 178 | `result-track:61736fa34fcc0689c95d8a7c61f49e57457e9a94454d4575a9a992a12e7810f6` |
| 30 | `lemma` | [mk_sub_mk](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/mk-sub-mk.md) | 181 | `result-track:303a1e8eb12da4746dfdab680e0adaac920cb114e35a465f4d50dc23af89a798` |
| 31 | `lemma` | [neg_mk](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/neg-mk.md) | 184 | `result-track:0fe6639f9f84e673afe32beb1458e58db90880480303c0ddb2210e0d2948aefb` |
| 32 | `def` | [mapRingHom](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/mapringhom.md) | 190 | `declaration-track:52b80e6b27f255ee80136630e98e5b4ff6f19bb64fa9a683957b689f040fe1e6` |
| 33 | `theorem` | [mapRingHom_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/mapringhom-apply.md) | 198 | `result-track:1d5ba79c0562886ab47699a7811e7df8971a5e3a21548ba71910faa302344da9` |
| 34 | `def` | [mapRingEquiv](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/mapringequiv.md) | 203 | `declaration-track:6d33ba9946032bdc213c54e2d48ce68a037974ab2c20b3bf19625d99f645e6a3` |
| 35 | `theorem` | [mapRingEquiv_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/mapringequiv-apply.md) | 209 | `result-track:99e4c3d98266375bc60ab9a713fcffb9f5f45e461cd7f6223fdb37fc1201b265` |
| 36 | `theorem` | [mapRingEquiv_symm_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/mapringequiv-symm-apply.md) | 213 | `result-track:d286ee5c34f2157bc0f1a16db89da8099a0851de381403cd2a76d9463218a9ce` |
| 37 | `instance` | [inst_ringOfIntegersAlgebra](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/inst-ringofintegersalgebra.md) | 220 | `declaration-track:6646ed0d6c46eca55e0b2e6ef9cd34a5bfb038f1750ff3cc1ef5eac4110603ee` |
| 38 | `example` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/example-source-edition-2.md) | 224 | `declaration-track:63c8c5e9dd2a895ab27bbead6aef88ba928aed4510ed28dfc806b4bd4c190b48` |
| 39 | `def` | [mapAlgHom](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/mapalghom.md) | 230 | `declaration-track:5fafde2ef2fb6f188762ef8c97ce4e99b9aac032fa5227c91482bf09ac3c8160` |
| 40 | `def` | [mapAlgEquiv](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/mapalgequiv.md) | 238 | `declaration-track:3a1b5c77b8d0801c97633ffcca4d27403b367c1c9c6b5cc7298e8a94b363dfbb` |
| 41 | `instance` | [inst_isScalarTower](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/inst-isscalartower.md) | 244 | `declaration-track:e50a92a1fbf28f8fb195d9f0734fe2f400fdc0fab6564752b11b4303d3f72dfc` |
| 42 | `lemma` | [coe_injective](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/coe-injective.md) | 255 | `result-track:37c52ae72a8072cc8d8c850d575c5a90600fc5a380adeee7bb45f27077e88d88` |
| 43 | `lemma` | [coe_eq_zero_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/coe-eq-zero-iff.md) | 263 | `result-track:decf7d50737e47a843b1ab51c2ed8847f3f22a770851ce294063b6562bc48c81` |
| 44 | `lemma` | [coe_ne_zero_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/coe-ne-zero-iff.md) | 271 | `result-track:a78b51273706f03e30b0d0c1f11ff505f701a11e95534bc91f03b4614649e26f` |
| 45 | `theorem` | [minpoly_coe](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/minpoly-coe.md) | 274 | `result-track:120553607ff56d189f7f5744c4f9c5ac0fa20cfd548b0b1a6b6cc9f38d099051` |
| 46 | `theorem` | [isIntegral_coe](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/isintegral-coe.md) | 278 | `result-track:cc856e369df003dca32e40667040e854b2fd3a3b993c28f246ab9e3675c937ea` |
| 47 | `theorem` | [isIntegral](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/isintegral.md) | 281 | `result-track:2dfcc8757c6d196b5dc7db411beef371df4ef0f3bb2dd4ab62686dd3e705c598` |
| 48 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 286 | `declaration-track:85e512ed70dc31cc71d983f276a8d702aa36613cef37f9a24912ea723b1b7bf6` |
| 49 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 289 | `declaration-track:4e8752c213b340ef6e69b89f2ed65a4b2d38de538db287e4ab02b900dcf23693` |
| 50 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-24.md) | 292 | `declaration-track:ef384aed91a9e472cb7a375e3d4c71ebf66112413396549b73d1d925fe073094` |
| 51 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-20.md) | 295 | `declaration-track:c2d987380f921e3549fa5a7f0489dd6bde77145d18f49a36466bfcf5a9962094` |
| 52 | `def` | [equiv](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/equiv.md) | 299 | `declaration-track:41ae62bc3081f0b8dfc016af37bf3447f22e57cb44b2044ff1746be2105939b6` |
| 53 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 305 | `declaration-track:2fc2bbf4f962142778ae4b0647719725a076aa28f21a30518843096bb0c46045` |
| 54 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 309 | `declaration-track:1d210f861e8873ffd4035bd1946a5862f8b9706b84408623ff78e4c7fc72ea0e` |
| 55 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 312 | `declaration-track:589c1fb728776e4b93a50b4c10cafb7067841262353d3e21ec10b840708bfdfc` |
| 56 | `theorem` | [not_isField](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/not-isfield.md) | 316 | `result-track:d6492a5c9c16895d8ed0d5cd4060afb4e415a681b36149f94358ff97a7b9a32b` |
| 57 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 322 | `declaration-track:4ab27ed4173a7db350a47c38db0ccb6e876e8d5421c3a0dea3eef3aa8d16c31f` |
| 58 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-23.md) | 325 | `declaration-track:dc9d6ef6e1b045797a11667469fda80d74fc331be5852d9dd22395c853e343f3` |
| 59 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-18.md) | 328 | `declaration-track:ab534e69590bd78c9312b29b0c553fd41ba73874a7fefbf14f30c80f87a10f55` |
| 60 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 331 | `declaration-track:3d7e951657823fb7959ea61b8bf199f843679ae2bf98172c2d2cbd341ce149e6` |
| 61 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 333 | `declaration-track:27101024913106f5f31c20340ec0398cfcc93f48fa724a99f62f5d1e16138f22` |
| 62 | `def` | [basis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/basis.md) | 337 | `declaration-track:90b211c1ec8920369f749a694ae74a68ed3106ab90a3261c2a092d45363c60cf` |
| 63 | `def` | [restrict](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/restrict.md) | 344 | `declaration-track:6bd6a8ed2b2b44040d65a77dbfddacb39608eac787da505a402287799fc6bc70` |
| 64 | `def` | [restrict_addMonoidHom](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/restrict-addmonoidhom.md) | 349 | `declaration-track:1ab1453adf377e3813dafa84671d4bdef1999eee401173605dc7cdfbbeefc330` |
| 65 | `def` | [restrict_monoidHom](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/restrict-monoidhom.md) | 357 | `declaration-track:448d4ce011e2644776a2a68b8225cc0600d1eb87c150cb392cd5edfc2cbbcc07` |
| 66 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 366 | `declaration-track:15217f5315c2f0e88874b73305bf694e843bb4e51217ffe92e5e21f2a0f82449` |
| 67 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 369 | `declaration-track:894db1bc3f626fd25103f436d223d3b95620585cd11f7ffcb3dd13552536afca` |
| 68 | `def` | [algEquiv](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/algequiv.md) | 373 | `declaration-track:0e368b93281e83f99a75376f58013b6c22830d847a96c22f55570157b3914bad` |
| 69 | `instance` | [extension_algebra_isIntegral](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/extension-algebra-isintegral.md) | 378 | `declaration-track:55fb6cbbeb933360eac22b39ad5c7a4688aeb94bdf0f850fc4af028a39c58146` |
| 70 | `instance` | [extension_isNoetherian](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/extension-isnoetherian.md) | 382 | `declaration-track:957a84e3d7bf9db9761a22681f0b276ab5ba2e9b09c1b2542d9a3c95a77c7e92` |
| 71 | `theorem` | [ker_algebraMap_eq_bot](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/ker-algebramap-eq-bot.md) | 386 | `result-track:10889097192419fbd2c4581932ebc91b4405e928b9f6fe6ee61ce4366beb9333` |
| 72 | `theorem` | [algebraMap.injective](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/algebramap-injective.md) | 393 | `result-track:21d869ddb667680f34394b5af4564b92231ee39188b26d7e4a2e042e592bae28` |
| 73 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 396 | `declaration-track:7bc857c1caae5e33d5581027efc435bdd3dbe581e290b5880a5afdddcf8f74f6` |
| 74 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-19.md) | 399 | `declaration-track:b8b64acc936e38a5f2487c0b6ccb5a11250af885a246e731549572d32c35f28a` |
| 75 | `def` | [integralBasis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/integralbasis.md) | 408 | `declaration-track:ab9185140e6e26964faa564861e8c7790a7a837d1fa05ba2074aae04cdb37eca` |
| 76 | `theorem` | [integralBasis_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/integralbasis-apply.md) | 412 | `result-track:1c80be7ef84f53df7af0721846da3854fb39c2f2fb6f4356d4c8a35e81a93ce4` |
| 77 | `theorem` | [integralBasis_repr_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/integralbasis-repr-apply.md) | 417 | `result-track:040b564a0eb890aa3b03638a4dcb824c55217494c0cc1a046ba0b38b1cb5d29b` |
| 78 | `theorem` | [mem_span_integralBasis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/mem-span-integralbasis.md) | 422 | `result-track:d094b554afa07e7b1e6a5b1606ce28e4b76d73aa66880f3e6bd0fff4e647c32e` |
| 79 | `theorem` | [RingOfIntegers.rank](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/ringofintegers-rank.md) | 426 | `result-track:53bc70436fff9db41484f3306d17f4720b38e358241371ff955c4d3448a4082f` |
| 80 | `instance` | [numberField](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/numberfield.md) | 435 | `declaration-track:b8c07969dd58387f564e9e870d304332ef52bada03899dbe51d0185e0b1a6264` |
| 81 | `def` | [ringOfIntegersEquiv](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/ringofintegersequiv.md) | 438 | `declaration-track:c7d98a1cc0ecb2926b373bb434335b3ff0e27bdf62c427d1ccb9864443f60965` |
| 82 | `theorem` | [ringOfIntegersEquiv_apply_coe](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/ringofintegersequiv-apply-coe.md) | 442 | `result-track:6db47f9ba919cd4033f1a294ee81840cb93d6af4fade619435f21fd667d2dcfc` |
| 83 | `theorem` | [ringOfIntegersEquiv_symm_apply_coe](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/ringofintegersequiv-symm-apply-coe.md) | 447 | `result-track:2b2ee76a3652aa046e658bb4aaf78a836ea6be891aceabe6e2a4b3e80e2d99b6` |
| 84 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 457 | `declaration-track:0ee53690cb3ef8d792739438676bef9607afc7e13e22e2c92271b0c7a1449085` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ffad7219f7ff685ed213569afa49e548fbfc7e0857dccbeb76d92af41ac4f92a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantd9ecbef191fbf4415280f5edad044c1b1ecd7ad63dd5a4353ecc2baa0172653b.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/Basic/Variantd9ecbef191fbf4415280f5edad044c1b1ecd7ad63dd5a4353ecc2baa0172653b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
