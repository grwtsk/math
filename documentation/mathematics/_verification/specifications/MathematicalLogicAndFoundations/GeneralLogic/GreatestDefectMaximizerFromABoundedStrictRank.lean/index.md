# Verification target: Greatest Defect Maximizer From ABounded Strict Rank

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2203a945ea307fc54b0c2a99bd0c4676cf45e1d3",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant9616b069b2cb68adb082120d668d8d6d233f3fe22741cc89fc99728e5720b478.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GreatestDefectMaximizerFromABoundedStrictRank.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GreatestDefectMaximizerFromABoundedStrictRank.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2203a945ea307fc54b0c2a99bd0c4676cf45e1d3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant9616b069b2cb68adb082120d668d8d6d233f3fe22741cc89fc99728e5720b478.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant9616b069b2cb68adb082120d668d8d6d233f3fe22741cc89fc99728e5720b478.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.MaximalDefect` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Find` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_maximizer_of_finite_values](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GreatestDefectMaximizerFromABoundedStrictRank.lean/declarations/exists-maximizer-of-finite-values.md) | 29 | `result-track:75f4a63680fff0414298bd8f296b1537b6ae6e60fa929e0ee3136b3048f6b17c` |
| 2 | `theorem` | [exists_unique_greatest_maximizer_of_bounded_rank](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GreatestDefectMaximizerFromABoundedStrictRank.lean/declarations/exists-unique-greatest-maximizer-of-bounded-rank.md) | 43 | `result-track:96a7df5f7a46c9cbb03aca6ad4a4b2cecfc232bda4718a9d5ce20d8786e55cee` |
| 3 | `theorem` | [exists_greatest_maximizer_fixed_of_bounded_rank](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GreatestDefectMaximizerFromABoundedStrictRank.lean/declarations/exists-greatest-maximizer-fixed-of-bounded-rank.md) | 75 | `result-track:00d3ad0e948d8605e371b6d3b9e523458b9fc65d974c082d43c5bcd18886fdfe` |
| 4 | `theorem` | [exists_greatest_maximizer_fixed_of_finite_values_bounded_rank](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GreatestDefectMaximizerFromABoundedStrictRank.lean/declarations/exists-greatest-maximizer-fixed-of-finite-values-bounded-rank.md) | 88 | `result-track:ae3a072352d382eab27c25c90ddd0998969ab95ceea0c118af45660e5bf914d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d857d31d384d4b6c5ed08686404c9cf3cc06ed0b300b3cf997ffa17b6e3c15fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant9616b069b2cb68adb082120d668d8d6d233f3fe22741cc89fc99728e5720b478.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant9616b069b2cb68adb082120d668d8d6d233f3fe22741cc89fc99728e5720b478.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
