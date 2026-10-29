# Verification target: Free Group Is Free Group Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4423ece478bf47af334753a4a634af9af907c110",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/IsFreeGroup/Variant3304da9aa7fc05cddcbfa0574f3899ad0c031a790b0e44cd1dfce4a375687de6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4423ece478bf47af334753a4a634af9af907c110`.

Source path: `GRWTSK/Algebra/GroupTheory/IsFreeGroup/Variant3304da9aa7fc05cddcbfa0574f3899ad0c031a790b0e44cd1dfce4a375687de6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/IsFreeGroup/Variant3304da9aa7fc05cddcbfa0574f3899ad0c031a790b0e44cd1dfce4a375687de6.lean.json)

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
| 1 | `structure` | [FreeAddGroupBasis](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/freeaddgroupbasis.md) | 63 | `declaration-track:5729d6a5c03a968568f481efdefa0e4a02301e3b8fe773a58b8cfb6969b64949` |
| 2 | `structure` | [FreeGroupBasis](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/freegroupbasis.md) | 76 | `declaration-track:aa9283d018d78cbce2cbc16f1f75842bdf6e2b10de1f9511523954fd68c4bce9` |
| 3 | `class` | [IsFreeAddGroup](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/isfreeaddgroup.md) | 85 | `declaration-track:59bfd9372aa68e6ab24c2f4fa8931237d26cecbb8363d7a61e4b0e6471a3b126` |
| 4 | `class` | [IsFreeGroup](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/isfreegroup.md) | 92 | `declaration-track:727adcf9f0b300412f41a96d75898e6059e914d12adeaf39ce853875015cd01c` |
| 5 | `instance` | [instFunLike](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/instfunlike.md) | 104 | `declaration-track:173e995653201b4bb99108d3e145aa8e2968677deb824d4d1eae4c24aafbf6f5` |
| 6 | `lemma` | [repr_apply_coe](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/repr-apply-coe.md) | 114 | `result-track:8cccc38ec184d3fcc7d0511b9df13ae8b3e0f3a518b0613686f224564b95154c` |
| 7 | `def` | [ofFreeGroup](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/offreegroup.md) | 120 | `declaration-track:d319daf8b6fc8ddf88db1993a596ca72a18ad2f3631ad1cb2f2bb445e511ae23` |
| 8 | `lemma` | [ofFreeGroup_apply](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/offreegroup-apply.md) | 123 | `result-track:21ef7c26b126362531f95528b56181549092d205910813fc89cb192f71123fe8` |
| 9 | `def` | [reindex](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/reindex.md) | 129 | `declaration-track:7f6f967d978dcf4e2a656c16dcafb9fc57fa655898f076d0e9ff03d203c32d5f` |
| 10 | `lemma` | [reindex_apply](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/reindex-apply.md) | 133 | `result-track:87969d08c750b8fa369bad3ddd438363f0f0b8561661f81fe1ca5b523f2ce82e` |
| 11 | `def` | [map](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/map.md) | 138 | `declaration-track:ccb004145837de24dbefbb16b7bfdca0f344366a09f70674c79800047453e8f2` |
| 12 | `lemma` | [map_apply](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/map-apply.md) | 142 | `result-track:6bc50252ce68903479e3e58f32ffd2fbf88857db493f59c68d5ee89f038a3a61` |
| 13 | `lemma` | [injective](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/injective.md) | 146 | `result-track:1db66f13e2f8f916f4e75a42a456f39bc57a9d13eab8ee9ab4bfffddc5724c1e` |
| 14 | `lemma` | [isFreeGroup](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/isfreegroup-source-edition-2.md) | 152 | `result-track:a3eb330116ed79e69cd517607072396a560d6c810ee4ab9bc4204219fad1cda1` |
| 15 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/instance.md) | 156 | `declaration-track:124c585e091060930c851dbb01cfe7c8487a727006440587388f24df0a7fd42c` |
| 16 | `def` | [lift](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/lift.md) | 167 | `declaration-track:27a34538ee1ccb5210debf2b024cd12c832aa95bb40d5396a78cf5d91da4c8d0` |
| 17 | `lemma` | [ext_hom](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/ext-hom.md) | 181 | `result-track:9411c730dd96060bd89f6839e7bb9196a7259c0da9b0e075ee810e7fb2877d97` |
| 18 | `def` | [ofLift](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/oflift.md) | 191 | `declaration-track:4ce45b0d9759b21aa9c30945bc5dd9d83af6c525bbd4ec0d6936a6f519e8a52b` |
| 19 | `def` | [ofUniqueLift](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/ofuniquelift.md) | 214 | `declaration-track:614c43f59ee4c622e0a47c93b3e0e3a5eb503e9320c5ab3b2d45f587f522adb1` |
| 20 | `def` | [Generators](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/generators.md) | 234 | `declaration-track:ffe492956aaf638899118eae419c5bd8e3ef74bf0f976d97282f51db66f158a2` |
| 21 | `def` | [basis](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/basis.md) | 244 | `declaration-track:5e104da79c0c80047ef9661593c364f343e3475a62d98f3db685a6f9f0ae6f16` |
| 22 | `def` | [toFreeGroup](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/tofreegroup.md) | 249 | `declaration-track:3fcd68fefc8e152318fb326e049e722ce1797fd5002d50805e6e81e760ee11c9` |
| 23 | `def` | [of](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/of.md) | 256 | `declaration-track:e4807db30995cf694ce3068b34f0f673fcd6d69e9a7530759f9b42ad212b8d4c` |
| 24 | `def` | [lift](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/lift-source-edition-2.md) | 266 | `declaration-track:9cdff0df9db2ccaec0bf9c416a7d184398d8cdb772a2462669f90bb50225eb95` |
| 25 | `theorem` | [lift_of](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/lift-of.md) | 270 | `result-track:ddba0674b02f4d9e51edb660f117ee8ab9e53c8d1c599ce0d77b9d1e8ce881e7` |
| 26 | `theorem` | [lift_symm_apply](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/lift-symm-apply.md) | 274 | `result-track:748ffc2a79ba6105cd7c89c0f01b774c47dba5b79ddff0217725ff554c9e8048` |
| 27 | `theorem` | [ext_hom](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/ext-hom-source-edition-2.md) | 279 | `result-track:e4dd51a58addc8d41b0c4f823c9f46b5e842c82d93c4efb7569fe606332823a4` |
| 28 | `theorem` | [unique_lift](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/unique-lift.md) | 293 | `result-track:9ff1bbc7eb801a57417f78061747f935f00e3cce074697af896b9a8401cd9211` |
| 29 | `lemma` | [ofLift](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/oflift-source-edition-2.md) | 303 | `result-track:8cb8f9b42dd96e34b75765034c667427c38fc9948e0db18c674f61f74d511390` |
| 30 | `lemma` | [ofUniqueLift](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/ofuniquelift-source-edition-2.md) | 315 | `result-track:fdce23ec0d7ddb6e0a6c1da34c6857f25e3b1d9f5c8ecceed2e6f5555c153daf` |
| 31 | `lemma` | [ofMulEquiv](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroupNamespacedPublic.lean/declarations/ofmulequiv.md) | 321 | `result-track:310966c6ce4a328bd2e114960d94acc7b0873b2df0d6ce24a4270ab40102429f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b131716fc2df9df7815c454c4c3000417cbee28a1bc0b5ef27a97e21e50154d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/IsFreeGroup/Variant3304da9aa7fc05cddcbfa0574f3899ad0c031a790b0e44cd1dfce4a375687de6.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/IsFreeGroup/Variant3304da9aa7fc05cddcbfa0574f3899ad0c031a790b0e44cd1dfce4a375687de6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
