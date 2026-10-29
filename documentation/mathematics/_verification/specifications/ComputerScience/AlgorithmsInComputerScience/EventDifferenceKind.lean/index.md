# Verification target: Event Difference Kind

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d38bcef12233e0d5c0f98de329045aea1e830fa0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Event/Variantc642171e333aedc3bc44a0052b171dd27fe91ed1aa1706a168c89d41ea81238b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/EventDifferenceKind.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/EventDifferenceKind.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d38bcef12233e0d5c0f98de329045aea1e830fa0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Event/Variantc642171e333aedc3bc44a0052b171dd27fe91ed1aa1706a168c89d41ea81238b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Event/Variantc642171e333aedc3bc44a0052b171dd27fe91ed1aa1706a168c89d41ea81238b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Authority.Evidence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Mutation.Shadow` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DifferenceKind](../../../../../ComputerScience/AlgorithmsInComputerScience/EventDifferenceKind.lean/declarations/differencekind.md) | 8 | `declaration-track:d2a18a15393381b4b58e4732a0dd18bc906ce48c372f37ba38872aa7beff6513` |
| 2 | `structure` | [TypedDifference](../../../../../ComputerScience/AlgorithmsInComputerScience/EventDifferenceKind.lean/declarations/typeddifference.md) | 20 | `declaration-track:fcd705306a5a3b3bf28e79ed09d7a54d520b6d876683a4afe14ad6b091f30865` |
| 3 | `def` | [typedDiff](../../../../../ComputerScience/AlgorithmsInComputerScience/EventDifferenceKind.lean/declarations/typeddiff.md) | 26 | `declaration-track:8eb0b0fc2e91bb84dd64dbb98723698dbfbbea9af162e94e2bb8ded190486013` |
| 4 | `structure` | [CausalReceipt](../../../../../ComputerScience/AlgorithmsInComputerScience/EventDifferenceKind.lean/declarations/causalreceipt.md) | 32 | `declaration-track:6b1586dfd11a535386a0fff29e49a8a17ac26fb9a207eac55edcd40d9143ca1d` |
| 5 | `structure` | [MutationEvent](../../../../../ComputerScience/AlgorithmsInComputerScience/EventDifferenceKind.lean/declarations/mutationevent.md) | 39 | `declaration-track:6f8521368432329d2c06bb1f4c8b468b543f11cf09da73b4c25b5b2a87be4dc1` |
| 6 | `theorem` | [causal_edges_have_receipts](../../../../../ComputerScience/AlgorithmsInComputerScience/EventDifferenceKind.lean/declarations/causal-edges-have-receipts.md) | 52 | `result-track:1b39ca9992c14ee42fba70245565aeb73cab42577000d273beca69aba27ed017` |
| 7 | `structure` | [MutationRun](../../../../../ComputerScience/AlgorithmsInComputerScience/EventDifferenceKind.lean/declarations/mutationrun.md) | 57 | `declaration-track:a7e941bdd7016fbc49d2cf07a83319db0f64942ae2472e7b8caaf9f9991ac1db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2caed2df34244619c869933af3a6782d14020883e43433dabd1d7eeeafaaf8b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Event/Variantc642171e333aedc3bc44a0052b171dd27fe91ed1aa1706a168c89d41ea81238b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Event/Variantc642171e333aedc3bc44a0052b171dd27fe91ed1aa1706a168c89d41ea81238b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
