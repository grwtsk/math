# Verification target: GRWTSK.Topology.GeneralTopology.T5.Variantc311be39a49f872fde6311cf92ae429ed26fe763633d2d56cd16f663a1f41abe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57131c2750b66838c6782ae639e9a093a31ee443",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/T5/Variantc311be39a49f872fde6311cf92ae429ed26fe763633d2d56cd16f663a1f41abe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/T5/Variantc311be39a49f872fde6311cf92ae429ed26fe763633d2d56cd16f663a1f41abe.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/T5/Variantc311be39a49f872fde6311cf92ae429ed26fe763633d2d56cd16f663a1f41abe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57131c2750b66838c6782ae639e9a093a31ee443`.

Source path: `GRWTSK/Topology/GeneralTopology/T5/Variantc311be39a49f872fde6311cf92ae429ed26fe763633d2d56cd16f663a1f41abe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/T5/Variantc311be39a49f872fde6311cf92ae429ed26fe763633d2d56cd16f663a1f41abe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Set.OrdConnectedComponent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Regular` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ordConnectedComponent_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/T5/Variantc311be39a49f872fde6311cf92ae429ed26fe763633d2d56cd16f663a1f41abe.lean/declarations/ordconnectedcomponent-mem-nhds--3630aef03ed7b527f51be35c.md) | 33 | `result-track:3630aef03ed7b527f51be35c27a7110c3b4ec7a0e1206d1746d120069114668b` |
| 2 | `theorem` | [compl_ordConnectedSection_ordSeparatingSet_mem_nhdsGE](../../../../../mathematics/Topology/GeneralTopology/T5/Variantc311be39a49f872fde6311cf92ae429ed26fe763633d2d56cd16f663a1f41abe.lean/declarations/compl-ordconnectedsection-ordseparatingset-mem-nhdsge--1bbcdf21b0bbb6e23213ff0f.md) | 38 | `result-track:1bbcdf21b0bbb6e23213ff0f518f07919f76f8baada4478b58e138f7d0016438` |
| 3 | `theorem` | [compl_ordConnectedSection_ordSeparatingSet_mem_nhdsLE](../../../../../mathematics/Topology/GeneralTopology/T5/Variantc311be39a49f872fde6311cf92ae429ed26fe763633d2d56cd16f663a1f41abe.lean/declarations/compl-ordconnectedsection-ordseparatingset-mem-nhdsle--ee6c75c16b385168e3dc6f21.md) | 74 | `result-track:ee6c75c16b385168e3dc6f213db245f11d98736be3896457d5a026371bc8d616` |
| 4 | `theorem` | [compl_ordConnectedSection_ordSeparatingSet_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/T5/Variantc311be39a49f872fde6311cf92ae429ed26fe763633d2d56cd16f663a1f41abe.lean/declarations/compl-ordconnectedsection-ordseparatingset-mem-nhds--6404f674083c9cd55490aaf4.md) | 85 | `result-track:6404f674083c9cd55490aaf4b32f5a0f8be0bfb91d922ccc507515db90f8b914` |
| 5 | `theorem` | [ordT5Nhd_mem_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/T5/Variantc311be39a49f872fde6311cf92ae429ed26fe763633d2d56cd16f663a1f41abe.lean/declarations/ordt5nhd-mem-nhdsset--f56da241245ab3d2686ea67b.md) | 94 | `result-track:f56da241245ab3d2686ea67bf57b6690213e64cce5b95dbb3bdd8d5e96b878a1` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/T5/Variantc311be39a49f872fde6311cf92ae429ed26fe763633d2d56cd16f663a1f41abe.lean/declarations/instance--dada762e4cdcb9b7d1a08343.md) | 106 | `declaration-track:dada762e4cdcb9b7d1a083439fd8602b69fcbf05121dd0faa7447ec07d8085e4` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/T5/Variantc311be39a49f872fde6311cf92ae429ed26fe763633d2d56cd16f663a1f41abe.lean/declarations/instance--1aea704c907e93ba702691fd.md) | 111 | `declaration-track:1aea704c907e93ba702691fd3530d5cf3a89dc08de80a98d0911c17509194584` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
