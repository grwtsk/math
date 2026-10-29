# Verification target: Module Cat Colimits Colimits

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61580afeed13de30715b73daa0da7f4eb929ade3",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Colimits/Variant1c25134008e1b7f9b0df4f460ea387036706092ad3230654ff7d3cc345ca4428.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61580afeed13de30715b73daa0da7f4eb929ade3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Colimits/Variant1c25134008e1b7f9b0df4f460ea387036706092ad3230654ff7d3cc345ca4428.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Colimits/Variant1c25134008e1b7f9b0df4f460ea387036706092ad3230654ff7d3cc345ca4428.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Prequotient](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/prequotient.md) | 50 | `declaration-track:9b1fb4855ccf4e7a397fec37db9384bdb065faa53aff10640f5296d3ea06f4d2` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/instance-source-edition-4.md) | 61 | `declaration-track:d71884d0ee5b39152f5a0f33e80bb490a8d5d5af3b3ffa86a7c3638a6442626c` |
| 3 | `inductive` | [Relation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/relation.md) | 70 | `declaration-track:c8619c421b085be3328f0e43db535a0240c1661475fc3d45e1ed1848907221f3` |
| 4 | `def` | [colimitSetoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/colimitsetoid.md) | 108 | `declaration-track:171e4de9f3960b563c19efa98a36ba6822c5c28385a90c4d85201e8b8bcb39fe` |
| 5 | `def` | [ColimitType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/colimittype.md) | 118 | `declaration-track:aee6ba52d5e4602aa6de6b9163a8e23cf1f77484bc26ab8ae229ef45da059225` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/instance-source-edition-3.md) | 123 | `declaration-track:a07e3426bfeffde17a5b85305b97dfa76b1a3c2b9e049cba646db4455fb62fc2` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/instance-source-edition-2.md) | 125 | `declaration-track:80131013592d90c9341a2a86111c5f6c2b344c2eb05f80741e78504a18fbf4bf` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/instance.md) | 137 | `declaration-track:405b72a940dc19a306fb074820cae99c00343c89e3e3650a3e8463c68edf52ee` |
| 9 | `theorem` | [quot_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/quot-zero.md) | 147 | `result-track:5da6f37b3f20072944bfd9f62da71f7175292b91fea4cbf7c1b9bb60e58e60d2` |
| 10 | `def` | [ColimitType.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/colimittype-mk.md) | 152 | `declaration-track:57bce01a87ccc5fa4cafb3d3d9bebcba1840bb8ca2d9bad2aeaf69caef821185` |
| 11 | `theorem` | [quot_neg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/quot-neg.md) | 155 | `result-track:c67e8b8ece1fe2d3242f9d0dea487b9f4428b463c8d4855f8267c29630ac455f` |
| 12 | `theorem` | [quot_add](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/quot-add.md) | 161 | `result-track:9b179b063fbf0c41ae2f21d9ba5f747719d828512499c5722955b7c4a7207b7b` |
| 13 | `theorem` | [quot_smul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/quot-smul.md) | 168 | `result-track:18206ff1ea255007a3186f10ba917ecd07ecacc92bd4badf4114c2587683a785` |
| 14 | `def` | [colimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/colimit.md) | 174 | `declaration-track:2d0ff0f9cf25deb602b0f44a7eef3bffe587942744fe5426cbf25ad3016b6437` |
| 15 | `def` | [coconeFun](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/coconefun.md) | 180 | `declaration-track:da849e95b655219cdc5fbd1f52e01ae652eb8088fc6629507d50bbb327fffdc2` |
| 16 | `def` | [coconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/coconemorphism.md) | 186 | `declaration-track:d623dbfa9f57af92a2ff462be674fd4388db446254b536569f7815ca93aa26ac` |
| 17 | `theorem` | [cocone_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/cocone-naturality.md) | 194 | `result-track:0bba8d0694e9437e6617b13ff2f13e9b556a7d768a5bdc207e628e898a46ae3f` |
| 18 | `theorem` | [cocone_naturality_components](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/cocone-naturality-components.md) | 203 | `result-track:3505ab0a6614efb8a763a02983cd943bd9d632b35e2999434f1ad98466b94a8d` |
| 19 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/colimitcocone.md) | 211 | `declaration-track:90a67453730e92bb0979bfd4870e282a714c5598c16db702f29d2dfefde8cfbb` |
| 20 | `def` | [descFunLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/descfunlift.md) | 219 | `declaration-track:806faa33b49c9b20f4594b4727ea02ba092874fb4c99bf58ed81f22a9ffdb841` |
| 21 | `def` | [descFun](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/descfun.md) | 229 | `declaration-track:1b8b51e5473d8be9108c2f895e66e924a8992b57b736c170f23b2966c52bbc5c` |
| 22 | `def` | [descMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/descmorphism.md) | 285 | `declaration-track:f7eb7c6307ca7ecb0a3789d67be18d52ba53096b1954c50cf9e967e64e7a762f` |
| 23 | `def` | [colimitCoconeIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/colimitcoconeiscolimit.md) | 293 | `declaration-track:7191be1506380714c634a545c34d473c77a6d5c4e3177fd72625af551c45e004` |
| 24 | `instance` | [hasColimits_moduleCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/hascolimits-modulecat.md) | 317 | `declaration-track:4303a4804dcc424c48e0f932a6837881ea418f097e1164c532264daad181bb49` |
| 25 | `instance` | [hasColimitsOfSize_moduleCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/hascolimitsofsize-modulecat.md) | 326 | `declaration-track:fde71f356e2858f73c8ebe8f49ef524531c77015c6bce19196a181c1cf818207` |
| 26 | `instance` | [hasColimitsOfSize_zero_moduleCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/hascolimitsofsize-zero-modulecat.md) | 331 | `declaration-track:37dce781fc45cb491f6d7376edc9485de65c725559210d1b554983c2be6a0b68` |
| 27 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/example.md) | 355 | `declaration-track:1d0213c290842070ab76d8babd1cf731023af5876cd97f748ad84da54c5827fc` |
| 28 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/example-source-edition-2.md) | 358 | `declaration-track:b836cf3c79a54b85a1944ab88faf0e67b711190b8462959a395f3134354759ae` |
| 29 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimitsColimits.lean/declarations/example-source-edition-3.md) | 361 | `declaration-track:bc9606137f1c2017f75265842a112d4d72284c4794c8709f28d434b0e4e5f106` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0efe85ffbbfb51d5291ff74da77bea33a88b1bedc8423b36db60f8a12fd462fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Colimits/Variant1c25134008e1b7f9b0df4f460ea387036706092ad3230654ff7d3cc345ca4428.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Colimits/Variant1c25134008e1b7f9b0df4f460ea387036706092ad3230654ff7d3cc345ca4428.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
