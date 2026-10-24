# Verification target: GRWTSK.Topology.MetricTopology.Diam.Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "669c8af402c53a3dd68bd2b1c9f382f9b0f593e2",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `669c8af402c53a3dd68bd2b1c9f382f9b0f593e2`.

Source path: `GRWTSK/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.EMetricSpace.Pi` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diam](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/declarations/diam--51358936049f2482d621827f.md) | 28 | `declaration-track:51358936049f2482d621827f6a9d1f8a73c83f4c080bbe4878898242c76fd625` |
| 2 | `theorem` | [diam_eq_sSup](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/declarations/diam-eq-ssup--12c4d1fddfd84126345d7b78.md) | 31 | `result-track:12c4d1fddfd84126345d7b78a99d36085285cfb31cd80932b2a52f19dfef63c1` |
| 3 | `theorem` | [diam_le_iff](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/declarations/diam-le-iff--3f6eeed3a4cf4700b35960ac.md) | 33 | `result-track:3f6eeed3a4cf4700b35960acaf175f20a16070a05f7c78dc279750e85e108d28` |
| 4 | `theorem` | [diam_image_le_iff](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/declarations/diam-image-le-iff--9824b814894ac058d69e8c95.md) | 36 | `result-track:9824b814894ac058d69e8c954fe87e69a4cf13e051ca8b95539160b0f26c9b48` |
| 5 | `theorem` | [edist_le_of_diam_le](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/declarations/edist-le-of-diam-le--fa9b606414189a28263723ab.md) | 40 | `result-track:fa9b606414189a28263723abb341fcb2a373b98ef3aa636bd183cc7000b5fefe` |
| 6 | `theorem` | [edist_le_diam_of_mem](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/declarations/edist-le-diam-of-mem--afbd03ad877520716b088c65.md) | 44 | `result-track:afbd03ad877520716b088c656fee5ca4620fa5a68164ac4ab2660e8f4456575a` |
| 7 | `theorem` | [diam_le](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/declarations/diam-le--1d1aa109d883a9368e60a6b7.md) | 49 | `result-track:1d1aa109d883a9368e60a6b7b5126720ac91836e1b8213d4c8b452a935d6a642` |
| 8 | `theorem` | [diam_subsingleton](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/declarations/diam-subsingleton--e12127b2d52457413840c9d5.md) | 53 | `result-track:e12127b2d52457413840c9d591a293885160603b43623d754224add9c148b5da` |
| 9 | `theorem` | [diam_empty](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/declarations/diam-empty--697e299cdeb6bb4f1798692b.md) | 58 | `result-track:697e299cdeb6bb4f1798692bf7bca824de4e657c857bd88e2abc78d16c2723cd` |
| 10 | `theorem` | [diam_singleton](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/declarations/diam-singleton--536eb0a7b49f62f0da9ad1d1.md) | 63 | `result-track:536eb0a7b49f62f0da9ad1d1c9b397278995ed8801af1c2e13db769417729aff` |
| 11 | `theorem` | [diam_one](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/declarations/diam-one--18a3ee2a3b3aa94faacbaf43.md) | 67 | `result-track:18a3ee2a3b3aa94faacbaf43bbdbdc43ba92455a777552475f45a1ef5756b84f` |
| 12 | `theorem` | [diam_iUnion_mem_option](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/declarations/diam-iunion-mem-option--4d679cd00cce8302de53869d.md) | 70 | `result-track:4d679cd00cce8302de53869d2d5ef29dc35ba8567a0f91fe07939ede6a3d5e55` |
| 13 | `theorem` | [diam_insert](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/declarations/diam-insert--da37cc7fc1664a92f6d4ca16.md) | 73 | `result-track:da37cc7fc1664a92f6d4ca16defcc77b394995ac8bba5a34d02554b936d9f67e` |
| 14 | `theorem` | [diam_pair](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/declarations/diam-pair--a3504002d66caa7d8065999f.md) | 78 | `result-track:a3504002d66caa7d8065999f20c4838980315460ecfc6061471ddd78fbcafedf` |
| 15 | `theorem` | [diam_triple](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/declarations/diam-triple--c45cb286d860329b6340da48.md) | 81 | `result-track:c45cb286d860329b6340da483cd8114ca4116d00e87478e8ed4ec9bd33d22cae` |
| 16 | `theorem` | [diam_mono](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/declarations/diam-mono--1c90b4f81b5163bed8d82cd8.md) | 86 | `result-track:1c90b4f81b5163bed8d82cd8a686aa7d0747557dddc28af407d10e064f413af7` |
| 17 | `theorem` | [diam_union](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/declarations/diam-union--8df14b65ff54abc1bb0cb9f5.md) | 91 | `result-track:8df14b65ff54abc1bb0cb9f5a87306f25a3390418d278f5397d9cfa2bede0050` |
| 18 | `theorem` | [diam_union'](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/declarations/diam-union--a77057fb402c0d9e13ad9fcd.md) | 111 | `result-track:a77057fb402c0d9e13ad9fcd2ba6e1470ea14252e296a4cb8545a34b4d4ef5ed` |
| 19 | `theorem` | [diam_closedBall](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/declarations/diam-closedball--fb4250bf800ce31191648b17.md) | 115 | `result-track:fb4250bf800ce31191648b1767ed7049a22fddec0f61fefd457363de3111a038` |
| 20 | `theorem` | [diam_ball](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/declarations/diam-ball--1f69f6a7b4835c92bda6668c.md) | 122 | `result-track:1f69f6a7b4835c92bda6668c30a4fd96c1d4a7df53f662d9d23c9c13910e21ee` |
| 21 | `theorem` | [diam_pi_le_of_le](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/declarations/diam-pi-le-of-le--c5c75ed6cc2d673f2196ba54.md) | 125 | `result-track:c5c75ed6cc2d673f2196ba54e2c8cb819398e564e3f3773b26a75dff0b94d2c5` |
| 22 | `theorem` | [diam_eq_zero_iff](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/declarations/diam-eq-zero-iff--57cdf50bcc55a46aca3f583d.md) | 136 | `result-track:57cdf50bcc55a46aca3f583d46a5147a8ea628b41851dc65689b80a85cb30447` |
| 23 | `theorem` | [diam_pos_iff](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/declarations/diam-pos-iff--3254b7b148dda7c2e324a4f7.md) | 139 | `result-track:3254b7b148dda7c2e324a4f7bde8a02f671e7c67bcb77e7d49f2934a18380fc3` |
| 24 | `theorem` | [diam_pos_iff'](../../../../../mathematics/Topology/MetricTopology/Diam/Variantd1ed4bcb112a560d35a1ecf7263fddb26499728e3f8082a5d91b3bbfb12f38be.lean/declarations/diam-pos-iff--28cd73073131537faddcbfdb.md) | 142 | `result-track:28cd73073131537faddcbfdbd76bbfeb9f5a0cb74fe45d46d754625435730cf2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
