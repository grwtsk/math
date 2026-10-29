# Verification target: Witness Namespaced Boundary Witness Kind

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0eaab9cafed4531e7f46fa379d0298fa5056ecb",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Witness/Variant8fd7fa36bb431da1606c89ee7d1c9f3558cf25088b0ff3ba3d38065a6d0a79ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/WitnessNamespacedBoundaryWitnessKind.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/WitnessNamespacedBoundaryWitnessKind.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0eaab9cafed4531e7f46fa379d0298fa5056ecb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Witness/Variant8fd7fa36bb431da1606c89ee7d1c9f3558cf25088b0ff3ba3d38065a6d0a79ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Witness/Variant8fd7fa36bb431da1606c89ee7d1c9f3558cf25088b0ff3ba3d38065a6d0a79ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Consolidation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BoundaryWitnessKind](../../../../../ComputerScience/AlgorithmsInComputerScience/WitnessNamespacedBoundaryWitnessKind.lean/declarations/boundarywitnesskind.md) | 15 | `declaration-track:a44a9a48793d298e1f4b2bc98f2df79a20d22aedd3bdeac84b95fde7febd0a53` |
| 2 | `structure` | [BoundaryWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/WitnessNamespacedBoundaryWitnessKind.lean/declarations/boundarywitness.md) | 24 | `declaration-track:30dd5d4e4ce2025399e85b5071ec323fbb3b133fbb0a260d2977a618b9a28167` |
| 3 | `def` | [BoundaryWitness.insertedForResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/WitnessNamespacedBoundaryWitnessKind.lean/declarations/boundarywitness-insertedforresidue.md) | 34 | `declaration-track:1e5c27ef2a654b0b0df9eca80e8a134551ecdb479482351700fae7fa4b507557` |
| 4 | `theorem` | [boundary_witness_is_bridge](../../../../../ComputerScience/AlgorithmsInComputerScience/WitnessNamespacedBoundaryWitnessKind.lean/declarations/boundary-witness-is-bridge.md) | 37 | `result-track:2e8471c1f0ef41a5bd378a3c8c65b384fb271d932eee15aefc869ad7aaa009e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bdc4ba69d0952044e2972cbae2c08c24ffdb9304403997a7894d19076ce80778 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Witness/Variant8fd7fa36bb431da1606c89ee7d1c9f3558cf25088b0ff3ba3d38065a6d0a79ad.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Witness/Variant8fd7fa36bb431da1606c89ee7d1c9f3558cf25088b0ff3ba3d38065a6d0a79ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
