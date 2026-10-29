# Verification target: Compiled Inventory Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "662801e166d57daf40fa96e7bd45433f4d62aca0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompiledInventory/Variantf2b0473a2625258ca05612c5ea4c4fe7b38b7f754584fbb353ba5bed460b71f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/CompiledInventoryEdition2.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/CompiledInventoryEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `662801e166d57daf40fa96e7bd45433f4d62aca0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompiledInventory/Variantf2b0473a2625258ca05612c5ea4c4fe7b38b7f754584fbb353ba5bed460b71f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompiledInventory/Variantf2b0473a2625258ca05612c5ea4c4fe7b38b7f754584fbb353ba5bed460b71f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Concept.RuntimeBinding` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [EntityKind](../../../../../ComputerScience/AlgorithmsInComputerScience/CompiledInventoryEdition2.lean/declarations/entitykind.md) | 17 | `declaration-track:ad3163bd1420472606e099e42f0767baea5a4410bdb546d03f0daaf7fc591b43` |
| 2 | `structure` | [CompiledEntity](../../../../../ComputerScience/AlgorithmsInComputerScience/CompiledInventoryEdition2.lean/declarations/compiledentity.md) | 41 | `declaration-track:3a25e6dae4328694dbd38b4aae2904010a42e70a6a3d012d8dca69850585102e` |
| 3 | `structure` | [Snapshot](../../../../../ComputerScience/AlgorithmsInComputerScience/CompiledInventoryEdition2.lean/declarations/snapshot.md) | 62 | `declaration-track:9f5a789e30fd0b68b6c762d723eb5ad92b525fc3ea67de35dfe88f272847a74b` |
| 4 | `def` | [publicEntities](../../../../../ComputerScience/AlgorithmsInComputerScience/CompiledInventoryEdition2.lean/declarations/publicentities.md) | 73 | `declaration-track:6cde4133f819244f575cd2e61ee9a3da6b656219780f7bb7efa12829e4ad207f` |
| 5 | `def` | [UniqueEntityIds](../../../../../ComputerScience/AlgorithmsInComputerScience/CompiledInventoryEdition2.lean/declarations/uniqueentityids.md) | 77 | `declaration-track:c9a595271e1c7f560a3fc46cdfaace09ea22552f255185b44a59b12afdc86b1e` |
| 6 | `def` | [UniqueNames](../../../../../ComputerScience/AlgorithmsInComputerScience/CompiledInventoryEdition2.lean/declarations/uniquenames.md) | 81 | `declaration-track:bc28095f1dd8968ac2e6f844cd61825ad1911ec3b06e5bc472e95e434db52a98` |
| 7 | `def` | [GeneratedParentsPresent](../../../../../ComputerScience/AlgorithmsInComputerScience/CompiledInventoryEdition2.lean/declarations/generatedparentspresent.md) | 85 | `declaration-track:dfbb2acce2379bbe09bdfa388c00d94757652c8295c8ea871247bf7ffef43c99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e40785e8609892e65d6878e25e65c89f6df164f0f191ce90ab81d92d3022b223 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompiledInventory/Variantf2b0473a2625258ca05612c5ea4c4fe7b38b7f754584fbb353ba5bed460b71f0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompiledInventory/Variantf2b0473a2625258ca05612c5ea4c4fe7b38b7f754584fbb353ba5bed460b71f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
