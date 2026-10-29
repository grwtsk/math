# Verification target: Finite Height Maximal Defect

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eaad844f1128f4c8a226312cef2974644b118388",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant1fa9cc4139260566eccb8c37bf424581a0a54d552d5d16f00a7075dde8f1b0b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteHeightMaximalDefect.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteHeightMaximalDefect.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eaad844f1128f4c8a226312cef2974644b118388`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant1fa9cc4139260566eccb8c37bf424581a0a54d552d5d16f00a7075dde8f1b0b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant1fa9cc4139260566eccb8c37bf424581a0a54d552d5d16f00a7075dde8f1b0b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.MaximalDefect` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Find` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_maximizer_of_finite_values](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteHeightMaximalDefect.lean/declarations/exists-maximizer-of-finite-values.md) | 37 | `result-track:7811d5f39a131c5cad33b82f08d7857b841ce240c9c6c2bd92a94ff1eb0d3752` |
| 2 | `theorem` | [exists_unique_greatest_maximizer_of_bounded_rank](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteHeightMaximalDefect.lean/declarations/exists-unique-greatest-maximizer-of-bounded-rank.md) | 51 | `result-track:ef14252fc62ac38f74e08129d22a63d79f33ef5c81d67cd2286813f6094f1df6` |
| 3 | `theorem` | [exists_greatest_maximizer_fixed_of_bounded_rank](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteHeightMaximalDefect.lean/declarations/exists-greatest-maximizer-fixed-of-bounded-rank.md) | 83 | `result-track:a2c943d3645818c51afc552a6f174c2bc9a108976d2bdc86dc284b2a068568ba` |
| 4 | `theorem` | [exists_greatest_maximizer_fixed_of_finite_values_bounded_rank](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteHeightMaximalDefect.lean/declarations/exists-greatest-maximizer-fixed-of-finite-values-bounded-rank.md) | 96 | `result-track:881cf41091820883e99486a4c47a303692518497da50376a1eb5b7792e5c7794` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93f3b17f9e65a6d32fec2d9425efe83d96f1b9769793de741745f8ebf1b1a53a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant1fa9cc4139260566eccb8c37bf424581a0a54d552d5d16f00a7075dde8f1b0b4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant1fa9cc4139260566eccb8c37bf424581a0a54d552d5d16f00a7075dde8f1b0b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
