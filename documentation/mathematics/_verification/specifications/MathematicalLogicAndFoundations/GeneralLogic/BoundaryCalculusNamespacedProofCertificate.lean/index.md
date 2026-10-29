# Verification target: Boundary Calculus Namespaced Proof Certificate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "168b416b794a7ace175308b7dbeb133e459042b8",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundaryCalculus/Variante633dc8bb072a0bd0980abce4d0fe3cb4890d0ecd6ab70ce718e959d7cdfe386.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `168b416b794a7ace175308b7dbeb133e459042b8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundaryCalculus/Variante633dc8bb072a0bd0980abce4d0fe3cb4890d0ecd6ab70ce718e959d7cdfe386.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundaryCalculus/Variante633dc8bb072a0bd0980abce4d0fe3cb4890d0ecd6ab70ce718e959d7cdfe386.lean.json)

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
| 1 | `structure` | [ProofCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/proofcertificate.md) | 32 | `declaration-track:2e1cfce97f6cc67f9e9ab3a91bbb43ded290ea8277b6a3d80ccf28655e382a2b` |
| 2 | `def` | [HasCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/hascertificate.md) | 36 | `declaration-track:a48e294be5a8fa3bc968e9eee04818160e3ba7e5ca24e282db375d636328a07d` |
| 3 | `theorem` | [certificate_sound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/certificate-sound-source-edition-2.md) | 40 | `result-track:8ac0fdd3ae14d329aced7bebd698348ce0815e978c12d34d765d1426013f8878` |
| 4 | `structure` | [DTT](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/dtt.md) | 71 | `declaration-track:6755622028ae79c88b72387037bfa44d3cbe1ed9d6f80657941b58597faac667` |
| 5 | `def` | [Certified](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/certified.md) | 121 | `declaration-track:0664f0a761b539798a9e52d615db6486ce1bf5473c84e6c4b7998811485d48e2` |
| 6 | `theorem` | [certificate_sound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/certificate-sound.md) | 129 | `result-track:2fda995aebed4d3645a49b4f9e3021bb4e4477af65bc044385ad8e836c270731` |
| 7 | `theorem` | [boundary_calculus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/boundary-calculus.md) | 146 | `result-track:42a99437d65f7d53e74b3636a05c0d927cfc8de27ed807df5df2bb06ce9532db` |
| 8 | `theorem` | [no_direct_crossing](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/no-direct-crossing.md) | 157 | `result-track:0e9807bff9d1b0e42acf84a18fba5fbcc88c7f3e543737a0c4db9c8e682a3bca` |
| 9 | `def` | [Index](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/index.md) | 168 | `declaration-track:d306440cbbf94c772bf18553c14a33291643b68780b53c93abf8f3e82dc02796` |
| 10 | `def` | [HoldsPred](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/holdspred.md) | 174 | `declaration-track:e82acff8787fc51db228aa600dd15b73196747d911a72bbe686b0e91afadd056` |
| 11 | `def` | [OwnsPred](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/ownspred.md) | 178 | `declaration-track:821eb442c0c6712063b31cf4d6252bdf2280488f875f149897b0778e62889252` |
| 12 | `def` | [DirectPred](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/directpred.md) | 182 | `declaration-track:90f9029d620c9d660899362dc57dacec07cbd007dca83fbac22b37279d084880` |
| 13 | `def` | [CertifiedPred](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/certifiedpred.md) | 186 | `declaration-track:df5ff7dcd1bbe4f103f81a3ecefbf9986c9e7fec91ac807ad76e2e252cc82544` |
| 14 | `theorem` | [certified_pred_sound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/certified-pred-sound.md) | 190 | `result-track:f5ab747d9fc91a7d109ef9a5ec2daf2be3a278ef754e79390f92d20c3badbb4b` |
| 15 | `theorem` | [owns_pred_sound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/owns-pred-sound.md) | 201 | `result-track:d23273c614f518536fb5f8810599ffaf84a715bdbeee7a2af15d72676085abb0` |
| 16 | `theorem` | [direct_pred_false](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/direct-pred-false.md) | 212 | `result-track:6084f9ecf9b4288c73191213037e8cbaa7f727138cde4f4aaa6b3ecf17158aa8` |
| 17 | `class` | [Category](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/category.md) | 235 | `declaration-track:3d613678f90e92c50999df7032100c3face82e2cea308456000d1e10c48d3e05` |
| 18 | `instance` | [typeCategory](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/typecategory.md) | 259 | `declaration-track:320344750fd138c9635b1b12eafd03ea8cf723e6f81d1b255bcbcdfd05003f1a` |
| 19 | `structure` | [Subobject](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/subobject.md) | 274 | `declaration-track:7b4e439d902a39c175b1803bec5d1cd6ddf301a5a4e9ede38354df6ec5cdc9db` |
| 20 | `structure` | [SubobjectLE](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/subobjectle.md) | 282 | `declaration-track:a34a1fde832cc064600bcbc90c419e4639a90be52fcf7d3be4d5cb8afec6c8b2` |
| 21 | `structure` | [FactorsThrough](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/factorsthrough.md) | 291 | `declaration-track:0bc2c45631246ec2ff037f969b3f9284b34137a9eb61da024406fcf01b079e78` |
| 22 | `def` | [subobjectLE_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/subobjectle-trans.md) | 302 | `declaration-track:5db95f874cc59e78f503a76f0aceda0bb0566bf4d856c8a34b55a8362aa9d97e` |
| 23 | `def` | [boundary_calculus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/boundary-calculus-source-edition-2.md) | 328 | `declaration-track:6c62973a6a5baf55a2ee4e3083f7cda2496abdebbefdb2a66cdd9dc54f926f69` |
| 24 | `def` | [predicateSubobject](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/predicatesubobject.md) | 347 | `declaration-track:28b09eff2b83651793ac1d0f349ee14e207e9ac2d44275a48d24e68c4fb095a5` |
| 25 | `def` | [predicateSubobjectLE](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/predicatesubobjectle.md) | 355 | `declaration-track:abaa35f1f7f87eb28e437e0bf9e0461a73a011baae609b49b1dfe0f8ea18bc44` |
| 26 | `theorem` | [predicate_subobject_inclusion_equiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/predicate-subobject-inclusion-equiv.md) | 372 | `result-track:b2f38234b9e7948e7234d249d19dd2dc6f418dc581cfb47b18280f62e48c4c88` |
| 27 | `theorem` | [certificate_sound_equiv_categorical_logic](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/certificate-sound-equiv-categorical-logic.md) | 407 | `result-track:fbeb42dac6d412bfd916627045fc0801caeb01264c2a3af68fe602737a25e179` |
| 28 | `theorem` | [ownership_sound_equiv_categorical_logic](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/ownership-sound-equiv-categorical-logic.md) | 420 | `result-track:5780a3872408156bf882ca59ce57e40f83273ecd22082d6bbd3f0e575ef296a9` |
| 29 | `theorem` | [owns_le_cert_categorical](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/owns-le-cert-categorical.md) | 430 | `result-track:8f5b032f41d0729d217ad51f509d1dbb5ad2097e6b523bbcff6a94cb24db2fe3` |
| 30 | `theorem` | [cert_le_holds_categorical](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/cert-le-holds-categorical.md) | 445 | `result-track:2930cc1c17b204b6d4deb21d624be01a89c47c37734991f992a0a4092e1f4b6e` |
| 31 | `theorem` | [owns_le_holds_by_categorical_logic](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/owns-le-holds-by-categorical-logic.md) | 462 | `result-track:9edcd7157523ecfd265cd9564601a261b6482f5857f9bc2b6d897971ed199aed` |
| 32 | `theorem` | [boundary_calculus_equiv_categorical_logic](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/boundary-calculus-equiv-categorical-logic.md) | 480 | `result-track:e7107fc1173e2dcc8140efffb848fff13bbdedb930586381515d23ee8e514ad4` |
| 33 | `theorem` | [no_direct_crossing_as_empty_subobject](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/declarations/no-direct-crossing-as-empty-subobject.md) | 494 | `result-track:f04d6e2e6d51a92980936d4b0e548736d75ed4d510a5cb1061a8b28a3c85b5bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=254d0598b38b02365ddd6e5bc879e561378d8a59745ef8b56bbda80733b3d23b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundaryCalculus/Variante633dc8bb072a0bd0980abce4d0fe3cb4890d0ecd6ab70ce718e959d7cdfe386.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundaryCalculus/Variante633dc8bb072a0bd0980abce4d0fe3cb4890d0ecd6ab70ce718e959d7cdfe386.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
