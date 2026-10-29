# Verification target: Divisor Tail Block

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64155246a5566cc00f95abd289bd548126baa0b9",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DivisorTailBlock/Variantbc032bd884cc71fbaec3c761bbd4f521facd14611a99bae5e0426f244333fa65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorTailBlock.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorTailBlock.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64155246a5566cc00f95abd289bd548126baa0b9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DivisorTailBlock/Variantbc032bd884cc71fbaec3c761bbd4f521facd14611a99bae5e0426f244333fa65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DivisorTailBlock/Variantbc032bd884cc71fbaec3c761bbd4f521facd14611a99bae5e0426f244333fa65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [divisor_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorTailBlock.lean/declarations/divisor-sum.md) | 11 | `result-track:ce72530cb648779df0bec7e21333898d03f568e16f19d63888c36407c09a48f0` |
| 2 | `theorem` | [before_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorTailBlock.lean/declarations/before-cutoff.md) | 18 | `result-track:291e68a0cca955517c0395a5c04efdbb472ebcd416d687e5f241a764dd1362c7` |
| 3 | `theorem` | [first_dyadic_block](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorTailBlock.lean/declarations/first-dyadic-block.md) | 28 | `result-track:e1a4edb191c587c2d4b80e52089596ae100ad4fb6dcb8eb0508e66274387ff45` |
| 4 | `theorem` | [corrected_endpoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorTailBlock.lean/declarations/corrected-endpoint.md) | 55 | `result-track:f1441e693d5dcce00aa2a92457ff6d2c45e9a2bda4bfe3fa57e6189ca5ab859f` |
| 5 | `theorem` | [corrected_first_block_prefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorTailBlock.lean/declarations/corrected-first-block-prefix.md) | 62 | `result-track:2a5eec4fdef2e99e2fb81a83a145c7cd74b4a0ad5404a3c4b83d15f7c55e93fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f65d95a24a3800756450bbefeb99cc4a2adf9342f0c73219364d7a48a25c37a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DivisorTailBlock/Variantbc032bd884cc71fbaec3c761bbd4f521facd14611a99bae5e0426f244333fa65.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/DivisorTailBlock/Variantbc032bd884cc71fbaec3c761bbd4f521facd14611a99bae5e0426f244333fa65.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
