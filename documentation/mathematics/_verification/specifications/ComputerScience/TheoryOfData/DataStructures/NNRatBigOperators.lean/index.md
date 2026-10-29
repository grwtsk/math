# Verification target: NNRat Big Operators

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "547de4bd5a2e756432f6d4c656438d2107a8937f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantd4523725500793ff3f3390f001c6855cf21c4dbdba44e7d6e35701f83881a510.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatBigOperators.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatBigOperators.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `547de4bd5a2e756432f6d4c656438d2107a8937f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantd4523725500793ff3f3390f001c6855cf21c4dbdba44e7d6e35701f83881a510.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variantd4523725500793ff3f3390f001c6855cf21c4dbdba44e7d6e35701f83881a510.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Rat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNRat.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_list_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatBigOperators.lean/declarations/coe-list-sum.md) | 18 | `result-track:bc1c2e34d7bd2471d79f6733922efecb8aad5b135178c7aa17b51ab0aad7c5c8` |
| 2 | `theorem` | [coe_list_prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatBigOperators.lean/declarations/coe-list-prod.md) | 22 | `result-track:5ed01ab81dde3863891240a8256f446b462a6eb7871fae9292183bdb48e68d0a` |
| 3 | `theorem` | [coe_multiset_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatBigOperators.lean/declarations/coe-multiset-sum.md) | 26 | `result-track:dcc17d00c0c4e8249610fe9cdcd5cffbbd47668c08d78e9290c2a23639e80406` |
| 4 | `theorem` | [coe_multiset_prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatBigOperators.lean/declarations/coe-multiset-prod.md) | 30 | `result-track:c2a2a08b4f83c8d30cd7d060cfcbe86d038b784404e96dfe6b8e47e893201dfd` |
| 5 | `theorem` | [coe_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatBigOperators.lean/declarations/coe-sum.md) | 34 | `result-track:b9fdf6ff057eb1514fc1d0ecf909b70a48a4d853aed5f55cd817105c0bc56fe5` |
| 6 | `theorem` | [toNNRat_sum_of_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatBigOperators.lean/declarations/tonnrat-sum-of-nonneg.md) | 37 | `result-track:519f83ed821c888c7c211cd8120565f227d568af4c89c86d074d69a26f9fd5a4` |
| 7 | `theorem` | [coe_prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatBigOperators.lean/declarations/coe-prod.md) | 43 | `result-track:b73544bad173ecfe5d91996b22904079cca257ca840eb9a08552435d5d45bdb6` |
| 8 | `theorem` | [toNNRat_prod_of_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatBigOperators.lean/declarations/tonnrat-prod-of-nonneg.md) | 46 | `result-track:5fbc79901fee2ed6aa86edd70319e18f8a4926b36f8fd350c1e9357cbd12a127` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d827489549ac30f3dc131bd6a0e5901fe95a6a98eccaac9e5bf53dc62c5a3ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantd4523725500793ff3f3390f001c6855cf21c4dbdba44e7d6e35701f83881a510.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/BigOperators/Variantd4523725500793ff3f3390f001c6855cf21c4dbdba44e7d6e35701f83881a510.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
