# Verification target: GRWTSK.Topology.GeneralTopology.Polar.Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f92277a627ac8c4c5649a429f0e9c1dfa9e28fb2",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f92277a627ac8c4c5649a429f0e9c1dfa9e28fb2`.

Source path: `GRWTSK/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.SesquilinearForm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.WeakBilin` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [polar](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/declarations/polar--94cbd4e4d37506506306be39.md) | 61 | `declaration-track:94cbd4e4d37506506306be390a78588a9a3e169289b718ca656de37baa8f91bd` |
| 2 | `theorem` | [polar_mem_iff](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/declarations/polar-mem-iff--d3af7870ac9e4a998fbda501.md) | 64 | `result-track:d3af7870ac9e4a998fbda5010c64531bfaad25aea746203b258b0fcc0fbe1c33` |
| 3 | `theorem` | [polar_mem](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/declarations/polar-mem--6217dc4214771dae0d6c648c.md) | 67 | `result-track:6217dc4214771dae0d6c648c0426fa36af5cc9a1c033892b9a0787636503565b` |
| 4 | `theorem` | [polar_eq_biInter_preimage](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/declarations/polar-eq-biinter-preimage--381444fa0b4e21eb4336435f.md) | 70 | `result-track:381444fa0b4e21eb4336435f219964b7427fcc95079118dd908608502ef8286b` |
| 5 | `theorem` | [polar_isClosed](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/declarations/polar-isclosed--fedf2b25717236f81e89b6c9.md) | 73 | `result-track:fedf2b25717236f81e89b6c9703d0e4ec8fc87dcdcd5738aeac38c6626d60da6` |
| 6 | `theorem` | [zero_mem_polar](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/declarations/zero-mem-polar--cfab3a8f0b85a874db91f050.md) | 79 | `result-track:cfab3a8f0b85a874db91f05032396a9ab97eac8fd8f044d1ea32569dc027d05a` |
| 7 | `theorem` | [polar_nonempty](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/declarations/polar-nonempty--130885c9c863e248d2d5a320.md) | 82 | `result-track:130885c9c863e248d2d5a320705af9ea8c511eb9f69c9bbc3231a18d89775a13` |
| 8 | `theorem` | [polar_eq_iInter](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/declarations/polar-eq-iinter--095d14df1ec2cc94213439ad.md) | 86 | `result-track:095d14df1ec2cc94213439adadb4729a9dfc4a2b7f2be90eb17df3f9325edf4d` |
| 9 | `theorem` | [polar_gc](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/declarations/polar-gc--f9a3a92156f6ade0b97fc214.md) | 93 | `result-track:f9a3a92156f6ade0b97fc2148ff36aa67c182fff85024f34f995a59465ea4700` |
| 10 | `theorem` | [polar_iUnion](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/declarations/polar-iunion--cbafd860afa93184998aa489.md) | 98 | `result-track:cbafd860afa93184998aa4894f91fee246ebe8b092b8798e9677ca9061f1acf6` |
| 11 | `theorem` | [polar_union](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/declarations/polar-union--23849e08d389f1f9878c1400.md) | 102 | `result-track:23849e08d389f1f9878c1400904434371a84d2e0d9691a296b6087440daba2e2` |
| 12 | `theorem` | [polar_antitone](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/declarations/polar-antitone--3c79cccc7c2d1bc7cb684d33.md) | 105 | `result-track:3c79cccc7c2d1bc7cb684d335b1c18491397a2f141f26f052f31286d63526f7f` |
| 13 | `theorem` | [polar_empty](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/declarations/polar-empty--d1a7e5c3f58d70776161a3a3.md) | 109 | `result-track:d1a7e5c3f58d70776161a3a37983f0863f6a21b012bbd03fa7bf44f63b69d133` |
| 14 | `theorem` | [polar_singleton](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/declarations/polar-singleton--d62f2b81e0f41aa8495350c6.md) | 113 | `result-track:d62f2b81e0f41aa8495350c694c848326626ab558dd17cf72ee385a818b600e5` |
| 15 | `theorem` | [mem_polar_singleton](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/declarations/mem-polar-singleton--787736741de7efe4ca66224f.md) | 117 | `result-track:787736741de7efe4ca66224fd1a36c0bfd896705e2296becd743bfa931c0c452` |
| 16 | `theorem` | [polar_zero](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/declarations/polar-zero--2882a723cb7d9df1259b84b7.md) | 120 | `result-track:2882a723cb7d9df1259b84b764b496c5f2ff3f4aeee059f257c8d66bf7d71950` |
| 17 | `theorem` | [subset_bipolar](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/declarations/subset-bipolar--a0fbdfd04fdb6f2b685ac75f.md) | 123 | `result-track:a0fbdfd04fdb6f2b685ac75fa46aaa23bb92fd89d9632825380297bcf8537bc0` |
| 18 | `theorem` | [tripolar_eq_polar](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/declarations/tripolar-eq-polar--665267c86f74893e0eacab8e.md) | 128 | `result-track:665267c86f74893e0eacab8ecf33aeed0b0452e11cc9b0c8c3949d5d1354fc5c` |
| 19 | `theorem` | [polar_weak_closed](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/declarations/polar-weak-closed--bc9dcf444d6bf9fea51ce87c.md) | 132 | `result-track:bc9dcf444d6bf9fea51ce87cb34069c0ae66e14b86473a8594f9187ae8c93c27` |
| 20 | `theorem` | [sInter_polar_finite_subset_eq_polar](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/declarations/sinter-polar-finite-subset-eq-polar--2f46802a531c103644c6a223.md) | 138 | `result-track:2f46802a531c103644c6a2230e8020c8819261e6cd1aeb1f571e6f765b9188d9` |
| 21 | `theorem` | [polar_univ](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/declarations/polar-univ--d3c6e79eac8a037f2871ae90.md) | 155 | `result-track:d3c6e79eac8a037f2871ae903836678292b5d4867dabdc47826cab71b83e2f30` |
| 22 | `theorem` | [polar_subMulAction](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/declarations/polar-submulaction--a928c42f6098cf1472ee173e.md) | 167 | `result-track:a928c42f6098cf1472ee173ed450f44b117c9438888e46ec530b01c1c9e28945` |
| 23 | `def` | [polarSubmodule](../../../../../mathematics/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/declarations/polarsubmodule--083c4011632c04e3660a0760.md) | 180 | `declaration-track:083c4011632c04e3660a07604f09a8d95f72cb6ae42976ee88ed3f4622b91c3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
