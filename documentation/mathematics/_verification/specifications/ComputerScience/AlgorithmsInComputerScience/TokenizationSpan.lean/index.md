# Verification target: Tokenization Span

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b18b118b1bea722792cc6a5527ba7b604a18ea39",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tokenization/Variant1b361eb9b40d11ea615f5f36b1c954afac31535285b17c482c32b91b10f509d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TokenizationSpan.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TokenizationSpan.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b18b118b1bea722792cc6a5527ba7b604a18ea39`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tokenization/Variant1b361eb9b40d11ea615f5f36b1c954afac31535285b17c482c32b91b10f509d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tokenization/Variant1b361eb9b40d11ea615f5f36b1c954afac31535285b17c482c32b91b10f509d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.SpanFamily` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Span.ContainsPosition](../../../../../ComputerScience/AlgorithmsInComputerScience/TokenizationSpan.lean/declarations/span-containsposition.md) | 7 | `declaration-track:9a57b4db1a843accd6dc063bd023e4b68361d070c25d8d3a385e757379449d22` |
| 2 | `def` | [Covers](../../../../../ComputerScience/AlgorithmsInComputerScience/TokenizationSpan.lean/declarations/covers.md) | 13 | `declaration-track:6f450c8a4423d3a3ff511587cb71cffc114216f7b237bd97d7a7b0e1a945d3d0` |
| 3 | `structure` | [Tokenization](../../../../../ComputerScience/AlgorithmsInComputerScience/TokenizationSpan.lean/declarations/tokenization.md) | 23 | `declaration-track:8301617f0b0c4398c58655cec564bcbecb4b607b641786572c4065fae22db148` |
| 4 | `theorem` | [Tokenization.has_token](../../../../../ComputerScience/AlgorithmsInComputerScience/TokenizationSpan.lean/declarations/tokenization-has-token.md) | 42 | `result-track:55c95cf722b106f07bfea25a04ab8d5e16f19addbfd6bd36ae2188f2b72676b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b54aa14358fa828ce9cfdfaa8c83310f6f3765821c54f3088da61d277bafb262 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tokenization/Variant1b361eb9b40d11ea615f5f36b1c954afac31535285b17c482c32b91b10f509d5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tokenization/Variant1b361eb9b40d11ea615f5f36b1c954afac31535285b17c482c32b91b10f509d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
