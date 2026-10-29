# Verification target: Single Functors Lift Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbe74d0b4d2177aec1cf68fd335e6125a403eb29",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctorsLift/Varianta56ead5a3311a7a9937f33bf2d1902af41a25c24bc89625a555a3b8b36b3162b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SingleFunctorsLiftPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SingleFunctorsLiftPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbe74d0b4d2177aec1cf68fd335e6125a403eb29`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctorsLift/Varianta56ead5a3311a7a9937f33bf2d1902af41a25c24bc89625a555a3b8b36b3162b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctorsLift/Varianta56ead5a3311a7a9937f33bf2d1902af41a25c24bc89625a555a3b8b36b3162b.lean.json)

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
| 1 | `def` | [shiftIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SingleFunctorsLiftPublic.lean/declarations/shiftiso.md) | 42 | `declaration-track:5c6134496fc0f19167f8dd96aa7f9fe6f0cb876988219a309ce7bffb3a01cefe` |
| 2 | `lemma` | [map_shiftIso_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SingleFunctorsLiftPublic.lean/declarations/map-shiftiso-hom-app.md) | 50 | `result-track:5d5bee75c58d93c63bb6f8070408d7e007e80a55b21d96cf160403c1b20a6986` |
| 3 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SingleFunctorsLiftPublic.lean/declarations/lift.md) | 67 | `declaration-track:d757459773e930431f6f368d1e519e7e1de2e84cad403bf63c05e0da07183d04` |
| 4 | `lemma` | [map_lift_shiftIso_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SingleFunctorsLiftPublic.lean/declarations/map-lift-shiftiso-hom-app.md) | 84 | `result-track:bb0fb51d43cdd05ab724e2d02ba82972a9ff73e5e40abea9c7d90062e288bac0` |
| 5 | `def` | [liftPostcompIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SingleFunctorsLiftPublic.lean/declarations/liftpostcompiso.md) | 94 | `declaration-track:26bf7be9b4b779ad18f70d16a99da26adc6cbc0b747202803a09fa6418be7a5c` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SingleFunctorsLiftPublic.lean/declarations/instance.md) | 102 | `declaration-track:bf1ec180b7463ee7f227fb30c768263a8796fe0b776981fd4951afca6dbe658a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5cc45942ea76edde156f728686c5835e0de996a7e0c40874b3a26c68cc6e0494 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctorsLift/Varianta56ead5a3311a7a9937f33bf2d1902af41a25c24bc89625a555a3b8b36b3162b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctorsLift/Varianta56ead5a3311a7a9937f33bf2d1902af41a25c24bc89625a555a3b8b36b3162b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
