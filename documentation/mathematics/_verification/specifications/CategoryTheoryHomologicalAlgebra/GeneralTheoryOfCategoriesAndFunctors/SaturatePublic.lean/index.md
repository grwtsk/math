# Verification target: Saturate Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2537e58f3e56f4f94bd3848f54290bd5cda707c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Saturate/Variant1516c9dc15eac934c9c4d4b79fc1d84435d4e72bd5d488c0bf20b3ea81f2741e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SaturatePublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SaturatePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2537e58f3e56f4f94bd3848f54290bd5cda707c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Saturate/Variant1516c9dc15eac934c9c4d4b79fc1d84435d4e72bd5d488c0bf20b3ea81f2741e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Saturate/Variant1516c9dc15eac934c9c4d4b79fc1d84435d4e72bd5d488c0bf20b3ea81f2741e.lean.json)

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
| 1 | `structure` | [Relation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SaturatePublic.lean/declarations/relation.md) | 35 | `declaration-track:20c029ee26cef730a6f1310bb2847dc20f83f25f6f7889c15d86da84b7a96e7f` |
| 2 | `def` | [saturate](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SaturatePublic.lean/declarations/saturate.md) | 47 | `declaration-track:e64396f2301b2bb0d56d5f8fc9275b1907288c57e58cc1ca94addd1c0377a9a3` |
| 3 | `def` | [sectionsSaturateEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SaturatePublic.lean/declarations/sectionssaturateequiv.md) | 58 | `declaration-track:204ee918de615b2b0b41b88fb8f6d84439e40e1129a7d522bd014d00c7051348` |
| 4 | `lemma` | [isLimit_saturate_type_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SaturatePublic.lean/declarations/islimit-saturate-type-iff.md) | 65 | `result-track:c0db3e69c2dbf85fc4d7b0e6f9e1cff4cb7339264c95f714d9795663d216218b` |
| 5 | `def` | [toSaturateOfHasPullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SaturatePublic.lean/declarations/tosaturateofhaspullbacks.md) | 77 | `declaration-track:252e44ecad855f8b71afd531ccf5b3ee6f1cf948930232ab2f9446865e93109a` |
| 6 | `def` | [fromSaturateOfHasPullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SaturatePublic.lean/declarations/fromsaturateofhaspullbacks.md) | 89 | `declaration-track:3e7c13360a096b3edefad4efe24b152d53ada4a7bd371262781f6e37f9f60179` |
| 7 | `def` | [toPreOneHypercoverHomotopy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SaturatePublic.lean/declarations/topreonehypercoverhomotopy.md) | 103 | `declaration-track:1d97dee53b85acd4be1ab30f253bd66ed7acc6a93ade51ecd1a0df4a65dee74e` |
| 8 | `lemma` | [toSaturateOfHasPullbacks_fromSaturateOfHasPullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SaturatePublic.lean/declarations/tosaturateofhaspullbacks-fromsaturateofhaspullbacks.md) | 116 | `result-track:878552751e97a3096909ddde53ad0f6aa4be6557382818d4f817cb990d169a2c` |
| 9 | `def` | [fromSaturateToSaturateHomotopy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SaturatePublic.lean/declarations/fromsaturatetosaturatehomotopy.md) | 124 | `declaration-track:bd2cd6bf8718894cf1fe2fe35f734a33328dac43b2b732c66d939e2a6780fd9e` |
| 10 | `def` | [isLimitSaturateEquivOfHasPullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SaturatePublic.lean/declarations/islimitsaturateequivofhaspullbacks.md) | 135 | `declaration-track:efbbcc2b9c634794855389eff3511362026c6196416b14a5613e786ef455a94b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b7267e21d938be2962b2feeefa63638387ca54a6371dd624567ef32b366c2af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Saturate/Variant1516c9dc15eac934c9c4d4b79fc1d84435d4e72bd5d488c0bf20b3ea81f2741e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Saturate/Variant1516c9dc15eac934c9c4d4b79fc1d84435d4e72bd5d488c0bf20b3ea81f2741e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
