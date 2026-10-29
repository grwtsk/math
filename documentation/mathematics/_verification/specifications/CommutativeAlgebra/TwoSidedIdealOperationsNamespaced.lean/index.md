# Verification target: Two Sided Ideal Operations Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6df2815c25807fc32d429257dc5ff09446d2fa6b",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Operations/Varianta9f3d0153b2b929cae1820044730dec01e3e27fb203bf0b4e6d245623364989e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6df2815c25807fc32d429257dc5ff09446d2fa6b`.

Source path: `GRWTSK/Algebra/Operations/Varianta9f3d0153b2b929cae1820044730dec01e3e27fb203bf0b4e6d245623364989e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Operations/Varianta9f3d0153b2b929cae1820044730dec01e3e27fb203bf0b4e6d245623364989e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Map` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Lattice` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Congruence.Opposite` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Defs` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TwoSidedIdeal.Lattice` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [span](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/span.md) | 61 | `declaration-track:69ed70441a6b140536d6b261b5c2bbac5f96ecb34e5241d2c63175e678dc07e9` |
| 2 | `lemma` | [subset_span](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/subset-span.md) | 64 | `result-track:4e3a5ae83baa0cca5b519c173221a99ba12ad8ee19c42a7332f148e3e6347bd8` |
| 3 | `lemma` | [mem_span_iff](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/mem-span-iff.md) | 69 | `result-track:6120a6e9d57d51708a66e8797a31687dea77733f1f0225aa4c8829c5c1f654ba` |
| 4 | `lemma` | [span_mono](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/span-mono.md) | 80 | `result-track:78b79b0855a849b6b9903ac80d776425e9c0ac550a064f2566c0fe0447859995` |
| 5 | `lemma` | [span_le](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/span-le.md) | 85 | `result-track:4ee13be6d2b3e4b45e4a78dbc76402fdbe6d2f36bb8aabd5790534b6f407af21` |
| 6 | `theorem` | [span_induction](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/span-induction.md) | 95 | `result-track:c701a8848a2baae7263fba2897b90ae71197af4c7d32c6bd60b24f50eb2bb39a` |
| 7 | `def` | [map](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/map.md) | 119 | `declaration-track:fdc0540b5ecb2bfb78b335b97e8ad72914a59919e4ccfeae81fc999e03d7d572` |
| 8 | `lemma` | [map_mono](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/map-mono.md) | 122 | `result-track:818835a9bc3e1ee6b298abc0f659afd35267a2269a19b0bd0bf601cfdfa81814` |
| 9 | `def` | [comap](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/comap.md) | 130 | `declaration-track:58b1a225ccaed9703b662315584b4bb381e1951b5b0b0349d7128933f2c9ad95` |
| 10 | `lemma` | [comap_le_comap](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/comap-le-comap.md) | 139 | `result-track:dcd24000011c1f2b32945370f1a22d96dd67cc9b483dc3297c667470467bb851` |
| 11 | `lemma` | [mem_comap](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/mem-comap.md) | 143 | `result-track:966c3df03ae36ee73ed79e972c8187f8ed77a62f718d749a0e7231dbf14524c5` |
| 12 | `def` | [Two Sided Ideal Operations Namespaced](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/maptwosidedideal.md) | 151 | `declaration-track:2dd81cdbbe12075bee007b97c75ab718cbfc69a336934d88f366b7487d9744f1` |
| 13 | `lemma` | [Two Sided Ideal Operations Namespaced](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/maptwosidedideal-apply.md) | 155 | `result-track:0696cd9b680906e4beb19138293f6b1364778dd20d1bf7178fc0aeb3fcfa8603` |
| 14 | `lemma` | [Two Sided Ideal Operations Namespaced](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/maptwosidedideal-symm.md) | 158 | `result-track:d04ddbd67cd6abd214176fc611d2b1f2ee1b0b55117faf6bf97a21404975a30c` |
| 15 | `lemma` | [comap_comap](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/comap-comap.md) | 168 | `result-track:2070cd81a56d92756e2518c34e27963db6ab3d999cd27f4f5fd529d558642558` |
| 16 | `lemma` | [mem_span_iff_mem_addSubgroup_closure_absorbing](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/mem-span-iff-mem-addsubgroup-closure-absorbing.md) | 181 | `result-track:6ab01d43680dbd402cae678362d9e12250353d41b96f63edbe19b2f48efe3ee8` |
| 17 | `lemma` | [set_mul_subset](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/set-mul-subset.md) | 213 | `result-track:142cbb4ea1486a7863bff3696139b259f7cb578babd25db11dd58e84f3624bff` |
| 18 | `lemma` | [subset_mul_set](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/subset-mul-set.md) | 218 | `result-track:d06db33c04087e96a5869f45771d8e1d859b2af7a0ee9edca925a435e5770db7` |
| 19 | `lemma` | [mem_span_iff_mem_addSubgroup_closure_nonunital](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/mem-span-iff-mem-addsubgroup-closure-nonunital.md) | 223 | `result-track:174106b1d78a3f6ebb21b7b03612db2b72af61d9fc0125496a4ae9b754bf1ba5` |
| 20 | `lemma` | [mem_span_iff_mem_addSubgroup_closure](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/mem-span-iff-mem-addsubgroup-closure.md) | 254 | `result-track:c92d6ca3cb105054dcbf8bb22396907b15044df8c46c3a5c2988bf5df1ca0d2e` |
| 21 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/instance-source-edition-5.md) | 270 | `declaration-track:ff054bd87a22836fe5c9eba93c0c719178344d43484ca9975bad0f467672e8a1` |
| 22 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/instance-source-edition-3.md) | 272 | `declaration-track:66bb6f723b75674150e5a3a58c85e37f1b6e126700ae241330f6da04f0f3ca4b` |
| 23 | `instance` | [leftModule](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/leftmodule.md) | 274 | `declaration-track:fba61067db8985bcc84002a136d3dab49456434c21b1227a12fc6405d9d49a28` |
| 24 | `lemma` | [coe_smul](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/coe-smul.md) | 278 | `result-track:cae16ee61b86cf995431ffaeb2c05bba5a75599051be74483683d0266d69f06a` |
| 25 | `instance` | [rightModule](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/rightmodule.md) | 280 | `declaration-track:554eb1e1097e2e3a7d0f269ac4219ec92160f4da08edb1f5b9ada3ff3bb36ab5` |
| 26 | `lemma` | [coe_mop_smul](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/coe-mop-smul.md) | 284 | `result-track:97d119a09bac20515cee68deb081b5e8fca9bb3e011909efa17bdd5f4d6dbb3d` |
| 27 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/instance.md) | 286 | `declaration-track:23a093339f5fa30ae02ab9dbeb736d10d08634161634dc9369c738874353d233` |
| 28 | `def` | [subtype](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/subtype.md) | 294 | `declaration-track:a4a85de02a7517ad50d68156bbac8f8ec553385377b4103ed87d8f857f629f82` |
| 29 | `theorem` | [subtype_injective](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/subtype-injective.md) | 299 | `result-track:7ce6b43cdd23e5a24e048de15127becff34cf7f3940217c496ff43e4b638dd08` |
| 30 | `theorem` | [coe_subtype](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/coe-subtype.md) | 303 | `result-track:e3646c638362a04d01a835b7a3855825578526b2f88b15305376079b06f588ad` |
| 31 | `def` | [subtypeMop](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/subtypemop.md) | 311 | `declaration-track:910119a2bd6379d0a89ed972adb94fb3a2869dce85d2073c410bd374fc086a13` |
| 32 | `theorem` | [subtypeMop_injective](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/subtypemop-injective.md) | 316 | `result-track:91b6ce62df05c9f10f1a3934800ac1456f75d254b53c0a59c99036915c2812f5` |
| 33 | `def` | [fromIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/fromideal.md) | 320 | `declaration-track:bd3fc2708a4afa6c074f5c4db08f386de8d932be47366e0c2b226095a799ec06` |
| 34 | `lemma` | [mem_fromIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/mem-fromideal.md) | 324 | `result-track:7f92d0462238ae8100122bae7bfbe43d3c59a1b7acf49a2796bc30a70c0714ba` |
| 35 | `def` | [asIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/asideal.md) | 328 | `declaration-track:123babd885b3e6b57b5b73275ca3cf82274f29c73bf761b6d4b45b937191518c` |
| 36 | `lemma` | [mem_asIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/mem-asideal.md) | 337 | `result-track:225214fa76e0759fa2c9e6e4396c88dbee6660d6a75faf3e13dca381c1555f0d` |
| 37 | `lemma` | [gc](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/gc.md) | 340 | `result-track:6c98b5edab953f8989971acb79a59a47b8248eeec9bd51aa62ade9d74d022bb6` |
| 38 | `lemma` | [coe_asIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/coe-asideal.md) | 346 | `result-track:29af027ce22d778b3cd92cde952ca9b787b5e2c64e07a39c4e25f097918d84e8` |
| 39 | `lemma` | [bot_asIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/bot-asideal.md) | 348 | `result-track:1bbfca6454b4c5c811ec0fab837788e91ae190b55f602351ba0a9561cacd7a75` |
| 40 | `lemma` | [top_asIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/top-asideal.md) | 350 | `result-track:051aaf485b94d7681f2d623a0f38d1d5d283e1ceeceb71a141005e548e980dba` |
| 41 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/instance-source-edition-2.md) | 352 | `declaration-track:55932afd1b0cbbc5470b40979e80db9bd867c9b0d251aefce70aa964bf3340d4` |
| 42 | `def` | [asIdealOpposite](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/asidealopposite.md) | 356 | `declaration-track:5f44c9d7224ecf1e137c14328c66623c08f4b5a8eeeb1df2c568951025c2fdb0` |
| 43 | `lemma` | [mem_asIdealOpposite](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/mem-asidealopposite.md) | 362 | `result-track:ddba47ddd0ab1b729068c5f47b05da4b6c628054e8f166f4c7bb84710e776b9a` |
| 44 | `def` | [orderIsoIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/orderisoideal.md) | 376 | `declaration-track:d66ae66b9c42cda05868df904e6792fedb5ea8c02f93ad898ae46b3b65a3cee6` |
| 45 | `def` | [toTwoSided](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/totwosided.md) | 394 | `declaration-track:cd791dd7d81ef78e6e70559648438724b6a10b2c32d9be1305dc0a8c89e26fe6` |
| 46 | `lemma` | [mem_toTwoSided](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/mem-totwosided.md) | 398 | `result-track:3a43ce7bf20ffd2bde3fcd06fdbb0c62eef68afad520a30055b9686e0f852148` |
| 47 | `lemma` | [coe_toTwoSided](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/coe-totwosided.md) | 403 | `result-track:6e6c9fe5b2b1ea1ad77e20cc37f72a89981667e902ac7170a9df2e3ef7b352fe` |
| 48 | `lemma` | [toTwoSided_asIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/totwosided-asideal.md) | 407 | `result-track:32cd2f8637e328374f8e2fff66e0424456059f202ee833cd678a052ac9fc4d4f` |
| 49 | `lemma` | [asIdeal_toTwoSided](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/asideal-totwosided.md) | 411 | `result-track:2101847b9c83ab4aa2a8540dfc5596076397809207f03185c815fec098ad4846` |
| 50 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/instance-source-edition-4.md) | 415 | `declaration-track:abcefa91e02448115b39e9a36696f4327838a29c2c4a712699ae6a7142d35eaf` |
| 51 | `def` | [TwoSidedIdeal.orderIsoIsTwoSided](../../../../CommutativeAlgebra/TwoSidedIdealOperationsNamespaced.lean/declarations/twosidedideal-orderisoistwosided.md) | 421 | `declaration-track:1e352d5ca974f54e9d63963c0e4e1818bb5ef818679759a98bb3b62b1b618681` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d285d17c2e31f47ca2ec6f6f6dbd93a9d142b12319bf6fc9ae1e64db4773b90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Operations/Varianta9f3d0153b2b929cae1820044730dec01e3e27fb203bf0b4e6d245623364989e.lean","GRWTSK/_verification/specifications/Algebra/Operations/Varianta9f3d0153b2b929cae1820044730dec01e3e27fb203bf0b4e6d245623364989e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
