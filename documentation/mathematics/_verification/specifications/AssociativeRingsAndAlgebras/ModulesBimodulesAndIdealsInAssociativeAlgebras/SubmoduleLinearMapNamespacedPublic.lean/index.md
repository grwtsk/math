# Verification target: Submodule Linear Map Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c965a9a47ff24b9f62b7595b303fa88d4440bdf",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant6b6785c0bedfbd6ff76406795be93377631038bdc7472a5a3d08dedfd751a69d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c965a9a47ff24b9f62b7595b303fa88d4440bdf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant6b6785c0bedfbd6ff76406795be93377631038bdc7472a5a3d08dedfd751a69d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearMap/Variant6b6785c0bedfbd6ff76406795be93377631038bdc7472a5a3d08dedfd751a69d.lean.json)

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
| 1 | `def` | [subtype](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/subtype-source-edition-2.md) | 56 | `declaration-track:e6cee2010824233f1a8ce5c8172ff5c223b78569d1d4707260403b5e05071443` |
| 2 | `lemma` | [subtype_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/subtype-apply-source-edition-2.md) | 63 | `result-track:4931107115a656fe16a10dc878faddea8e3e0940ca878d14732cb645599f2290` |
| 3 | `lemma` | [subtype_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/subtype-injective.md) | 66 | `result-track:aae6866cc7a86a79f2c751646ea216130d708adbf4569689260a7ec57f2736ec` |
| 4 | `theorem` | [coe_subtype](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/coe-subtype-source-edition-2.md) | 71 | `result-track:94ae1039bd1e4667690403bab7d440f9282cac34ae39047fa921c2658b35dfcd` |
| 5 | `def` | [subtype](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/subtype.md) | 90 | `declaration-track:68bfda6b79ecbf09ec6a26b83fb0b9e59d239a0f18be933f45320a3c4e6e6023` |
| 6 | `theorem` | [subtype_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/subtype-apply.md) | 97 | `result-track:2082d4c5b541324a41e4e5d3a53996251a5c50f8974306e9985e6b1ec2041c35` |
| 7 | `lemma` | [subtype_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/subtype-injective-source-edition-2.md) | 100 | `result-track:b8c8de2d2370f01a2acd576eae26cad59872808ccf8c5431caf6fd0d47750c09` |
| 8 | `theorem` | [coe_subtype](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/coe-subtype.md) | 105 | `result-track:8e89bc2a3fd17d73a6a0af1d11b3a0bf67608afaf2b80a834ae5116ce017cc0a` |
| 9 | `theorem` | [injective_subtype](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/injective-subtype.md) | 108 | `result-track:002be92af6b0bd3d64d7f5a5e547621acc484da24f03be255304c47344a6ba51` |
| 10 | `theorem` | [coe_sum](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/coe-sum.md) | 112 | `result-track:7a929156a05fe7dd7b9be0d8aea89d38f46428ac03d160ee9198726401d482e8` |
| 11 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/instance.md) | 120 | `declaration-track:1c0121ab354381150f17cbad577f74d990a740ab05d7f1f0c246e67f41389491` |
| 12 | `def` | [domRestrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/domrestrict.md) | 150 | `declaration-track:4a2bd3e28957a678f82882fdadf03ccc90f0d66f260cc122c25819169475b29e` |
| 13 | `theorem` | [domRestrict_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/domrestrict-apply.md) | 154 | `result-track:07c8c76afb9dd488741d15da36fd9d0ba307995aaeede279a410b60ddc0f61e4` |
| 14 | `lemma` | [coe_domRestrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/coe-domrestrict.md) | 158 | `result-track:150d60d314fc4be9111513a0b1853bc0fdea8dfb9e96e2dcd6f06093324f081f` |
| 15 | `def` | [codRestrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/codrestrict.md) | 165 | `declaration-track:b9e5d32e5e33a5b9cf047a8becd995038d3ec57139020a2d5c237689f237c521` |
| 16 | `theorem` | [codRestrict_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/codrestrict-apply.md) | 171 | `result-track:d3bf7bfa874b656685a8b38bf115a81b8c289aff281bde044316f8c1041312e1` |
| 17 | `theorem` | [comp_codRestrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/comp-codrestrict.md) | 176 | `result-track:0365efdf93be0a48dab1205941ebebfd1c089a57cdbf9876c149774abb796fee` |
| 18 | `theorem` | [subtype_comp_codRestrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/subtype-comp-codrestrict.md) | 181 | `result-track:59aa750a87c501e35e8e54bd9091e5d68b3fc3ee5b85fabc1566242f682694bc` |
| 19 | `theorem` | [domRestrict_comp_codRestrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/domrestrict-comp-codrestrict.md) | 186 | `result-track:c756d5061ee3a2313a5079e6a8f182dcb6efaf9d49ce9376395504d98ea1254a` |
| 20 | `def` | [codLift](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/codlift.md) | 198 | `declaration-track:7313ccc3dfeea8516d08b0d96d449209a3a92d323420c7813c64b273b4518063` |
| 21 | `theorem` | [codLift_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/codlift-apply.md) | 204 | `result-track:e97b4ea3fae2977cb44aaa002a494caac89b8980073403a2fdeee01861a733ce` |
| 22 | `theorem` | [comp_codLift](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/comp-codlift.md) | 209 | `result-track:b0eeaad591d604359e45be9b49675a8004bd374b87ed2ea9b77a89ba5f04ff97` |
| 23 | `def` | [restrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/restrict.md) | 217 | `declaration-track:4ec89d0d2cc5ca359ecd1236b997198407f487cfe6ddfdba01847d43462f477f` |
| 24 | `theorem` | [coe_restrict_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/coe-restrict-apply.md) | 222 | `result-track:373774943eb855d8a5156722bfe3dbc9517661a3d5320fbe3b8d257b87393a10` |
| 25 | `theorem` | [restrict_coe_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/restrict-coe-apply.md) | 227 | `result-track:fb436e1dfc1b184c7c02827a3122e52fcc9bcf01d92e4a5a09cbc93cd2bc6205` |
| 26 | `theorem` | [restrict_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/restrict-apply.md) | 231 | `result-track:232a732fee4ccbf5c6a85f5edfe2c704261d09ea998576f5f203ae0333ba9b5d` |
| 27 | `lemma` | [restrict_sub](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/restrict-sub.md) | 236 | `result-track:74c54e26438498f684a97c7ea713622d314a4738807c2b41e4fd421f484d3c3b` |
| 28 | `lemma` | [restrict_comp](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/restrict-comp.md) | 244 | `result-track:59b7b3686bded7a19aa62a44c9fa256f6af9cfaa33674cfe207ae6b3941d1568` |
| 29 | `lemma` | [restrict_smul_one](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/restrict-smul-one.md) | 251 | `result-track:58b5407f7df3c6687787edcf09ce4c4f1fabc3cbde559febec4cfb9292e59b24` |
| 30 | `lemma` | [restrict_commute](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/restrict-commute.md) | 257 | `result-track:f82a171bee4541c160010b468ae10380f4a527067a70c7db8ad0ad0d2b6c069b` |
| 31 | `theorem` | [subtype_comp_restrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/subtype-comp-restrict.md) | 263 | `result-track:e750563e85538cfd7a307b61b3726e32b2ad41828bc2414c3c30ddd1eec07cf3` |
| 32 | `theorem` | [restrict_eq_codRestrict_domRestrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/restrict-eq-codrestrict-domrestrict.md) | 267 | `result-track:5c17f8027a003ab6b26fd3a0c9079b777a710b0c8d35801a0c2aed41abe4d7c2` |
| 33 | `theorem` | [restrict_eq_domRestrict_codRestrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/restrict-eq-domrestrict-codrestrict.md) | 272 | `result-track:ef73c0c4bb575a1eb935f1a59040416424c86bfcc4dedf4a0badc80e5810244d` |
| 34 | `theorem` | [sum_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/sum-apply.md) | 277 | `result-track:dbaf8d2a923f2986cbe5f67901138c3aa5b61bbe7376573769f4aee873bc586a` |
| 35 | `theorem` | [coe_sum](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/coe-sum-source-edition-2.md) | 282 | `result-track:b3fff67c7c520f29e0391a109c7cca73096824965a876354194aeba632883137` |
| 36 | `theorem` | [Submodule Linear Map Namespaced Public](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/submodule-pow-eq-zero-of-pow-eq-zero.md) | 290 | `result-track:d8dc65c5620136bbcb8caf4d3b1f1d4f4fb36eb3e496b8a7faf0d79bc7130127` |
| 37 | `theorem` | [Submodule Linear Map Namespaced Public](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/pow-apply-mem-of-forall-mem.md) | 302 | `result-track:9be20b6c0e233eaf215ddc43189c5de4e59f8b42c7129a68062973ef9b986bd2` |
| 38 | `theorem` | [Submodule Linear Map Namespaced Public](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/pow-restrict.md) | 309 | `result-track:07c1e041e548d89da724c1306f59768d13b24ce84daeb086230cb400d89de705` |
| 39 | `def` | [domRestrict'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/domrestrict-source-edition-2.md) | 327 | `declaration-track:ea87816db312aee5df02a54fa4caa2f14b3ffd46eae5c9f9fec9cbcab3e4f3e3` |
| 40 | `theorem` | [domRestrict'_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/domrestrict-apply-source-edition-2.md) | 333 | `result-track:6db3e111e6a9e8c84c2a3e9b65aef0e98671ebe21fd0ad38ed318927061849fd` |
| 41 | `def` | [inclusion](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/inclusion.md) | 351 | `declaration-track:a5a478e781793332e4202bcb4ae465c5c86b9701c9497f2d9d5db4847d07cde7` |
| 42 | `theorem` | [coe_inclusion](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/coe-inclusion.md) | 355 | `result-track:631c825a8bed121d79adc508923a8d776e507a8ca3e25f768b22e6258e3c3412` |
| 43 | `theorem` | [inclusion_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/inclusion-apply.md) | 358 | `result-track:774b68000662271ef2a9dbe3d46fece407b7b49002e8ae2fd96c7c149fc3a3fc` |
| 44 | `theorem` | [inclusion_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/inclusion-injective.md) | 361 | `result-track:7c2fe1e6b9f541638a710e5d9814ae9c6bbb9684fd824a0b1f31e684fe20eb1b` |
| 45 | `theorem` | [subtype_comp_inclusion](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleLinearMapNamespacedPublic.lean/declarations/subtype-comp-inclusion.md) | 366 | `result-track:f35720504ee0cb14f20f0f7633839a55dda5c39f3b66931550b389a480776e8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc0071015cef5a89c648a8e52fae1b3cdc3333e8cefc8f0060b37a5348220b71 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant6b6785c0bedfbd6ff76406795be93377631038bdc7472a5a3d08dedfd751a69d.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/LinearMap/Variant6b6785c0bedfbd6ff76406795be93377631038bdc7472a5a3d08dedfd751a69d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
