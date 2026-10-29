# Verification target: Constructions Filtered Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69d36773b0aa9376c5ac5a0aa9246906e53b0e29",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc680a46319125d3149f9ed3ba54d5dadad6e9982c9a1ddcd2f340829b1160ad3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructionsFilteredPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructionsFilteredPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69d36773b0aa9376c5ac5a0aa9246906e53b0e29`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc680a46319125d3149f9ed3ba54d5dadad6e9982c9a1ddcd2f340829b1160ad3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc680a46319125d3149f9ed3ba54d5dadad6e9982c9a1ddcd2f340829b1160ad3.lean.json)

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
| 1 | `def` | [liftToFinsetObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructionsFilteredPublic.lean/declarations/lifttofinsetobj.md) | 45 | `declaration-track:35f977601194b94b08b00e44fa2b41319b0f2cc8c454bf4131b65fc247afaaea` |
| 2 | `def` | [liftToFinsetColimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructionsFilteredPublic.lean/declarations/lifttofinsetcolimitcocone.md) | 55 | `declaration-track:c3f2a94f80cf41dde46ea5e12e26833caef5c321d9a3308b5e5df6840dfb947a` |
| 3 | `def` | [liftToFinset](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructionsFilteredPublic.lean/declarations/lifttofinset-source-edition-2.md) | 84 | `declaration-track:cab8ec7fc894d5e8281d78c43a7b09dd14bf29a599d569189fa90f2a49f8e622` |
| 4 | `def` | [finiteSubcoproductsCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructionsFilteredPublic.lean/declarations/finitesubcoproductscocone.md) | 92 | `declaration-track:a3c7fe27ced06c616088ad590d7fcfc712dd5ccc869fda91b7ec0ad531ce3dbc` |
| 5 | `def` | [isColimitFiniteSubproductsCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructionsFilteredPublic.lean/declarations/iscolimitfinitesubproductscocone.md) | 100 | `declaration-track:1e27b4f5b9fdeccbd6252b92ac5029cafc6597172c7260e3c78deef3388728fe` |
| 6 | `theorem` | [hasCoproducts_of_finite_and_filtered](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructionsFilteredPublic.lean/declarations/hascoproducts-of-finite-and-filtered.md) | 120 | `result-track:a3e47266d35c854b6797fb230cccb3918166d68aa40c8354259df79d46959f97` |
| 7 | `theorem` | [has_colimits_of_finite_and_filtered](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructionsFilteredPublic.lean/declarations/has-colimits-of-finite-and-filtered.md) | 124 | `result-track:c6a0a0dd6acde12819c1f8775a4b109272d070b84fda9e9934bfb993ce5dc4f0` |
| 8 | `theorem` | [hasProducts_of_finite_and_cofiltered](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructionsFilteredPublic.lean/declarations/hasproducts-of-finite-and-cofiltered.md) | 129 | `result-track:772d820c379d551c25bafcedaf25c2f437a1583db32d1a9c03ae4bd426fff180` |
| 9 | `theorem` | [has_limits_of_finite_and_cofiltered](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructionsFilteredPublic.lean/declarations/has-limits-of-finite-and-cofiltered.md) | 134 | `result-track:e6196900f2e35d105e3620d0e5429875f87120da279a4f429d528fc50ab80f2c` |
| 10 | `theorem` | [liftToFinsetColimIso_aux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructionsFilteredPublic.lean/declarations/lifttofinsetcolimiso-aux.md) | 149 | `result-track:78e758cd25cbf0ae668d4cb16ff959ba102dce7f34fbb35a8f79855b5767da36` |
| 11 | `def` | [liftToFinsetColimIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructionsFilteredPublic.lean/declarations/lifttofinsetcolimiso.md) | 159 | `declaration-track:e019f24cbbca1d8fb2134ac3279fe698bfa968e94b577c3bb4ae1ba9d9074c5f` |
| 12 | `def` | [liftToFinsetEvaluationIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructionsFilteredPublic.lean/declarations/lifttofinsetevaluationiso.md) | 174 | `declaration-track:79f48a37ac911527a7f450a2b668f1144bed95f076cda74b647d6e5d26478220` |
| 13 | `def` | [liftToFinsetObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructionsFilteredPublic.lean/declarations/lifttofinsetobj-source-edition-2.md) | 189 | `declaration-track:83f6305222794400b66e90339b39813b60164997cb558315de8960b947f296c2` |
| 14 | `def` | [liftToFinsetLimitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructionsFilteredPublic.lean/declarations/lifttofinsetlimitcone.md) | 200 | `declaration-track:19e24e737de45c67224476a7f5d4bf731d8401c64d4ef4a052c27e98b28484ff` |
| 15 | `def` | [finiteSubproductsCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructionsFilteredPublic.lean/declarations/finitesubproductscone.md) | 226 | `declaration-track:a7aecf5b8f37e2f93e16452d7b0bdb0d8f2303d8259e54158469a694d0a6eebe` |
| 16 | `def` | [isLimitFiniteSubproductsCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructionsFilteredPublic.lean/declarations/islimitfinitesubproductscone.md) | 234 | `declaration-track:8461d8f8064d4b1a63a177bc6f33203f9ea6c301f49fea364106e8ed20ee64c4` |
| 17 | `def` | [liftToFinset](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructionsFilteredPublic.lean/declarations/lifttofinset.md) | 255 | `declaration-track:56e47b5ed51f332bfdcf007b759b0fa77b63fd65c70eab3362ab36e83ece5eeb` |
| 18 | `def` | [liftToFinsetLimIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructionsFilteredPublic.lean/declarations/lifttofinsetlimiso.md) | 263 | `declaration-track:7869e0df735023191bf8e919b1b9b7457ce47b5ba9a67a4555f6ad4421e52938` |
| 19 | `def` | [liftToFinsetEvaluationIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConstructionsFilteredPublic.lean/declarations/lifttofinsetevaluationiso-source-edition-2.md) | 275 | `declaration-track:82ec1659f75d61057bf14184364bfd96321813ca18cb1de510c58bc303501e5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0084f68f1a61ad7e45a2089a5f786bc10d57a36a80ed72751b958db967a247ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc680a46319125d3149f9ed3ba54d5dadad6e9982c9a1ddcd2f340829b1160ad3.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc680a46319125d3149f9ed3ba54d5dadad6e9982c9a1ddcd2f340829b1160ad3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
