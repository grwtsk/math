# Verification target: GRWTSK.Topology.GeneralTopology.T5.Variant0fb10c73935cb488db1e0cb66465a340e012b865c904e8fa4275f7c318da8e64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4daac2f6cf9d68ead1dc123ae087761d74fc156a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/T5/Variant0fb10c73935cb488db1e0cb66465a340e012b865c904e8fa4275f7c318da8e64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/T5/Variant0fb10c73935cb488db1e0cb66465a340e012b865c904e8fa4275f7c318da8e64.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/T5/Variant0fb10c73935cb488db1e0cb66465a340e012b865c904e8fa4275f7c318da8e64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4daac2f6cf9d68ead1dc123ae087761d74fc156a`.

Source path: `GRWTSK/Topology/GeneralTopology/T5/Variant0fb10c73935cb488db1e0cb66465a340e012b865c904e8fa4275f7c318da8e64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/T5/Variant0fb10c73935cb488db1e0cb66465a340e012b865c904e8fa4275f7c318da8e64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Set.OrdConnectedComponent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Regular` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ordConnectedComponent_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/T5/Variant0fb10c73935cb488db1e0cb66465a340e012b865c904e8fa4275f7c318da8e64.lean/declarations/ordconnectedcomponent-mem-nhds--39266275a5d578690775c69a.md) | 25 | `result-track:39266275a5d578690775c69a0a3dc17f69563407e5e6cd6a59e189fc7ba2b877` |
| 2 | `theorem` | [compl_ordConnectedSection_ordSeparatingSet_mem_nhdsGE](../../../../../mathematics/Topology/GeneralTopology/T5/Variant0fb10c73935cb488db1e0cb66465a340e012b865c904e8fa4275f7c318da8e64.lean/declarations/compl-ordconnectedsection-ordseparatingset-mem-nhdsge--5faebbb564b720f848fe88fb.md) | 30 | `result-track:5faebbb564b720f848fe88fb7d17d4de53ac053df5abf29bcd273b46df8eb849` |
| 3 | `theorem` | [compl_ordConnectedSection_ordSeparatingSet_mem_nhdsLE](../../../../../mathematics/Topology/GeneralTopology/T5/Variant0fb10c73935cb488db1e0cb66465a340e012b865c904e8fa4275f7c318da8e64.lean/declarations/compl-ordconnectedsection-ordseparatingset-mem-nhdsle--72253628d534bdb5e0367be4.md) | 66 | `result-track:72253628d534bdb5e0367be4e01b68327a7c5e5f723f50ac53bb27494fe8007a` |
| 4 | `theorem` | [compl_ordConnectedSection_ordSeparatingSet_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/T5/Variant0fb10c73935cb488db1e0cb66465a340e012b865c904e8fa4275f7c318da8e64.lean/declarations/compl-ordconnectedsection-ordseparatingset-mem-nhds--c6765e1aa83baae3659190ec.md) | 77 | `result-track:c6765e1aa83baae3659190ece8146db5d4b2c1ac06d6d22a1e7a0e459cc59547` |
| 5 | `theorem` | [ordT5Nhd_mem_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/T5/Variant0fb10c73935cb488db1e0cb66465a340e012b865c904e8fa4275f7c318da8e64.lean/declarations/ordt5nhd-mem-nhdsset--0714d0ff89ca9a70fa7cfa8d.md) | 86 | `result-track:0714d0ff89ca9a70fa7cfa8d7d695958aa04085520dcb566465c15e44429e42a` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/T5/Variant0fb10c73935cb488db1e0cb66465a340e012b865c904e8fa4275f7c318da8e64.lean/declarations/instance--d471e62681dcbeb2f45b6947.md) | 98 | `declaration-track:d471e62681dcbeb2f45b6947b0f1f9639a1c8bc382cfdf9d0c69df86a23fe6af` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/T5/Variant0fb10c73935cb488db1e0cb66465a340e012b865c904e8fa4275f7c318da8e64.lean/declarations/instance--e0d9a5d1eb6d786574674fa9.md) | 103 | `declaration-track:e0d9a5d1eb6d786574674fa96109ee4f317a6324683014223494a8dc13c3264c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
