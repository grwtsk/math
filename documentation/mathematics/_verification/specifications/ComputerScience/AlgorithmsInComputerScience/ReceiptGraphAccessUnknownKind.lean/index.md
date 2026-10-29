# Verification target: Receipt Graph Access Unknown Kind

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f280c57456c6fe67c4cb5faa9fd6c33a0f4c1812",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Receipt/Variant029af0f0fadb62eb63d4cf28b2d703051f499eda80d0d8bb336fe2c51f44ce68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ReceiptGraphAccessUnknownKind.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ReceiptGraphAccessUnknownKind.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f280c57456c6fe67c4cb5faa9fd6c33a0f4c1812`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Receipt/Variant029af0f0fadb62eb63d4cf28b2d703051f499eda80d0d8bb336fe2c51f44ce68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Receipt/Variant029af0f0fadb62eb63d4cf28b2d703051f499eda80d0d8bb336fe2c51f44ce68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.Core.Objective` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [GraphAccessUnknownKind](../../../../../ComputerScience/AlgorithmsInComputerScience/ReceiptGraphAccessUnknownKind.lean/declarations/graphaccessunknownkind.md) | 12 | `declaration-track:ee9e38895378fe51390515eb181df9ef626b5d7fd68a1fcc6f96f6369c186dfc` |
| 2 | `inductive` | [AccessDisposition](../../../../../ComputerScience/AlgorithmsInComputerScience/ReceiptGraphAccessUnknownKind.lean/declarations/accessdisposition.md) | 34 | `declaration-track:580417982d4d6377e747a4eb3e4170bd14a7adebe2f51bc6836195cb71cdca29` |
| 3 | `inductive` | [AccessExactness](../../../../../ComputerScience/AlgorithmsInComputerScience/ReceiptGraphAccessUnknownKind.lean/declarations/accessexactness.md) | 46 | `declaration-track:b75a90f93f3d174573edb2bc9517e7ac98b7053972892c01846068ac680a2ec3` |
| 4 | `structure` | [GraphAccessReceipt](../../../../../ComputerScience/AlgorithmsInComputerScience/ReceiptGraphAccessUnknownKind.lean/declarations/graphaccessreceipt.md) | 54 | `declaration-track:6c4baf18357a4f341b7850efac69cf591430668364847f5edbe665949a90b5c0` |
| 5 | `theorem` | [receipt_unknowns_remain_explicit](../../../../../ComputerScience/AlgorithmsInComputerScience/ReceiptGraphAccessUnknownKind.lean/declarations/receipt-unknowns-remain-explicit.md) | 75 | `result-track:9215893473badd62cfad5e98a82cb18d74d2159412c9425a08881f289bbdbe01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e8c1933e9a5bed6eba23ccb28538242f98e780d1e44d497950e6d35db1ced57 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Receipt/Variant029af0f0fadb62eb63d4cf28b2d703051f499eda80d0d8bb336fe2c51f44ce68.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Receipt/Variant029af0f0fadb62eb63d4cf28b2d703051f499eda80d0d8bb336fe2c51f44ce68.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
