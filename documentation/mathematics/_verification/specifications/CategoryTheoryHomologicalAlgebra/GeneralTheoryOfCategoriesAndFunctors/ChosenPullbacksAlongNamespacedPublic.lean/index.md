# Verification target: Chosen Pullbacks Along Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f01b0ba88c1460b6cb4fc8daa65803dbe5628e7",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChosenPullbacksAlong/Variant5fb952c1b2cc2bc4dd91bfdbfbb35c2bea7bcc50cf0d591102f72aca50927065.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f01b0ba88c1460b6cb4fc8daa65803dbe5628e7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChosenPullbacksAlong/Variant5fb952c1b2cc2bc4dd91bfdbfbb35c2bea7bcc50cf0d591102f72aca50927065.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ChosenPullbacksAlong/Variant5fb952c1b2cc2bc4dd91bfdbfbb35c2bea7bcc50cf0d591102f72aca50927065.lean.json)

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
| 1 | `class` | [ChosenPullbacksAlong](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/chosenpullbacksalong.md) | 58 | `declaration-track:cfdef319c1ccd45bc538c5a70655da36f693954cce7ca37e90f55490d6b16c02` |
| 2 | `abbrev` | [ChosenPullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/chosenpullbacks.md) | 66 | `declaration-track:e174b493a384eaad3309ba2101a9b7970c06475a45b8cec5a554c114eb306522` |
| 3 | `def` | [ofHasPullbacksAlong](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/ofhaspullbacksalong.md) | 72 | `declaration-track:72742334161fa21274c1f5617c813b4338ae14a22e5171421744f5732ca3f0a5` |
| 4 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/id.md) | 79 | `declaration-track:fbdfa57a2195a5cae957e5037bf8a21e78faa1b2510fcaa8536025234fd4ec99` |
| 5 | `def` | [pullbackId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/pullbackid.md) | 85 | `declaration-track:4011dbb39d75a19fea05151a9dc03814776d0007897f59eaf4a0ff3294d2958b` |
| 6 | `theorem` | [unit_pullbackId_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/unit-pullbackid-hom-app.md) | 90 | `result-track:92b842518ee14748e0f28cc678045d778839ec909a9b9b70a68720654e70f689` |
| 7 | `theorem` | [unit_pullbackId_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/unit-pullbackid-hom.md) | 96 | `result-track:6513540fd1e77fbf53fb2f4bcfda5578a6657e0c26952962448a2f4241a984c8` |
| 8 | `theorem` | [pullbackId_hom_counit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/pullbackid-hom-counit.md) | 102 | `result-track:aa9b97f840763322c428239d637e50aebb4281779a12e7e3689cf2984fd766a7` |
| 9 | `def` | [iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/iso.md) | 111 | `declaration-track:a963931bac06f087361a04d2f831c540176599122e4ffa313b7074974a0fb028` |
| 10 | `def` | [isoInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/isoinv.md) | 119 | `declaration-track:f971dcb5c96f0a1c40a92c9be44932f24dd2f189a9a784838d46032524563802` |
| 11 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/comp.md) | 123 | `declaration-track:a203f6fafd8144fde27da6d6a4cc5ebde60ebe547acaa855dd08294d8009bba3` |
| 12 | `def` | [pullbackComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/pullbackcomp.md) | 131 | `declaration-track:26e3475be24b5c278b67e89c544b81d12d0a9ba7f5014897bc9b08b3a0d4dae0` |
| 13 | `theorem` | [unit_pullbackComp_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/unit-pullbackcomp-hom.md) | 137 | `result-track:561134d09118a00bdcade45b664254f259023132cded320802d8453d0bea3c8d` |
| 14 | `theorem` | [pullbackComp_hom_counit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/pullbackcomp-hom-counit.md) | 144 | `result-track:fb206b88a57e1a461bfc34b1ebec6f997ab314fe75c6fc1a1888df1f7d473d5b` |
| 15 | `def` | [cartesianMonoidalCategoryToUnit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/cartesianmonoidalcategorytounit.md) | 155 | `declaration-track:fd15e9b2b6e2f188d915f16c1cae3497bd9cc8108dd32bfab082e22261bae33f` |
| 16 | `def` | [cartesianMonoidalCategoryFst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/cartesianmonoidalcategoryfst.md) | 166 | `declaration-track:4f3b3010fd29f86ec83c3a4ce39923c05fc9e0738043c6a6cd4eb1f9a3abcf50` |
| 17 | `def` | [cartesianMonoidalCategorySnd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/cartesianmonoidalcategorysnd.md) | 177 | `declaration-track:4f5aa2edd959279d6189deaead8713112d9cbc1feaf462ce27d9fa6e097257cc` |
| 18 | `abbrev` | [pullbackObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/pullbackobj.md) | 189 | `declaration-track:9d3fd6383699d37e63bbcb9c3d12ca49c6fc47c8c16037900530ccd11d7695fe` |
| 19 | `abbrev` | [fst'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/fst-source-edition-2.md) | 192 | `declaration-track:272bf8cb49a82a6bcac9c12cd4b5c65cd228456c1825c56c155568be24df83ab` |
| 20 | `abbrev` | [fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/fst.md) | 196 | `declaration-track:1ea98a9047ed4e95494968c96f8523facb1478bb4485f38488ac548bc258c8ac` |
| 21 | `theorem` | [fst'_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/fst-left.md) | 198 | `result-track:ba6a7c3613272e4b03d8e1ac0591df374c99199946999f3dff9e64b8aad52150` |
| 22 | `abbrev` | [snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/snd.md) | 201 | `declaration-track:66a8fd87f8d8e93308e5be845c5761ff66e8731d77135729bb0bdcb80e9dc592` |
| 23 | `abbrev` | [snd'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/snd-source-edition-2.md) | 204 | `declaration-track:d38407130f5fe7c9136c8a5f25d0e5d9731c2de72c769158c0a8fae58cc2455d` |
| 24 | `theorem` | [snd'_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/snd-left.md) | 207 | `result-track:9ba9ca43d05cf7c80e5ef4d7b37c19a4dd29494c6ebada1266c591669d38e52c` |
| 25 | `theorem` | [condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/condition.md) | 212 | `result-track:e759b8abf29b5658b32f3c56661d84cd44b3c01c2fd2c32cbf3f88cc337c5f0b` |
| 26 | `theorem` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/hom-ext.md) | 217 | `result-track:f7defe5a8ab37da778d93b9f464ce5741cb935fd0dd44fb3912738c0709dda30` |
| 27 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/lift.md) | 237 | `declaration-track:6c7d47976ef7a301f0ce5df8361c1fa6fa037400c505c39f0b74bd43104e3b70` |
| 28 | `theorem` | [lift_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/lift-fst.md) | 242 | `result-track:aef5f60eb69ed162362df8f1bfc6d187126dd47bca10ea2a0e0d6285482f4966` |
| 29 | `theorem` | [lift_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/lift-snd.md) | 251 | `result-track:27b674c9e74fddc4ad1d1030427f131d5e4f08ebdc954d91dc85b6c429482245` |
| 30 | `def` | [pullbackMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/pullbackmap.md) | 275 | `declaration-track:a27faf9e21e1e8ac6563c7514d1a72b6e2cc0084539219578362dc30a8b26efc` |
| 31 | `theorem` | [pullbackMap_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/pullbackmap-fst.md) | 285 | `result-track:e8b64c65aaf4866c35747a43940630f98d2911e134e4ef21e7e7c42489121c1a` |
| 32 | `theorem` | [pullbackMap_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/pullbackmap-snd.md) | 291 | `result-track:e167eaee0edb13b157840f9b337bad5a6e91e05b78058f681d9501377298b5f3` |
| 33 | `theorem` | [pullbackMap_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/pullbackmap-id.md) | 297 | `result-track:5276009dd9f47d31750cd32f7231e3f4eb10c59af9a017eec7a2bd0bef968372` |
| 34 | `theorem` | [pullbackMap_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/pullbackmap-comp.md) | 301 | `result-track:34463ca4aad8219fdf00e357c63353fc6d36e73d6df0c2b2c3978131262be947` |
| 35 | `def` | [pullbackCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/pullbackcone.md) | 318 | `declaration-track:ffc92eaae49657e7f047ccc89c16f1d551c746bc4b51e638718e2d6dccdceaf5` |
| 36 | `lemma` | [pullbackCone_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/pullbackcone-fst.md) | 321 | `result-track:fd16ab05cced6cbf5516d59f5270e735dbc2df7cec433e988f9fcf4cd9690bb4` |
| 37 | `lemma` | [pullbackCone_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/pullbackcone-snd.md) | 323 | `result-track:0438e8a9dcc296dea54a0e7805c3b670221aad91c129d95bb5fd010404366bf3` |
| 38 | `def` | [isLimitPullbackCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/islimitpullbackcone.md) | 329 | `declaration-track:30f3cca554684dd989602946ac5db9f73df928d1594a5cb1721015b4154ce593` |
| 39 | `theorem` | [isPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/ispullback.md) | 334 | `result-track:072cfa13b2ca82e919b2540eede1abe2d432f46464a341bab6e85a6a93dad623` |
| 40 | `def` | [chosenPullbacksAlongFst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/chosenpullbacksalongfst.md) | 342 | `declaration-track:686a780990fc630d4656e826df4db3212644cda42f65923aa389c821f4bf526f` |
| 41 | `instance` | [hasPullbackAlong](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/haspullbackalong.md) | 348 | `declaration-track:d12b6930b7d720bebcf1e5a5c063e5b209e060ed9dc7e5e33da79e709c87ae8a` |
| 42 | `instance` | [hasPullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/haspullbacks.md) | 350 | `declaration-track:27a032f5af66a4070ba997983c614fe86f8832c19138bb642e98b6dc4d74f38b` |
| 43 | `def` | [pullbackIsoOverPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/pullbackisooverpullback.md) | 355 | `declaration-track:ea7816b236071ebcdac0b1a9ecb2efd849358acee559e355c273ee9ba0008f11` |
| 44 | `theorem` | [pullbackIsoOverPullback_hom_app_comp_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/pullbackisooverpullback-hom-app-comp-fst.md) | 359 | `result-track:1c6fec75ae120e7bee19912b4811ec69eb2b7458db33526a55a1c71331b39fe8` |
| 45 | `theorem` | [pullbackIsoOverPullback_hom_app_comp_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/pullbackisooverpullback-hom-app-comp-snd.md) | 366 | `result-track:e916bea18d727da0c06c8cfbbfb932a9f5d2b90f72571b126964e63e7390efd4` |
| 46 | `theorem` | [pullbackIsoOverPullback_inv_app_comp_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/pullbackisooverpullback-inv-app-comp-fst.md) | 371 | `result-track:43a4da942fb1051cd1d58e8accdee2e87f1e1a866e288838b4b75dfac8750b72` |
| 47 | `theorem` | [pullbackIsoOverPullback_inv_app_comp_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ChosenPullbacksAlongNamespacedPublic.lean/declarations/pullbackisooverpullback-inv-app-comp-snd.md) | 376 | `result-track:2c1d76034cad912ebd4c869d4e58a6634b40035d8ce63033f19f8348ca2c5faa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=421393aded7a29fffb1142f17ad302ae543360a3975c1d3827c36f86c0f9ef39 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChosenPullbacksAlong/Variant5fb952c1b2cc2bc4dd91bfdbfbb35c2bea7bcc50cf0d591102f72aca50927065.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ChosenPullbacksAlong/Variant5fb952c1b2cc2bc4dd91bfdbfbb35c2bea7bcc50cf0d591102f72aca50927065.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
