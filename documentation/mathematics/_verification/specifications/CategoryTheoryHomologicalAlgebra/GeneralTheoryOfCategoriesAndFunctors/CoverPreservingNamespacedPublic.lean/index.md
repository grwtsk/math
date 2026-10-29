# Verification target: Cover Preserving Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c40537dce3241a2472bb5c3f3820451eec48d65e",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c40537dce3241a2472bb5c3f3820451eec48d65e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean.json)

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
| 1 | `structure` | [CoverPreserving](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingNamespacedPublic.lean/declarations/coverpreserving.md) | 67 | `declaration-track:a78aa08dbc5e0d972c04c19c5fb67a65cdcf8ac047baba9746355a068e5daaf9` |
| 2 | `theorem` | [idCoverPreserving](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingNamespacedPublic.lean/declarations/idcoverpreserving.md) | 71 | `result-track:ba15d930e1ce5684c6982bd79fa6743f05bdf0ceb3b60af0e133572e14aae96e` |
| 3 | `theorem` | [CoverPreserving.comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingNamespacedPublic.lean/declarations/coverpreserving-comp.md) | 75 | `result-track:6a3394c196d05292cc3c1bd538d5f5152af19bd36f84bbfaa83d02d09d1f93c5` |
| 4 | `structure` | [CompatiblePreserving](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingNamespacedPublic.lean/declarations/compatiblepreserving.md) | 87 | `declaration-track:39d20fa897904cfc00730fe588224428a9ca0e57ba78c0c0c524c1712018faba` |
| 5 | `theorem` | [Presieve.FamilyOfElements.Compatible.functorPushforward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingNamespacedPublic.lean/declarations/presieve-familyofelements-compatible-functorpushforward.md) | 100 | `result-track:154e7c1178091d4ace339726d33d281cf2707c6521f8cfd22837b597df0c756f` |
| 6 | `theorem` | [CompatiblePreserving.apply_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingNamespacedPublic.lean/declarations/compatiblepreserving-apply-map.md) | 112 | `result-track:b541f74664c1fec9588ff64b4ea2f3a6c9e3cfd6f5d4383de2fc962f38d710d3` |
| 7 | `theorem` | [compatiblePreservingOfFlat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingNamespacedPublic.lean/declarations/compatiblepreservingofflat.md) | 125 | `result-track:e47f05b13d9ec1eb0abc45f323c9f6247dc0a8ee2af88d3dada44f5ae299fe7a` |
| 8 | `theorem` | [compatiblePreservingOfDownwardsClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingNamespacedPublic.lean/declarations/compatiblepreservingofdownwardsclosed.md) | 154 | `result-track:c1f4487fdb6d6b4b93d403dbbccd31310b4816e73128075160cf0733917c9cb6` |
| 9 | `lemma` | [Functor.isContinuous_of_coverPreserving](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingNamespacedPublic.lean/declarations/functor-iscontinuous-of-coverpreserving.md) | 169 | `result-track:db0b4ef6e5f079fccd71c0ab17185b444b187d3eb29a12fb867ccabaffa5f066` |
| 10 | `lemma` | [CoverPreserving.of_isContinuous](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingNamespacedPublic.lean/declarations/coverpreserving-of-iscontinuous.md) | 185 | `result-track:b5f9e341e52ed64e0f6b73a17a6f265725d508f094e74ba7a2609b4e08a33c9d` |
| 11 | `lemma` | [Functor.isContinuous_iff_coverPreserving](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingNamespacedPublic.lean/declarations/functor-iscontinuous-iff-coverpreserving.md) | 199 | `result-track:4e280d9e2440a4802da6ebad4d5283f430fa9a65cda6a4e390f9af8a05a71980` |
| 12 | `lemma` | [Functor.PreservesOneHypercovers.of_coverPreserving](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverPreservingNamespacedPublic.lean/declarations/functor-preservesonehypercovers-of-coverpreserving.md) | 208 | `result-track:28f4504ac9a8fad0a928804b054cf560b72ca64c99afd379d65802eea9b2b3a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d1616a28416bd9dc16347ad6058ce193f9fd96fb456eddf5822909048532fea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
