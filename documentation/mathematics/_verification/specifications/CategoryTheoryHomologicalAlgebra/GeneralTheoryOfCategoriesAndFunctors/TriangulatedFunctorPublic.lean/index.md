# Verification target: Triangulated Functor Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9232e8aeda25ca6688680dc7c0e40ba84fad90ae",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant34ab77d6f9e173fbb8c2fcde881c02880d62c0ef21802ed85f45d9927d9395a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9232e8aeda25ca6688680dc7c0e40ba84fad90ae`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant34ab77d6f9e173fbb8c2fcde881c02880d62c0ef21802ed85f45d9927d9395a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant34ab77d6f9e173fbb8c2fcde881c02880d62c0ef21802ed85f45d9927d9395a3.lean.json)

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
| 1 | `def` | [mapTriangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/maptriangle.md) | 41 | `declaration-track:623d89909cefa3a7f343c2af326a7527f1888bb17617bad52351dd7e76712678` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/instance-source-edition-6.md) | 55 | `declaration-track:779a05226791380165d75c8425df697a2ee0b34224584c3e050a0eec40b41017` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/instance-source-edition-7.md) | 62 | `declaration-track:aec46af0931a8cebc015c61c7317efc33aec8d5084218630cd6e7ec78d1d3772` |
| 4 | `def` | [mapTriangleCommShiftIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/maptrianglecommshiftiso.md) | 83 | `declaration-track:04ec20c81ef8ee38bf1053dfc467b9a504beca2b4e895fa123ad7033d636e480` |
| 5 | `theorem` | [mapTriangleCommShiftIso_add](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/maptrianglecommshiftiso-add.md) | 105 | `result-track:0599c89096d46753a79132ee6c783a88521c3f2c38b95bc5e21d0d620cd5fd2c` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/instance-source-edition-3.md) | 115 | `declaration-track:359f2ac5afc3125bd5a9656fc169fc2674b46137ba0c88f45951fd06cb50e687` |
| 7 | `def` | [mapTriangleRotateIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/maptrianglerotateiso.md) | 124 | `declaration-track:5fb8c93f417e46b995b0d37e898ddb0470fad737075b8450b4cf4c8688d207ed` |
| 8 | `def` | [mapTriangleInvRotateIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/maptriangleinvrotateiso.md) | 136 | `declaration-track:1b2b23efdf4d2a06f719b580ff669c72e7306db969d95c5ddd4eb80d393da957` |
| 9 | `def` | [mapTriangleIdIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/maptriangleidiso.md) | 147 | `declaration-track:73fb59158493a371f82fc4a5ba9092804f1d36d03f39b3930145fbd3ca7791ad` |
| 10 | `def` | [mapTriangleCompIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/maptrianglecompiso.md) | 152 | `declaration-track:06b390846885e1e58eea452786f0d4ca58f7e739b8659a06932fe57c63e0de2e` |
| 11 | `def` | [mapTriangleIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/maptriangleiso.md) | 159 | `declaration-track:c81810d7cb450bc7cbc0dcb042a74716586e1e6dbf2c520eadec5341f137cd7e` |
| 12 | `class` | [IsTriangulated](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/istriangulated.md) | 177 | `declaration-track:8a86b895dc471fb9f22415666f7261f69f75346a5a068a82e7898a12b66fafb7` |
| 13 | `lemma` | [map_distinguished](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/map-distinguished.md) | 180 | `result-track:93c0d1645046719032207410b5695bf16aad7f0ff5ebf6efe9834307218481cc` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/instance-source-edition-5.md) | 189 | `declaration-track:72dcca974b628c067119a41a4e84566f7b46a56cb5c4308cba08e98013c9f9cb` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/instance.md) | 201 | `declaration-track:01e279efef7eec38c35f5fb106a8f456c9bfa20a9197443464b6235f3935ae9b` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/instance-source-edition-8.md) | 227 | `declaration-track:ebff8b1027285745962d5681dd2a47fdab2e7edecdc4b4063ff824be844f4efd` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/instance-source-edition-2.md) | 230 | `declaration-track:26bc047a5e5188a9e97cc8f194b3bf9c4f686250c10dc68b2cd01702fa95e6b5` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/instance-source-edition-4.md) | 234 | `declaration-track:3e7db88e9c2a4737b7a151b06dd5c8548965e4458c4bd180c39896a8e0f36be6` |
| 19 | `lemma` | [map_distinguished_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/map-distinguished-iff.md) | 241 | `result-track:012940b0ceb542904bc31c74b8046ec87dbe80f05a37d10159d2a1f5e9ce31b0` |
| 20 | `lemma` | [isTriangulated_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/istriangulated-of-iso.md) | 249 | `result-track:fef5c354cfdaa20f64a887bf81fddf283b97b49dbb4ff1cdbcf990a4d284a0a6` |
| 21 | `lemma` | [isTriangulated_iff_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/istriangulated-iff-of-iso.md) | 254 | `result-track:dea9479f955fd3d48186597de0d4165d1c1eb158912e825e0fe46cbddd164b59` |
| 22 | `lemma` | [isTriangulated_iff_comp_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/istriangulated-iff-comp-right.md) | 263 | `result-track:c65b86ddde827996979ca640ec504c7162b15948d70fa0d0fe6548712b6fe091` |
| 23 | `lemma` | [mem_mapTriangle_essImage_of_distinguished](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/mem-maptriangle-essimage-of-distinguished.md) | 273 | `result-track:442b4998bc8ae2a3664d167add8089a000a45b9792e1be4925128e66ffad7f53` |
| 24 | `lemma` | [isTriangulated_of_precomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/istriangulated-of-precomp.md) | 283 | `result-track:3bda861ae6a1a019ee40aa0f86c5b89c9f0439fa16b02e6a656637a4b443fb6f` |
| 25 | `lemma` | [isTriangulated_of_precomp_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/istriangulated-of-precomp-iso.md) | 292 | `result-track:13a6e49189ef094c4760c7c871ac5c0e2f942f33623912eae2bb1b063377210b` |
| 26 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/map.md) | 319 | `declaration-track:fea0ade7a4f2a7c91626ca06962966a5e66ff76287aa37995166295271c21369` |
| 27 | `lemma` | [isTriangulated_of_essSurj_mapComposableArrows_two](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/istriangulated-of-esssurj-mapcomposablearrows-two.md) | 338 | `result-track:609ca31253b84e45dbf41c4cb398b86186771f79e4cb58eccea7113c5b081da4` |
| 28 | `lemma` | [IsTriangulated.of_fully_faithful_triangulated_functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctorPublic.lean/declarations/istriangulated-of-fully-faithful-triangulated-functor.md) | 356 | `result-track:744534b93335cd12188b6bb8a9835297496f78e0ab1612209fa839f63e7b7bac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf0f69385a1d3feaaceb61c993beaa6f1e9dc3e79c97247d3b2a9cda938b3cc3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant34ab77d6f9e173fbb8c2fcde881c02880d62c0ef21802ed85f45d9927d9395a3.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant34ab77d6f9e173fbb8c2fcde881c02880d62c0ef21802ed85f45d9927d9395a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
