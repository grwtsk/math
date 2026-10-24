# Verification target: GRWTSK.Topology.MetricTopology.Dist.Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d7d0c4ce22e7087bcbf76c696cf34d2c5c70b7e",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d7d0c4ce22e7087bcbf76c696cf34d2c5c70b7e`.

Source path: `GRWTSK/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Nat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Canonical` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dist](../../../../../mathematics/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/declarations/dist--490931106a06242aeac658cf.md) | 27 | `declaration-track:490931106a06242aeac658cf52e36d0c5cb513177d7e799bdb519fcc33c768e0` |
| 2 | `theorem` | [dist_comm](../../../../../mathematics/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/declarations/dist-comm--963495a1e1d8ae35b83b8502.md) | 30 | `result-track:963495a1e1d8ae35b83b8502f0b6be94ad52a4fb7d0c1ad6b70f1e1f52979f55` |
| 3 | `theorem` | [dist_self](../../../../../mathematics/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/declarations/dist-self--0abf3dacbd04fc428ed559b6.md) | 33 | `result-track:0abf3dacbd04fc428ed559b63576554b0f056e2d96f25c03c08d1896ba714568` |
| 4 | `theorem` | [eq_of_dist_eq_zero](../../../../../mathematics/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/declarations/eq-of-dist-eq-zero--158dbae7da97651ffa0b31a6.md) | 35 | `result-track:158dbae7da97651ffa0b31a6b261f69575f1cc4e2e65045505f9adae5f36493a` |
| 5 | `theorem` | [dist_eq_zero](../../../../../mathematics/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/declarations/dist-eq-zero--bab972060d7d4bbeb274b973.md) | 42 | `result-track:bab972060d7d4bbeb274b9733fe176a4ed9265d6804daf28c6285dbf20f7615d` |
| 6 | `theorem` | [dist_eq_sub_of_le](../../../../../mathematics/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/declarations/dist-eq-sub-of-le--be0bd3ba6fa56948702c3544.md) | 44 | `result-track:be0bd3ba6fa56948702c3544e5ec7192845ef7689417ed54f092eb905f9e28fc` |
| 7 | `theorem` | [dist_eq_sub_of_le_right](../../../../../mathematics/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/declarations/dist-eq-sub-of-le-right--30ee8ca85cecf229d40588a8.md) | 47 | `result-track:30ee8ca85cecf229d40588a89bfe394d907db34ef185bd0483636e50691a17c9` |
| 8 | `theorem` | [dist_tri_left](../../../../../mathematics/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/declarations/dist-tri-left--2930b3fdf234c396ad12d6f9.md) | 50 | `result-track:2930b3fdf234c396ad12d6f94f8b08536da28815e677123c218e52dcd1a1d833` |
| 9 | `theorem` | [dist_tri_right](../../../../../mathematics/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/declarations/dist-tri-right--90840580adac1f6296c3ef72.md) | 53 | `result-track:90840580adac1f6296c3ef728d2462f65e4bb38599ecadb0bc5bdfbbefc67e06` |
| 10 | `theorem` | [dist_tri_left'](../../../../../mathematics/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/declarations/dist-tri-left--420d4e7b06b1c0abf145f6e2.md) | 55 | `result-track:420d4e7b06b1c0abf145f6e2ad1a1566877487f5c92498c771aa34eecb77a106` |
| 11 | `theorem` | [dist_tri_right'](../../../../../mathematics/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/declarations/dist-tri-right--4c4267fcd3c89e9eb4dfd124.md) | 57 | `result-track:4c4267fcd3c89e9eb4dfd124b5edd1e4d701a32fa021e24f621c4605d86bf459` |
| 12 | `theorem` | [dist_zero_right](../../../../../mathematics/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/declarations/dist-zero-right--08d20a4d76618b9f5571da9a.md) | 59 | `result-track:08d20a4d76618b9f5571da9a0dfdcc1a75fe5d27cb5e3ae2f36945f8278d12a8` |
| 13 | `theorem` | [dist_zero_left](../../../../../mathematics/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/declarations/dist-zero-left--429c434005e54d9303d9f277.md) | 62 | `result-track:429c434005e54d9303d9f277690ce086010dc6610249198cf2730953cae9e69e` |
| 14 | `theorem` | [dist_add_add_right](../../../../../mathematics/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/declarations/dist-add-add-right--eb0d4a6b9b24d51dca115f37.md) | 65 | `result-track:eb0d4a6b9b24d51dca115f377a7f582deaccf7b4a8f04dc043fea3f2b2b028b3` |
| 15 | `theorem` | [dist_add_add_left](../../../../../mathematics/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/declarations/dist-add-add-left--055d78073cbb6ea2a242b5f8.md) | 71 | `result-track:055d78073cbb6ea2a242b5f87e4c21ed2ba54b7983fbb1d40fc26e09e6382406` |
| 16 | `theorem` | [dist_eq_intro](../../../../../mathematics/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/declarations/dist-eq-intro--522c5117472caf7cec8f4892.md) | 74 | `result-track:522c5117472caf7cec8f489283c7027bd840047ab06c13d07d794b05beb2114f` |
| 17 | `theorem` | [dist.triangle_inequality](../../../../../mathematics/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/declarations/dist-triangle-inequality--9ef91e8fb35462786f213b92.md) | 80 | `result-track:9ef91e8fb35462786f213b92ab5ddf1ef879220b134c475f022ae18d2508255f` |
| 18 | `theorem` | [dist_mul_right](../../../../../mathematics/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/declarations/dist-mul-right--978653b987b6ea34d6e5d00e.md) | 86 | `result-track:978653b987b6ea34d6e5d00ea7dcc115e1d8ef38e4aef808ffb43c9a8e7589a6` |
| 19 | `theorem` | [dist_mul_left](../../../../../mathematics/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/declarations/dist-mul-left--83bbe258b868fda2f3ef9f51.md) | 89 | `result-track:83bbe258b868fda2f3ef9f51594878dd0fea89fb596d8e7263bcf99254a4ae00` |
| 20 | `theorem` | [dist_eq_max_sub_min](../../../../../mathematics/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/declarations/dist-eq-max-sub-min--62bd728617940afd0f0fced5.md) | 92 | `result-track:62bd728617940afd0f0fced5b1d0ed465996c3d077826c35f8dc997c2ed59f8e` |
| 21 | `theorem` | [dist_succ_succ](../../../../../mathematics/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/declarations/dist-succ-succ--6e5a6e70a6a3f8726edcf530.md) | 97 | `result-track:6e5a6e70a6a3f8726edcf53096e3e400865dbfe763195378cadcbd8d3539d206` |
| 22 | `theorem` | [dist_pos_of_ne](../../../../../mathematics/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/declarations/dist-pos-of-ne--bb7b290f23cf2a75340bdb6b.md) | 100 | `result-track:bb7b290f23cf2a75340bdb6b62a1a4eecdc1fe8eb77f187e0926a0e5fc09a5c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
