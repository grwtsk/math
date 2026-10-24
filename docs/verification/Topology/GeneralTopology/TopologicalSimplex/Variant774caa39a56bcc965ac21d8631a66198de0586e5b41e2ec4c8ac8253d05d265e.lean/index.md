# Verification target: GRWTSK.Topology.GeneralTopology.TopologicalSimplex.Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9504d2119c2c486dd6edfc57b7ea3065a4fe5af",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9504d2119c2c486dd6edfc57b7ea3065a4fe5af`.

Source path: `GRWTSK/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplexCategory.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.PathConnected` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toTopObj](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean/declarations/totopobj--a8a381da32f17e0ed17416dd.md) | 28 | `declaration-track:a8a381da32f17e0ed17416dd5524384bf819f87e44d9eaa53f0a2e5cef5a627e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean/declarations/instance--64636e6c7f7674d2a8efa976.md) | 30 | `declaration-track:64636e6c7f7674d2a8efa976fd4524376d7456655b1a4f774783e81470c7ec09` |
| 3 | `theorem` | [toTopObj.ext](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean/declarations/totopobj-ext--4cb9f9b388318dc8a9c53ac8.md) | 34 | `result-track:4cb9f9b388318dc8a9c53ac826745d61eef0cbbd6998728501a81355ff8d6914` |
| 4 | `lemma` | [toTopObj_zero_apply_zero](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean/declarations/totopobj-zero-apply-zero--fdab85bac7c7fb5119c74039.md) | 38 | `result-track:fdab85bac7c7fb5119c7403969b58a88a636ee30f8d8dd31662d0acfb00d361b` |
| 5 | `lemma` | [toTopObj_one_add_eq_one](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean/declarations/totopobj-one-add-eq-one--1d2d3d15d8a958d19598de41.md) | 41 | `result-track:1d2d3d15d8a958d19598de4110c4253fd6dd3d4f1f82578f0520f6925b24275d` |
| 6 | `lemma` | [toTopObj_one_coe_add_coe_eq_one](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean/declarations/totopobj-one-coe-add-coe-eq-one--0622194ea937308156e77a81.md) | 44 | `result-track:0622194ea937308156e77a81b1fdbdf1892f492624e5193f45d27cabadc6ef42` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean/declarations/instance--d05ff8c49adaafb7b61e085b.md) | 48 | `declaration-track:d05ff8c49adaafb7b61e085b652ac98da1880c94216a1f7dcb29a58456ce0e75` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean/declarations/instance--9991b6fde470f3ca14a8a997.md) | 51 | `declaration-track:9991b6fde470f3ca14a8a99701ffa8ed4211f8580373eee57f6499e456c9b279` |
| 9 | `def` | [toTopObjOneHomeo](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean/declarations/totopobjonehomeo--2fa183f7ebb99b379aed97b9.md) | 56 | `declaration-track:2fa183f7ebb99b379aed97b980923d7a60f7cb1f67a5848b71e1375ed77ca44b` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean/declarations/instance--2266c6ea65ee5ddddd57917d.md) | 67 | `declaration-track:2266c6ea65ee5ddddd57917dfc42cbaf71098425f58b6ede3b27ea1a3aed1100` |
| 11 | `def` | [toTopMap](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean/declarations/totopmap--ebdaafa81aac75db134a8412.md) | 79 | `declaration-track:ebdaafa81aac75db134a84125c9e3cb9c7df202d64d45cb6198377dd6a27bd07` |
| 12 | `theorem` | [coe_toTopMap](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean/declarations/coe-totopmap--8d7ee59036edf20d8a529714.md) | 90 | `result-track:8d7ee59036edf20d8a529714ce16a989ed676ff11692df6c572062f2da40c3af` |
| 13 | `theorem` | [continuous_toTopMap](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean/declarations/continuous-totopmap--2eafcd81382683382980527b.md) | 95 | `result-track:2eafcd81382683382980527b88cfcb350df137d2189cd0848831ddf5e1672c5e` |
| 14 | `def` | [toTop](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean/declarations/totop--a95c2abf04b576088150e234.md) | 102 | `declaration-track:a95c2abf04b576088150e234f859a39de0bc8b913c0228287b19c28ee1b93d2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
