# Verification target: Discrete Quotient Namespaced Of Clopen

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93ec2ac80c2ce785765bad173d85844e2b3390ea",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DiscreteQuotient/Varianta0d593c5369251925e4c8bff758e175b4bedf53d99e331a6f4f3d92aecd2dc93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/index.md) · [Full source](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93ec2ac80c2ce785765bad173d85844e2b3390ea`.

Source path: `GRWTSK/Topology/GeneralTopology/DiscreteQuotient/Varianta0d593c5369251925e4c8bff758e175b4bedf53d99e331a6f4f3d92aecd2dc93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DiscreteQuotient/Varianta0d593c5369251925e4c8bff758e175b4bedf53d99e331a6f4f3d92aecd2dc93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.SubsetProperties` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DiscreteQuotient](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/discretequotient.md) | 80 | `declaration-track:c0016ea3fa31f64db541f364a2a3ff2df00ff9c1c74dc10301069c7137758988` |
| 2 | `lemma` | [toSetoid_injective](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/tosetoid-injective.md) | 90 | `result-track:3d7c098111b9141803e0e41fbb1e9be3192ec4e67bc32c2225bca0a69a278475` |
| 3 | `def` | [ofClopen](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/ofclopen.md) | 94 | `declaration-track:ef77c27dfaceae9fa94f1aa6fc1c0c42d1ebd385164c6ca4b6434486c02f0e59` |
| 4 | `theorem` | [refl](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/refl.md) | 99 | `result-track:c7ea5055d9c59b79820d99c08f7c51a2d44e4b0b6da90a0e8a712116b8e1a382` |
| 5 | `theorem` | [symm](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/symm.md) | 102 | `result-track:b2d63703a6893aad722f8b7a1edfa5abb075ab8d68aa26587b03011d1216ad93` |
| 6 | `theorem` | [trans](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/trans.md) | 105 | `result-track:75101c5e6f67509f5b1402a699ed8a26144586bb1a203400f320c4f3a5fa85f0` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/instance-source-edition-10.md) | 111 | `declaration-track:f9f62fc89277261baf937f51d0f7286d6f478be0efb65dacb4bcdd01a98e7217` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/instance-source-edition-11.md) | 114 | `declaration-track:ff0a1148cdb3431976ef6b76b58fcb688ca898f69bfb28e0de3c4d50530ffdbf` |
| 9 | `def` | [proj](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/proj.md) | 118 | `declaration-track:1b1ca86a1c71237ba5c43982ea30495a31f4fe0bafb1a93850b7b018aadff1b1` |
| 10 | `theorem` | [fiber_eq](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/fiber-eq.md) | 121 | `result-track:ec9d85b8ea21dd9f5a5e76e4578679502aebc9612e6623b649218441ddea5884` |
| 11 | `theorem` | [proj_surjective](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/proj-surjective.md) | 125 | `result-track:d3c36db87849b9814060648718d192b9f53dedbc46a708aeabd3477cae97bea7` |
| 12 | `theorem` | [proj_quotientMap](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/proj-quotientmap.md) | 129 | `result-track:73c534aafe03bdb7e3d960e82fec793e52432e1b02b86097e49a939c7f3d7d1d` |
| 13 | `theorem` | [proj_continuous](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/proj-continuous.md) | 133 | `result-track:dd92592740fff87826800bb2e4460627d9a954c0ca41ebc26ed063968f48b842` |
| 14 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/instance-source-edition-4.md) | 137 | `declaration-track:b990bf0288ff0c756159751baf7e74ce9e8b7bb9aa8cfd747888acb5f6095608` |
| 15 | `theorem` | [proj_isLocallyConstant](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/proj-islocallyconstant.md) | 142 | `result-track:26a7b06384282ef6c8fe4f75beefd1e823e25ea610a0a56919c5bc4efb290d5d` |
| 16 | `theorem` | [isClopen_preimage](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/isclopen-preimage.md) | 146 | `result-track:3660c78a1b59daecad750a882a83374aa1cca86725fbfc693a8289acb68230c9` |
| 17 | `theorem` | [isOpen_preimage](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/isopen-preimage.md) | 150 | `result-track:1cfbaa4c2b6e2ccd66f4052f048dd87b2785e056e35ffd839d6a35ad459d9813` |
| 18 | `theorem` | [isClosed_preimage](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/isclosed-preimage.md) | 154 | `result-track:c53c9a01c599c64aae75bcb5eae99b3947774ecd7ce75fb9caa39776684e5252` |
| 19 | `theorem` | [isClopen_setOf_rel](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/isclopen-setof-rel.md) | 158 | `result-track:cc7f53ae8ea9a20d8750cedcb5d3285dfdd067a87931e5f2d2cc2da228960e74` |
| 20 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/instance-source-edition-8.md) | 163 | `declaration-track:e115eedb917f61f0f91ba68d84e839dc304079235c05aa9d9f4d717f5b259c00` |
| 21 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/instance-source-edition-5.md) | 166 | `declaration-track:bdb58d88777e3d53afcedb86dc497d691b8d161b23eb5d32c40da1c0ee3be2b3` |
| 22 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/instance-source-edition-3.md) | 169 | `declaration-track:880e9206d5fcb2e3e0937733a1385cdf1c6213944e0060011d30f77a1b8ccaf1` |
| 23 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/instance-source-edition-7.md) | 173 | `declaration-track:cc411993d387a704c2ce391da9730fec8c9668adb76907deeb365b5bebe6cde4` |
| 24 | `instance` | [inhabitedQuotient](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/inhabitedquotient.md) | 175 | `declaration-track:cac8ebc8bf9b331aae0decf3f3d79e925021ea9af82791796949d5f2a4fbaff0` |
| 25 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/instance.md) | 179 | `declaration-track:07d163f8f8f75186f0bed3cba461bc5c7b5a086186e018aa8112970b594d474e` |
| 26 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/instance-source-edition-9.md) | 183 | `declaration-track:eebc6d148309a5c7d822f8fed36343d728d78c2821fce5f2afd39f2ee4d6143d` |
| 27 | `def` | [comap](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/comap.md) | 191 | `declaration-track:6651500559bcef385bf002f949cb052eb6e194c5607ffc740b1c9b8d114ba7fe` |
| 28 | `theorem` | [comap_id](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/comap-id.md) | 197 | `result-track:f5b42344f524ed7915e7cedc52c7c696d002240aac8f90c444c4c0ee80795246` |
| 29 | `theorem` | [comap_comp](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/comap-comp.md) | 201 | `result-track:abe12db2214d4903ebd228fbd5ee2a49cbd174ffee50c4e34cef3dd30f839eff` |
| 30 | `theorem` | [comap_mono](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/comap-mono.md) | 206 | `result-track:f9f1778741b1dd5b8203bf95105fa904ec2bb34f71a19fcb3d7a99a4d4477243` |
| 31 | `def` | [ofLE](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/ofle.md) | 216 | `declaration-track:eb7eee68f214b5921871e2ad0d3988becd1efc38fc45dd083d41eb02eee842b3` |
| 32 | `theorem` | [ofLE_refl](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/ofle-refl.md) | 221 | `result-track:e7e7b5deaaba3832e02bb9b7db6c5d504f0c05c4ca60974a0f6a21d056afae7c` |
| 33 | `theorem` | [ofLE_refl_apply](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/ofle-refl-apply.md) | 226 | `result-track:3eccb6167b670dd1a43d4fa72c04c43b391438a67dd6ede1074bb5aeead25962` |
| 34 | `theorem` | [ofLE_ofLE](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/ofle-ofle.md) | 230 | `result-track:33e04c9c873ae282b6baac31e7e20968f441a785b582e5248ca7c1c9a66720f1` |
| 35 | `theorem` | [ofLE_comp_ofLE](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/ofle-comp-ofle.md) | 237 | `result-track:cb24715ef37e0eadf600662eabef8053025dd8b42c9f78237e7d63c2b6669fcb` |
| 36 | `theorem` | [ofLE_continuous](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/ofle-continuous.md) | 241 | `result-track:6dbfa7e400aa808f4272118c0878215c26e75a84895afb96510dbf42a3ed56ee` |
| 37 | `theorem` | [ofLE_proj](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/ofle-proj.md) | 246 | `result-track:9a25982d28ad027120b4306b7ab7cb73dfbb406803215f8e772244f90c9bbe94` |
| 38 | `theorem` | [ofLE_comp_proj](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/ofle-comp-proj.md) | 251 | `result-track:dfd11633f9d32924262597d7b16382d50313f5eb4174253f9a3c661721cf58ad` |
| 39 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/instance-source-edition-2.md) | 260 | `declaration-track:80ffba8c5d86211403d93c592e11f3658fae876fe5319988889c7b974fdb699c` |
| 40 | `theorem` | [proj_bot_eq](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/proj-bot-eq.md) | 271 | `result-track:5cb7d0062f2c517a504f686f19515295bf51afa83cfb91d81762b1e56a4bab16` |
| 41 | `theorem` | [proj_bot_inj](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/proj-bot-inj.md) | 276 | `result-track:65bc598c69c75a5703bdd6bc9fd45dad608ab68b1d25c417135b75963449f3a9` |
| 42 | `theorem` | [proj_bot_injective](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/proj-bot-injective.md) | 279 | `result-track:009c4245dd44a32319c58f3132f124466419078d2c8e035f34c34fbcef55f48c` |
| 43 | `theorem` | [proj_bot_bijective](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/proj-bot-bijective.md) | 283 | `result-track:b2c25c4e601cafce342b3b09f19d98782e8e57b1979f30c2f1712c48c45312c7` |
| 44 | `def` | [LEComap](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/lecomap.md) | 293 | `declaration-track:df7f3ecca9b4570890af2afffebcfc0338ab600deb6b50c1e86837b69c857ed8` |
| 45 | `theorem` | [leComap_id](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/lecomap-id.md) | 297 | `result-track:7029c66cc2450c69cdcd5ced6a1fdc45f23e3a5a75f4007b0d79872dd83f369a` |
| 46 | `theorem` | [leComap_id_iff](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/lecomap-id-iff.md) | 303 | `result-track:0b9f89ba5948dfad8a16dffb4d6e4f316e1987623746e07fa18f0d763f4c1fdf` |
| 47 | `theorem` | [LEComap.comp](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/lecomap-comp.md) | 307 | `result-track:f1a21b93d78d4b15a7432cb4167ecf0cd7874fb3a21f98116c02438a0793d637` |
| 48 | `theorem` | [LEComap.mono](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/lecomap-mono.md) | 311 | `result-track:e330d01b695db1387727422fd68c9593384dabd3310fc80f7ec18417f9218b1c` |
| 49 | `def` | [map](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/map.md) | 316 | `declaration-track:66987255dd78ebb815a35420decf9f7fbc3eba14de08fec2a0cea0e1a5e1a86d` |
| 50 | `theorem` | [map_continuous](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/map-continuous.md) | 319 | `result-track:2aa70a939b3312a2725e2fc762c6493a01de3c3e71cfc92b6179a520a0ce85d1` |
| 51 | `theorem` | [map_comp_proj](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/map-comp-proj.md) | 324 | `result-track:6cf852382a9996b1a2a04cfeaf6df911802b514e75062ca47935448244f5014a` |
| 52 | `theorem` | [map_proj](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/map-proj.md) | 329 | `result-track:706353dfee9ac4c703dae856adfd0edec54895b164d0fbf77780a7e9984bc0e3` |
| 53 | `theorem` | [map_id](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/map-id.md) | 334 | `result-track:c7be9501970b971f530536c479726be19f5cb7b25cc215ae5f0e291a46fd8b68` |
| 54 | `theorem` | [map_comp](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/map-comp.md) | 338 | `result-track:0420e4869f83b2ff8ef4fde70b12a4d01661181ec423bbaa0ca775b99d991006` |
| 55 | `theorem` | [ofLE_map](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/ofle-map.md) | 345 | `result-track:f6b4063b4c8b95a9501a24f9c8484338b30d2b1d133505082ecd124471f8d7d8` |
| 56 | `theorem` | [ofLE_comp_map](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/ofle-comp-map.md) | 352 | `result-track:de6efd1b5c9e3a688b4a706238529c4f99e193bb3c457ac6d9051b108b6dfed9` |
| 57 | `theorem` | [map_ofLE](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/map-ofle.md) | 358 | `result-track:9d93cbb57c593f03e85817f5f8bb022545051ace550d197c5cd9d3afa60f369c` |
| 58 | `theorem` | [map_comp_ofLE](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/map-comp-ofle.md) | 365 | `result-track:f1c1467c1a39ee060629dbe2444612bcfd1eb5a979995ea87292a4345ea3fa48` |
| 59 | `theorem` | [eq_of_forall_proj_eq](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/eq-of-forall-proj-eq.md) | 372 | `result-track:ecb33f1b88a89cb232132664738de142bbafcb6b0f1aa2f1a6f4e645622efd16` |
| 60 | `theorem` | [fiber_subset_ofLE](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/fiber-subset-ofle.md) | 380 | `result-track:f9f628ff6e502df03b711b733d59a6cd3d583601751b5a861a0c54902869d7f6` |
| 61 | `theorem` | [exists_of_compat](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/exists-of-compat.md) | 387 | `result-track:da2ecd7588b0abafdf658a7d4e37ed57f7bd92a2b1aa73d6fc79018c0edf66a5` |
| 62 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/instance-source-edition-6.md) | 402 | `declaration-track:c5b6ba14d996b200e4a5550391bf3843af52cdedc2e1eef97fc849b32a1bb38a` |
| 63 | `def` | [discreteQuotient](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/discretequotient-source-edition-2.md) | 413 | `declaration-track:c08c4b67602b79c30dd0851e6884b5d6e908f32f02319a3fadaf50cdfd3e379d` |
| 64 | `def` | [lift](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/lift.md) | 420 | `declaration-track:b003ad046c48e7a072ba36c155fec9de12fd368bb7528c41512b494b409e40c7` |
| 65 | `theorem` | [lift_comp_proj](../../../../GeneralTopology/DiscreteQuotientNamespacedOfClopen.lean/declarations/lift-comp-proj.md) | 425 | `result-track:ee37a6475ad0595dffed187865940127a0d64cf359ccbfddbfe52990e5d65043` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65f83ada4691ffa0255867a1c98199bdd899eb6df92e4dc6cbc08d70e0db2705 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/DiscreteQuotient/Varianta0d593c5369251925e4c8bff758e175b4bedf53d99e331a6f4f3d92aecd2dc93.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/DiscreteQuotient/Varianta0d593c5369251925e4c8bff758e175b4bedf53d99e331a6f4f3d92aecd2dc93.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
