# Verification target: Top Cat Opens Opens Namespaced Inclusion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7bd2cf1c26289c66fc6a462edf1a9284673ae64",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant049d9b6f1e3795f1e3c698520185c22443a900f14e9daa97d211f0f011545108.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/index.md) · [Full source](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7bd2cf1c26289c66fc6a462edf1a9284673ae64`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant049d9b6f1e3795f1e3c698520185c22443a900f14e9daa97d211f0f011545108.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant049d9b6f1e3795f1e3c698520185c22443a900f14e9daa97d211f0f011545108.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Preorder` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EqToHom` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.EpiMono` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Opens` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [opensHomHasCoeToFun](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/openshomhascoetofun.md) | 57 | `declaration-track:d0681915a519223e85f32fcd4ac5b31b70b7a2d67246fbb3ae3b5a4706764279` |
| 2 | `def` | [infLELeft](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/infleleft.md) | 69 | `declaration-track:72ab1f16f02dca0ede309f028bde15ca9a1532a78ff5b1b2cdb49ffc0053fb36` |
| 3 | `def` | [infLERight](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/infleright.md) | 75 | `declaration-track:bdcaa150dd870338b57b4bf988b9f7a0f5bc64d9c71dcbec97db55c0c988a7e9` |
| 4 | `def` | [leSupr](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/lesupr.md) | 81 | `declaration-track:60cc625ca21fb21c2dd75a4b7042a401f08a00b67e9a5a3896b779ff349b55eb` |
| 5 | `def` | [botLE](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/botle.md) | 87 | `declaration-track:d9aea293160c23cb9c11ad43c08645a8bd26fd00066134514c7e62b0cf09116e` |
| 6 | `def` | [leTop](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/letop.md) | 93 | `declaration-track:130a0ffe38b7cd30592e685714885f229bab78d9d5eb2a5f26e0d9adbbeab58b` |
| 7 | `theorem` | [infLELeft_apply](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/infleleft-apply.md) | 99 | `result-track:8d2eb1b170a13d0cc96f93ad01949e43a20c731652b289decad7b2a2098c67cf` |
| 8 | `theorem` | [infLELeft_apply_mk](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/infleleft-apply-mk.md) | 105 | `result-track:b41e18d1a0d455c7ee92b2085e8f624058c571f3cd373aa359ef16c96cbb2a10` |
| 9 | `theorem` | [leSupr_apply_mk](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/lesupr-apply-mk.md) | 111 | `result-track:de2acb8b9f5bcaf8917d32f52ed82f36a1b25496c8949d41ccec9f0783b6f09f` |
| 10 | `def` | [toTopCat](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/totopcat.md) | 119 | `declaration-track:cbe61d303a3da1e126f7b56c70b2283db7bf14cab53cbcabc349459c85b0ef53` |
| 11 | `theorem` | [toTopCat_map](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/totopcat-map.md) | 128 | `result-track:c2b7dd84b8501f14de176cce467c443e05a81559db1e9a7f114e8a6bc6a7ac76` |
| 12 | `def` | [inclusion](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/inclusion.md) | 137 | `declaration-track:3b67563a9446996aa468e00d1e49c20c27147f7385ea9a3587681f2d17d89698` |
| 13 | `theorem` | [openEmbedding](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/openembedding.md) | 142 | `result-track:efce7631c4cff88ef313c27ecd00219c5a04e55a056ac4a7f38837fe66b21481` |
| 14 | `def` | [inclusionTopIso](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/inclusiontopiso.md) | 148 | `declaration-track:b6b674da95aadecd3edfb7be72b205971e03119f3c81b013c127000fd2df60ce` |
| 15 | `def` | [map](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/map.md) | 155 | `declaration-track:91b21b6d1e6f24c344523651dacfa003ebe9d7307f723dde5a3e36843a70195d` |
| 16 | `theorem` | [map_coe](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/map-coe.md) | 160 | `result-track:5e27419a5dac1c637e6b5c2b3be1639c7ba84c182599a748e740d2d843b9a680` |
| 17 | `theorem` | [map_obj](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/map-obj.md) | 165 | `result-track:21fe39a2203ac0abde2eba1b82e0787068c8453ebe91870c4637d91791f7a900` |
| 18 | `theorem` | [map_id_obj](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/map-id-obj-source-edition-2.md) | 170 | `result-track:fed2ece52316d13a64533e13842713a370463024b93f7ffe48e63c828b28091f` |
| 19 | `theorem` | [map_id_obj'](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/map-id-obj.md) | 176 | `result-track:759cbf86cacb4d3828ad99f4195faba3c364752cc655fae4db83383008a0d5e4` |
| 20 | `theorem` | [map_id_obj_unop](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/map-id-obj-unop.md) | 181 | `result-track:2b4721ae1e1a86d2850d767b8aea3e337d9c8dda736e71f816043a243bdf2264` |
| 21 | `theorem` | [op_map_id_obj](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/op-map-id-obj.md) | 187 | `result-track:9bb5efe2f61932a21021762352d07f937a4fa49e2ced3c62df3b44606941c127` |
| 22 | `def` | [leMapTop](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/lemaptop.md) | 192 | `declaration-track:8e9a059e369869cbe47e48c878d3cf0cd2a8c631a1f42d54d7b1d71e70c1ebc0` |
| 23 | `theorem` | [map_comp_obj](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/map-comp-obj.md) | 197 | `result-track:162c00a979e0f923075b0e8dfd2709186864da08d5ad826b93b995bc84365f6d` |
| 24 | `theorem` | [map_comp_obj'](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/map-comp-obj-source-edition-2.md) | 203 | `result-track:5c9b00d2c87bdba512ff1acab07535288ee7bf438faf79ca0421dd403c44334f` |
| 25 | `theorem` | [map_comp_map](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/map-comp-map.md) | 209 | `result-track:b85a4a1a14e3dabba1623f4c949b83f19945ca612851f1db6089f48b906127d3` |
| 26 | `theorem` | [map_comp_obj_unop](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/map-comp-obj-unop.md) | 215 | `result-track:573bda9ed54d823c8a17841f124817506743c05b7e888131a884e9a5ebf1f8c7` |
| 27 | `theorem` | [op_map_comp_obj](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/op-map-comp-obj.md) | 221 | `result-track:610ab80d5ea97a1d060e6bdf2adfc9361d652ee8e53ba59fac1a8b002fbb1a84` |
| 28 | `theorem` | [map_iSup](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/map-isup.md) | 226 | `result-track:14af3eb0af48f2420a00c592f3d738cb8a20851e7a59f4ecfffe7d92672b1115` |
| 29 | `def` | [mapId](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/mapid.md) | 240 | `declaration-track:49e6e9bcfbeef0ea872d0b3411772a9c408169abaa1a6a5966ccdb6eba653828` |
| 30 | `theorem` | [map_id_eq](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/map-id-eq.md) | 245 | `result-track:375bcd36ae6854f286e6b9c8ee1cd3e5ca1e52b93de96ceaeac4fc77f392bc20` |
| 31 | `def` | [mapComp](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/mapcomp.md) | 255 | `declaration-track:753ad64d004f66808b40189ea1e60f803e9f60e16994a1088b6477af3d3a1659` |
| 32 | `theorem` | [map_comp_eq](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/map-comp-eq.md) | 260 | `result-track:98c71b5fde37bcba6f25a2c661a805a40e61282ee7a61c0a4d75d3c7bd7cbf2f` |
| 33 | `def` | [mapIso](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/mapiso.md) | 269 | `declaration-track:56c69d60cb5b00f0e5855282c12a4b62a3ebdcd2f51f9c6960aa532c47ed9c9e` |
| 34 | `theorem` | [map_eq](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/map-eq.md) | 273 | `result-track:281ac6e3394f35de535a74c4f1dabc7a2ab7603bb28f83d72f9d05fc880729b4` |
| 35 | `theorem` | [mapIso_refl](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/mapiso-refl.md) | 279 | `result-track:23dbeb9a06d2532df31b2b03bb75ee8e3c671a8cb64ea068fd3af12822d2a104` |
| 36 | `theorem` | [mapIso_hom_app](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/mapiso-hom-app.md) | 284 | `result-track:d912ba413db6abd52d4a9299403f16cd143a92f70c1fc16c555247fd9f21663e` |
| 37 | `theorem` | [mapIso_inv_app](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/mapiso-inv-app.md) | 290 | `result-track:8af6e39dc35eed0903b44a861f79ab739e4d9ad1b5f2758a2e65503f3e1ce04a` |
| 38 | `def` | [mapMapIso](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/mapmapiso.md) | 300 | `declaration-track:ed39e5a61a27fdef146e36263e567f2830c9aca174d39dbadf1c9e4c25800022` |
| 39 | `def` | [IsOpenMap.functor](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/isopenmap-functor.md) | 312 | `declaration-track:44b1851c5474dae2e0c78fe7df669a0d9b36320ccfdccf1d3a96f0377212b5fa` |
| 40 | `def` | [IsOpenMap.adjunction](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/isopenmap-adjunction.md) | 319 | `declaration-track:e1d50f5106c7a3b189e746674c5506c3e7d1cfa84883f6b4079fee54b4e79767` |
| 41 | `instance` | [IsOpenMap.functorFullOfMono](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/isopenmap-functorfullofmono.md) | 326 | `declaration-track:7e04c354677b198e93749ad1b1e754932652d4c76fc5a5e60829e3fe7aeaae83` |
| 42 | `instance` | [IsOpenMap.functor_faithful](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/isopenmap-functor-faithful.md) | 334 | `declaration-track:9df8e159a7ae917412b019e561bb40932b4cc7c0b7ce6dc2728265c04c035d14` |
| 43 | `theorem` | [openEmbedding_obj_top](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/openembedding-obj-top.md) | 343 | `result-track:633144993b8ba2fda5bb881f22535de5ae62aa1082538f34b2049f641f422485` |
| 44 | `theorem` | [inclusion_map_eq_top](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/inclusion-map-eq-top.md) | 350 | `result-track:bdf525f7b0c20be16eefa561fd5ce44f304872f41c9022be19fd1f5d007e3d7e` |
| 45 | `theorem` | [adjunction_counit_app_self](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/adjunction-counit-app-self.md) | 356 | `result-track:12ab7cc4f42fc79024091c7e484d216daa84ee466f4e3eef66b95b4b65f94ac6` |
| 46 | `theorem` | [inclusion_top_functor](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/inclusion-top-functor.md) | 360 | `result-track:b7bc2193c6344cba8e93fef2d521d6a297abf5e26b1b0603441fa1e93d337c33` |
| 47 | `theorem` | [functor_obj_map_obj](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/functor-obj-map-obj.md) | 370 | `result-track:1df9866d568b107fa799255f21696cbd578033f8aaca9f0a66d0061ce8a6c3ea` |
| 48 | `lemma` | [set_range_forget_map_inclusion](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/set-range-forget-map-inclusion.md) | 381 | `result-track:3c05453d3f942e55007ca3d137268e3d551f0874d09811ba69c777eb982d3829` |
| 49 | `theorem` | [functor_map_eq_inf](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/functor-map-eq-inf.md) | 391 | `result-track:de3aeb3ef2e8ec5917e371c8cb474546047f4c5999141fe1aa503717239a02a5` |
| 50 | `theorem` | [map_functor_eq'](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/map-functor-eq-source-edition-2.md) | 399 | `result-track:7088eed40685afa016f79b242884bcc3d152d6f94602fa8de76acb4d4f2afe9c` |
| 51 | `theorem` | [map_functor_eq](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/map-functor-eq.md) | 405 | `result-track:55fe9287764e775563e1c1ca83caa9df73b961ecc9e978838b0628dbaf729723` |
| 52 | `theorem` | [adjunction_counit_map_functor](../../../../GeneralTopology/TopCatOpensOpensNamespacedInclusion.lean/declarations/adjunction-counit-map-functor.md) | 411 | `result-track:e1ad15f91938502ecdaf2d1fbcd0e09dc108c5eaa11f166f81b20f782f44b4d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3eda393e9b79879f01dc5fcee8837240e9dc3570f9fc7936fa7d4a039146b555 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant049d9b6f1e3795f1e3c698520185c22443a900f14e9daa97d211f0f011545108.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant049d9b6f1e3795f1e3c698520185c22443a900f14e9daa97d211f0f011545108.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
