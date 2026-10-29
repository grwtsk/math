# Verification target: Fiber Partition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98ac14221feed80c740cdd90d39d13512465f8b7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FiberPartition/Variantc8c7302b94136443f257d58f6c2ff16e343fbe9ce040eb94a89b5ce8f614dbf1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/FiberPartition.lean/index.md) · [Full source](../../../../GeneralTopology/FiberPartition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98ac14221feed80c740cdd90d39d13512465f8b7`.

Source path: `GRWTSK/Topology/GeneralTopology/FiberPartition/Variantc8c7302b94136443f257d58f6c2ff16e343fbe9ce040eb94a89b5ce8f614dbf1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FiberPartition/Variantc8c7302b94136443f257d58f6c2ff16e343fbe9ce040eb94a89b5ce8f614dbf1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.LocallyConstant.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.FiberPartition` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sigmaIsoHom](../../../../GeneralTopology/FiberPartition.lean/declarations/sigmaisohom.md) | 31 | `declaration-track:33ebf7d7d5c150dd67bdb2394982317193ce787cab5e3db6d94a6a4c8459220e` |
| 2 | `lemma` | [sigmaIsoHom_inj](../../../../GeneralTopology/FiberPartition.lean/declarations/sigmaisohom-inj.md) | 34 | `result-track:ffa86bf9c0b8a722eca4c887a11f7befe002a5cbb141ed44205d6216e37cc669` |
| 3 | `lemma` | [sigmaIsoHom_surj](../../../../GeneralTopology/FiberPartition.lean/declarations/sigmaisohom-surj.md) | 41 | `result-track:57ca9d13777a0f3cada0f4c04f38c443bb7703868d7fe2d30af92d0c3fe541e1` |
| 4 | `def` | [sigmaIncl](../../../../GeneralTopology/FiberPartition.lean/declarations/sigmaincl.md) | 45 | `declaration-track:47417ad02f904a697f4c1ddde573d86d71454eb4de5867336ca41976c9ff257a` |
| 5 | `def` | [sigmaInclIncl](../../../../GeneralTopology/FiberPartition.lean/declarations/sigmainclincl.md) | 49 | `declaration-track:003b7f517adf7306aa4db1843873a94136299908c2c9ffab203e4301b852ca8c` |
| 6 | `instance` | [(anonymous)](../../../../GeneralTopology/FiberPartition.lean/declarations/instance.md) | 60 | `declaration-track:98d552aa4792f9e09b21408525846acebefcafd9c7ece795b9ba9e0dba0a6874` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/FiberPartition.lean/declarations/instance-source-edition-2.md) | 65 | `declaration-track:f23f648a66943b6c2d9ec295e77080b977afc2ecb9ad5f20aa71e6a85d25f2b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=827480e887ee83445c2b013770878af519f8118d2785076f17b408dfe9952355 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/FiberPartition/Variantc8c7302b94136443f257d58f6c2ff16e343fbe9ce040eb94a89b5ce8f614dbf1.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/FiberPartition/Variantc8c7302b94136443f257d58f6c2ff16e343fbe9ce040eb94a89b5ce8f614dbf1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
