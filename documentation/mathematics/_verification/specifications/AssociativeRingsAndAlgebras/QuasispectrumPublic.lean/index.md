# Verification target: Quasispectrum Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1b273bbf8cfa7d1e182fa2f861877a5452b05dd",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variante5da416f74d701c6970a0d6872d95a4ebe58d10a5fb6cd0ac0711a6586bdf4aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1b273bbf8cfa7d1e182fa2f861877a5452b05dd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variante5da416f74d701c6970a0d6872d95a4ebe58d10a5fb6cd0ac0711a6586bdf4aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variante5da416f74d701c6970a0d6872d95a4ebe58d10a5fb6cd0ac0711a6586bdf4aa.lean.json)

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
| 1 | `structure` | [PreQuasiregular](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/prequasiregular.md) | 70 | `declaration-track:d53cb101a7ed561f71bcb5a5d521965943508ab1d7f435b83e4659e2601131cd` |
| 2 | `def` | [equiv](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/equiv.md) | 80 | `declaration-track:2483e6d2dcd69951a14e5c0e3f1324f6834a7e7cacd43ef0e31d8c9025517e9a` |
| 3 | `instance` | [instOne](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/instone.md) | 84 | `declaration-track:ad8a4005b827739daa99e66bcd25abae89408bccdf643ca7e7b313b07743b3ab` |
| 4 | `lemma` | [val_one](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/val-one.md) | 88 | `result-track:d4fde9bc81c7fb7dbbecf1eccd1a3f6133e6daa0074c4717679ddefc21f4b57f` |
| 5 | `instance` | [instMul](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/instmul.md) | 90 | `declaration-track:63ddac4676595608f19957c4c4116e685f880bc4e2078407900144e59b6d9a43` |
| 6 | `lemma` | [val_mul](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/val-mul.md) | 94 | `result-track:ba4f36ca354fca27f70a2ab5abf88f70b0f6f4a9fce1b171b7867139b24ce733` |
| 7 | `instance` | [instMonoid](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/instmonoid.md) | 96 | `declaration-track:4915271bb7d181ed9079047e40bc0a4de4d7c2c8f7b5b3f2dc9db83f818762fb` |
| 8 | `lemma` | [inv_add_add_mul_eq_zero](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/inv-add-add-mul-eq-zero.md) | 104 | `result-track:d1e21ac2e3591be01efc7bcbf69667085a93c5e286d444b35a46e873aa0f549d` |
| 9 | `lemma` | [add_inv_add_mul_eq_zero](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/add-inv-add-mul-eq-zero.md) | 109 | `result-track:3ff0d3b38e8920515357319c5be58a6457759bc9e0a6ad50996732072e6b0ab4` |
| 10 | `def` | [unitsFstOne](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/unitsfstone.md) | 123 | `declaration-track:44d5a62ecd133348123f5596e3bc0099c94bfcf37652960bd232d6dcfc3b8a1e` |
| 11 | `lemma` | [mem_unitsFstOne](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/mem-unitsfstone.md) | 131 | `result-track:ad89d5ada01151bc582310754e8da5446f265dedf63651263e143a4eb680f11e` |
| 12 | `lemma` | [unitsFstOne_val_val_fst](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/unitsfstone-val-val-fst.md) | 134 | `result-track:7133fc20f58fa54114260890d285815490a75f2b6b4852031968440718035252` |
| 13 | `lemma` | [unitsFstOne_val_inv_val_fst](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/unitsfstone-val-inv-val-fst.md) | 138 | `result-track:a9fb9d40391c0384def45e8128dda17ebc27fb4fb985e2b0e03e10d01a763b21` |
| 14 | `def` | [unitsFstOne_mulEquiv_quasiregular](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/unitsfstone-mulequiv-quasiregular.md) | 146 | `declaration-track:1dfd3895883bd02ce37069746180a356b9ebef7cc703c14edb3d33494631a252` |
| 15 | `def` | [IsQuasiregular](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/isquasiregular.md) | 185 | `declaration-track:6504d25fd7ad332497bf31f536a948c8ab9c5a8774281d56cc5a759bfe0a62b8` |
| 16 | `lemma` | [isQuasiregular_zero](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/isquasiregular-zero.md) | 189 | `result-track:3c95d4f96afa7efc842a39777f9140ec274ef57ff93ad51665f9c0b282185d7e` |
| 17 | `lemma` | [isQuasiregular_iff](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/isquasiregular-iff.md) | 191 | `result-track:317f56ec347e175ddf72933ca1a4c00158596ffcb2bb3e13b56733951177efd0` |
| 18 | `lemma` | [isQuasiregular_iff'](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/isquasiregular-iff-source-edition-2.md) | 202 | `result-track:e9f2e41be4ed440e0653e86162b53c270671c83a175e9bd252de659f5478630f` |
| 19 | `lemma` | [IsQuasiregular.map](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/isquasiregular-map.md) | 208 | `result-track:a2acffee6bb46adb2f532421bdb89a4faaa9a005e7d0dadd937a6e5b851c279a` |
| 20 | `lemma` | [IsQuasiregular.isUnit_one_add](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/isquasiregular-isunit-one-add.md) | 215 | `result-track:90e20fe785ce3b2b882076f0aea8a793865877d6a3d4b03d6e50fa25da0883ca` |
| 21 | `lemma` | [isQuasiregular_iff_isUnit](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/isquasiregular-iff-isunit.md) | 222 | `result-track:a5737e030d430f7cee1528e386a83629f5c858227a5c7f56925e17861b67d33b` |
| 22 | `lemma` | [isQuasiregular_iff_isUnit'](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/isquasiregular-iff-isunit-source-edition-2.md) | 236 | `result-track:fa6b4c43698f278b8aa00ed1214578edaa543fee32f796c437de8599fea8c6b2` |
| 23 | `def` | [quasispectrum](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/quasispectrum.md) | 252 | `declaration-track:0848c460d7ed5692cf002621b6d873c2b4e87d9b21e18f83b6b0044351101a61` |
| 24 | `lemma` | [quasispectrum.not_isUnit_mem](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/quasispectrum-not-isunit-mem.md) | 256 | `result-track:e8afbb32553de83177d9e4c746d37156e9dd8985022d437100551ee676aa23bb` |
| 25 | `lemma` | [quasispectrum.zero_mem](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/quasispectrum-zero-mem.md) | 260 | `result-track:7af881a43f79424a0bd7f2854d22227b3a50ff468d5a886284ad1d06356b8f51` |
| 26 | `theorem` | [quasispectrum.nonempty](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/quasispectrum-nonempty.md) | 263 | `result-track:21442e4391739e74e98c7a2f107f9be8eef726fedbf8ccb7512da1e6d0e05e61` |
| 27 | `instance` | [quasispectrum.instZero](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/quasispectrum-instzero.md) | 266 | `declaration-track:db47aaa8a55decd46de6b6e4606113fbda7bf1f18c1bc40fd9a9cce88c5b58d1` |
| 28 | `lemma` | [quasispectrum.zero_eq_nonunits](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/quasispectrum-zero-eq-nonunits.md) | 269 | `result-track:c31532e0c36dd8cd4733b382d543fef043ccd43f4de7c78cb42476eaf1407ef2` |
| 29 | `lemma` | [quasispectrum.zero_eq](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/quasispectrum-zero-eq.md) | 275 | `result-track:ca7c34ae339386175b2d80960f9825e077a6124d109aa5d298050347cf78273f` |
| 30 | `theorem` | [quasispectrum.of_subsingleton](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/quasispectrum-of-subsingleton.md) | 280 | `result-track:bcd884ab1acd0c29fb7d74de18023210d4c6b6d5d9c1b8309149fefb31263aa8` |
| 31 | `lemma` | [NonUnitalAlgHom.quasispectrum_apply_subset'](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/nonunitalalghom-quasispectrum-apply-subset.md) | 289 | `result-track:5ab474b7e3a236426e8ac1279cb57ab63c168ccf80e48117f301b3c08fef64a4` |
| 32 | `lemma` | [NonUnitalAlgHom.quasispectrum_apply_subset](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/nonunitalalghom-quasispectrum-apply-subset-source-edition-2.md) | 303 | `result-track:88709d402462cd68702929b4973e00f0c004db0a8ce01d51fa381eee0880a909` |
| 33 | `lemma` | [AlgEquiv.quasispectrum_eq](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/algequiv-quasispectrum-eq.md) | 310 | `result-track:89ab370c628cac9058ebbf33ac395f631392dceabd43ef15f7e56a8681fe6553` |
| 34 | `lemma` | [quasispectrum.coe_zero](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/quasispectrum-coe-zero.md) | 325 | `result-track:6a496bd43cc22d716dc6698af1fda8c3d2462530edd1deec400118b6724aebe9` |
| 35 | `lemma` | [quasispectrum.mem_of_not_quasiregular](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/quasispectrum-mem-of-not-quasiregular.md) | 327 | `result-track:b5f92c261105915324df69719b55b070ffd18c90a0e7d38e8942d33d1c601f12` |
| 36 | `lemma` | [quasispectrum_eq_spectrum_union](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/quasispectrum-eq-spectrum-union.md) | 331 | `result-track:188346d98c5077bbe5ec75be0718efc4af274b2fbc01ea18cb1e45adb33d9846` |
| 37 | `lemma` | [spectrum_subset_quasispectrum](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/spectrum-subset-quasispectrum.md) | 340 | `result-track:fd62ea40bae2adfdfb7cc64e7619acd9c272d247181254d3f9e2727525fc149f` |
| 38 | `lemma` | [quasispectrum_eq_spectrum_union_zero](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/quasispectrum-eq-spectrum-union-zero.md) | 344 | `result-track:9907f9c7f24352d6c848c3aed6552373f9d569b2ee6dfa02f7b49564e6c10e2b` |
| 39 | `lemma` | [mem_quasispectrum_iff](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/mem-quasispectrum-iff.md) | 349 | `result-track:7c1ae8ec17ace5c1cb1bbb5611e06e66e695fe0bce946c67df5b3c89cd4dc4be` |
| 40 | `lemma` | [isQuasiregular_inr_iff](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/isquasiregular-inr-iff.md) | 357 | `result-track:d5696281755c19aac538fe3f09e3acc691d9e041542e7b14a2445efcfaa9ee0f` |
| 41 | `lemma` | [zero_mem_spectrum_inr](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/zero-mem-spectrum-inr.md) | 365 | `result-track:157419f4163b3ed54cda7a567471d02e738e697bedd6d787ed512dcd47f72f4a` |
| 42 | `lemma` | [mem_spectrum_inr_of_not_isUnit](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/mem-spectrum-inr-of-not-isunit.md) | 373 | `result-track:44ceae20cd126f337ee5c96b339f5f56012869c0c799c4bc777a45c7deb6b919` |
| 43 | `lemma` | [quasispectrum_eq_spectrum_inr](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/quasispectrum-eq-spectrum-inr-source-edition-2.md) | 378 | `result-track:b23e3405534451ea87ee3ee75739e67bfbee41df07322c59a56be333cb23d4fd` |
| 44 | `lemma` | [quasispectrum_eq_spectrum_inr'](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/quasispectrum-eq-spectrum-inr.md) | 387 | `result-track:05a23b9ae017d8fc332f7f5d7de2aaca6c06c717000839b35104bdb18fd6e38a` |
| 45 | `lemma` | [quasispectrum_inr_eq](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/quasispectrum-inr-eq.md) | 397 | `result-track:6926cd1d63cffa97a6d38845b6ac2e9ba6225ecfed22687870d3ea0c470b4872` |
| 46 | `lemma` | [quasispectrum.mul_comm](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/quasispectrum-mul-comm.md) | 406 | `result-track:ccf1dc1ffabe43deed243efbee966eb25fd96c2a2ac62a0db1cae4c989a44dd3` |
| 47 | `class` | [NonnegSpectrumClass](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/nonnegspectrumclass.md) | 419 | `declaration-track:064c9bcf517677b5c3d17b2a3b22937e1ad103433d6fdc673684005e3352c014` |
| 48 | `lemma` | [iff_spectrum_nonneg](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/iff-spectrum-nonneg.md) | 428 | `result-track:2759d2252aa79a46617022e8af185ad53ba18fed51acc4aad91c8e799f871127` |
| 49 | `lemma` | [nonneg_of_mem_quasispectrum](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/nonneg-of-mem-quasispectrum.md) | 435 | `result-track:ef402ec5a9da6fe1796a552753a7d5c3d177ebdf338ccdd5c2cb484f79d1e6c0` |
| 50 | `lemma` | [spectrum_nonneg_of_nonneg](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/spectrum-nonneg-of-nonneg.md) | 443 | `result-track:1d15f5a13132f1bd2162198d5536812e983d1365d186ae0f1bce18443bb79211` |
| 51 | `structure` | [QuasispectrumRestricts](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/quasispectrumrestricts.md) | 463 | `declaration-track:1667ae648bdba363ac769cd44ba273661a194eaba24fa4379fa16c951ee457b8` |
| 52 | `lemma` | [quasispectrumRestricts_iff](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/quasispectrumrestricts-iff.md) | 471 | `result-track:9eb7281ecf23bd8276de9a4925c5093b2b0f177cd2efa6ba349a733180ba27a6` |
| 53 | `theorem` | [quasispectrum.algebraMap_mem_iff](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/quasispectrum-algebramap-mem-iff.md) | 479 | `result-track:dcc0899ef3d51969eff3d97f51bfee0de991311dcb26de01299a074213d06123` |
| 54 | `theorem` | [quasispectrum.preimage_algebraMap](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/quasispectrum-preimage-algebramap.md) | 489 | `result-track:771a1bb939c90a3657b2967bddca314b5c2ee9f253744a25a1a6905f21a8badf` |
| 55 | `theorem` | [map_zero](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/map-zero.md) | 502 | `result-track:2f0366cd4db57e4034d2c15d9039a44b3ba574c0a926a7c865f9d8f6f0cd5edd` |
| 56 | `theorem` | [of_subset_range_algebraMap](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/of-subset-range-algebramap-source-edition-2.md) | 505 | `result-track:eee38e63af4d1ea990d3129da06a84ee5e0440d0c4d5767b2b50ad6f9b4382fb` |
| 57 | `lemma` | [of_quasispectrum_eq](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/of-quasispectrum-eq.md) | 510 | `result-track:5d0a1c3bc02bf132e389d62293f9a41b45e604b2f97bcb7189320c4c0a096e2f` |
| 58 | `lemma` | [mul_comm_iff](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/mul-comm-iff.md) | 517 | `result-track:80aefe604f98c6ccf0ce0f06ef07d6e0d6bf1391e9c5e846c8f00003dc46d9db` |
| 59 | `theorem` | [algebraMap_image](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/algebramap-image-source-edition-2.md) | 525 | `result-track:25f46afa46d9666de3f5c17ec8a2e687132bbf016a0a792a3d309f9c36781ad6` |
| 60 | `theorem` | [image](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/image.md) | 532 | `result-track:3b640b18c3b4a5b44f90a49cc308d610f003525bc85099ed424a82dfbd87c0df` |
| 61 | `theorem` | [apply_mem](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/apply-mem.md) | 535 | `result-track:1155433c7f5f5c7a93f22dc69d41ccdaf52f20e48c68ac9ff77f90cdf76a280c` |
| 62 | `theorem` | [subset_preimage](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/subset-preimage.md) | 539 | `result-track:19e23a709b35041b2b71e876e626ccc72b1d42b8bb36a858c317061970400a6b` |
| 63 | `lemma` | [comp](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/comp.md) | 543 | `result-track:05b319a157924d739e12c5b43ee07a1d1f1e93e0486892aec5962507a6f81032` |
| 64 | `def` | [SpectrumRestricts](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/spectrumrestricts.md) | 564 | `declaration-track:e27bad3674280bd75b4c72084d964855d8207ca27e48c12bfad47591b0097f44` |
| 65 | `theorem` | [rightInvOn](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/rightinvon.md) | 576 | `result-track:37fe801148153b2a4df5b89e5c084703726c9d98389833eff8ae241a7e94416c` |
| 66 | `theorem` | [of_rightInvOn](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/of-rightinvon.md) | 579 | `result-track:7418695f2886240284f94e15ca4c88cfdc02f3e432e7cc775e1a6071e1d24384` |
| 67 | `lemma` | [_root_.spectrumRestricts_iff](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/root-spectrumrestricts-iff.md) | 587 | `result-track:05b331c80b4103e479f5bca99c08e2ea5503728bc026c7e266de37e4ae6fafca` |
| 68 | `theorem` | [of_subset_range_algebraMap](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/of-subset-range-algebramap.md) | 592 | `result-track:7696f12cdac2f93433d2e2969e182e58293c8fda71907c68a9181de1eefde862` |
| 69 | `lemma` | [of_spectrum_eq](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/of-spectrum-eq.md) | 602 | `result-track:d713d7fbccf5fdf67fa750324026dfd6a4057d288e5d673da94770eba8d98029` |
| 70 | `lemma` | [mul_comm_iff](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/mul-comm-iff-source-edition-2.md) | 609 | `result-track:a17ee18e5b076aa97a2070927fd219e6849112f9430fc3c2886741aa0bb97d8e` |
| 71 | `theorem` | [algebraMap_image](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/algebramap-image.md) | 618 | `result-track:1b2de09bcc50520fc3919517201da044bea955c25e1d1805397c2543795bd424` |
| 72 | `theorem` | [image](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/image-source-edition-2.md) | 625 | `result-track:534b8a7b0777f5f7cdb95f119930023c99a01ac9d2b1c03779de1ef675f75d8f` |
| 73 | `theorem` | [apply_mem](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/apply-mem-source-edition-2.md) | 628 | `result-track:a72cf90a1f136ae63c06a8d4e7e1360f0e7b3700015033255a8a8bcf744dfccb` |
| 74 | `theorem` | [subset_preimage](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/subset-preimage-source-edition-2.md) | 632 | `result-track:ac28cae960716f2adbae3db53ccb62347c5eaa67116539547a9213bd2aa8a934` |
| 75 | `theorem` | [quasispectrumRestricts_iff_spectrumRestricts_inr](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/quasispectrumrestricts-iff-spectrumrestricts-inr.md) | 639 | `result-track:466884cc7d9082917c14ef74f2760d79ca1efba3173075d7bb7c25ae78070b26` |
| 76 | `lemma` | [quasispectrumRestricts_iff_spectrumRestricts_inr'](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/quasispectrumrestricts-iff-spectrumrestricts-inr-source-edition-2.md) | 648 | `result-track:63ce31b85f3be712561ab260182ee5da7b2cc4e18e18ddfed70d1af3825bbc8d` |
| 77 | `theorem` | [quasispectrumRestricts_iff_spectrumRestricts](../../../../AssociativeRingsAndAlgebras/QuasispectrumPublic.lean/declarations/quasispectrumrestricts-iff-spectrumrestricts.md) | 656 | `result-track:d05ea694f3bde3ba194ff823ce471524caa9294372792c19c2f29c254b5468b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=72cfa2e8815c85d74d217d5c5f3f89b332cba98f8b542e9269e2c9cec1c06df5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variante5da416f74d701c6970a0d6872d95a4ebe58d10a5fb6cd0ac0711a6586bdf4aa.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variante5da416f74d701c6970a0d6872d95a4ebe58d10a5fb6cd0ac0711a6586bdf4aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
