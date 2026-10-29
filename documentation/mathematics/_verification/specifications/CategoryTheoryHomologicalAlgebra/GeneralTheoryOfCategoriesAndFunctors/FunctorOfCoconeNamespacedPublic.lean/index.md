# Verification target: Functor Of Cocone Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2057e4619c5dacdec1801f805c5b8c0e3b96682d",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant7c3fdcea6d1befa57657f520f739b1f42300c705c6b21bd0e7444b4de7e3a236.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2057e4619c5dacdec1801f805c5b8c0e3b96682d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant7c3fdcea6d1befa57657f520f739b1f42300c705c6b21bd0e7444b4de7e3a236.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant7c3fdcea6d1befa57657f520f739b1f42300c705c6b21bd0e7444b4de7e3a236.lean.json)

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
| 1 | `def` | [obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespacedPublic.lean/declarations/obj.md) | 46 | `declaration-track:23a00e17451bea5aeb9fdf609d052c1fc728e5f2bdc029bb6b23c9139d3ff815` |
| 2 | `def` | [objIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespacedPublic.lean/declarations/objiso.md) | 52 | `declaration-track:8dbc71292c6192c9e6541a49b63622f0945dc642fede86c4ef14b08436398426` |
| 3 | `def` | [objIsoPt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespacedPublic.lean/declarations/objisopt.md) | 57 | `declaration-track:cd2f78dd70754426ff95b96544128517167cb244c86f9ac2d46a255381f9b0e2` |
| 4 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespacedPublic.lean/declarations/map.md) | 62 | `declaration-track:9213c6d87cc686fa0612f4d134cf4d186ef6b494004f598beeabff36994443a0` |
| 5 | `lemma` | [map_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespacedPublic.lean/declarations/map-id.md) | 74 | `result-track:d907a1f13521f3896bda6037e97c3fefc665e66cf109d174cbaf5aff527fcc67` |
| 6 | `lemma` | [map_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespacedPublic.lean/declarations/map-comp.md) | 80 | `result-track:0181dddf16ccd26f5c018d7c2849f35a0b845cf0273ea635c5663164cc04f540` |
| 7 | `def` | [ofCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespacedPublic.lean/declarations/ofcocone.md) | 101 | `declaration-track:d2a052207f3fc05e6762a4dda7cd320edb4a3b6531804900a7af53ecf2d49e1e` |
| 8 | `lemma` | [ofCocone_obj_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespacedPublic.lean/declarations/ofcocone-obj-eq.md) | 107 | `result-track:82d8a6d7021355f8e3442387aa391dc1e818c0746f6651c941bae1c9def4198c` |
| 9 | `def` | [ofCoconeObjIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespacedPublic.lean/declarations/ofcoconeobjiso.md) | 112 | `declaration-track:d495fd2bf0b91fbad650f9c66aa2be90aeb10e5f5de4e66ee1740c8d66364052` |
| 10 | `lemma` | [ofCocone_obj_eq_pt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespacedPublic.lean/declarations/ofcocone-obj-eq-pt.md) | 116 | `result-track:1a9481f2d32f10378a76f6f1d26c24f30e88f90b489791c62ee1931f4784a959` |
| 11 | `def` | [ofCoconeObjIsoPt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespacedPublic.lean/declarations/ofcoconeobjisopt.md) | 121 | `declaration-track:a5817b4e5b60bc2e55a264894dcf605b563cd60e29d83b684ce72a41ccc408df` |
| 12 | `lemma` | [ofCocone_map_to_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespacedPublic.lean/declarations/ofcocone-map-to-top.md) | 125 | `result-track:8343a36413e221709ef1f800be826a6f5c464c5bdc8eb3efcbfa7505fdc96cfa` |
| 13 | `lemma` | [ofCocone_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespacedPublic.lean/declarations/ofcocone-map.md) | 132 | `result-track:3bfd743437192dc5a43823339d54924909a0ca39abc2a87ab779972c7c415ccd` |
| 14 | `lemma` | [ofCoconeObjIso_hom_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespacedPublic.lean/declarations/ofcoconeobjiso-hom-naturality.md) | 140 | `result-track:85151dadadfb89eb8c8cc54e8aeb9320aa4d7fad60ac81bc9f77b8bbed747801` |
| 15 | `def` | [restrictionLTOfCoconeIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespacedPublic.lean/declarations/restrictionltofcoconeiso.md) | 149 | `declaration-track:1157eb11b4da41548ea196d54292e4c7d9c9eebc3599e10fd884bf3d71864410` |
| 16 | `def` | [isColimitCoconeOfLEOfCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespacedPublic.lean/declarations/iscolimitcoconeofleofcocone.md) | 158 | `declaration-track:19b103e83ac574a7ddbdf81f3f112aab6155de756815b440ea185c57b9458400` |
| 17 | `lemma` | [arrowMap_ofCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespacedPublic.lean/declarations/arrowmap-ofcocone.md) | 166 | `result-track:f4753c7bb4de685d043004a23b73c74ca32cfb358b7c8d2234e604530aaf2030` |
| 18 | `lemma` | [arrowMap_ofCocone_to_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorOfCoconeNamespacedPublic.lean/declarations/arrowmap-ofcocone-to-top.md) | 171 | `result-track:5c28e228bd44a11205c1117fa3bc03b027b274fff786c500e52108ce832b3396` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1227e2d896a69ba7bdac17b3505be5958b15f7190c537e1dca9e2d4abc341baa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant7c3fdcea6d1befa57657f520f739b1f42300c705c6b21bd0e7444b4de7e3a236.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant7c3fdcea6d1befa57657f520f739b1f42300c705c6b21bd0e7444b4de7e3a236.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
