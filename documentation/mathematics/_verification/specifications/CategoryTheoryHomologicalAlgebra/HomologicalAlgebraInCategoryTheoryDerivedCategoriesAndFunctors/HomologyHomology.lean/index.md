# Verification target: Homology Homology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b22e4e18ade5de3e43e61479d8bf5ab205f79761",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant41d6ec0ed0dfe2f71af3a44837b5f3301c9288a4a9d1e49859d12ad1fd084289.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b22e4e18ade5de3e43e61479d8bf5ab205f79761`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant41d6ec0ed0dfe2f71af3a44837b5f3301c9288a4a9d1e49859d12ad1fd084289.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant41d6ec0ed0dfe2f71af3a44837b5f3301c9288a4a9d1e49859d12ad1fd084289.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ImageToKernel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomologicalComplex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.GradedObject` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [cycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/cycles.md) | 47 | `declaration-track:1c2bd3835e6af433fcbc87fb748c590d09ee8b206bec5639ec72be97bf9ae0ec` |
| 2 | `theorem` | [cycles_eq_kernelSubobject](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/cycles-eq-kernelsubobject.md) | 51 | `result-track:1a390a95b792aa623e52bf3677e8b9e5b7506d50620c56f4f0abfc624aca0970` |
| 3 | `def` | [cyclesIsoKernel](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/cyclesisokernel.md) | 58 | `declaration-track:cb00be217362bb77aad921c9f1969c2ef367a934ae5f968b7de51a6b83538671` |
| 4 | `theorem` | [cycles_eq_top](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/cycles-eq-top.md) | 62 | `result-track:ec95bd1bc90f156f4c2bf9fded5b1c1e0835ec9902491a9730a50bc0edf1ffe6` |
| 5 | `abbrev` | [boundaries](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/boundaries.md) | 75 | `declaration-track:d49dcb2e1dae7716b181293b308ff316c09ed414ccc698f55b36c5f725e1f661` |
| 6 | `theorem` | [boundaries_eq_imageSubobject](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/boundaries-eq-imagesubobject.md) | 79 | `result-track:5bdc7ae36df981d4b53c07c5a3d997e4863c54857a502567f3964d5cb76bbbb4` |
| 7 | `def` | [boundariesIsoImage](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/boundariesisoimage.md) | 86 | `declaration-track:f9dc2075019b17cab0602e40b13cb83636115c230f9a5eca3c106405155f347c` |
| 8 | `theorem` | [boundaries_eq_bot](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/boundaries-eq-bot.md) | 91 | `result-track:01875da2245d6cc64ae719db8d67e1e86510737d339011be811f9ebef69ed499` |
| 9 | `theorem` | [boundaries_le_cycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/boundaries-le-cycles.md) | 103 | `result-track:593b5b32c25e8fd6e22e74ae57fda17268bef2402e055f4d8ede6dd4a5aeb95b` |
| 10 | `abbrev` | [boundariesToCycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/boundariestocycles.md) | 108 | `declaration-track:8a80235112e1741c6be43e360c9242e2a5e316c19ec2fa6e2c4007483e42e0eb` |
| 11 | `theorem` | [imageToKernel_as_boundariesToCycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/imagetokernel-as-boundariestocycles.md) | 115 | `result-track:bf993598ceb797ae8fc86043c74ac0b515802de7a9d7c5ca32954cc96226ccac` |
| 12 | `abbrev` | [homology](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/homology.md) | 122 | `declaration-track:38caabc087df69c16482f1b605f8fbdadcd3048a316631b144b9b2df4da012cb` |
| 13 | `def` | [homologyIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/homologyiso.md) | 129 | `declaration-track:720794ddf846b9528835eb9dd61c4a7a57273de22c933bbe38ca5520ab2b3554` |
| 14 | `def` | [ChainComplex.homologyZeroIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/chaincomplex-homologyzeroiso.md) | 144 | `declaration-track:9bcd17d21ff3ce18667da87f3063e11cc7364e08076fd0ff1ff2f481e980a064` |
| 15 | `def` | [CochainComplex.homologyZeroIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/cochaincomplex-homologyzeroiso.md) | 159 | `declaration-track:674c9c2ef9b4d51321dc3725bb2e48df12e28046b963d78e34c7bd1945b167f4` |
| 16 | `def` | [ChainComplex.homologySuccIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/chaincomplex-homologysucciso.md) | 173 | `declaration-track:5d0a987489f6383ab0833ede296e0107a112a990c4e66df95a37307c943d8a53` |
| 17 | `def` | [CochainComplex.homologySuccIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/cochaincomplex-homologysucciso.md) | 182 | `declaration-track:9cfa0baecc419c5ee5ca689379b39b132d0298c62af6351525d7ec627c57c38b` |
| 18 | `abbrev` | [cyclesMap](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/cyclesmap.md) | 200 | `declaration-track:af8a2a196dfdad7e2a08f10230e4570d0d92f2a9b8ab4d70a8d223ef12ecb1e2` |
| 19 | `theorem` | [cyclesMap_arrow](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/cyclesmap-arrow.md) | 206 | `result-track:0b02c8aded18737c9a98b4fbb713acaf6dc5d7b87a8c596aa8566a6336fa9c48` |
| 20 | `theorem` | [cyclesMap_id](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/cyclesmap-id.md) | 214 | `result-track:dd18aff7ccedf2c80c50c409d0240ba652d65d6d8ad9d253138e253cfe6f72d3` |
| 21 | `theorem` | [cyclesMap_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/cyclesmap-comp.md) | 220 | `result-track:8215e036d5b4614c0ffb2163f2c2d5c17ee8f2a0484111503640bbebfa3c05cb` |
| 22 | `def` | [cyclesFunctor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/cyclesfunctor.md) | 230 | `declaration-track:2f12cb478d32fb38b22d8476a0d5aa338a205d67282f85eb857d6600cb9927ec` |
| 23 | `abbrev` | [boundariesMap](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/boundariesmap.md) | 247 | `declaration-track:9be480a979ebbb772cb6a6b189da65ce429632510981de715d9df3890ed74ffc` |
| 24 | `def` | [boundariesFunctor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/boundariesfunctor.md) | 255 | `declaration-track:3db336475c7227af1725a17cfa8a0a3f5ccb2a53383a2e81610bfb60d6a473b6` |
| 25 | `theorem` | [boundariesToCycles_naturality](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/boundariestocycles-naturality.md) | 273 | `result-track:90fa6e8c87e9debb7462e36a823aebb212cfe91cdd63dcb354e0c31703d579ac` |
| 26 | `def` | [boundariesToCyclesNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/boundariestocyclesnattrans.md) | 283 | `declaration-track:42bc782248afd86b725a928388085513e390d83cb69a6483cdf77d9afce76000` |
| 27 | `def` | [homologyFunctor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/homologyfunctor.md) | 290 | `declaration-track:7e9c61b52829559eaa0a138a1333283bbbd432bb4c78ba7150f6caedbf71f616` |
| 28 | `def` | [gradedHomologyFunctor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomology.lean/declarations/gradedhomologyfunctor.md) | 310 | `declaration-track:7dfd7398298ce56f3076de4a7f18b43634d1889c1b3cd52d0cb3b6f978f888fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=91b95d78fbac96389a2c1dc438e898d17e93e85ae1f3c8e3e9d8973d0a7a6e93 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant41d6ec0ed0dfe2f71af3a44837b5f3301c9288a4a9d1e49859d12ad1fd084289.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant41d6ec0ed0dfe2f71af3a44837b5f3301c9288a4a9d1e49859d12ad1fd084289.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
