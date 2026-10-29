# Verification target: Cardinal Arrow Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2232cd235c0f90eeace6483fc9fe64a3e72663da",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variantcdba38324f3b14d55630d02c3fe3c3df144008dd6257681bf45a91b36bdcc5c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalArrowNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalArrowNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2232cd235c0f90eeace6483fc9fe64a3e72663da`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variantcdba38324f3b14d55630d02c3fe3c3df144008dd6257681bf45a91b36bdcc5c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variantcdba38324f3b14d55630d02c3fe3c3df144008dd6257681bf45a91b36bdcc5c5.lean.json)

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
| 1 | `lemma` | [Arrow.finite_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalArrowNamespacedPublic.lean/declarations/arrow-finite-iff.md) | 34 | `result-track:f54fe013d9cb2228fae0077b1395d81c144c97be46629fedd39f2d9223f00994` |
| 2 | `instance` | [Arrow.finite](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalArrowNamespacedPublic.lean/declarations/arrow-finite.md) | 51 | `declaration-track:698253e437cec7e48f6b586a59c5f97d45bc95b66608f3d5260e16288f84659b` |
| 3 | `def` | [Arrow.opEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalArrowNamespacedPublic.lean/declarations/arrow-opequiv.md) | 57 | `declaration-track:014f8c69f3d02f893d6d9758f9c6becfee88300074e6b463fc024f181538b5d9` |
| 4 | `lemma` | [hasCardinalLT_arrow_op_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalArrowNamespacedPublic.lean/declarations/hascardinallt-arrow-op-iff.md) | 62 | `result-track:bc922e5c47891c0316c36fdb9044f095eba893c574fdf41ac49fdc9c99ae4a57` |
| 5 | `lemma` | [hasCardinalLT_arrow_discrete_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalArrowNamespacedPublic.lean/declarations/hascardinallt-arrow-discrete-iff.md) | 67 | `result-track:8f3bf721fac35bd84812ab956a70dbe6428bf2129f76e4c293dbbb1b2286c422` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalArrowNamespacedPublic.lean/declarations/instance.md) | 71 | `declaration-track:62ad2721a883ec270e1f647965d6cd7eb288d078eb538390c5fe402b9361f8ff` |
| 7 | `lemma` | [small_of_small_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalArrowNamespacedPublic.lean/declarations/small-of-small-arrow.md) | 74 | `result-track:5736952cedc3676ef7cc96450b6181cac09474314fc37936306bbb0742d27ab1` |
| 8 | `lemma` | [locallySmall_of_small_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalArrowNamespacedPublic.lean/declarations/locallysmall-of-small-arrow.md) | 78 | `result-track:f051f372342434a7e53c2f4037671a6d7b4a60e0aebaa5c2e1bf23e237a78dc6` |
| 9 | `def` | [Arrow.shrinkHomsEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalArrowNamespacedPublic.lean/declarations/arrow-shrinkhomsequiv.md) | 88 | `declaration-track:d3f6c374282de9c6b7e2a9cbd7b91a703355d22e0e274e716499abca347db7a6` |
| 10 | `def` | [Arrow.shrinkEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalArrowNamespacedPublic.lean/declarations/arrow-shrinkequiv.md) | 97 | `declaration-track:e052e16815a4b5acee907394620d5a62e5d300df9245d704ff7b43fa6488e84e` |
| 11 | `lemma` | [hasCardinalLT_arrow_shrinkHoms_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalArrowNamespacedPublic.lean/declarations/hascardinallt-arrow-shrinkhoms-iff.md) | 107 | `result-track:da302ff136ce5f9f0ca0d815d47b6be325fec18bc2c780d5ddce7a3d8cf56402` |
| 12 | `lemma` | [hasCardinalLT_arrow_shrink_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalArrowNamespacedPublic.lean/declarations/hascardinallt-arrow-shrink-iff.md) | 113 | `result-track:6c9350c095de04d81b75acc118c660846848e5849e9f0d06ff7c1f7fb795aff5` |
| 13 | `lemma` | [hasCardinalLT_of_hasCardinalLT_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalArrowNamespacedPublic.lean/declarations/hascardinallt-of-hascardinallt-arrow.md) | 118 | `result-track:7fbaa3169ec37539bf665fe71c1fad1211fc4887edefd97437ccdff241292380` |
| 14 | `lemma` | [hasCardinalLT_arrow_iff_of_isThin](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalArrowNamespacedPublic.lean/declarations/hascardinallt-arrow-iff-of-isthin.md) | 123 | `result-track:92ee20785ad8994ec3530f305437666c0e0dd249f76e34f0308237c1e1d5293c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=553abe6f10937b2e3e498fb239ee8b873949d766d523932ac9fb7b1e96c60311 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variantcdba38324f3b14d55630d02c3fe3c3df144008dd6257681bf45a91b36bdcc5c5.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variantcdba38324f3b14d55630d02c3fe3c3df144008dd6257681bf45a91b36bdcc5c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
