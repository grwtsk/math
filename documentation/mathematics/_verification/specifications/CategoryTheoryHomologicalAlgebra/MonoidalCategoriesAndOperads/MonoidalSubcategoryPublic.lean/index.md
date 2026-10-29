# Verification target: Monoidal Subcategory Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d70b6b68d32f88487d952d050eab750072d4b950",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8ca82c3d6d78b8deb76a9ac8aa767b4c6150ddb47407c2149cee258f6eed1133.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d70b6b68d32f88487d952d050eab750072d4b950`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8ca82c3d6d78b8deb76a9ac8aa767b4c6150ddb47407c2149cee258f6eed1133.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8ca82c3d6d78b8deb76a9ac8aa767b4c6150ddb47407c2149cee258f6eed1133.lean.json)

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
| 1 | `class` | [TensorLE](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/tensorle.md) | 47 | `declaration-track:0869c9d12776cf07c8306c4b44fc7189868f25391640059d1f1167a9f77aa378` |
| 2 | `lemma` | [prop_tensor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/prop-tensor.md) | 50 | `result-track:73968a1e6f3e65a97e0eaf94ddf3a33e752961bcddc393eed8028999a22e1f21` |
| 3 | `class` | [ContainsUnit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/containsunit.md) | 56 | `declaration-track:17eedcc15b27362789712de04e89335e05d089b5b123bd7e71614ccd0840c413` |
| 4 | `lemma` | [prop_unit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/prop-unit.md) | 59 | `result-track:e67c0f5386d4d6b3abdb6af7c8a2e1f7b0706a4c6365fc1dda15303044728852` |
| 5 | `class` | [IsMonoidal](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/ismonoidal.md) | 64 | `declaration-track:9bc42ad96e7c9129e4b9c1f460128c6c714116f3f3430334f614b6876229f032` |
| 6 | `class` | [IsMonoidalClosed](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/ismonoidalclosed.md) | 69 | `declaration-track:a5b379d4bcd415635c5219086ad2a82d1836ba1208e5b4e671b66cbddb714162` |
| 7 | `lemma` | [prop_ihom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/prop-ihom.md) | 72 | `result-track:9d6bb903452833261f0fdf87b9b2953fb19bc8810bd01a4f168f854602e274ca` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/instance-source-edition-5.md) | 79 | `declaration-track:eef249a066a8cfd46a7cd649024fb81f7b9700d301a363adfe1a9691d9284637` |
| 9 | `instance` | [fullMonoidalSubcategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/fullmonoidalsubcategory.md) | 93 | `declaration-track:a46c5fb0774a0ee5936c9e4f55003e93fd01d0eb3d8e11a7cc28535db12d358e` |
| 10 | `instance` | [monoidalι](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/monoidal.md) | 101 | `declaration-track:c9cb52b6568ee38bc50b5c550672240c692221f3f9f1f0799a4d496ecc78a882` |
| 11 | `lemma` | [ι_ε](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/anonymous-source-edition-3.md) | 108 | `result-track:819721188f872c9075def092a602cc25943173b74558af633aae294fc4da2057` |
| 12 | `lemma` | [ι_η](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/anonymous-source-edition-2.md) | 109 | `result-track:794e257d38020d3417605af2f2cea48983bd9917b93a4e08887c693de683efd9` |
| 13 | `lemma` | [ι_μ](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/anonymous.md) | 110 | `result-track:30b665d33dc40751eaf828891911d63ff7d02c1acc9d3d36b556d7b3109f360f` |
| 14 | `lemma` | [ι_δ](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/anonymous-source-edition-4.md) | 111 | `result-track:a7e77aabe3da93de3e9caa247858ac5c1db27656cd139255e91b5bec66256da2` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/instance-source-edition-2.md) | 117 | `declaration-track:8e25900a6eff8b27390c684364aef608bc3e6e5cb28cd247fdfcd48351e5fdd0` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/instance-source-edition-6.md) | 122 | `declaration-track:f2868f3d1070b3c0ce98190653c9fbdbb4a13f241d9bd45c2499fd0888728416` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/instance.md) | 134 | `declaration-track:2f1f8ffd6761d1b66a2fffa0c6258062956af149ec979b530fd4415088b397a9` |
| 18 | `lemma` | [ιOfLE_ε](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/ofle-source-edition-4.md) | 139 | `result-track:a697ebeb7a84897de3e5fdd69d449f9bb6811727cddf8f45af29dd8176ea1a67` |
| 19 | `lemma` | [ιOfLE_η](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/ofle-source-edition-2.md) | 140 | `result-track:0e9b17cb35a2f4a5b1dc457802ee23d0faff3a0dd3ade0944510633c12941a4c` |
| 20 | `lemma` | [ιOfLE_μ](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/ofle-source-edition-3.md) | 141 | `result-track:67201fd3467b1627b6580b8189d2556ce38f7e6a744f824410bd61017def48d0` |
| 21 | `lemma` | [ιOfLE_δ](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/ofle.md) | 142 | `result-track:08768cc34883df0789b59211a4f3d2954258cf634d36c3533731ec3ac512f68b` |
| 22 | `instance` | [fullBraidedSubcategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/fullbraidedsubcategory.md) | 152 | `declaration-track:2cde1d66cecb59d75e9e7f84fafc576391f77081c87453982a3e0e0cf65af605` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/instance-source-edition-3.md) | 158 | `declaration-track:d3237e9a29bcdaba7f2adbd42a77a8f5c1ebb6a647e0758f5aa7350aace474fb` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/instance-source-edition-4.md) | 165 | `declaration-track:e21c9010a585f783cf2499e9fab1ea90390b140f58f40462fdc077f69f487882` |
| 25 | `instance` | [fullSymmetricSubcategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/fullsymmetricsubcategory.md) | 174 | `declaration-track:d95f971f3321369dab106ad8cd45a0aba3fcfbf2549ad1083163b68f3fb9fb6c` |
| 26 | `instance` | [fullMonoidalClosedSubcategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/fullmonoidalclosedsubcategory.md) | 184 | `declaration-track:0142b2958408b8f9109e476486630a8b77f48440f4c59e7292296ac7e1ebd478` |
| 27 | `theorem` | [ihom_obj](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/ihom-obj.md) | 192 | `result-track:a9110cf40b4be46efd52af7395eba01b980038e3c401f27b301ffe9b2238ffe0` |
| 28 | `theorem` | [ihom_map_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryPublic.lean/declarations/ihom-map-hom.md) | 197 | `result-track:a1ca7ea91272e4b9fcfb82fbf30aa9418094fa845b670bc5fbf298f9837c7c14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=212b88d68450e070165cb04524a24d0d29665fa1920d65f334bb98ea36d2e807 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8ca82c3d6d78b8deb76a9ac8aa767b4c6150ddb47407c2149cee258f6eed1133.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8ca82c3d6d78b8deb76a9ac8aa767b4c6150ddb47407c2149cee258f6eed1133.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
