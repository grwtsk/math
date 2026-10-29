# Verification target: Opens Apply Def

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb3c5f7df494eff18e1f8dcc020a181fecc01e1f",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant4552c6f568e64eda3dc4eb8965f376c876072d9acdd2950638847dcdcaaba264.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/OpensApplyDef.lean/index.md) · [Full source](../../../../GeneralTopology/OpensApplyDef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb3c5f7df494eff18e1f8dcc020a181fecc01e1f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant4552c6f568e64eda3dc4eb8965f376c876072d9acdd2950638847dcdcaaba264.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant4552c6f568e64eda3dc4eb8965f376c876072d9acdd2950638847dcdcaaba264.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.GaloisConnection` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EqToHom` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.EpiMono` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Opens` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [opensHom.instFunLike](../../../../GeneralTopology/OpensApplyDef.lean/declarations/openshom-instfunlike.md) | 46 | `declaration-track:3e135cda88aa16269802d8d9f9cf6540eb4c5dbc660735380bf39efb188c7132` |
| 2 | `lemma` | [apply_def](../../../../GeneralTopology/OpensApplyDef.lean/declarations/apply-def.md) | 50 | `result-track:716da45b43186cf593b993937ba28623440a3c3d33ac299c2fe166be48772b82` |
| 3 | `lemma` | [apply_mk](../../../../GeneralTopology/OpensApplyDef.lean/declarations/apply-mk.md) | 52 | `result-track:381cbe7f3273de2a59678367a4f6181af9bfb4d45154986c63168e5608c1152e` |
| 4 | `lemma` | [val_apply](../../../../GeneralTopology/OpensApplyDef.lean/declarations/val-apply.md) | 54 | `result-track:5d65564434a016bc024339dc808e69c22736439da941e9609a3d7931f25cf4ef` |
| 5 | `lemma` | [coe_id](../../../../GeneralTopology/OpensApplyDef.lean/declarations/coe-id.md) | 56 | `result-track:08b5e09de3faa8bfbfd676a1da95f4062b722d5878e6d4883e8ab0bc36cba516` |
| 6 | `lemma` | [id_apply](../../../../GeneralTopology/OpensApplyDef.lean/declarations/id-apply.md) | 58 | `result-track:030dd7deb6279e49022ee9fc1769d6514f31f37b740aff0becb154def9ae4a67` |
| 7 | `lemma` | [comp_apply](../../../../GeneralTopology/OpensApplyDef.lean/declarations/comp-apply.md) | 60 | `result-track:68cdb330934f4af010170c42e6c7e217abbef1bbd9853514bc892d2bd69b3dcd` |
| 8 | `def` | [infLELeft](../../../../GeneralTopology/OpensApplyDef.lean/declarations/infleleft.md) | 70 | `declaration-track:6f22c18f3c5b0d4f8d0bdf6990a373f04059a2fe1b0fe0902eed31d64fabe004` |
| 9 | `def` | [infLERight](../../../../GeneralTopology/OpensApplyDef.lean/declarations/infleright.md) | 75 | `declaration-track:dd170f7992318289e1b3d2eeb5f3498b677bb1208905dcd8c26911e31e5b9a21` |
| 10 | `def` | [leSupr](../../../../GeneralTopology/OpensApplyDef.lean/declarations/lesupr.md) | 80 | `declaration-track:313833b9178af10c97c54e65817c5371834df2081eb32d78c8ee9a5fa5efb35b` |
| 11 | `def` | [botLE](../../../../GeneralTopology/OpensApplyDef.lean/declarations/botle.md) | 85 | `declaration-track:0a61c04fbb35fd5cf112a4c60832a4c100dbb2cbc7da3b138e5f85521a52853b` |
| 12 | `def` | [leTop](../../../../GeneralTopology/OpensApplyDef.lean/declarations/letop.md) | 90 | `declaration-track:853adf3e64291f03534fd851ec76fa9e19ea760551aa3a5e8cdfdbe2bc35fb93` |
| 13 | `theorem` | [infLELeft_apply](../../../../GeneralTopology/OpensApplyDef.lean/declarations/infleleft-apply.md) | 95 | `result-track:9955606f0bf2476726cee24f8255c9b02648da4812a6832f15540f7ead9ec26f` |
| 14 | `theorem` | [infLELeft_apply_mk](../../../../GeneralTopology/OpensApplyDef.lean/declarations/infleleft-apply-mk.md) | 100 | `result-track:7a34235112983ad531611fcf27dfb08f511e37eed246e6e9a353eb8cd3b16c17` |
| 15 | `theorem` | [leSupr_apply_mk](../../../../GeneralTopology/OpensApplyDef.lean/declarations/lesupr-apply-mk.md) | 105 | `result-track:0894ff27a454001754331ed2084f02e90f4e5825267afa181fc530a0ff0c77a9` |
| 16 | `def` | [toTopCat](../../../../GeneralTopology/OpensApplyDef.lean/declarations/totopcat.md) | 112 | `declaration-track:409582e1bb905d16b1333feabb8f683dfdb872d8475bf2190cca8a875cb9dc89` |
| 17 | `theorem` | [toTopCat_map](../../../../GeneralTopology/OpensApplyDef.lean/declarations/totopcat-map.md) | 118 | `result-track:79ec53d7b7a4960abd78e9fa6830a2146b2cb2e49de33378696bc95fabff1259` |
| 18 | `def` | [inclusion'](../../../../GeneralTopology/OpensApplyDef.lean/declarations/inclusion.md) | 125 | `declaration-track:0222f0b4385dd60e9818f71c3c0c700de6c30d97c4b4619306a81bb8ccd6ea67` |
| 19 | `theorem` | [coe_inclusion'](../../../../GeneralTopology/OpensApplyDef.lean/declarations/coe-inclusion.md) | 131 | `result-track:903cbd254f358906d54b6e3d09e5d11941e9cdd3a7ad44de4580a4a8d8d9aa19` |
| 20 | `theorem` | [isOpenEmbedding](../../../../GeneralTopology/OpensApplyDef.lean/declarations/isopenembedding.md) | 134 | `result-track:eea7d3b20b6f33fb08f4b3de84f70d4c1fee05f311329e4306a2285b4ad5f9da` |
| 21 | `def` | [inclusionTopIso](../../../../GeneralTopology/OpensApplyDef.lean/declarations/inclusiontopiso.md) | 139 | `declaration-track:b5e50a998c1edcb6903d1373d38c6a84f36f77b900b95a42161ce2210f90e8f4` |
| 22 | `def` | [map](../../../../GeneralTopology/OpensApplyDef.lean/declarations/map.md) | 145 | `declaration-track:9f4e4b6c337cf714687a49af8d46556d9820cade8e8abeb634d283d490d94788` |
| 23 | `theorem` | [map_coe](../../../../GeneralTopology/OpensApplyDef.lean/declarations/map-coe.md) | 150 | `result-track:252370ce680e12b8f42625ff31a5af3841000f8966be11f27db3933b73564c8b` |
| 24 | `theorem` | [map_obj](../../../../GeneralTopology/OpensApplyDef.lean/declarations/map-obj.md) | 154 | `result-track:44cb2a1f8273584fefc978437ff7c167b8a9f957c25812a422317feb97c5fcc3` |
| 25 | `lemma` | [map_homOfLE](../../../../GeneralTopology/OpensApplyDef.lean/declarations/map-homofle.md) | 158 | `result-track:71433c690ba936b40582b2371bb260d7fb9a533148986dc8d31523d392ca59c8` |
| 26 | `theorem` | [map_id_obj](../../../../GeneralTopology/OpensApplyDef.lean/declarations/map-id-obj-source-edition-2.md) | 164 | `result-track:c720528e792e02a9d5134b18828d7d6c4608a1141d5763b4d052c563f7d80060` |
| 27 | `theorem` | [map_id_obj'](../../../../GeneralTopology/OpensApplyDef.lean/declarations/map-id-obj.md) | 169 | `result-track:52ccf0f056f24abf03ce1a0ab9bef5e1827843ef7d5a00297ccf267647ca407c` |
| 28 | `theorem` | [map_id_obj_unop](../../../../GeneralTopology/OpensApplyDef.lean/declarations/map-id-obj-unop.md) | 172 | `result-track:904a7b4b043a2d431271c97d0544d0f8de3dcfcb29ecc4ca8a8fff92d2b30811` |
| 29 | `theorem` | [op_map_id_obj](../../../../GeneralTopology/OpensApplyDef.lean/declarations/op-map-id-obj.md) | 175 | `result-track:1211de5b8e264793a8af2d781f08c4f28f6410b3c04c419f1aafa0b01371139b` |
| 30 | `lemma` | [map_top](../../../../GeneralTopology/OpensApplyDef.lean/declarations/map-top.md) | 178 | `result-track:e98aeccf275538096df6e6fb0d2e0b3396c0aab4c494afc0f5d3863a686dff81` |
| 31 | `def` | [leMapTop](../../../../GeneralTopology/OpensApplyDef.lean/declarations/lemaptop.md) | 182 | `declaration-track:f570bf285ad398321d14524168188a967712d6e310aa44ca9f0d7a56bc5fca14` |
| 32 | `theorem` | [map_comp_obj](../../../../GeneralTopology/OpensApplyDef.lean/declarations/map-comp-obj.md) | 186 | `result-track:054a167f8efa249b75df5c1a3334878c2c328415cb5be66b759cf55567dc6851` |
| 33 | `theorem` | [map_comp_obj'](../../../../GeneralTopology/OpensApplyDef.lean/declarations/map-comp-obj-source-edition-2.md) | 191 | `result-track:bba615f3e9545dca55e38a8a53765e5e0f6c47fcb488db1b78081b16cde05f1d` |
| 34 | `theorem` | [map_comp_map](../../../../GeneralTopology/OpensApplyDef.lean/declarations/map-comp-map.md) | 196 | `result-track:400f697a539ac451ed9677b0d68a23f8b1c49d2e09d2a74d29e2db900e359cba` |
| 35 | `theorem` | [map_comp_obj_unop](../../../../GeneralTopology/OpensApplyDef.lean/declarations/map-comp-obj-unop.md) | 201 | `result-track:f4293a1ed680c8ae2f2457fe166df80410be63019f2b5b277962feb3ed881319` |
| 36 | `theorem` | [op_map_comp_obj](../../../../GeneralTopology/OpensApplyDef.lean/declarations/op-map-comp-obj.md) | 206 | `result-track:9f7b33ba60710dbb9ee912f30ec27f7a52534f342fd5a103fe92d663221906c9` |
| 37 | `theorem` | [map_iSup](../../../../GeneralTopology/OpensApplyDef.lean/declarations/map-isup.md) | 210 | `result-track:cfbcaa0bce24ba7f692481fb528dba1cb005c30288d3435d3a59d2e1d30700b6` |
| 38 | `def` | [mapId](../../../../GeneralTopology/OpensApplyDef.lean/declarations/mapid.md) | 223 | `declaration-track:bb95e23c76fc982197170fa85fc5719f469c0fce4078d92fd5359597ab097372` |
| 39 | `theorem` | [map_id_eq](../../../../GeneralTopology/OpensApplyDef.lean/declarations/map-id-eq.md) | 227 | `result-track:f365125bff72a33f467d9881bc28dd938468cca7893e9d8dfacf4fe9f8656374` |
| 40 | `def` | [mapComp](../../../../GeneralTopology/OpensApplyDef.lean/declarations/mapcomp.md) | 236 | `declaration-track:bcc8faaf5a0ad7cc4d4eb1683ab862a9a7a0eeeda11a100679e3fb06eedce672` |
| 41 | `theorem` | [map_comp_eq](../../../../GeneralTopology/OpensApplyDef.lean/declarations/map-comp-eq.md) | 240 | `result-track:566c83930a7010687d7a987828155fde4e493cc94f17973b4a73b22601a991f2` |
| 42 | `def` | [mapIso](../../../../GeneralTopology/OpensApplyDef.lean/declarations/mapiso.md) | 248 | `declaration-track:db8892c1f75e4afb3ee62432bf623b0d719a3f9ca8b3e232c61fb611ed262c7a` |
| 43 | `theorem` | [map_eq](../../../../GeneralTopology/OpensApplyDef.lean/declarations/map-eq.md) | 251 | `result-track:35f467e3e71efe9ce80d2bf3bd2694844902769834c6e80b49ce56bbdb21a2a0` |
| 44 | `theorem` | [mapIso_refl](../../../../GeneralTopology/OpensApplyDef.lean/declarations/mapiso-refl.md) | 256 | `result-track:616909177d6e1e7df2e20e46dac857abac78dc44760781015f32da106c49d094` |
| 45 | `theorem` | [mapIso_hom_app](../../../../GeneralTopology/OpensApplyDef.lean/declarations/mapiso-hom-app.md) | 260 | `result-track:c5bd2e3b5f5975e442bf29754c32cedec1f2aef5481bd04cf8cd621e2a677a27` |
| 46 | `theorem` | [mapIso_inv_app](../../../../GeneralTopology/OpensApplyDef.lean/declarations/mapiso-inv-app.md) | 265 | `result-track:704f53928e3d0b54de1b95be905a2295c94c1e4648520d8da31a208f231a1c25` |
| 47 | `def` | [mapMapIso](../../../../GeneralTopology/OpensApplyDef.lean/declarations/mapmapiso.md) | 274 | `declaration-track:02dafdadd5dd0525fe93517afdce40a30c1756c8dd53762a49d243a67cc56e03` |
| 48 | `def` | [IsOpenMap.functor](../../../../GeneralTopology/OpensApplyDef.lean/declarations/isopenmap-functor.md) | 285 | `declaration-track:96b5e71c230421c2cb2935f155be6202e67c2c77cb0f787e3584e46362b0a06f` |
| 49 | `def` | [IsOpenMap.adjunction](../../../../GeneralTopology/OpensApplyDef.lean/declarations/isopenmap-adjunction.md) | 291 | `declaration-track:d04adf0d368193c70dae2d5f2d132cd79d4fe3a60c8839731aa66e61865a2e70` |
| 50 | `instance` | [IsOpenMap.functorFullOfMono](../../../../GeneralTopology/OpensApplyDef.lean/declarations/isopenmap-functorfullofmono.md) | 296 | `declaration-track:94dab6ff78375af6ca3684841548616e2f67918b6c9693142a8818d221829a68` |
| 51 | `instance` | [IsOpenMap.functor_faithful](../../../../GeneralTopology/OpensApplyDef.lean/declarations/isopenmap-functor-faithful.md) | 303 | `declaration-track:02896f2f135b0eeff02fc7ed7084b37cbb59ba258f3d5dc26da1b6f5b44fbd51` |
| 52 | `lemma` | [Topology.IsOpenEmbedding.functor_obj_injective](../../../../GeneralTopology/OpensApplyDef.lean/declarations/topology-isopenembedding-functor-obj-injective.md) | 306 | `result-track:89e9bee12f960b1d2f0765a314967e35fdc3dc4f5e826f380c30ac9ef073ee03` |
| 53 | `def` | [functorObj](../../../../GeneralTopology/OpensApplyDef.lean/declarations/functorobj.md) | 315 | `declaration-track:110b284fd615063bb763bfafb20176a5a1e6561282cbfca7f1b3a75adc66412c` |
| 54 | `lemma` | [map_functorObj](../../../../GeneralTopology/OpensApplyDef.lean/declarations/map-functorobj.md) | 318 | `result-track:e741ec74962c5d5e8582664ad078737b2e2a40d89101fbe5963253af9b406567` |
| 55 | `lemma` | [mem_functorObj_iff](../../../../GeneralTopology/OpensApplyDef.lean/declarations/mem-functorobj-iff.md) | 328 | `result-track:d99bf574ab401dc3bf41824710464fe02375e5c65531b9cb218acb626de6ca21` |
| 56 | `lemma` | [le_functorObj_iff](../../../../GeneralTopology/OpensApplyDef.lean/declarations/le-functorobj-iff.md) | 333 | `result-track:5e2a9da15394a92821d150ccd43e05b717ad5aaa79db018ddf6f8c134af77a51` |
| 57 | `def` | [opensGI](../../../../GeneralTopology/OpensApplyDef.lean/declarations/opensgi.md) | 345 | `declaration-track:c07dbde40a9671ae06f4b914216095d9e55032ccea59d09f9d3f335dd6623f8c` |
| 58 | `def` | [functor](../../../../GeneralTopology/OpensApplyDef.lean/declarations/functor.md) | 351 | `declaration-track:79413e5e40e43f15fa74abb8b1c5e1280efe0db3118c4d53d5401ee5b4dff7aa` |
| 59 | `def` | [adjunction](../../../../GeneralTopology/OpensApplyDef.lean/declarations/adjunction.md) | 357 | `declaration-track:e9e75129726239babfa099fa992d46d1446d79f325086fe2a2156ae68fb8fcd5` |
| 60 | `theorem` | [isOpenEmbedding_obj_top](../../../../GeneralTopology/OpensApplyDef.lean/declarations/isopenembedding-obj-top.md) | 368 | `result-track:b6f63b31b7d682ee03de7f0db0bedb452c3b3d4d7fc4d5c3c00f40209dce86f6` |
| 61 | `theorem` | [inclusion'_map_eq_top](../../../../GeneralTopology/OpensApplyDef.lean/declarations/inclusion-map-eq-top.md) | 374 | `result-track:dd9abf66437c1bd1982d409f17b412a7d943d7e2d72f0b009a03856fe37c03c8` |
| 62 | `theorem` | [adjunction_counit_app_self](../../../../GeneralTopology/OpensApplyDef.lean/declarations/adjunction-counit-app-self.md) | 379 | `result-track:338e2e05702f59aa6a5faa5d58ecd22a6f99d165de20fcf41b8a580ac3d8d3ce` |
| 63 | `theorem` | [inclusion'_top_functor](../../../../GeneralTopology/OpensApplyDef.lean/declarations/inclusion-top-functor.md) | 382 | `result-track:51143286c671227e5c78e11ff8a7dc66c9c989b2d7fdf07f00ee0f470397bfb1` |
| 64 | `theorem` | [functor_obj_map_obj](../../../../GeneralTopology/OpensApplyDef.lean/declarations/functor-obj-map-obj.md) | 390 | `result-track:ca97fe1c3629992b1629f4e500afb0e2d9f3dfb40396c1994a38e7e02864a989` |
| 65 | `lemma` | [set_range_inclusion'](../../../../GeneralTopology/OpensApplyDef.lean/declarations/set-range-inclusion.md) | 399 | `result-track:ca82af0e349a490d518d4e52112e261735ab04a4b401d4dfe3c5c15165294e30` |
| 66 | `theorem` | [functor_map_eq_inf](../../../../GeneralTopology/OpensApplyDef.lean/declarations/functor-map-eq-inf.md) | 409 | `result-track:7bded1bd8fcff91bd5506653ff5e42e035cc9a979302d9b038f6241accd6e012` |
| 67 | `theorem` | [map_functor_eq'](../../../../GeneralTopology/OpensApplyDef.lean/declarations/map-functor-eq.md) | 415 | `result-track:31b11761aa992ed0b182ef87d6a54e3c64de8650f7d38c80db130175fb66018a` |
| 68 | `theorem` | [map_functor_eq](../../../../GeneralTopology/OpensApplyDef.lean/declarations/map-functor-eq-source-edition-2.md) | 420 | `result-track:9161108ec1b1ef6a4871c1af327b304b071efe92154ed1eb0183cae1e466ea18` |
| 69 | `theorem` | [adjunction_counit_map_functor](../../../../GeneralTopology/OpensApplyDef.lean/declarations/adjunction-counit-map-functor.md) | 425 | `result-track:a602ef53c8bff6dec9e52cc060b35da2f309336e839e19dfecca3c5f8e96789c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b064c0abeac3004faf51d7c04c47334fa550aa195a5b066fb25ceb325d61296c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant4552c6f568e64eda3dc4eb8965f376c876072d9acdd2950638847dcdcaaba264.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant4552c6f568e64eda3dc4eb8965f376c876072d9acdd2950638847dcdcaaba264.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
