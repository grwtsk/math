# Verification target: Tokenization Span Valid

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "149624126f03fa1999879c6df814ee805941c204",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tokenization/Variantde6e3ff28d4fa68bf94d27e67e9b43f04b60157fb62f2dbaa238f564f9cd295f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TokenizationSpanValid.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TokenizationSpanValid.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `149624126f03fa1999879c6df814ee805941c204`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tokenization/Variantde6e3ff28d4fa68bf94d27e67e9b43f04b60157fb62f2dbaa238f564f9cd295f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tokenization/Variantde6e3ff28d4fa68bf94d27e67e9b43f04b60157fb62f2dbaa238f564f9cd295f.lean.json)

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
| 1 | `structure` | [Tokenization](../../../../../ComputerScience/AlgorithmsInComputerScience/TokenizationSpanValid.lean/declarations/tokenization.md) | 12 | `declaration-track:75df13b85ffd5ff1ea9e1ac6d7dfb7a08865ced7e1452352543c6f35811a350d` |
| 2 | `theorem` | [span_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/TokenizationSpanValid.lean/declarations/span-valid.md) | 24 | `result-track:2926128f104a99e51c953ad713f18ba716305fc0abcb26668c9ae042f90fa03e` |
| 3 | `theorem` | [no_overlap](../../../../../ComputerScience/AlgorithmsInComputerScience/TokenizationSpanValid.lean/declarations/no-overlap.md) | 31 | `result-track:45c3e793df90d7791340dfebae887ff429552265a588bc29e797387b99e37f24` |
| 4 | `theorem` | [coverage_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/TokenizationSpanValid.lean/declarations/coverage-sound.md) | 35 | `result-track:b4bb4380e5866b0e36db47566b25fc4c5af83caeecca2f48aac0fdcdc19da6cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=644cb2bf04f6350231581cd60e47abdfd2875c2498f3729038733dfa63656ae0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tokenization/Variantde6e3ff28d4fa68bf94d27e67e9b43f04b60157fb62f2dbaa238f564f9cd295f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tokenization/Variantde6e3ff28d4fa68bf94d27e67e9b43f04b60157fb62f2dbaa238f564f9cd295f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
