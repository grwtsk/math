# Verification target: Localizing Subcategory Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "626359baa1e11324946a20302994317d2befe4e7",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variantb2a9123e47c706b462f885a99071ce234085513742c0d26a550896bebd82828d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `626359baa1e11324946a20302994317d2befe4e7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variantb2a9123e47c706b462f885a99071ce234085513742c0d26a550896bebd82828d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variantb2a9123e47c706b462f885a99071ce234085513742c0d26a550896bebd82828d.lean.json)

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
| 1 | `class` | [IsVerdierRightLocalizing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/isverdierrightlocalizing.md) | 53 | `declaration-track:645faebc971bccb7c99447cd16001f84c6c6e64a10d39c86494494367a765055` |
| 2 | `class` | [IsVerdierLeftLocalizing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/isverdierleftlocalizing.md) | 64 | `declaration-track:79ad02a7372a5598aa7ea99367fcd6fe1a2c60fdac690f7e562308768fc174fb` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 68 | `declaration-track:529c3c0af10c12f45b9f9de8e3613d33bd15e3ceaf91b5f47412d7c1bfc34195` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 75 | `declaration-track:71bf0a80ddc976bc3d9ca015f9ded35ae5cc6e13061927d243b2ee9288075124` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/instance.md) | 81 | `declaration-track:0f9e139734a5622c1b8f04448ff631f088249ca6a12967f8e7e935404602f6f0` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 87 | `declaration-track:b68d623a95bbfe1796cb0518acb5a67a3de9f5c92c3c61e39db2f37bbe1e274d` |
| 7 | `lemma` | [isVerdierLeftLocalizing_op_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/isverdierleftlocalizing-op-iff.md) | 95 | `result-track:114d7702bfa70ece461ebefc0666d65edd54f8fd205d80eb0bf4a70a827ef5e6` |
| 8 | `lemma` | [isVerdierRightLocalizing_op_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/isverdierrightlocalizing-op-iff.md) | 100 | `result-track:406ed09d5b88b11b582252315273d53b011b506004ce4e07f17559f927c5687d` |
| 9 | `lemma` | [isVerdierRightLocalizing_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/isverdierrightlocalizing-iff.md) | 109 | `result-track:ef4e13f5fc190c09f5bec405360abb80e831926b4b0ba9b8f9537521e5de5f33` |
| 10 | `lemma` | [IsVerdierRightLocalizing.fac'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/isverdierrightlocalizing-fac.md) | 136 | `result-track:ec8b57d56c313d82af6f76f2b0ba43641d39e40cd1530b4d6379f9b208bc3609` |
| 11 | `lemma` | [isVerdierLeftLocalizing_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/isverdierleftlocalizing-iff.md) | 143 | `result-track:a7bfaf3449a28f6e6989aa4c491bfc99c31adac47e8f456dce2278f566162f98` |
| 12 | `lemma` | [IsVerdierLeftLocalizing.fac'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/isverdierleftlocalizing-fac.md) | 156 | `result-track:369880bdcd07b4509e716deef16209661941a81ac60efc466b6f0c243852be8e` |
| 13 | `def` | [triangulatedLocalizerMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/triangulatedlocalizermorphism.md) | 169 | `declaration-track:8393cacdcaf2f3c6e2e4be2b9aff91fbfd3a907be7cf42e20cb9111aafd33454` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 177 | `declaration-track:531dbdec2c2577f671b0cb420b02d5f1b6c265e0795bb64f79bd3f46ef907918` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 181 | `declaration-track:10dd0c6aea6d48e8e6ea1637aafafdfcfda26b1546f2256ea4aa099c13e896ac` |
| 16 | `lemma` | [trW_inverseImage_ι_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/trw-inverseimage-iff.md) | 186 | `result-track:f39cab5358397ee8061567d96f5b89c922fac90f2bc130398a07a6b1c97e8f04` |
| 17 | `lemma` | [inverseImage_opEquivalence_inverse_trW_inverseImage_ι_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/inverseimage-opequivalence-inverse-trw-inverseimage-op.md) | 203 | `result-track:d6751452a4c794be0c22babadda558b0dd7a4c98ae628168aee12c83fd7c9908` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 219 | `declaration-track:82d55aded3e9998f7c293fac5b5c69109ba615b3ac98f1735200ea0f3e2d8c72` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 243 | `declaration-track:7e81116dad66558d25a5da90c1e812343011b68abc3dbf8427c9962a6a0f3d45` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 252 | `declaration-track:f84428b816e44b84c865f98a9a140a6f0cafc53debd93d1f3cdf87efdfa8ec7b` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 278 | `declaration-track:f21138f2a2e5d300112826b2c728ae8c4726895630737ea40535f65905fb8257` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 282 | `declaration-track:a787feb2d74fca46ffdfb9e6280741aede9c05b2b155ac2e1683228fa4383d7b` |
| 23 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/example.md) | 314 | `declaration-track:b2e0f1e494a78ec7f85bd34bb0fa34a707a8b6ce29e6bbba893693842e3d1e34` |
| 24 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/example-source-edition-2.md) | 317 | `declaration-track:e06a99ce30bcefe4d0ef2f1cdb1023efe17bec38beaf0fe017ac788d3333398e` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 320 | `declaration-track:87364c4f4a34667610984434e56d81d320efd8943184c1cb6b48b1c518657234` |
| 26 | `def` | [IsVerdierLeftLocalizing.fullyFaithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/isverdierleftlocalizing-fullyfaithful.md) | 332 | `declaration-track:7ed63f0227d335dfab3a51d65ec0fe31bbdedff8595cf0e56fad382d006d2069` |
| 27 | `def` | [IsVerdierRightLocalizing.fullyFaithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizingSubcategoryNamespacedPublic.lean/declarations/isverdierrightlocalizing-fullyfaithful.md) | 346 | `declaration-track:cf7a7ae2d974b99562b7fe876bda4ea9de15682ee986a0861b60a95c315d86bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=54a80337925eeb7d5c94099cf9e159b2d7ffc1f1d2f543e73a7edb0ff95ac358 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variantb2a9123e47c706b462f885a99071ce234085513742c0d26a550896bebd82828d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variantb2a9123e47c706b462f885a99071ce234085513742c0d26a550896bebd82828d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
