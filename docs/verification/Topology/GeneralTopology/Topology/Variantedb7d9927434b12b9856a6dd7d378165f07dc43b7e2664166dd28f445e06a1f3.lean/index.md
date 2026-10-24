# Verification target: GRWTSK.Topology.GeneralTopology.Topology.Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8aaf998fec920645c7010dc1f127ab30499baab",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8aaf998fec920645c7010dc1f127ab30499baab`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sets.Opens` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IntrinsicQuotient](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean/declarations/intrinsicquotient--d041abcfb8e85faec720bff1.md) | 18 | `declaration-track:d041abcfb8e85faec720bff1e14ed71f0bf532be651acd75c98105118d891881` |
| 2 | `def` | [quotientMap](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean/declarations/quotientmap--6408a80badfdbb78ddbd9b92.md) | 22 | `declaration-track:6408a80badfdbb78ddbd9b921b9b55e97bf1559d8f24b0254e421ac7b5b990d1` |
| 3 | `def` | [quotientTopology](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean/declarations/quotienttopology--7fb87cd6ae45892292a60c9b.md) | 27 | `declaration-track:7fb87cd6ae45892292a60c9bbba2a49c7d6479570eaa3e603747f6331544254a` |
| 4 | `def` | [IsQuotientOpen](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean/declarations/isquotientopen--2388d4c170a00af83a6fd697.md) | 32 | `declaration-track:2388d4c170a00af83a6fd69737aeb889aaa9735282c3a7e1d7066cd4b6e0ab6a` |
| 5 | `theorem` | [isQuotientOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean/declarations/isquotientopen-iff--b3b4280f7f0c51d165b0c736.md) | 38 | `result-track:b3b4280f7f0c51d165b0c736296cb9f65cd84fc7db8d49d803fdf13cf370b1b0` |
| 6 | `theorem` | [quotientTopology_unique](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean/declarations/quotienttopology-unique--d6565fb4c53e8271fdf3fbde.md) | 46 | `result-track:d6565fb4c53e8271fdf3fbdef9a4d036834e96e9f556f695de2dbcf60feac476` |
| 7 | `def` | [quotientNeighborhoods](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean/declarations/quotientneighborhoods--e724063432e1eb06843203be.md) | 62 | `declaration-track:e724063432e1eb06843203bed6a22d8f4ee1e63b208381c082fd3b3d57fb5e48` |
| 8 | `def` | [quotientNeighborhoodFilter](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean/declarations/quotientneighborhoodfilter--0a3b2a826e386411080e19ec.md) | 73 | `declaration-track:0a3b2a826e386411080e19ec4a0f97f2ca6bb5d8457555a727c1dd7b0f8f25d4` |
| 9 | `theorem` | [mem_quotientNeighborhoodFilter_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean/declarations/mem-quotientneighborhoodfilter-iff--3a494f95eed0e01f9c6d5961.md) | 80 | `result-track:3a494f95eed0e01f9c6d59618b8eee79aa8065891dc81046e9be4c9655cc07a5` |
| 10 | `def` | [saturatedNeighborhoods](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean/declarations/saturatedneighborhoods--153c693538824d524f4428dc.md) | 114 | `declaration-track:153c693538824d524f4428dc17bf0cfc02ff8c8ce8ef72f43ad0c000eefa885b` |
| 11 | `def` | [IsIntrinsicSaturated](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean/declarations/isintrinsicsaturated--f95ce38ed77b1a7b9479dea6.md) | 124 | `declaration-track:f95ce38ed77b1a7b9479dea689db97ad119f3465d7a438fadd92a7bbb458511a` |
| 12 | `theorem` | [quotient_preimage_isIntrinsicSaturated](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean/declarations/quotient-preimage-isintrinsicsaturated--140c2c189921311c6f8b95fc.md) | 134 | `result-track:140c2c189921311c6f8b95fcc7159c31f1b941bfa8b44f13c08b1799891dbd7e` |
| 13 | `theorem` | [saturatedNeighborhood_isIntrinsicSaturated](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean/declarations/saturatedneighborhood-isintrinsicsaturated--334ec5096839a578a667070b.md) | 146 | `result-track:334ec5096839a578a667070b8e70be3d9a4bff70bd57c8f71c2121147a3e75f0` |
| 14 | `theorem` | [mem_quotientNeighborhoods_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean/declarations/mem-quotientneighborhoods-iff--be41201ef04d465ddbccc249.md) | 156 | `result-track:be41201ef04d465ddbccc249637824bded7f45d98e750f41e1aec3ad226777d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
