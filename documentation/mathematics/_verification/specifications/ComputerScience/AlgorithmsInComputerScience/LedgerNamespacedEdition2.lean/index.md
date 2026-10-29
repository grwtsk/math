# Verification target: Ledger Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f67cc69ee358dddb28f41988652f0d3a2ce9fb0e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ledger/Variant00554417e2ad0252ca2c9921efafb5bd1be538b1b8a45df8b73ae128e1ad7fad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/LedgerNamespacedEdition2.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/LedgerNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f67cc69ee358dddb28f41988652f0d3a2ce9fb0e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ledger/Variant00554417e2ad0252ca2c9921efafb5bd1be538b1b8a45df8b73ae128e1ad7fad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ledger/Variant00554417e2ad0252ca2c9921efafb5bd1be538b1b8a45df8b73ae128e1ad7fad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Inventory.CompiledInventory` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Taxonomy.Registry` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Ledger](../../../../../ComputerScience/AlgorithmsInComputerScience/LedgerNamespacedEdition2.lean/declarations/ledger.md) | 27 | `declaration-track:c59952a04d6bc2659bea08881dca3f20a05ccdd3e3c3371261e9797a8fc8209b` |
| 2 | `def` | [UniqueConceptIds](../../../../../ComputerScience/AlgorithmsInComputerScience/LedgerNamespacedEdition2.lean/declarations/uniqueconceptids.md) | 40 | `declaration-track:51cfd6d4464d0ea2527f73caa3a0119ffe7cefaf63a0cdec19c5a0dab5d185dd` |
| 3 | `def` | [UniqueRelationIds](../../../../../ComputerScience/AlgorithmsInComputerScience/LedgerNamespacedEdition2.lean/declarations/uniquerelationids.md) | 44 | `declaration-track:a993414b2bf1e1303f0e3239b01a05045bba52a39805fb9e27f349dc8230af16` |
| 4 | `def` | [UniqueRepresentationIds](../../../../../ComputerScience/AlgorithmsInComputerScience/LedgerNamespacedEdition2.lean/declarations/uniquerepresentationids.md) | 48 | `declaration-track:1d6f1efe425b82b8705f86576f3d3d496460a66e3a5a5cb1071e709e8fdaf480` |
| 5 | `def` | [RelationsResolve](../../../../../ComputerScience/AlgorithmsInComputerScience/LedgerNamespacedEdition2.lean/declarations/relationsresolve.md) | 52 | `declaration-track:77c890d184bfdbbccc3134dd855602229e72e9a90675cc541137d676ad37f876` |
| 6 | `def` | [RepresentationsResolve](../../../../../ComputerScience/AlgorithmsInComputerScience/LedgerNamespacedEdition2.lean/declarations/representationsresolve.md) | 58 | `declaration-track:8e53fa4a0e42dbc8439aa782517983ab073d9fae08428f915e52014a3db70dd4` |
| 7 | `def` | [RuntimeBindingsResolve](../../../../../ComputerScience/AlgorithmsInComputerScience/LedgerNamespacedEdition2.lean/declarations/runtimebindingsresolve.md) | 63 | `declaration-track:0c610d4df735e02997ffe80c3d9e1e673cfba0e1d3bb8cb6f129d8752b6bc4f2` |
| 8 | `def` | [findConcept?](../../../../../ComputerScience/AlgorithmsInComputerScience/LedgerNamespacedEdition2.lean/declarations/findconcept.md) | 68 | `declaration-track:aaeee1fab5b18041c9a37354eba2edca22536d26ea77033baed116ef4d2ad7a8` |
| 9 | `def` | [findTaxon?](../../../../../ComputerScience/AlgorithmsInComputerScience/LedgerNamespacedEdition2.lean/declarations/findtaxon.md) | 72 | `declaration-track:8bc8fa0d87c14d3201e5a7ff85356e420a22733a6ba1ca7de8b5f4d24a17a269` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88e9571aa81cef0ef25b2a1bb80fd4578c860cd97a582f71c081948b93a672e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ledger/Variant00554417e2ad0252ca2c9921efafb5bd1be538b1b8a45df8b73ae128e1ad7fad.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ledger/Variant00554417e2ad0252ca2c9921efafb5bd1be538b1b8a45df8b73ae128e1ad7fad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
