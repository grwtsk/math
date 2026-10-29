# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTwoBlocksAndTerminal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "470489bae42f7551cbe2f6cf089f54567662d6bc",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonTwoBlocksAndTerminal.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/Zeta/Riemann/ConcreteNewtonTwoBlocksAndTerminal.lean/index.md) · [Full source](../../../../../../NumberTheory/Zeta/Riemann/ConcreteNewtonTwoBlocksAndTerminal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `470489bae42f7551cbe2f6cf089f54567662d6bc`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonTwoBlocksAndTerminal.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonTwoBlocksAndTerminal.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFirstBlock`](../../../../../../NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlock.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSecondBlock`](../../../../../../NumberTheory/Zeta/Riemann/ConcreteNewtonSecondBlock.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTerminalEndpoint`](../../../../../../NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalEndpoint.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fill](../../../../../../NumberTheory/Zeta/Riemann/ConcreteNewtonTwoBlocksAndTerminal.lean/declarations/fill--2b940b4cfa5ff319267cac3e.md) | 27 | `declaration-track:2b940b4cfa5ff319267cac3e8847cc6115bdda9bff44510245862f76e9244182` |
| 2 | `theorem` | [first_check](../../../../../../NumberTheory/Zeta/Riemann/ConcreteNewtonTwoBlocksAndTerminal.lean/declarations/first-check--f9d39744c9d17e55d64b9aba.md) | 32 | `result-track:f9d39744c9d17e55d64b9aba80b21b7c42ae312abe5c0ba8cae6f018a43b21c3` |
| 3 | `theorem` | [second_record](../../../../../../NumberTheory/Zeta/Riemann/ConcreteNewtonTwoBlocksAndTerminal.lean/declarations/second-record--cd2d0cbcfd7ce3d314c6a69c.md) | 39 | `result-track:cd2d0cbcfd7ce3d314c6a69c0439baab3a2240cd12aa842019791360a842b918` |
| 4 | `theorem` | [second_check](../../../../../../NumberTheory/Zeta/Riemann/ConcreteNewtonTwoBlocksAndTerminal.lean/declarations/second-check--c180bfe8990a000113956669.md) | 48 | `result-track:c180bfe8990a0001139566697f40f058305db2498bee3d27b6d87c4ee684d3b9` |
| 5 | `theorem` | [terminal_check](../../../../../../NumberTheory/Zeta/Riemann/ConcreteNewtonTwoBlocksAndTerminal.lean/declarations/terminal-check--2d99a34f34c317d64c44b453.md) | 53 | `result-track:2d99a34f34c317d64c44b4539cf9fd46e5fa997124adb487957470b5d800f158` |
| 6 | `theorem` | [later_record](../../../../../../NumberTheory/Zeta/Riemann/ConcreteNewtonTwoBlocksAndTerminal.lean/declarations/later-record--337d36897f296817aa4f5408.md) | 58 | `result-track:337d36897f296817aa4f540838942c6a443c4359d4d28f84cbecc65640b87a5d` |
| 7 | `def` | [remainingBlock](../../../../../../NumberTheory/Zeta/Riemann/ConcreteNewtonTwoBlocksAndTerminal.lean/declarations/remainingblock--fbef69ca5babfc71547819e3.md) | 67 | `declaration-track:fbef69ca5babfc71547819e3c869add0f57f9d2c49c76cbf92938b5adf5a7cbd` |
| 8 | `theorem` | [remaining_cover](../../../../../../NumberTheory/Zeta/Riemann/ConcreteNewtonTwoBlocksAndTerminal.lean/declarations/remaining-cover--d59771f12e6ae12026422f64.md) | 69 | `result-track:d59771f12e6ae12026422f64c276c4ba50495f77364c37ce607a0e4e0502b6cd` |
| 9 | `theorem` | [remaining_unique](../../../../../../NumberTheory/Zeta/Riemann/ConcreteNewtonTwoBlocksAndTerminal.lean/declarations/remaining-unique--b6418afd87cfadb27f43b313.md) | 79 | `result-track:b6418afd87cfadb27f43b313f02fb0b82ce707fee8548cbcb4b84ad86d65f5f7` |
| 10 | `theorem` | [source_of_remaining](../../../../../../NumberTheory/Zeta/Riemann/ConcreteNewtonTwoBlocksAndTerminal.lean/declarations/source-of-remaining--33f091ab8572f9a6b2fe168d.md) | 87 | `result-track:33f091ab8572f9a6b2fe168df9948602c1067b84221d5111d5dc8516a681b468` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c064c90258d5d00f3ece2bf18b51127c91764b11d885faeae2332257d31fe84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonTwoBlocksAndTerminal.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/ConcreteNewtonTwoBlocksAndTerminal.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
