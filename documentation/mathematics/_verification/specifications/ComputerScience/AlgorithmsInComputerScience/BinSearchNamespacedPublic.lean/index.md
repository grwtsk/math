# Verification target: Bin Search Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd59893cd5a9e452a45c10bd4e750fdc0ae573dc",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variant2ae81fc3c0f7cf57c9d2698ee2a65283aad41548b32b8889b6eba1c7d8edfe86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BinSearchNamespacedPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BinSearchNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd59893cd5a9e452a45c10bd4e750fdc0ae573dc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variant2ae81fc3c0f7cf57c9d2698ee2a65283aad41548b32b8889b6eba1c7d8edfe86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variant2ae81fc3c0f7cf57c9d2698ee2a65283aad41548b32b8889b6eba1c7d8edfe86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Bool` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.
- `Init.WFTactics` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [binSearchAux](../../../../../ComputerScience/AlgorithmsInComputerScience/BinSearchNamespacedPublic.lean/declarations/binsearchaux.md) | 30 | `declaration-track:852ccfcc261355879827a4f340bcba375909d5191d7dd619c22b2546deb6a2ad` |
| 2 | `def` | [binSearch](../../../../../ComputerScience/AlgorithmsInComputerScience/BinSearchNamespacedPublic.lean/declarations/binsearch.md) | 55 | `declaration-track:d26c49c648bf60a100e119ca4ed390bcfe313b21338fa0a79a52a74311961f74` |
| 3 | `def` | [binSearchContains](../../../../../ComputerScience/AlgorithmsInComputerScience/BinSearchNamespacedPublic.lean/declarations/binsearchcontains.md) | 75 | `declaration-track:a2b47620bfdc564737c0a9b097a57f37daf3d6145338db95e7070409c75717ad` |
| 4 | `def` | [binInsertAux](../../../../../ComputerScience/AlgorithmsInComputerScience/BinSearchNamespacedPublic.lean/declarations/bininsertaux.md) | 85 | `declaration-track:8d8e5294f9a92a86ae2f87f7afcd03fc596b398b8038ef9f196973159953fee3` |
| 5 | `def` | [binInsertM](../../../../../ComputerScience/AlgorithmsInComputerScience/BinSearchNamespacedPublic.lean/declarations/bininsertm.md) | 114 | `declaration-track:f18cf4efea61a24add630ed3b7a61669dd929a8944059b5e828427be169d2998` |
| 6 | `def` | [binInsert](../../../../../ComputerScience/AlgorithmsInComputerScience/BinSearchNamespacedPublic.lean/declarations/bininsert.md) | 142 | `declaration-track:7e9ef9eeef424adca2ac545ba91dc8b91a179392da1621ff7b191151f2f3d7b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=711df195a895c49e88fb42be167348f95ccdae0507c2220043d583fd98cbe2de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variant2ae81fc3c0f7cf57c9d2698ee2a65283aad41548b32b8889b6eba1c7d8edfe86.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variant2ae81fc3c0f7cf57c9d2698ee2a65283aad41548b32b8889b6eba1c7d8edfe86.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
