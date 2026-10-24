# Verification target: GRWTSK.Topology.GeneralTopology.UniformConvergence.Variant681ad3f50482f96a1d1b7b904bd786e6bb2e93d4afad123c398c038a15ed742b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e9852aada53b41541926f42227e28e26912493d",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformConvergence/Variant681ad3f50482f96a1d1b7b904bd786e6bb2e93d4afad123c398c038a15ed742b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UniformConvergence/Variant681ad3f50482f96a1d1b7b904bd786e6bb2e93d4afad123c398c038a15ed742b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UniformConvergence/Variant681ad3f50482f96a1d1b7b904bd786e6bb2e93d4afad123c398c038a15ed742b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e9852aada53b41541926f42227e28e26912493d`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformConvergence/Variant681ad3f50482f96a1d1b7b904bd786e6bb2e93d4afad123c398c038a15ed742b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformConvergence/Variant681ad3f50482f96a1d1b7b904bd786e6bb2e93d4afad123c398c038a15ed742b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.Bounded` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.FilterBasis` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformConvergence` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [UniformFun.continuousSMul_induced_of_range_bounded](../../../../../mathematics/Topology/GeneralTopology/UniformConvergence/Variant681ad3f50482f96a1d1b7b904bd786e6bb2e93d4afad123c398c038a15ed742b.lean/declarations/uniformfun-continuoussmul-induced-of-range-bounded--efbd4a3646eacd21df3f8e67.md) | 58 | `result-track:efbd4a3646eacd21df3f8e675948d6466986a6d5c63c83993eb8cbc394218f2e` |
| 2 | `lemma` | [UniformOnFun.continuousSMul_induced_of_image_bounded](../../../../../mathematics/Topology/GeneralTopology/UniformConvergence/Variant681ad3f50482f96a1d1b7b904bd786e6bb2e93d4afad123c398c038a15ed742b.lean/declarations/uniformonfun-continuoussmul-induced-of-image-bounded--0e387f079794230bc41b9fa1.md) | 93 | `result-track:0e387f079794230bc41b9fa1f70b097b88a7d79d0c96edfc753fb0817907be82` |
| 3 | `theorem` | [UniformOnFun.continuousSMul_submodule_of_image_bounded](../../../../../mathematics/Topology/GeneralTopology/UniformConvergence/Variant681ad3f50482f96a1d1b7b904bd786e6bb2e93d4afad123c398c038a15ed742b.lean/declarations/uniformonfun-continuoussmul-submodule-of-image-bounded--b81c68512fa7931ab63ca01b.md) | 113 | `result-track:b81c68512fa7931ab63ca01be109a1294a52cc5f00a8d8e8b9fdf456761f79fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
