# Verification target: FGModule Cat Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09bd4d17b9fbf0c070d0f579d2b5ed6620651e18",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant224fff0067dc00b2174054f75da802618256dc3d4a951114bbb76237ec434954.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09bd4d17b9fbf0c070d0f579d2b5ed6620651e18`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant224fff0067dc00b2174054f75da802618256dc3d4a951114bbb76237ec434954.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant224fff0067dc00b2174054f75da802618256dc3d4a951114bbb76237ec434954.lean.json)

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
| 1 | `def` | [ModuleCat.isFG](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/modulecat-isfg.md) | 49 | `declaration-track:b76ba3b8eed899c74fbbde2fd40ba880ad4419c604204b542c73f0e99faa4bfa` |
| 2 | `lemma` | [ModuleCat.isFG_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/modulecat-isfg-iff.md) | 53 | `result-track:5f76a82c83ab668e9cbde7bb275ee522c1a39f6c423d50dfed96af2f93b66359` |
| 3 | `abbrev` | [FGModuleCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/fgmodulecat.md) | 57 | `declaration-track:49121a482fa351cf2a0cfba35ae22658e17b4fcf1d6c50895f62fef37de29175` |
| 4 | `def` | [FGModuleCat.carrier](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/fgmodulecat-carrier.md) | 63 | `declaration-track:ac1a1e1b81421d6ca812e9c560c9ac21cc6df8dbf20388a51794bd451bf19b88` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/instance-source-edition-10.md) | 65 | `declaration-track:9ab70c4a6cc3998f7353b4bbe84020cf387c7e60fae95803eb3d43b9aac6d95c` |
| 6 | `lemma` | [FGModuleCat.obj_carrier](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/fgmodulecat-obj-carrier.md) | 70 | `result-track:664cd3e4850c04a32f21ab16a5e8ba38a5d683443d5c3c0153e1d814e975a4d9` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/instance-source-edition-13.md) | 72 | `declaration-track:cd0f7a30cb18e6f2268dc818bb58023476d69c9ecae21977ebcf374efa451a96` |
| 8 | `lemma` | [hom_hom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/hom-hom-comp.md) | 83 | `result-track:8909ea5d41f9832ad9c4ce4e087e2c531295bb75168f78fae414a9a24e178973` |
| 9 | `lemma` | [hom_hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/hom-hom-id.md) | 86 | `result-track:d5dff3cc5452eb3f86980a21422c31d2885db11cec27b9c08472687763fc2574` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/instance-source-edition-2.md) | 88 | `declaration-track:16f24e5216e8c13cc87a3eac6e1d5d291f3535a895073360e056f842f0f8d4ef` |
| 11 | `abbrev` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/of.md) | 92 | `declaration-track:b5f15eef7bf154b597806e20f4f5d6bcebc6fb3fa8d516aaddbf6e13ce5886b3` |
| 12 | `def` | [delabOf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/delabof.md) | 98 | `declaration-track:28147259f1605d383c90666050be05604421eaf559d3075b7d70a84e62a38a63` |
| 13 | `lemma` | [of_carrier](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/of-carrier.md) | 101 | `result-track:a5df57d7bf84880467bec731e2aa53f2509d078299671443b606682de596d93f` |
| 14 | `abbrev` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/ofhom.md) | 106 | `declaration-track:de2147d327f58766df82f385c6d736e549aff761e346530cabe0943fca25e299` |
| 15 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/hom-ext.md) | 112 | `result-track:bc863dcae41971b8d2a40e576dab0779854eee726bbe4416aac224020eb19ce0` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/instance-source-edition-7.md) | 115 | `declaration-track:76caf017836de82c9321c26d53063293788668fb0402dd0b26c7bfc283f6d96e` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/instance-source-edition-4.md) | 118 | `declaration-track:43b7d1b9f05a689b767e8c0f1c61cf8ec9014aa3c8bbda2f11d1ff5d5eee360b` |
| 18 | `def` | [isoToLinearEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/isotolinearequiv.md) | 124 | `declaration-track:d3bd3daaf6c72dc1593529325a6adf3168160b0a34eb123df374feaf36406de3` |
| 19 | `def` | [_root_.LinearEquiv.toFGModuleCatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/root-linearequiv-tofgmodulecatiso.md) | 130 | `declaration-track:de564c1459425f194c8b1307ea4385a8e275067cd34e16206983a1c6c0e2a0d1` |
| 20 | `def` | [ulift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/ulift.md) | 140 | `declaration-track:0590c87cdb51ced312228f189d067245d7c34683859fdd67d29be8553a2418a0` |
| 21 | `def` | [fullyFaithfulULift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/fullyfaithfululift.md) | 145 | `declaration-track:3fcd1baaa04c568ddf255552a29adb26e33543aa6b81f2dc284e1d38c8624b97` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/instance-source-edition-3.md) | 149 | `declaration-track:265d49b93a9b13afb1679024604b78d8787e3045be8a939cac22e3309b3e0b8b` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/instance-source-edition-9.md) | 152 | `declaration-track:97e4c066f70fc9b43422efafa27b07e7a68eee216317b26b08ed6f01655f700f` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/instance-source-edition-8.md) | 161 | `declaration-track:8b6324d2fdcec51c1607650772770ba703bba0228e2df67da2537441616cd2a3` |
| 25 | `lemma` | [tensorUnit_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/tensorunit-obj.md) | 168 | `result-track:191448bcc46d6f16c3aa6583649bdccdfe1c66f515b27f3d67b3a730d56ed059` |
| 26 | `lemma` | [tensorObj_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/tensorobj-obj.md) | 169 | `result-track:4bffecd01c0740e248332504b63e5439613c4b1dce866298492aedfbd5ff11e3` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/instance-source-edition-12.md) | 171 | `declaration-track:cb800ed09d2cb0ca7648dc8b4c8de3475880617388468ae9c0ca7d4083fe6a39` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/instance.md) | 172 | `declaration-track:1412c0cef70cde3a42e01bf164c6425e363bb9a51681c67cab8c3053023993fd` |
| 29 | `theorem` | [Iso.conj_eq_conj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/iso-conj-eq-conj.md) | 174 | `result-track:9f2ffcd0b9bec0f838e1ac7a0caa81dcd8928c370c0d2e75477982f6e3894d59` |
| 30 | `theorem` | [Iso.conj_hom_eq_conj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/iso-conj-hom-eq-conj.md) | 178 | `result-track:a674b06336d41d9fb193c1ffcfa61adbfe32a437e6879d4dadde7f4d0be64415` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/instance-source-edition-5.md) | 188 | `declaration-track:4c0cf62b2a7beb8ff2a33253ae85ade88a55b212b2b62f9fc9933334d3b8251c` |
| 32 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/instance-source-edition-11.md) | 191 | `declaration-track:b1c38259ace881754c7275209e384d3e95953f6f8dca9be54708b5c2e5165918` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/instance-source-edition-6.md) | 195 | `declaration-track:5ce1ead7b233795b9fd05936e49f059d4a09315950df8a575096b13c13f1b976` |
| 34 | `theorem` | [ihom_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/ihom-obj.md) | 202 | `result-track:2cebc64143362747d4260d0f064ddd23b4a41176d491f0f387d441e2e7c496e2` |
| 35 | `def` | [FGModuleCatDual](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/fgmodulecatdual.md) | 206 | `declaration-track:8c027b6e28bfad2bf8db7005d0270591f3c5ef217c2d38de75299f17246965b4` |
| 36 | `lemma` | [FGModuleCatDual_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/fgmodulecatdual-obj.md) | 209 | `result-track:76595970e988bf4bac744f5acdde3301e8fa3946c832ae173456fa40e84ca24d` |
| 37 | `lemma` | [FGModuleCatDual_coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/fgmodulecatdual-coe.md) | 211 | `result-track:ef5d398614323150ba1b607c9490a80eef78350df4863081e5acb1b56496bfa4` |
| 38 | `def` | [FGModuleCatCoevaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/fgmodulecatcoevaluation.md) | 216 | `declaration-track:cf889bc73e880f1ab8b49087f68e087161ea520914fa0d77b83294bd7f60dabf` |
| 39 | `theorem` | [FGModuleCatCoevaluation_apply_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/fgmodulecatcoevaluation-apply-one.md) | 219 | `result-track:db23a047b7bd702265e00b69b13bad142e006a7b53b86bcafa943a3cf23fede9` |
| 40 | `def` | [FGModuleCatEvaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/fgmodulecatevaluation.md) | 226 | `declaration-track:d90279d4661d29ff61a3671dc934b2fffc5dbf63424eec45f5143c5d36655d71` |
| 41 | `theorem` | [FGModuleCatEvaluation_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/fgmodulecatevaluation-apply-source-edition-2.md) | 229 | `result-track:324f6c328a40e84dc20f9095c3bc6e21e767e5770041af33d38db0d7f46a9dc7` |
| 42 | `theorem` | [FGModuleCatEvaluation_apply'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/fgmodulecatevaluation-apply.md) | 236 | `result-track:0b461ce5e85b93364f3eb3a648566bd5bcdcd3063b96eaa61f693a9a192baa9e` |
| 43 | `theorem` | [coevaluation_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/coevaluation-evaluation.md) | 242 | `result-track:1818bed6959650c36af132e996041e4bf0709da2c8a61e6fe4017806612d3d6d` |
| 44 | `theorem` | [evaluation_coevaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/evaluation-coevaluation.md) | 250 | `result-track:54280ffffd7b6282891b256c1fcbb1880b2255d9dd56d9f85547a710b9744e3a` |
| 45 | `instance` | [exactPairing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/exactpairing.md) | 259 | `declaration-track:aa8de0ef771dfe7075a1a13520b414807e2ccbcd6514c35d1dd12f90f3255f92` |
| 46 | `instance` | [rightDual](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/rightdual.md) | 265 | `declaration-track:69409b448e6d46e5ab4ac99d459ad83f83faa11e637a891abf5086c9e8b53ba8` |
| 47 | `instance` | [rightRigidCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/rightrigidcategory.md) | 268 | `declaration-track:cc169128d26a726a8586cdb2bc91404cd656c8290335ddc547ec477a0b91366c` |
| 48 | `theorem` | [LinearMap.comp_id_fgModuleCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/linearmap-comp-id-fgmodulecat.md) | 279 | `result-track:07cc5eba502232dc9166ff644b6b289377041669aba92e2f1c56512bc8d03208` |
| 49 | `theorem` | [LinearMap.id_fgModuleCat_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FGModuleCatBasicPublic.lean/declarations/linearmap-id-fgmodulecat-comp.md) | 285 | `result-track:57702a29a0d4e8cf4efeb8781c1700ca572d4c39fee46dfe87483462dd10ad69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=84771831a9fb01015e5973bcf244fb7e5754767f6c42c74bcc3e38b6709d2b29 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant224fff0067dc00b2174054f75da802618256dc3d4a951114bbb76237ec434954.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant224fff0067dc00b2174054f75da802618256dc3d4a951114bbb76237ec434954.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
