# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Uniformity.Variant1bb9cf19bb39d9d2e75e829c61bdd0d943df6bbcfab2ecc0eb07d5b1c3138925

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57ab079732948a225916249b4a7089b32cc068e2",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1bb9cf19bb39d9d2e75e829c61bdd0d943df6bbcfab2ecc0eb07d5b1c3138925.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1bb9cf19bb39d9d2e75e829c61bdd0d943df6bbcfab2ecc0eb07d5b1c3138925.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1bb9cf19bb39d9d2e75e829c61bdd0d943df6bbcfab2ecc0eb07d5b1c3138925.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57ab079732948a225916249b4a7089b32cc068e2`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1bb9cf19bb39d9d2e75e829c61bdd0d943df6bbcfab2ecc0eb07d5b1c3138925.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1bb9cf19bb39d9d2e75e829c61bdd0d943df6bbcfab2ecc0eb07d5b1c3138925.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNReal.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofPreNNDist](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1bb9cf19bb39d9d2e75e829c61bdd0d943df6bbcfab2ecc0eb07d5b1c3138925.lean/declarations/ofprenndist--bdfea0fa14806e91683ac9a7.md) | 57 | `declaration-track:bdfea0fa14806e91683ac9a761a280304d7cd33787a7cd8e7778dce5d378035b` |
| 2 | `theorem` | [dist_ofPreNNDist](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1bb9cf19bb39d9d2e75e829c61bdd0d943df6bbcfab2ecc0eb07d5b1c3138925.lean/declarations/dist-ofprenndist--a2c2fc5d45094ba3ea63cbae.md) | 81 | `result-track:a2c2fc5d45094ba3ea63cbaed7c50e68a045353d774028fd15c0683000caed18` |
| 3 | `theorem` | [dist_ofPreNNDist_le](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1bb9cf19bb39d9d2e75e829c61bdd0d943df6bbcfab2ecc0eb07d5b1c3138925.lean/declarations/dist-ofprenndist-le--2c82fdee2b13a693e7f49ab8.md) | 88 | `result-track:2c82fdee2b13a693e7f49ab82fb8e31dc04c825cf4371283234533395e6afc38` |
| 4 | `theorem` | [le_two_mul_dist_ofPreNNDist](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1bb9cf19bb39d9d2e75e829c61bdd0d943df6bbcfab2ecc0eb07d5b1c3138925.lean/declarations/le-two-mul-dist-ofprenndist--26b8666d3382a0845163eaae.md) | 100 | `result-track:26b8666d3382a0845163eaaed840d8dfb4739b4b91c9e9f0c0a7aa0935188aa3` |
| 5 | `theorem` | [UniformSpace.metrizable_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1bb9cf19bb39d9d2e75e829c61bdd0d943df6bbcfab2ecc0eb07d5b1c3138925.lean/declarations/uniformspace-metrizable-uniformity--673645d504218ae51cc986fe.md) | 178 | `result-track:673645d504218ae51cc986fe52f80650f9dca5f38d6b413b3d72c85f652844bc` |
| 6 | `def` | [UniformSpace.pseudoMetricSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1bb9cf19bb39d9d2e75e829c61bdd0d943df6bbcfab2ecc0eb07d5b1c3138925.lean/declarations/uniformspace-pseudometricspace--1ca1e087d0865fdb8d4bcd9d.md) | 246 | `declaration-track:1ca1e087d0865fdb8d4bcd9df5d21e9db11d8adfb60a392bba6d8f26a06f13ca` |
| 7 | `def` | [UniformSpace.metricSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1bb9cf19bb39d9d2e75e829c61bdd0d943df6bbcfab2ecc0eb07d5b1c3138925.lean/declarations/uniformspace-metricspace--e7825f074626d21543d86d18.md) | 252 | `declaration-track:e7825f074626d21543d86d18fc10d103725aaaf5401bf758c4a1252ddf98fbc8` |
| 8 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1bb9cf19bb39d9d2e75e829c61bdd0d943df6bbcfab2ecc0eb07d5b1c3138925.lean/declarations/instance--e1d37ce4f605acfc1e58ce2a.md) | 257 | `declaration-track:e1d37ce4f605acfc1e58ce2a9fa12736a4171a9f9cdc3dd52e3353531960a393` |
| 9 | `theorem` | [UniformSpace.metrizableSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1bb9cf19bb39d9d2e75e829c61bdd0d943df6bbcfab2ecc0eb07d5b1c3138925.lean/declarations/uniformspace-metrizablespace--bc1bae49d56f5667959fcf2b.md) | 264 | `result-track:bc1bae49d56f5667959fcf2b58258b14c9adb4ddab529c4fc588baaf06eadc28` |
| 10 | `lemma` | [TotallyBounded.isSeparable](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1bb9cf19bb39d9d2e75e829c61bdd0d943df6bbcfab2ecc0eb07d5b1c3138925.lean/declarations/totallybounded-isseparable--20615c9688f0a606d5961544.md) | 271 | `result-track:20615c9688f0a606d5961544c6d3ed495bde33b8376825a6b725687d96e0802e` |
| 11 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1bb9cf19bb39d9d2e75e829c61bdd0d943df6bbcfab2ecc0eb07d5b1c3138925.lean/declarations/instance--d42a6f597f8197419ab9428d.md) | 287 | `declaration-track:d42a6f597f8197419ab9428db66d467a68208ba2ab38635cef39145f5a8d60e9` |
| 12 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1bb9cf19bb39d9d2e75e829c61bdd0d943df6bbcfab2ecc0eb07d5b1c3138925.lean/declarations/instance--73d6e5e39b6196275a821769.md) | 293 | `declaration-track:73d6e5e39b6196275a821769f3a18d0a4030e28ae74ec2e82207d099041c6379` |
| 13 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1bb9cf19bb39d9d2e75e829c61bdd0d943df6bbcfab2ecc0eb07d5b1c3138925.lean/declarations/instance--b0ec6e60ee8e1290045e3cbc.md) | 297 | `declaration-track:b0ec6e60ee8e1290045e3cbcf58a631e638c055ed90c54c4c6159cbe5c596d96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
