# Verification target: Contractible Namespaced Hequiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c2168bda69ad2a71b23a0ff4805fabbab80de25",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Contractible/Variant32d33aa552118e82fb5eea0ee5bdf2a845ede9dbdcb2632036da8dcb7832d137.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ContractibleNamespacedHequiv.lean/index.md) · [Full source](../../../../GeneralTopology/ContractibleNamespacedHequiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c2168bda69ad2a71b23a0ff4805fabbab80de25`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Contractible/Variant32d33aa552118e82fb5eea0ee5bdf2a845ede9dbdcb2632036da8dcb7832d137.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Contractible/Variant32d33aa552118e82fb5eea0ee5bdf2a845ede9dbdcb2632036da8dcb7832d137.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homotopy.Path` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Equiv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Nullhomotopic](../../../../GeneralTopology/ContractibleNamespacedHequiv.lean/declarations/nullhomotopic.md) | 30 | `declaration-track:52134b276419e5e64ec26483a8d3fb56c7cc486cf57828aeab1d3ee65c382404` |
| 2 | `theorem` | [nullhomotopic_of_constant](../../../../GeneralTopology/ContractibleNamespacedHequiv.lean/declarations/nullhomotopic-of-constant.md) | 33 | `result-track:b1e09dfa434583498a10bfcdf649b63ff42df1bf2b21cf982d1dde516c8edf59` |
| 3 | `theorem` | [Nullhomotopic.comp_right](../../../../GeneralTopology/ContractibleNamespacedHequiv.lean/declarations/nullhomotopic-comp-right.md) | 36 | `result-track:390f9b8aff8805a3faee508af263c8e59acf9ab8f7e6254d0b55f1b8426155ae` |
| 4 | `theorem` | [Nullhomotopic.comp_left](../../../../GeneralTopology/ContractibleNamespacedHequiv.lean/declarations/nullhomotopic-comp-left.md) | 42 | `result-track:d8c6dab1586034dff4a9fef9757ec1b288576deeafb986e7fcb1de7221105780` |
| 5 | `class` | [ContractibleSpace](../../../../GeneralTopology/ContractibleNamespacedHequiv.lean/declarations/contractiblespace.md) | 53 | `declaration-track:500c6045c916b8303928fa79a4b4e0916710bc7e9c2b844de581a28204650ec7` |
| 6 | `theorem` | [ContractibleSpace.hequiv_unit](../../../../GeneralTopology/ContractibleNamespacedHequiv.lean/declarations/contractiblespace-hequiv-unit.md) | 56 | `result-track:f7bc1c3c63424606a026e13fc699910312d975082600031f633eb2eb4a14351a` |
| 7 | `theorem` | [id_nullhomotopic](../../../../GeneralTopology/ContractibleNamespacedHequiv.lean/declarations/id-nullhomotopic.md) | 60 | `result-track:2bd1ed5f3610e7ab2380bb54206d425be56775e2f0eb1f2b56b05965f4930eb1` |
| 8 | `theorem` | [contractible_iff_id_nullhomotopic](../../../../GeneralTopology/ContractibleNamespacedHequiv.lean/declarations/contractible-iff-id-nullhomotopic.md) | 66 | `result-track:2ee91d6d21af9fd8ffc0aa07907ac25c57a9ed2509b3530954ba69cc084ae6f8` |
| 9 | `theorem` | [ContinuousMap.HomotopyEquiv.contractibleSpace](../../../../GeneralTopology/ContractibleNamespacedHequiv.lean/declarations/continuousmap-homotopyequiv-contractiblespace.md) | 83 | `result-track:469b983443bc93136faa41c47baa51e25a7d304c7752b3afdb93c2cf138d18f5` |
| 10 | `theorem` | [ContinuousMap.HomotopyEquiv.contractibleSpace_iff](../../../../GeneralTopology/ContractibleNamespacedHequiv.lean/declarations/continuousmap-homotopyequiv-contractiblespace-iff.md) | 87 | `result-track:69dd92d39f0abc77119d68de2bd90fa27ee5cf1725a970b8b100793994008e6e` |
| 11 | `theorem` | [Homeomorph.contractibleSpace](../../../../GeneralTopology/ContractibleNamespacedHequiv.lean/declarations/homeomorph-contractiblespace.md) | 91 | `result-track:e346b2891ce2534ad088c485fda26a897683e96145edccbe1d2a9bc34efa3468` |
| 12 | `theorem` | [Homeomorph.contractibleSpace_iff](../../../../GeneralTopology/ContractibleNamespacedHequiv.lean/declarations/homeomorph-contractiblespace-iff.md) | 95 | `result-track:9bb8e161fb168297ef8884f5713eed1c2ab08541126514cf643bc5ff36b6b90c` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/ContractibleNamespacedHequiv.lean/declarations/instance.md) | 101 | `declaration-track:bc871e5b4dfcee252be40cf22fee8d23ffd3691da1f4ac0de0df67d1dae6ec6f` |
| 14 | `theorem` | [hequiv](../../../../GeneralTopology/ContractibleNamespacedHequiv.lean/declarations/hequiv.md) | 106 | `result-track:5041058d02de207de0f460832947cf5aad06e43e4da0f7771be6c59211140689` |
| 15 | `instance` | [(anonymous)](../../../../GeneralTopology/ContractibleNamespacedHequiv.lean/declarations/instance-source-edition-2.md) | 112 | `declaration-track:c139e63eef5abb2945231ac1dd02c717c2b4843fbd13576230799525d680388d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f7583e837f118dba8e873398646ecc811e87ef59b0f112fc473e65bccabfcbb3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/Contractible/Variant32d33aa552118e82fb5eea0ee5bdf2a845ede9dbdcb2632036da8dcb7832d137.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/Contractible/Variant32d33aa552118e82fb5eea0ee5bdf2a845ede9dbdcb2632036da8dcb7832d137.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
