# Verification target: GRWTSK.Topology.MetricTopology.BoundedOperation.Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80c7f008e3460207e09f6b051ddb1bae27de4ffa",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80c7f008e3460207e09f6b051ddb1bae27de4ffa`.

Source path: `GRWTSK/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.ProperSpace.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.Lemmas` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [BoundedSub](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean/declarations/boundedsub--bb2ef5209b74b010098bbe39.md) | 38 | `declaration-track:bb2ef5209b74b010098bbe393bc0a6fe2b85e26f5b59ec2ee258374f1877bec3` |
| 2 | `lemma` | [isBounded_sub](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean/declarations/isbounded-sub--d83677dcd95cc2422f9a14ec.md) | 44 | `result-track:d83677dcd95cc2422f9a14eca0b2f7f83b4c1c89e5b0fc7fc18f97c8f16f0f3a` |
| 3 | `lemma` | [sub_bounded_of_bounded_of_bounded](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean/declarations/sub-bounded-of-bounded-of-bounded--455ef40400587343514c3678.md) | 48 | `result-track:455ef40400587343514c367844108feea04cd34bb9b99381df2ccd79ab66a25f` |
| 4 | `lemma` | [boundedSub_of_lipschitzWith_sub](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean/declarations/boundedsub-of-lipschitzwith-sub--65108e3e15b58bd70b73a4ad.md) | 59 | `result-track:65108e3e15b58bd70b73a4ad2296258d7974dbc3922eb2364fd9cd19010dd7e4` |
| 5 | `class` | [BoundedAdd](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean/declarations/boundedadd--099c5c23c8539d9b83b559a1.md) | 86 | `declaration-track:099c5c23c8539d9b83b559a148b39abf30af3709dcf38a5f3d9332b75965ce55` |
| 6 | `class` | [BoundedMul](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean/declarations/boundedmul--d60fc471b088de275cfb0bfa.md) | 94 | `declaration-track:d60fc471b088de275cfb0bfa77601bc2bfde13ab8beb5069f4ebb33e318c7c12` |
| 7 | `lemma` | [isBounded_mul](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean/declarations/isbounded-mul--a7b59d0c57aecaf7d422af3d.md) | 101 | `result-track:a7b59d0c57aecaf7d422af3d26cdb4239d9126fcc759a3d472fd17de12a1a0b6` |
| 8 | `lemma` | [isBounded_pow](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean/declarations/isbounded-pow--7c4174ddf5d25f3733e35b8f.md) | 106 | `result-track:7c4174ddf5d25f3733e35b8f3e38fb4e49f4ed383564e415e94ef8c4d98c5650` |
| 9 | `lemma` | [mul_bounded_of_bounded_of_bounded](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean/declarations/mul-bounded-of-bounded-of-bounded--875aa30b9d43b15ad97d5acb.md) | 126 | `result-track:875aa30b9d43b15ad97d5acb76dd34f6c0533d4a5b59492291eeb403683579c3` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean/declarations/instance--71fd22600c5fe48c990940dd.md) | 138 | `declaration-track:71fd22600c5fe48c990940ddee6ff68435d9eae35550e298bc3d32486dd24aa2` |
| 11 | `lemma` | [SeminormedAddCommGroup.lipschitzWith_sub](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean/declarations/seminormedaddcommgroup-lipschitzwith-sub--0a4841bece2a4f84e807fb80.md) | 160 | `result-track:0a4841bece2a4f84e807fb80c6461d9192c2d10e1f85dfaad4d5d319ef800adc` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean/declarations/instance--db96abcfb3d640a8694c400d.md) | 165 | `declaration-track:db96abcfb3d640a8694c400d8b7eff02dda07796d1ee97e08f4b287a2ac9d9d3` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean/declarations/instance--a8bef5d13863a67d357762ba.md) | 176 | `declaration-track:a8bef5d13863a67d357762bae32fc659908bfc40cc099075d645322c5a520538` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean/declarations/instance--6cf499f72d365df8a4807702.md) | 204 | `declaration-track:6cf499f72d365df8a4807702445cc680c744b217b728cde4ab64ba4d094ee609` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean/declarations/instance--173b8cf66feab07149d37e6b.md) | 207 | `declaration-track:173b8cf66feab07149d37e6b5114928ff3a52c16da8dacbe3eeb60c9edad394f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
