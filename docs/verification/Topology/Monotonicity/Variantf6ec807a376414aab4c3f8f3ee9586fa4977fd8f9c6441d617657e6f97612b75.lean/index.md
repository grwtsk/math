# Verification target: GRWTSK.Topology.Monotonicity.Variantf6ec807a376414aab4c3f8f3ee9586fa4977fd8f9c6441d617657e6f97612b75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb3df0e91072452b6622122e711f380ffa89d952",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Monotonicity/Variantf6ec807a376414aab4c3f8f3ee9586fa4977fd8f9c6441d617657e6f97612b75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Monotonicity/Variantf6ec807a376414aab4c3f8f3ee9586fa4977fd8f9c6441d617657e6f97612b75.lean/index.md) · [Full source](../../../../mathematics/Topology/Monotonicity/Variantf6ec807a376414aab4c3f8f3ee9586fa4977fd8f9c6441d617657e6f97612b75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb3df0e91072452b6622122e711f380ffa89d952`.

Source path: `GRWTSK/Topology/Monotonicity/Variantf6ec807a376414aab4c3f8f3ee9586fa4977fd8f9c6441d617657e6f97612b75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Monotonicity/Variantf6ec807a376414aab4c3f8f3ee9586fa4977fd8f9c6441d617657e6f97612b75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.AD.Computable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Monotone` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkStrictlyIncreasing](../../../../mathematics/Topology/Monotonicity/Variantf6ec807a376414aab4c3f8f3ee9586fa4977fd8f9c6441d617657e6f97612b75.lean/declarations/checkstrictlyincreasing--1e636a87cc1a786c9a0a4bb8.md) | 53 | `declaration-track:1e636a87cc1a786c9a0a4bb8d762b04b8be3ccc40e4d9a2aabc80f8ec01d7f21` |
| 2 | `def` | [checkStrictlyDecreasing](../../../../mathematics/Topology/Monotonicity/Variantf6ec807a376414aab4c3f8f3ee9586fa4977fd8f9c6441d617657e6f97612b75.lean/declarations/checkstrictlydecreasing--7c0d316af97ed9a25d2fd25f.md) | 58 | `declaration-track:7c0d316af97ed9a25d2fd25f316ba78e86c809ef0de8a14c2ac3b496cd6b5fdd` |
| 3 | `theorem` | [verify_strictly_increasing](../../../../mathematics/Topology/Monotonicity/Variantf6ec807a376414aab4c3f8f3ee9586fa4977fd8f9c6441d617657e6f97612b75.lean/declarations/verify-strictly-increasing--4f622a5847e49216075b8ad3.md) | 70 | `result-track:4f622a5847e49216075b8ad33de862c132f0fbff493cbf9a461bc662349976d9` |
| 4 | `theorem` | [verify_strictly_decreasing](../../../../mathematics/Topology/Monotonicity/Variantf6ec807a376414aab4c3f8f3ee9586fa4977fd8f9c6441d617657e6f97612b75.lean/declarations/verify-strictly-decreasing--c0e02d6089295e70e19425ac.md) | 82 | `result-track:c0e02d6089295e70e19425ac8813e16ed6093bc4156449ef413653110d90818c` |
| 5 | `theorem` | [verify_strictly_increasing_lt](../../../../mathematics/Topology/Monotonicity/Variantf6ec807a376414aab4c3f8f3ee9586fa4977fd8f9c6441d617657e6f97612b75.lean/declarations/verify-strictly-increasing-lt--34c78a61fdde71460788809c.md) | 96 | `result-track:34c78a61fdde71460788809cbc1669fd0243b82db6af68a3cf855474aae5bbc7` |
| 6 | `theorem` | [verify_strictly_decreasing_lt](../../../../mathematics/Topology/Monotonicity/Variantf6ec807a376414aab4c3f8f3ee9586fa4977fd8f9c6441d617657e6f97612b75.lean/declarations/verify-strictly-decreasing-lt--e8a643f515ce27a5cbcfef91.md) | 106 | `result-track:e8a643f515ce27a5cbcfef91fc3e46a758e2e8410c60c93846ed00db14801975` |
| 7 | `theorem` | [verify_monotone](../../../../mathematics/Topology/Monotonicity/Variantf6ec807a376414aab4c3f8f3ee9586fa4977fd8f9c6441d617657e6f97612b75.lean/declarations/verify-monotone--f861100c219bdafc14757b7f.md) | 121 | `result-track:f861100c219bdafc14757b7fc8c1c48489c0b0e4a182e20ae19cc3bb68d621c1` |
| 8 | `theorem` | [verify_antitone](../../../../mathematics/Topology/Monotonicity/Variantf6ec807a376414aab4c3f8f3ee9586fa4977fd8f9c6441d617657e6f97612b75.lean/declarations/verify-antitone--939efffe44b0e4ae9f1deb9d.md) | 129 | `result-track:939efffe44b0e4ae9f1deb9df7d8ed4bb5303aff709233d17f2b6818c55f216a` |
| 9 | `theorem` | [verify_strictly_increasing_rat](../../../../mathematics/Topology/Monotonicity/Variantf6ec807a376414aab4c3f8f3ee9586fa4977fd8f9c6441d617657e6f97612b75.lean/declarations/verify-strictly-increasing-rat--042ed6fc0a1d8be2e1e6b283.md) | 142 | `result-track:042ed6fc0a1d8be2e1e6b2836c984827c3f153cbd53ade897beb373f4e85ec10` |
| 10 | `theorem` | [verify_strictly_decreasing_rat](../../../../mathematics/Topology/Monotonicity/Variantf6ec807a376414aab4c3f8f3ee9586fa4977fd8f9c6441d617657e6f97612b75.lean/declarations/verify-strictly-decreasing-rat--ee75b8e7013083ec6ac5340c.md) | 149 | `result-track:ee75b8e7013083ec6ac5340cd1ee7ff620a09ae32323a8f5830704c83f0df812` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
