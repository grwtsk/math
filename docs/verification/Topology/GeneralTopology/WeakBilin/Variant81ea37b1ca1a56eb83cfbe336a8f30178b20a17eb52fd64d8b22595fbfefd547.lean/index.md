# Verification target: GRWTSK.Topology.GeneralTopology.WeakBilin.Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3828a2b288a0e43b9dca6f8ed122a5f4a7f17824",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3828a2b288a0e43b9dca6f8ed122a5f4a7f17824`.

Source path: `GRWTSK/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.LinearMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearMap` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [WeakBilin](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean/declarations/weakbilin--a92e513889837af5eeac5b65.md) | 72 | `declaration-track:a92e513889837af5eeac5b65b1adaa3afc6da9480c0f21986f2ebfb28b6d90dc` |
| 2 | `instance` | [instAddCommMonoid](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean/declarations/instaddcommmonoid--1535a360443c6c70b0d8e285.md) | 80 | `declaration-track:1535a360443c6c70b0d8e285e0ed9aa32ebfd4b73c152a128c0fef24cd780220` |
| 3 | `instance` | [instModule](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean/declarations/instmodule--f53af7b3108689a8ce3ac9ae.md) | 83 | `declaration-track:f53af7b3108689a8ce3ac9ae8d1f9fe144c90aa50f819e64111779db18e9b2f2` |
| 4 | `instance` | [instAddCommGroup](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean/declarations/instaddcommgroup--abfeef6c92c5327b3f5b86ff.md) | 86 | `declaration-track:abfeef6c92c5327b3f5b86ff44c7dcc9d58f68477fd3c01f10f1246fd77cadcd` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean/declarations/instance--b367d15c3afe20e991397ffa.md) | 89 | `declaration-track:b367d15c3afe20e991397ffa5fee54e4d4095983ebfcbbccf6bcb4e4937298c7` |
| 6 | `instance` | [instIsScalarTower](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean/declarations/instisscalartower--4da6f88e47d82ee0a385f185.md) | 93 | `declaration-track:4da6f88e47d82ee0a385f185fa31f6e570b10eaee156171c0b51472a6011b26f` |
| 7 | `instance` | [instTopologicalSpace](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean/declarations/insttopologicalspace--65a246b45a0e6b1d25fadf11.md) | 104 | `declaration-track:65a246b45a0e6b1d25fadf1156431bf12f40d824b1f864d3e127084e2060a7f4` |
| 8 | `theorem` | [coeFn_continuous](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean/declarations/coefn-continuous--ab4937adad646b990221163d.md) | 108 | `result-track:ab4937adad646b990221163d603436d9e171a2dd242f6e096ebe0b68de38d036` |
| 9 | `theorem` | [eval_continuous](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean/declarations/eval-continuous--a222e4bc7478ef0e4306fa81.md) | 112 | `result-track:a222e4bc7478ef0e4306fa81a323bfe60b94caacd79c66338899e4820f2e982a` |
| 10 | `theorem` | [continuous_of_continuous_eval](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean/declarations/continuous-of-continuous-eval--b5e583c28762edc50a9df850.md) | 115 | `result-track:b5e583c28762edc50a9df8504a99f22c37938cd00c88d72804c4ac2fe98b2365` |
| 11 | `theorem` | [isEmbedding](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean/declarations/isembedding--7c24fb7b5d2c4ba30cc7d3f9.md) | 120 | `result-track:7c24fb7b5d2c4ba30cc7d3f97c4cda20c67451c28e16087bbe613ebcfa82bc47` |
| 12 | `theorem` | [tendsto_iff_forall_eval_tendsto](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean/declarations/tendsto-iff-forall-eval-tendsto--a866d5f1a5f6ed46cbe53cd2.md) | 127 | `result-track:a866d5f1a5f6ed46cbe53cd2b8cdf06fe522279c66e13e205587ffa29056fa41` |
| 13 | `instance` | [instContinuousAdd](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean/declarations/instcontinuousadd--e4efe8ae807f3de214ffa077.md) | 134 | `declaration-track:e4efe8ae807f3de214ffa0770963ca6cbac7c2bf7a87ae044714d6e628a35a8b` |
| 14 | `instance` | [instContinuousSMul](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean/declarations/instcontinuoussmul--5ee62cc752d1091ddbb197a2.md) | 143 | `declaration-track:5ee62cc752d1091ddbb197a22db37fdbb71064916e256ce0d6864bd3fd1a19d0` |
| 15 | `def` | [eval](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean/declarations/eval--6dd574af922d1505cbdb5ab0.md) | 153 | `declaration-track:6dd574af922d1505cbdb5ab0d28fcaa2842a345f3d8dc4b8b2a747ab8e4994f9` |
| 16 | `instance` | [instIsTopologicalAddGroup](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean/declarations/instistopologicaladdgroup--e634f409589cb5e69757bc71.md) | 172 | `declaration-track:e634f409589cb5e69757bc7141348fd123289a01fd0f4b31ed4523b0db40b3f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
