# Verification target: Join Opposites Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3498d55f57dc3db3387a65eb0c7c09b9fa3a81e0",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant3ae760de9b5efba3b0db84db4b6a59de955e469e3c7eff629b8e4ab65181ae83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/JoinOppositesPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/JoinOppositesPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3498d55f57dc3db3387a65eb0c7c09b9fa3a81e0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant3ae760de9b5efba3b0db84db4b6a59de955e469e3c7eff629b8e4ab65181ae83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant3ae760de9b5efba3b0db84db4b6a59de955e469e3c7eff629b8e4ab65181ae83.lean.json)

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
| 1 | `def` | [opEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/JoinOppositesPublic.lean/declarations/opequiv.md) | 32 | `declaration-track:3c10115a16b6b384673fa0828963469dae91e32e0e4123f79659180071f8bc6e` |
| 2 | `lemma` | [opEquiv_functor_obj_op_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/JoinOppositesPublic.lean/declarations/opequiv-functor-obj-op-left.md) | 54 | `result-track:d85e46b95cf8717c73faa2878f9b972abad24bf1ab9232d9c1f1c5c8584b5c31` |
| 3 | `lemma` | [opEquiv_functor_obj_op_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/JoinOppositesPublic.lean/declarations/opequiv-functor-obj-op-right.md) | 60 | `result-track:63b2d2f925298f2064f47c9faf3eb7a4374291c4bd38dd20502ebf08146ffdff` |
| 4 | `lemma` | [opEquiv_functor_map_op_inclLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/JoinOppositesPublic.lean/declarations/opequiv-functor-map-op-inclleft.md) | 66 | `result-track:c2bf86b03b2584d51f67c8ea63ed37dc7f104b728405d1eb083aed9f922c2175` |
| 5 | `lemma` | [opEquiv_functor_map_op_inclRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/JoinOppositesPublic.lean/declarations/opequiv-functor-map-op-inclright.md) | 72 | `result-track:a80e9a29478c4d66df7dbf3671ad64ae379828912fc9f74f6825a25c99a6f09f` |
| 6 | `lemma` | [opEquiv_functor_map_op_edge](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/JoinOppositesPublic.lean/declarations/opequiv-functor-map-op-edge.md) | 77 | `result-track:cbe18dd5514cd69c247ed45de4fc0cb8c6ee2ef716512c976ca93b9b087bdb5e` |
| 7 | `def` | [InclLeftCompRightOpOpEquivFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/JoinOppositesPublic.lean/declarations/inclleftcomprightopopequivfunctor.md) | 83 | `declaration-track:644a493213e1124b6d1aac5f641753187797d43f1283eb609b931f4863f0af6a` |
| 8 | `def` | [InclRightCompRightOpOpEquivFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/JoinOppositesPublic.lean/declarations/inclrightcomprightopopequivfunctor.md) | 89 | `declaration-track:5c69f05110827e54d8eb0accea3cdd573d85ad7e16091cd61385738b99e432f8` |
| 9 | `lemma` | [opEquiv_inverse_obj_left_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/JoinOppositesPublic.lean/declarations/opequiv-inverse-obj-left-op.md) | 95 | `result-track:aa4b8c87e4873a3c7006a51f0c961f3de06c433de8313f9266603651b007f9d1` |
| 10 | `lemma` | [opEquiv_inverse_obj_right_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/JoinOppositesPublic.lean/declarations/opequiv-inverse-obj-right-op.md) | 101 | `result-track:2932ca160c313f0d0ce7aa12a423d64b37415e910657838a9e51b66d276386a5` |
| 11 | `lemma` | [opEquiv_inverse_map_inclLeft_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/JoinOppositesPublic.lean/declarations/opequiv-inverse-map-inclleft-op.md) | 107 | `result-track:8c23150fe6a32af7c426ac6256427dc739b6100de0b83e27094355c2de061a5c` |
| 12 | `lemma` | [opEquiv_inverse_map_inclRight_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/JoinOppositesPublic.lean/declarations/opequiv-inverse-map-inclright-op.md) | 113 | `result-track:74b2389ff152915ffacc705f0de9c23744fd8814fd8e2d2307d145774eaf0871` |
| 13 | `lemma` | [opEquiv_inverse_map_edge_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/JoinOppositesPublic.lean/declarations/opequiv-inverse-map-edge-op.md) | 119 | `result-track:5b0e7b30f343bf1257f66f369e04a65258e31a312454747a76cfa83af621f231` |
| 14 | `def` | [inclLeftCompOpEquivInverse](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/JoinOppositesPublic.lean/declarations/inclleftcompopequivinverse.md) | 124 | `declaration-track:8566e3b11883792b73a5c31d743857ac4bb0ab2862483ab1ef418a334222816c` |
| 15 | `def` | [inclRightCompOpEquivInverse](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/JoinOppositesPublic.lean/declarations/inclrightcompopequivinverse.md) | 129 | `declaration-track:6c45e3682a61ce1973ec7b56277b540e97adc04d1736055b45ea1f234fdab8d5` |
| 16 | `lemma` | [inclLeftCompOpEquivInverse_hom_app_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/JoinOppositesPublic.lean/declarations/inclleftcompopequivinverse-hom-app-op.md) | 135 | `result-track:2e4a6ecf672c3c5270c6441fb710a8948bef2c7cc1609a3dc5388269c49b6934` |
| 17 | `lemma` | [inclRightCompOpEquivInverse_hom_app_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/JoinOppositesPublic.lean/declarations/inclrightcompopequivinverse-hom-app-op.md) | 141 | `result-track:c8a6b8ff48ea42c84f0c399d42bd93e3504aa5d4c902d03b5684110ec9fa0c72` |
| 18 | `lemma` | [inclLeftCompOpEquivInverse_inv_app_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/JoinOppositesPublic.lean/declarations/inclleftcompopequivinverse-inv-app-op.md) | 147 | `result-track:ff3a63acd490f3e484bf487fb19a037930f9a3e12afb4e998ff07f7231fe34aa` |
| 19 | `lemma` | [inclRightCompOpEquivInverse_inv_app_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/JoinOppositesPublic.lean/declarations/inclrightcompopequivinverse-inv-app-op.md) | 153 | `result-track:7cd30e33c9274fc87f8e7f7796cbda942e0e647e678399fc0a53fa01f35bd71e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2fcb5ee04d4df762bb5eff548a889c4d879460ff24b1db7738608bba4538d33b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant3ae760de9b5efba3b0db84db4b6a59de955e469e3c7eff629b8e4ab65181ae83.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant3ae760de9b5efba3b0db84db4b6a59de955e469e3c7eff629b8e4ab65181ae83.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
