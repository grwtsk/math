# Verification target: Zero Morphisms Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9a7d3ce6cbf78c4c8daf63e7c5a4ccc1ce211cb",
  "lexical_observation_count": 93,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant705fb6684fae3fe933520548480970e21153fdd50248ba4e667c8ede520299c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9a7d3ce6cbf78c4c8daf63e7c5a4ccc1ce211cb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant705fb6684fae3fe933520548480970e21153fdd50248ba4e667c8ede520299c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant705fb6684fae3fe933520548480970e21153fdd50248ba4e667c8ede520299c1.lean.json)

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
| 1 | `class` | [HasZeroMorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/haszeromorphisms.md) | 48 | `declaration-track:6c4b6300c6c01befc1e6cd27b97eb3dff72ec9309f0d17e86c1553852c538164` |
| 2 | `theorem` | [comp_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/comp-zero.md) | 65 | `result-track:1435336654b4356715cd1dd374d140a7423fad43c998924d55788807b5fbdcd4` |
| 3 | `instance` | [hasZeroMorphismsPEmpty](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/haszeromorphismspempty.md) | 69 | `declaration-track:339db087307af2add8553a5055b36a01c6f19fad516483653dab29e2dd5fb349` |
| 4 | `instance` | [hasZeroMorphismsPUnit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/haszeromorphismspunit.md) | 72 | `declaration-track:41a3065605929bf116aaffb1b30a125489f2adb67111efd5153a2b7b4acd4860` |
| 5 | `theorem` | [ext_aux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/ext-aux.md) | 78 | `result-track:9f5816f7046e57b72d8a8473b7592048be2a83529156ad3238eb1a82c57ac99a` |
| 6 | `theorem` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/ext.md) | 95 | `result-track:8541e727155c0be2621cafa532feb3fefe8f90afa1772aa5df9b82463d358af0` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/instance-source-edition-7.md) | 104 | `declaration-track:b8e9c58460d17c0cd713e848a06457003451f82afcaf49938cbb38f6d6dbea2a` |
| 8 | `instance` | [hasZeroMorphismsOpposite](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/haszeromorphismsopposite.md) | 111 | `declaration-track:94a5d3a426d9138edea83dbbdad97fd79e8ff210da288a63520d613343249f22` |
| 9 | `lemma` | [op_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/op-zero.md) | 121 | `result-track:c9b899fbaf66d9f6a55d3f83274452d854548bfe2c6a673dfcb7da46a70124bd` |
| 10 | `lemma` | [unop_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/unop-zero.md) | 123 | `result-track:e4b8161e3f658a90ccc9655beefe56fa32ce1017387f717929a9fc96fc921f8e` |
| 11 | `theorem` | [zero_of_epi_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/zero-of-epi-comp.md) | 126 | `result-track:c0c16d7ca900a520078f276ff2eb4d0ad15233e2d0103124fb2db8dfaa264b72` |
| 12 | `lemma` | [comp_eq_zero_iff_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/comp-eq-zero-iff-of-epi.md) | 131 | `result-track:dfaa187a26002770ebec26acbdf4e4b441f993cc9041368390c762d91d4bb427` |
| 13 | `theorem` | [eq_zero_of_image_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/eq-zero-of-image-eq-zero.md) | 135 | `result-track:cf9591173c4b3dc2801a35af0c7f9d63c97a72ff7850fb6a8323c3a47429d1f3` |
| 14 | `theorem` | [nonzero_image_of_nonzero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/nonzero-image-of-nonzero.md) | 138 | `result-track:56f17ecb9592dc4c6598b37d560528b82d90df4d4f437a7fda6c718c563ddd12` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/instance-source-edition-2.md) | 147 | `declaration-track:251cec7350f8a5d2b9c96f8d42bd9821908475e8590b5508ef3c450e2e912d79` |
| 16 | `theorem` | [zero_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/zero-app.md) | 155 | `result-track:fd235b7440db4e76222d093121c559e6126ac7b000b8487d230a46f86573f637` |
| 17 | `theorem` | [eq_zero_of_src](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/eq-zero-of-src.md) | 164 | `result-track:e89d0b5cef680df3580c2b330fc1eab217ba2af70f73ef7212ff16b6ab8ffedb` |
| 18 | `theorem` | [iff_id_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/iff-id-eq-zero.md) | 167 | `result-track:b6d19ec95476606ae975a427393558b209126e62f739a7e5fce2e8a886025eb7` |
| 19 | `theorem` | [of_epi_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/of-epi-zero.md) | 175 | `result-track:10dde6e3811ce45ff18cab71202244a3aa45acc34b46d3141cbb9d34b4f1ab25` |
| 20 | `theorem` | [of_epi_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/of-epi-eq-zero.md) | 179 | `result-track:411aeaa40c9edc1bcbd3f35f8ae6a7ad01eecf286e1bc58d217bd9b0963ab67f` |
| 21 | `theorem` | [iff_isSplitEpi_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/iff-issplitepi-eq-zero.md) | 184 | `result-track:5663e322c5ffa9333cb036d928bc4912e24cd175db0c6f0a59f32e59b84399eb` |
| 22 | `theorem` | [of_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/of-epi.md) | 194 | `result-track:66bc3f7da5d5d1521583535c9d0629d5b110bdca9ebd299beaf1306b5105bb3c` |
| 23 | `def` | [IsZero.hasZeroMorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/iszero-haszeromorphisms.md) | 209 | `declaration-track:97c2a40c4d2469efbb29629c1cbc45cc4a1727e5d08fd3edde49988caa7a0ec8` |
| 24 | `def` | [zeroMorphismsOfZeroObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/zeromorphismsofzeroobject.md) | 237 | `declaration-track:c7fd61cd763276e384dd5f979a89a98055aa8bf916570eb7b8f496cafbbc16f2` |
| 25 | `theorem` | [zeroIsoIsInitial_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/zeroisoisinitial-hom.md) | 255 | `result-track:c349f49eea4f3b9d723793181c444f034459e39b451d3a658dd56c7db92a157a` |
| 26 | `theorem` | [zeroIsoIsInitial_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/zeroisoisinitial-inv.md) | 258 | `result-track:89633e4d197e5a477c53ad017d2ec0709672c42735bb5680f73b94714877441f` |
| 27 | `theorem` | [zeroIsoInitial_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/zeroisoinitial-hom.md) | 261 | `result-track:7e3f3c38b3a93e7a9572295449d07d952607d2db94607552a6d801544986468f` |
| 28 | `theorem` | [zeroIsoInitial_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/zeroisoinitial-inv.md) | 264 | `result-track:161f64d54888525a052dfd4c1b2efe129b5836a206de7f977ab01e416c7758da` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/instance-source-edition-8.md) | 270 | `declaration-track:cfe78752168a6380f44146556fb332fe4380591c52079434dc2d4e20eda032a7` |
| 30 | `theorem` | [IsZero.map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/iszero-map.md) | 278 | `result-track:222a88cacd90e786b8c3951cb299bfed7cec7d97783422aa81d6ad65e8097443` |
| 31 | `theorem` | [_root_.CategoryTheory.Functor.zero_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/root-categorytheory-functor-zero-obj.md) | 283 | `result-track:93d7e7f7da4d988c274dbcf46a19e1fa3e3b4b44d0feccca89ee7631e6dfce37` |
| 32 | `theorem` | [_root_.CategoryTheory.zero_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/root-categorytheory-zero-map.md) | 288 | `result-track:a7ce334ec7fb6714593b0ea433d49c026cf6381d42900912611a58b2041bc5fe` |
| 33 | `theorem` | [id_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/id-zero.md) | 299 | `result-track:aa8b4726b617ecf5a285f7c2960da4fbf38148592bd5c5ebcbd73e20d61c82fa` |
| 34 | `theorem` | [zero_of_to_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/zero-of-to-zero.md) | 304 | `result-track:c350e41a3832067d93ffd77b311f6204df8a37ad9ebd113f82fc93246ecb1ff3` |
| 35 | `theorem` | [zero_of_target_iso_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/zero-of-target-iso-zero.md) | 307 | `result-track:2fc6f7036fdb07f590e77b5a4f33aa20a4cb0a663717606a2f45b0cf1ed77b25` |
| 36 | `theorem` | [zero_of_source_iso_zero'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/zero-of-source-iso-zero.md) | 312 | `result-track:ff92ccf66f383779c07991d5f4e7a44f33bec4a52684ba7db4bb388819b70c6b` |
| 37 | `theorem` | [epi_of_target_iso_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/epi-of-target-iso-zero.md) | 316 | `result-track:3d67511c36d17f9d7ba70239df109a91811f95ff10a1d768a0ed49c789dbe1d9` |
| 38 | `def` | [idZeroEquivIsoZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/idzeroequivisozero.md) | 324 | `declaration-track:3e42b59a6bd1ba45212fa84751690d2697fb12b4aa470d5f2084f122f67441a8` |
| 39 | `def` | [isoZeroOfEpiZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/isozeroofepizero.md) | 336 | `declaration-track:b7a96bd609dddc73bd815f7d53b1ace88c98ce07817dbb78c3e21879b9e1bad0` |
| 40 | `def` | [isoZeroOfEpiEqZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/isozeroofepieqzero.md) | 343 | `declaration-track:d5bc86eda427ece336bf9a273a1f12571d0b26e578ee72e03ca336c30740a26f` |
| 41 | `def` | [isoOfIsIsomorphicZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/isoofisisomorphiczero.md) | 349 | `declaration-track:6f6ce054fc7b1c32a7bcbc405528ccb13adc723216bfcaefdd5f93bf4fa0cc1a` |
| 42 | `def` | [isIsoZeroEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/isisozeroequiv.md) | 369 | `declaration-track:4cf4285c75e9c8ba4e29948376f9ed52d78edb86859704184fb6567b82bfb05c` |
| 43 | `def` | [isIsoZeroSelfEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/isisozeroselfequiv.md) | 382 | `declaration-track:c349ae713044f18973b82444ea6098ce2682f9d2756d2a56223a2ea721c2fd21` |
| 44 | `def` | [isIsoZeroEquivIsoZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/isisozeroequivisozero.md) | 391 | `declaration-track:520f88a0292ce88792ddf36596ed405f57cd610d5abca624cc5aa6754847cbb5` |
| 45 | `lemma` | [isIsoZero_iff_source_target_isZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/isisozero-iff-source-target-iszero.md) | 410 | `result-track:06717c6e1b14df66e591672d5c23922ff42bfa10aa16c70b622ae9a447ddb594` |
| 46 | `theorem` | [isIso_of_source_target_iso_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/isiso-of-source-target-iso-zero.md) | 418 | `result-track:2eea6c2f7c0a07d086818575d983af4c6e288759b5f3e50e7be6563b1dc6cd98` |
| 47 | `def` | [isIsoZeroSelfEquivIsoZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/isisozeroselfequivisozero.md) | 426 | `declaration-track:a07bd8b8a7ea5a854e465dc0367799f2dc1ffce5790ff6f44021f504ef1229df` |
| 48 | `theorem` | [hasZeroObject_of_hasInitial_object](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/haszeroobject-of-hasinitial-object.md) | 433 | `result-track:59274aa79d11a431490873b184f274870117cc6bff0a08953fc829a3ee931b3d` |
| 49 | `theorem` | [image_ι_comp_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/image-comp-eq-zero.md) | 445 | `result-track:4452c114cac944da392827e8ed054c3c215b3f6fdde99eb36fbd9ff572e325df` |
| 50 | `theorem` | [comp_factorThruImage_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/comp-factorthruimage-eq-zero.md) | 449 | `result-track:92fa68ff3130d5384d2421c8ffb033770f0c17d22729b9056c7f1c0d89a6f010` |
| 51 | `def` | [monoFactorisationZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/monofactorisationzero.md) | 460 | `declaration-track:e5cc0efe80635d1b1ee9f0a793a178e2dcd38023b460aa0b48204bcebef0ce72` |
| 52 | `def` | [imageFactorisationZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/imagefactorisationzero.md) | 467 | `declaration-track:6388659e75aecc964d688857abbcfcb16982402b6bdf180c2e0751a79202be33` |
| 53 | `instance` | [hasImage_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/hasimage-zero.md) | 471 | `declaration-track:f88ec6b8199d29396bed1d046b25a7e7184c9e8ccf906b1384e2312f7f943614` |
| 54 | `def` | [imageZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/imagezero.md) | 475 | `declaration-track:bc5d395fe18fcc2392fc35d4559774007689fb948c101e45076d83a564f5c3fc` |
| 55 | `def` | [imageZero'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/imagezero-source-edition-2.md) | 479 | `declaration-track:d426b8a7547e3676d3c3c40f5e4afa611c0c4ff5ee05410bed66ec33b72cd5a0` |
| 56 | `theorem` | [image.ι_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/image-zero.md) | 483 | `result-track:104640bfa9e2889d5d13c06cc92529d8a3ac59d0fbde4d1b34932fe89670e7fe` |
| 57 | `theorem` | [image.ι_zero'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/image-zero-source-edition-2.md) | 492 | `result-track:8c54d0d20977c2ff26899a30dd702670b8057d65724f1e3a69a478ed2065f5d5` |
| 58 | `instance` | [isSplitEpi_pi_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/issplitepi-pi.md) | 502 | `declaration-track:c8d054528c3eba31f0522c9c7e274ba9a6dd3624cac2591193ac42fbaea6b4e7` |
| 59 | `instance` | [isSplitMono_coprod_inl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/issplitmono-coprod-inl.md) | 507 | `declaration-track:cf577ed89ca95beabc9d6a43056b9fad47f8c17ca40a70e483a87e2cec7d15e5` |
| 60 | `instance` | [isSplitMono_coprod_inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/issplitmono-coprod-inr.md) | 512 | `declaration-track:013d5e64b70c52504862d2d83b4beff542562aa4fa43c9e663ef68d6cd051871` |
| 61 | `instance` | [isSplitEpi_prod_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/issplitepi-prod-fst.md) | 517 | `declaration-track:76b88750b4a30ef0f410ee2e9eb5adc56ab46751a473400ebb918e1722269802` |
| 62 | `instance` | [isSplitEpi_prod_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/issplitepi-prod-snd.md) | 522 | `declaration-track:ebe3ad4cf6a78933a567a168ea6a28cae813d0c3967bab533d30ad3d0f0f37ef` |
| 63 | `def` | [IsLimit.ofIsZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/islimit-ofiszero.md) | 533 | `declaration-track:4a08c1e9c851c2eb9922fabbcf7eac8b2ec2ab5591095186542dbb3954a51736` |
| 64 | `lemma` | [IsLimit.isZero_pt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/islimit-iszero-pt.md) | 539 | `result-track:746e1ac261f73619f9936bd2ceb5efc2dc95e45c09db230d3dd8325f0c3b8e30` |
| 65 | `def` | [_root_.CategoryTheory.Functor.FullyFaithful.hasZeroMorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/root-categorytheory-functor-fullyfaithful-haszeromorphisms.md) | 546 | `declaration-track:f3a70ab85b484e1cfdebc238060e17d5f15728620941357fa6e7c97312fabd52` |
| 66 | `lemma` | [_root_.CategoryTheory.Functor.FullyFaithful.hasZeroMorphisms_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/root-categorytheory-functor-fullyfaithful-haszeromorphisms-def.md) | 559 | `result-track:5d784c2368a4dd085bc22a790f817a939a4f852118e0b9a8841d1b6c0452b157` |
| 67 | `lemma` | [IsInitial.isZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/isinitial-iszero.md) | 570 | `result-track:2db111a5c53223d284e04e512ef1ba1ead51a6fddea67e4e6b178d1eab46e04c` |
| 68 | `def` | [Pi.ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/pi.md) | 583 | `declaration-track:6e65c042ac44b8a0f390ac8ced138cc8ebafb01338bb44f300c2999b27edbc30` |
| 69 | `lemma` | [Pi.ι_π_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/pi-eq-id.md) | 587 | `result-track:bd1c6f04cc094472165487ecca658d62a279d006076e434369ce8de151546bc7` |
| 70 | `lemma` | [Pi.ι_π_of_ne](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/pi-of-ne.md) | 591 | `result-track:6b4223e790a1b612dace262bc50805c16aecf489c60ee1cef594076de9ad1826` |
| 71 | `lemma` | [Pi.ι_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/pi-source-edition-2.md) | 595 | `result-track:cddaa5ab28a13fb543eda437dd563988d7652087a79f4c005b911ca42671b44f` |
| 72 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/instance-source-edition-3.md) | 600 | `declaration-track:8f9a16bf953d2429266d52d286e5da6626b1c287bcf12b4607c3e4ce38da33b9` |
| 73 | `lemma` | [Sigma.ι_π_of_ne](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/sigma-of-ne.md) | 610 | `result-track:cae381daaba17df1a158d037163d88be5e57065ee3f4999c1a44b17c1845ef2d` |
| 74 | `theorem` | [Sigma.ι_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/sigma.md) | 614 | `result-track:83675be4a7876d17ef7cc05800b9bc64fd5492971d5ac189c235bd8826b48368` |
| 75 | `def` | [prod.inl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/prod-inl.md) | 626 | `declaration-track:452e9457fba11e867b91925389cdc63caea0f7503d9917a6fb6f713ea3713010` |
| 76 | `def` | [prod.inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/prod-inr.md) | 631 | `declaration-track:78370db4825f02347bebeee30e3a5cfc56f34739b8f20e278167abfce7957f5b` |
| 77 | `lemma` | [prod.inl_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/prod-inl-fst.md) | 635 | `result-track:bcf4ac0b3b62f99ef13895d9a58678dd9aa51a8e7305de6a88e1b566e3237b43` |
| 78 | `lemma` | [prod.inl_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/prod-inl-snd.md) | 639 | `result-track:ab833d27470cac2dbb5291af4cc220f448c649cda95185af05c90aebe48ed4e6` |
| 79 | `lemma` | [prod.inr_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/prod-inr-fst.md) | 643 | `result-track:fe0b3ea3471015dde3a5ef6e51e366a4ea1d9c7bf539fd47724a5b4963520c13` |
| 80 | `lemma` | [prod.inr_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/prod-inr-snd.md) | 647 | `result-track:f89952c6e64436edab52a7e54d64bef7aa790b9b3af2eeafee0622fffd0f3a4e` |
| 81 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/instance-source-edition-6.md) | 650 | `declaration-track:b74e0a3db069ca0031ee520318fa18cccc42b0dbb7a7eb4126a7bb4c7b8858f8` |
| 82 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/instance-source-edition-9.md) | 653 | `declaration-track:ebfb3ed5149693111cd5f675c1ab5e12e6ec6c94ec9f55398ac3bd815bacbcd4` |
| 83 | `def` | [coprod.fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/coprod-fst.md) | 664 | `declaration-track:eac9b3c469653670dd44fcd8b2ded9d4fd30391d48b3c3c1c952ab111bbbb7a3` |
| 84 | `def` | [coprod.snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/coprod-snd.md) | 669 | `declaration-track:fd4d5a2b0053c413348042cd16564d4ec6f5605f1483d06dd648e5b97f0a752f` |
| 85 | `lemma` | [coprod.inl_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/coprod-inl-fst.md) | 673 | `result-track:ac092c7b9118205559889052f96240346a88ea83abbdd8faf5a8ccfcc9fb192b` |
| 86 | `lemma` | [coprod.inr_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/coprod-inr-fst.md) | 677 | `result-track:c25febfcae1e08bda542516323c1bdd0cb67d72a78555752dd58974371e63970` |
| 87 | `lemma` | [coprod.inl_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/coprod-inl-snd.md) | 681 | `result-track:34ac9b353902ca70dc6fdae091464e31ed87cd61e988e86880aa8f79610f7f2b` |
| 88 | `lemma` | [coprod.inr_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/coprod-inr-snd.md) | 685 | `result-track:157586086aba3c28074e83f6759bfe860ac19b8da896eacf6b604744a1d88efa` |
| 89 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/instance.md) | 688 | `declaration-track:0488f42aa43541500d4efb5ad5d26689815048ff6bd768ed799b2e852a35c840` |
| 90 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/instance-source-edition-4.md) | 691 | `declaration-track:a86e2f71f70e1410ffbd119699abda256868e50b939b6e855b8ac718039ba18d` |
| 91 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/instance-source-edition-5.md) | 704 | `declaration-track:a8d9279539f4993fc788617978e51f40d822de86e4f221af30a4fb66739d63fd` |
| 92 | `lemma` | [homMk_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/hommk-zero.md) | 710 | `result-track:82fdc16ef165b8058e0edd46f00245f98f114fdfd1b7c0f3307ce1662016198b` |
| 93 | `lemma` | [zero_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ZeroMorphismsPublic.lean/declarations/zero-hom.md) | 714 | `result-track:215d10433ac32a2bd268e0fe5d0dafb1cce61aeb863d30ecdeb4aff2c9bceb95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32d4b6aefbe0ed2c9abbd435db412833a09694f40c3e37a30a97a948e75d48a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant705fb6684fae3fe933520548480970e21153fdd50248ba4e667c8ede520299c1.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant705fb6684fae3fe933520548480970e21153fdd50248ba4e667c8ede520299c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
