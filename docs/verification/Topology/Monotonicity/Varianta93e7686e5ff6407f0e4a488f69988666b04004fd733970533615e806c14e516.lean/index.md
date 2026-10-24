# Verification target: GRWTSK.Topology.Monotonicity.Varianta93e7686e5ff6407f0e4a488f69988666b04004fd733970533615e806c14e516

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fd90288805fd1c6206ef35645e9940031b45bf2",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Monotonicity/Varianta93e7686e5ff6407f0e4a488f69988666b04004fd733970533615e806c14e516.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Monotonicity/Varianta93e7686e5ff6407f0e4a488f69988666b04004fd733970533615e806c14e516.lean/index.md) · [Full source](../../../../mathematics/Topology/Monotonicity/Varianta93e7686e5ff6407f0e4a488f69988666b04004fd733970533615e806c14e516.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fd90288805fd1c6206ef35645e9940031b45bf2`.

Source path: `GRWTSK/Topology/Monotonicity/Varianta93e7686e5ff6407f0e4a488f69988666b04004fd733970533615e806c14e516.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Monotonicity/Varianta93e7686e5ff6407f0e4a488f69988666b04004fd733970533615e806c14e516.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.AD.Computable` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Monotone` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkStrictlyIncreasing](../../../../mathematics/Topology/Monotonicity/Varianta93e7686e5ff6407f0e4a488f69988666b04004fd733970533615e806c14e516.lean/declarations/checkstrictlyincreasing--7f3e40dd7994e0861898bffc.md) | 61 | `declaration-track:7f3e40dd7994e0861898bffc8f7ee0605f0043d095235ebb91cebfcabb678c5c` |
| 2 | `def` | [checkStrictlyDecreasing](../../../../mathematics/Topology/Monotonicity/Varianta93e7686e5ff6407f0e4a488f69988666b04004fd733970533615e806c14e516.lean/declarations/checkstrictlydecreasing--14f64b570bbc77b2692b6b40.md) | 66 | `declaration-track:14f64b570bbc77b2692b6b40706a9a10a644376570ffcbbf5be6c5322d1869f8` |
| 3 | `theorem` | [verify_strictly_increasing](../../../../mathematics/Topology/Monotonicity/Varianta93e7686e5ff6407f0e4a488f69988666b04004fd733970533615e806c14e516.lean/declarations/verify-strictly-increasing--d3d4207f9b7c8967931d388c.md) | 78 | `result-track:d3d4207f9b7c8967931d388cd6e92f8d159ad94f451a4df6c46c3109b4b7728f` |
| 4 | `theorem` | [verify_strictly_decreasing](../../../../mathematics/Topology/Monotonicity/Varianta93e7686e5ff6407f0e4a488f69988666b04004fd733970533615e806c14e516.lean/declarations/verify-strictly-decreasing--faaa6925549e9f75632cdce7.md) | 90 | `result-track:faaa6925549e9f75632cdce733e13e15bea112ad401af5762504651e38769384` |
| 5 | `theorem` | [verify_strictly_increasing_lt](../../../../mathematics/Topology/Monotonicity/Varianta93e7686e5ff6407f0e4a488f69988666b04004fd733970533615e806c14e516.lean/declarations/verify-strictly-increasing-lt--f9a70303a5d5e384a9a2e6cb.md) | 104 | `result-track:f9a70303a5d5e384a9a2e6cbc90d90938b7247d6ebd04d8a11f0ca4beb682192` |
| 6 | `theorem` | [verify_strictly_decreasing_lt](../../../../mathematics/Topology/Monotonicity/Varianta93e7686e5ff6407f0e4a488f69988666b04004fd733970533615e806c14e516.lean/declarations/verify-strictly-decreasing-lt--ebcc8a49cbf2dc2db63ebd36.md) | 114 | `result-track:ebcc8a49cbf2dc2db63ebd366c67f937151d702dbd37af9a44e8704e54b173d1` |
| 7 | `theorem` | [verify_monotone](../../../../mathematics/Topology/Monotonicity/Varianta93e7686e5ff6407f0e4a488f69988666b04004fd733970533615e806c14e516.lean/declarations/verify-monotone--ed86b837b03e5c62e0cf7e82.md) | 129 | `result-track:ed86b837b03e5c62e0cf7e82b15f275b09a752fb392f2c8e6567dbc7eeed97e0` |
| 8 | `theorem` | [verify_antitone](../../../../mathematics/Topology/Monotonicity/Varianta93e7686e5ff6407f0e4a488f69988666b04004fd733970533615e806c14e516.lean/declarations/verify-antitone--87724684666fa0f824e7412e.md) | 137 | `result-track:87724684666fa0f824e7412eb647f218d5f11efd48f243f4ad18bbb82aa54e92` |
| 9 | `theorem` | [verify_strictly_increasing_rat](../../../../mathematics/Topology/Monotonicity/Varianta93e7686e5ff6407f0e4a488f69988666b04004fd733970533615e806c14e516.lean/declarations/verify-strictly-increasing-rat--13366a04dc45cb1b521b23a5.md) | 150 | `result-track:13366a04dc45cb1b521b23a55cdbdcd9a33732392d92aae6ce572e58331ad3ce` |
| 10 | `theorem` | [verify_strictly_decreasing_rat](../../../../mathematics/Topology/Monotonicity/Varianta93e7686e5ff6407f0e4a488f69988666b04004fd733970533615e806c14e516.lean/declarations/verify-strictly-decreasing-rat--c72a6ba60b7cbb59017b5618.md) | 157 | `result-track:c72a6ba60b7cbb59017b56182c0c23c893c79354d960397d9c4dd2e22515befa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
