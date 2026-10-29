# Verification target: Bifibrant Object Homotopy Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2a2104c2103d2dfd3a95cbb57def638509921c5",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Varianted009a60acf77c31d4d92c5928e558602121a682007bbc0b591df7b121830c7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2a2104c2103d2dfd3a95cbb57def638509921c5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Varianted009a60acf77c31d4d92c5928e558602121a682007bbc0b591df7b121830c7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Varianted009a60acf77c31d4d92c5928e558602121a682007bbc0b591df7b121830c7f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [homRel](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/homrel.md) | 41 | `declaration-track:70ef9d732175b2677845fde3e0439683f5f00d1d2bc1adecd2a43e20c2d9e7df` |
| 2 | `lemma` | [homRel_iff_rightHomotopyRel](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/homrel-iff-righthomotopyrel.md) | 44 | `result-track:09e36608b98bd53c340a5492dbe8436e32aa7602effcd5cd9fdf58216a225732` |
| 3 | `lemma` | [homRel_iff_leftHomotopyRel](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/homrel-iff-lefthomotopyrel.md) | 47 | `result-track:8518807a5881e45677d16b0dce2f3b5252f291d267c4c077865f5eaf8ea25c05` |
| 4 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-21.md) | 51 | `declaration-track:c1f6f5ffb602528e703b82c1d73cefe69fc65ae0b112d74348d0c5c71c493c2d` |
| 5 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-25.md) | 54 | `declaration-track:e9a7cb91cb2fd971297b6d13f0139b6c3795dd0f89f57f84e22674bf78943572` |
| 6 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-8.md) | 57 | `declaration-track:4b1af378fb824a14dec7ca8aa5451cef403dc3e6367d4537557cef6335328268` |
| 7 | `abbrev` | [HoCat](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/hocat.md) | 65 | `declaration-track:0181686296ed0580f3b0125f93ec2408a627771e5ffe321de6b6b1f63c9e7e30` |
| 8 | `def` | [toHoCat](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/tohocat.md) | 70 | `declaration-track:b031b38ba14f9ad86e83852aa8b42d4cab802d5681eefce1cc1361758f1bfaac` |
| 9 | `lemma` | [toHoCat_obj_surjective](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/tohocat-obj-surjective.md) | 72 | `result-track:e79c078d0c1d7eb1fa5686901aef13ca519aecbffeb9a5882578232474d37953` |
| 10 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-26.md) | 75 | `declaration-track:fcf1e014686e5e7053630dea5037252e4f8285958ce33a1c6d12087e83701d9e` |
| 11 | `lemma` | [toHoCat_map_eq](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/tohocat-map-eq.md) | 77 | `result-track:b7781d53fc16333281ec627c9b8605fc317e342a0edfa0830dcb5b7d114d6d06` |
| 12 | `lemma` | [toHoCat_map_eq_iff](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/tohocat-map-eq-iff.md) | 82 | `result-track:014ed7c12b6e9e708d033c2e75b191a3767c873e7ebe5d43dec6cf8c71d55429` |
| 13 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-5.md) | 86 | `declaration-track:4241d6446046d5f32e65ca93629321a5486369f4181474b29e982713ae0477de` |
| 14 | `lemma` | [inverts_iff_factors](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/inverts-iff-factors.md) | 94 | `result-track:03cfb60ebcd875c7e23c8f80515f17bd4e6106f50586d77099e18ff68614480c` |
| 15 | `def` | [strictUniversalPropertyFixedTargetToHoCat](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/strictuniversalpropertyfixedtargettohocat.md) | 119 | `declaration-track:6fa38bcd47fcd3ac62e290f7a2e81014e470c1339b0f87f92cb419a5b6510411` |
| 16 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-20.md) | 133 | `declaration-track:bd5e5786cb03d58173421640a5602c62537c4f33f3f0d08f1f6c3dcbe1708efd` |
| 17 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-7.md) | 137 | `declaration-track:485849f4d167ae8fafee205a8aa194ff09c2c33ddf622fc1af02adedc84422d6` |
| 18 | `def` | [HoCat.homEquivRight](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/hocat-homequivright.md) | 147 | `declaration-track:ba4cc76777230f0b9c2f44dcb038f1e7eca41bb35e617efdb96d8f27d13f2a8f` |
| 19 | `lemma` | [HoCat.homEquivRight_apply](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/hocat-homequivright-apply.md) | 156 | `result-track:7f18402e5b94ca33882c926e29b275ce59d6110b3fcf65873d36e719f4deb741` |
| 20 | `lemma` | [HoCat.homEquivRight_symm_apply](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/hocat-homequivright-symm-apply.md) | 160 | `result-track:81930c83954f3d833092162cd7ae778a64755b03590276f5b44a33cf5b240a36` |
| 21 | `def` | [HoCat.homEquivLeft](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/hocat-homequivleft.md) | 165 | `declaration-track:b504c30b0e18ec62f49a942490c6a956486f15142f4430cce98785223d28e8da` |
| 22 | `lemma` | [HoCat.homEquivLeft_apply](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/hocat-homequivleft-apply.md) | 170 | `result-track:8041c2c40e8eee3bd65d4c09f6042c0198d80bc3525f1f1c7f41576f6daca441` |
| 23 | `lemma` | [HoCat.homEquivLeft_symm_apply](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/hocat-homequivleft-symm-apply.md) | 175 | `result-track:0175669823932167fb80bee2c1349eae5298d58ecfe7cd032d40223ba70bed2e` |
| 24 | `def` | [HoCat.ιFibrantObject](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/hocat-fibrantobject.md) | 182 | `declaration-track:e509f13289fcffbc0967faa56f0861daa4048c9f861bc949495187bb09e9d119` |
| 25 | `lemma` | [HoCat.ιFibrantObject_obj](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/hocat-fibrantobject-obj.md) | 189 | `result-track:30a451f402283ed6ac4680f3efadd0785b9d8bd56154284873dbb1c2ea57f9b1` |
| 26 | `lemma` | [HoCat.ιFibrantObject_map_toHoCat_map](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/hocat-fibrantobject-map-tohocat-map.md) | 195 | `result-track:b33eb92087179e3993cc87c8539fc39ad88335a6c5b452837e787412864ee0e2` |
| 27 | `def` | [toHoCatCompιFibrantObject](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/tohocatcomp-fibrantobject.md) | 202 | `declaration-track:3cb4b38ae8d7d9a77a5e1b2242e0fdccae4862ca8eca3d1fcbacf3c7fe970742` |
| 28 | `def` | [HoCat.ιCofibrantObject](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/hocat-cofibrantobject.md) | 209 | `declaration-track:7d2b0bb27f7f15caa398fdf3db3432a18d3a529b3b95edab118a2aeb2cd92c53` |
| 29 | `lemma` | [HoCat.ιCofibrantObject_obj](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/hocat-cofibrantobject-obj.md) | 215 | `result-track:d223e3868514313f57acfa6ec7b30387959efe8c43bf8e668b4d88e2bee84e83` |
| 30 | `lemma` | [HoCat.ιCofibrantObject_map_toHoCat_map](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/hocat-cofibrantobject-map-tohocat-map.md) | 221 | `result-track:a8e497e9cdac23961df546d3a4fa4706d991f40e979a08db4ee90ebfa4d61765` |
| 31 | `def` | [toHoCatCompιCofibrantObject](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/tohocatcomp-cofibrantobject.md) | 229 | `declaration-track:dd20baebef71ea44cb1d1afe61a6a07fef8829c79726499067b1f729ab6d5c6c` |
| 32 | `lemma` | [exists_bifibrant](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/exists-bifibrant.md) | 237 | `result-track:3b6159f9f4cf721db943210f5d5a59aeb46798f9856a8242381ffaf2f1c2508e` |
| 33 | `def` | [bifibrantResolutionObj](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/bifibrantresolutionobj.md) | 250 | `declaration-track:23fa2683fe2bfe77f292aceb5110c5929f782017f4c1be57df3527daf26db2c4` |
| 34 | `def` | [iBifibrantResolutionObj](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/ibifibrantresolutionobj.md) | 256 | `declaration-track:66c3762ea941394d88cbf316c98cb93354514e050047f32d6f03a819c3c525f4` |
| 35 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-6.md) | 260 | `declaration-track:4341e8c11b4ee18d61e07fe52b42f298838f59f9c7f6e4259024db2f1058586a` |
| 36 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-24.md) | 264 | `declaration-track:e790d0deb4b07cc5cefb9a08e8768b80a850c1fcbd43d0134501f1a634e0b1ab` |
| 37 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-16.md) | 268 | `declaration-track:a36ae458a4cc7f1e9b41fb4e585a4e1f84af7603b569893a7700db9beadaa840` |
| 38 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-3.md) | 273 | `declaration-track:31b1b44a10580b1a189214763c07b2116818df427649d62079cff656c786677a` |
| 39 | `lemma` | [exists_bifibrant_map](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/exists-bifibrant-map.md) | 277 | `result-track:858d3e633560c1f05f2359169af5dfa3364ed6263755604744bd1ee793407027` |
| 40 | `def` | [bifibrantResolutionMap](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/bifibrantresolutionmap.md) | 287 | `declaration-track:14ad896501af4871b98d85931c7d79412b373352dc626ac708e46b35066abc92` |
| 41 | `lemma` | [bifibrantResolutionMap_fac](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/bifibrantresolutionmap-fac.md) | 295 | `result-track:c89bf14ab2f4f08902415c2c34457215b8ae44b43b01f8440ec58aa48e8c6e4c` |
| 42 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-10.md) | 300 | `declaration-track:5a0f2235a6afd53d39afd40c55c5f57b07bb04566eb4d2a1b3d77677a88e0296` |
| 43 | `lemma` | [bifibrantResolutionMap_fac'](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/bifibrantresolutionmap-fac-source-edition-2.md) | 312 | `result-track:dd164381908663912aa660320f5fba15e94e8dceb18a89785e18d737d3669939` |
| 44 | `lemma` | [bifibrantResolutionObj_hom_ext](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/bifibrantresolutionobj-hom-ext.md) | 318 | `result-track:270f674655efd1219eb30dbe1c7946bef5052cc02a61d9a067615a5065e8da3e` |
| 45 | `def` | [HoCat.bifibrantResolution'](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/hocat-bifibrantresolution-source-edition-2.md) | 344 | `declaration-track:b41d422ba2b1befa2ec83240c3117680f890e81dc768c63627daeb1f32016d78` |
| 46 | `def` | [HoCat.bifibrantResolution](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/hocat-bifibrantresolution.md) | 354 | `declaration-track:4da31aa5bb59c9ba860f849505c5c4199a5d6bfda1ff15e657f7f64d3433a6ed` |
| 47 | `lemma` | [HoCat.bifibrantResolution_obj](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/hocat-bifibrantresolution-obj.md) | 362 | `result-track:8106c26939d54f8196a3368afb8bf73591baaf3edcf986a9b277a77e966dd74d` |
| 48 | `lemma` | [HoCat.bifibrantResolution_map](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/hocat-bifibrantresolution-map.md) | 367 | `result-track:17573ac749c3213d90f81fa98d5d4f0a346e153fc255b1a8851a44d008b99f76` |
| 49 | `def` | [HoCat.adjUnit](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/hocat-adjunit.md) | 372 | `declaration-track:ed99a5112cc3313f489644b9063cd861059ecbbac7a842607ed92f39de80bac7` |
| 50 | `lemma` | [HoCat.adjUnit_app](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/hocat-adjunit-app.md) | 378 | `result-track:15a5f1b7aa81b2bca7059b1c68c7104948043dc594dfaff2618133539f911892` |
| 51 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-11.md) | 382 | `declaration-track:5aaf54d6257e0351a75ff35808071508245a19721ba534969ecd8de62bf20702` |
| 52 | `def` | [HoCat.adjCounit'](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/hocat-adjcounit.md) | 389 | `declaration-track:f53bc314fba9fb62c29c3b4496111d28157075e8b45fe6dcd6ec4b4b769d93bc` |
| 53 | `lemma` | [HoCat.adjCounit'_app](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/hocat-adjcounit-app.md) | 403 | `result-track:f716a582138412c1c53bbcfda274896bc1d9fee6cd2b65465ad4f63da1c96843` |
| 54 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-15.md) | 408 | `declaration-track:9064b0b9cd050a048e569c8d0977a138a0e96f5ecdec58cdbda7714b04c3d5ac` |
| 55 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance.md) | 417 | `declaration-track:16ec1bc88b9c02cf7c10f9f39e8babc5e797c9d0bc7047a4f4843aab6edecf8b` |
| 56 | `def` | [HoCat.adjCounitIso](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/hocat-adjcounitiso.md) | 420 | `declaration-track:2d180197b9790877fc940085e048fbf80a9792c1b4da5ccadf5caa119f260cf1` |
| 57 | `lemma` | [HoCat.adjCounitIso_inv_app](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/hocat-adjcounitiso-inv-app.md) | 424 | `result-track:4030d59ae32b8e8c5bf5358c6731288d59f21d4a64f9e53e3df2bb2f8a3d307a` |
| 58 | `def` | [HoCat.adj](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/hocat-adj.md) | 430 | `declaration-track:3ba28e34f4bb24c2e8125792c3344ed53d09d94f6e099d4ccf85897269b6af0d` |
| 59 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-17.md) | 447 | `declaration-track:a9e3860160c1083ad0916fae7cabf126b68acc44929bd13a5ac9cb11631694f7` |
| 60 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-22.md) | 451 | `declaration-track:c25d2508d5db42b70892125ee01306d3ecb753f945310e55f4493ab15cc20314` |
| 61 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-13.md) | 454 | `declaration-track:8213427fdd3a2c8d51e902c546368f7bb98d7270eb741fd02ae44fdeb02a20c7` |
| 62 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-18.md) | 457 | `declaration-track:af1b7b7bbfdd51b08ec42242741096ad631db6799cb684006d38ba9cd1428216` |
| 63 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-9.md) | 462 | `declaration-track:5a0340a457e1713fe932f3a843bfe089b80c0a059f46f416c77a8507eed0aab1` |
| 64 | `def` | [localizerMorphism](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/localizermorphism.md) | 483 | `declaration-track:e4d8a396fad335a7edf4662916c0d1933625cad66ada041c43858cef960a1f95` |
| 65 | `def` | [ιCofibrantObjectLocalizerMorphism](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/cofibrantobjectlocalizermorphism.md) | 491 | `declaration-track:61c95a6484de34cd0c1f74656b7ce0ced1933f507b441d33ad8e7a9006bf6334` |
| 66 | `def` | [ιFibrantObjectLocalizerMorphism](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/fibrantobjectlocalizermorphism.md) | 500 | `declaration-track:8604ef953179f3eb6c16a1430812dfa0c04cd6344b36df313465a4cab9213700` |
| 67 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-12.md) | 508 | `declaration-track:7f63240284e2460f215cae4020114018e6ae2ff20cb9fda4360ff34b18803813` |
| 68 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-4.md) | 518 | `declaration-track:3f64d638f08fcccdfd6105153105d6c1a6504b0ac6aa7597e4e2132cd4469c68` |
| 69 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-19.md) | 523 | `declaration-track:afd9ac1a4b7e28c6b4259e5239555ee7e7a39a2998fb6833b75c8db7ef64ab66` |
| 70 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-2.md) | 527 | `declaration-track:17df9a2c8206a6d6c66fa2d8316e4cf0cd28bf16ba3cf6f77c3f0b866ab340be` |
| 71 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-23.md) | 532 | `declaration-track:c8c2b1fd5a2da27a997e44eff4a53c1a690c98bec5cb841352b7648fda5ba809` |
| 72 | `instance` | [(anonymous)](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-14.md) | 539 | `declaration-track:833c18b1c779d6fb2d40017a3b39ae69e1f87453e405d2546d9104495c89467a` |
| 73 | `lemma` | [locallySmall_of_isLocalization](../../../../AlgebraicTopology/BifibrantObjectHomotopyPublic.lean/declarations/locallysmall-of-islocalization.md) | 546 | `result-track:b9e0fd2e74532e6fe6dc2b6228cf83d0c8b1c4cbe841edee358baa517cbbf8cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=138d03796a390747cc42683fbe1fa86552760ff9ca2b9a2dc5840469ba68d0bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Varianted009a60acf77c31d4d92c5928e558602121a682007bbc0b591df7b121830c7f.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Varianted009a60acf77c31d4d92c5928e558602121a682007bbc0b591df7b121830c7f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
