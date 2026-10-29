# Verification target: Source Squarefree Sampling Consumer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f5423bed034ff0ac817efc0855c45c5c4d26935",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSamplingConsumer/Variant6ee60fd4211d35408b13d957c88591e8e2ef7242fc2180daa5e5dad78f9996b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceSquarefreeSamplingConsumer.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceSquarefreeSamplingConsumer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f5423bed034ff0ac817efc0855c45c5c4d26935`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSamplingConsumer/Variant6ee60fd4211d35408b13d957c88591e8e2ef7242fc2180daa5e5dad78f9996b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSamplingConsumer/Variant6ee60fd4211d35408b13d957c88591e8e2ef7242fc2180daa5e5dad78f9996b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceSquarefreeSampling` — import line 1; external provider; requires a separately pinned dependency.
- `SourceExactSamplingTail` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_squarefree_weight_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceSquarefreeSamplingConsumer.lean/declarations/actual-squarefree-weight-sum.md) | 21 | `result-track:77790dda523115c5e3b685c86cf4dd031dbaaa419048cf44d459ecd8e305b452` |
| 2 | `theorem` | [shortLog_error_le_of_sampling_error_squarefree](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceSquarefreeSamplingConsumer.lean/declarations/shortlog-error-le-of-sampling-error-squarefree.md) | 26 | `result-track:9c805b68df3c6a4e18173c0a2a6b92f31997ec9a1b9fa1d45d0a0b93eadc7b73` |
| 3 | `theorem` | [shortPlain_error_uniform_le_of_sampling_error_squarefree](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceSquarefreeSamplingConsumer.lean/declarations/shortplain-error-uniform-le-of-sampling-error-squarefree.md) | 56 | `result-track:fa658abd4df1a234414abefeb740cb0e07140a9a70fd16ef843747d0dc1e44c2` |
| 4 | `theorem` | [actual_shortLog_error_tail_squarefree](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceSquarefreeSamplingConsumer.lean/declarations/actual-shortlog-error-tail-squarefree.md) | 112 | `result-track:75debe4e02c5890f0afd7afeb64f6e38ee3ae3af4c5766549c71dba3c4b91219` |
| 5 | `theorem` | [actual_shortPlain_error_tail_squarefree](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceSquarefreeSamplingConsumer.lean/declarations/actual-shortplain-error-tail-squarefree.md) | 125 | `result-track:cdb3686378cf0090be0c1bb6b492fba58e2a1b7d4061f28b3e966f7909dfcfe7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5940644324c848a8b7bf06c5a586de0588bc9d4ae93ffea02b580e982d64e5f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSamplingConsumer/Variant6ee60fd4211d35408b13d957c88591e8e2ef7242fc2180daa5e5dad78f9996b3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSamplingConsumer/Variant6ee60fd4211d35408b13d957c88591e8e2ef7242fc2180daa5e5dad78f9996b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
