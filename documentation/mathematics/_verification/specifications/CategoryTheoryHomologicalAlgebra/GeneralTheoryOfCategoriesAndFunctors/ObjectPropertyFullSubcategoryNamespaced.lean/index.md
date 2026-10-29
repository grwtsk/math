# Verification target: Object Property Full Subcategory Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d36af75d564861521686c574aac707d1d90503ed",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant61f39b949374015af0a40b2c96e161ec3d04bafa0500d502e7792ca780b9a8b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d36af75d564861521686c574aac707d1d90503ed`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant61f39b949374015af0a40b2c96e161ec3d04bafa0500d502e7792ca780b9a8b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant61f39b949374015af0a40b2c96e161ec3d04bafa0500d502e7792ca780b9a8b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.InducedCategory` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FullSubcategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/fullsubcategory.md) | 43 | `declaration-track:0e4cf51eb3238083985dd69690823e6abe0105758f61f81aef278a58b1607ab9` |
| 2 | `instance` | [FullSubcategory.category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/fullsubcategory-category.md) | 49 | `declaration-track:f9cd81f687954305ad7cabcac81949ee6b31fe4aa28370331d2bb6e98c622455` |
| 3 | `lemma` | [FullSubcategory.id_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/fullsubcategory-id-def.md) | 54 | `result-track:dc4b0a111a6072cace5cefb535ad345d9e51a775e7cdc4618de2eff4769de028` |
| 4 | `lemma` | [FullSubcategory.comp_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/fullsubcategory-comp-def.md) | 56 | `result-track:60d3c744444dc113ac3f522277679e8c9cb41ea6e2f8459d727bb56cd3ca6c98` |
| 5 | `def` | [ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/anonymous.md) | 62 | `declaration-track:fe447064f6ac6b6e8688df3c9e94e2d821250103eb4506c2df7a5097baec80da` |
| 6 | `theorem` | [ι_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/obj.md) | 66 | `result-track:3e5e8c75b315501b4579bb86bb59ef1edef06a692e9235057fd0957c3ba5c0e1` |
| 7 | `theorem` | [ι_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/map.md) | 70 | `result-track:6d90e571163679b24932527e928f17016b2c5ac80603597fa8de5c24084c2416` |
| 8 | `abbrev` | [fullyFaithfulι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/fullyfaithful.md) | 74 | `declaration-track:2f08c6045f2f9ac81ccb5ad2bdff824f459b8d93acfa89f5b9eeed9b6f770270` |
| 9 | `instance` | [full_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/full.md) | 78 | `declaration-track:564065399183bb526fb9db22633aa7aa5a67ca4d6e3ade737411487e42df886b` |
| 10 | `instance` | [faithful_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/faithful.md) | 79 | `declaration-track:cefdd5e9e9a79488a60d4ceece0032521f0fa6b4029a87bdc82886f8212cc105` |
| 11 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/isomk.md) | 84 | `declaration-track:f02409f466e5ccc6e15ec28f4bcc0e31880168c1f7ebdcd573f22c35f3d1387c` |
| 12 | `def` | [ιOfLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/ofle.md) | 96 | `declaration-track:ca9935446b7962415a9fa6baeb94f4dfb51325677af516ad4179f0f7baa5d2d4` |
| 13 | `def` | [fullyFaithfulιOfLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/fullyfaithful-ofle.md) | 101 | `declaration-track:ab42d064764a998d7750c2a994c50d4427fbcccd2410e03b29620b80e2479e2c` |
| 14 | `instance` | [full_ιOfLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/full-ofle.md) | 105 | `declaration-track:7568fd9a78dc22b38f509db81ea3a4caa26665f7604703197f130b2ed6a9bd07` |
| 15 | `instance` | [faithful_ιOfLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/faithful-ofle.md) | 106 | `declaration-track:e54bd0d3350b31fa8453db02b7e643bf277ac9d467fb14dc6a1d5008cfd31c89` |
| 16 | `theorem` | [FullSubcategory.map_inclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/fullsubcategory-map-inclusion.md) | 109 | `result-track:57a0c3be5c097280856381b1785e4dee05b68f81eade7ed2268942e5a4ccaeac` |
| 17 | `def` | [ιOfLECompιIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/oflecomp-iso.md) | 114 | `declaration-track:cd50cc736adcb7eb653cef2ee3509b593f20e448dc3905a89491cd95970d0c3e` |
| 18 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/lift.md) | 126 | `declaration-track:ad23d182bcbb428cd047234ea7af0df468e4563a17eea0c0969d1c109a1b12d1` |
| 19 | `theorem` | [FullSubcategory.lift_comp_inclusion_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/fullsubcategory-lift-comp-inclusion-eq.md) | 131 | `result-track:9776e49cb53bcad90c483d1c64ad0b85e01fb398a9cf97514a496f1f8460eae0` |
| 20 | `def` | [liftCompιIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/liftcomp-iso.md) | 137 | `declaration-track:3b0cfebb61a3ef7b209cde024555ca93f9d835ecd55cf636e04a102a3ac7b70c` |
| 21 | `lemma` | [ι_obj_lift_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/obj-lift-obj.md) | 140 | `result-track:6108eb5376c365cb46677887399afa3dc7e5e4bf7c8061294ad96f0259bed755` |
| 22 | `lemma` | [ι_obj_lift_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/obj-lift-map.md) | 144 | `result-track:89b39e7425b5600f749405e4c5ddb04459ac39836135ae18379fe261d6f9762c` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/instance-source-edition-4.md) | 147 | `declaration-track:d84dccb2f17f99b643c78d5fa314f7d5075789cd762c4d398f58eb0edff2bfad` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/instance-source-edition-3.md) | 150 | `declaration-track:66b6e452d69c1120e522b36d6046daea72324dafa7a5ab91269aead20e8ffaba` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/instance-source-edition-2.md) | 153 | `declaration-track:44e7d2cc1b80ed1f3d7a15a6b03f642a36f66517e28a21895e1176155c84b862` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/instance.md) | 156 | `declaration-track:03345708c56089665f413f2afb0142f3c0e46d11eb5e8414b749057325409ba3` |
| 27 | `def` | [liftCompιOfLEIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/liftcomp-ofleiso.md) | 163 | `declaration-track:7d273dc0aaaa79b32923d4958f0e2990e823caa9e5f48f895c2ffc254e691b88` |
| 28 | `theorem` | [FullSubcategory.lift_comp_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ObjectPropertyFullSubcategoryNamespaced.lean/declarations/fullsubcategory-lift-comp-map.md) | 167 | `result-track:4c8a05b4882175590fbc3b026d5ba7cccf494167172ebf06b28262a52c7f5074` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5932198160580ff6e2068a4d2a9e62b25f0cd15ca8549dbb925a7150cfe8ef2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant61f39b949374015af0a40b2c96e161ec3d04bafa0500d502e7792ca780b9a8b9.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant61f39b949374015af0a40b2c96e161ec3d04bafa0500d502e7792ca780b9a8b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
