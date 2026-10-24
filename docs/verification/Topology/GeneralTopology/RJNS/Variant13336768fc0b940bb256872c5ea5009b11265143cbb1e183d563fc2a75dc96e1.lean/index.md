# Verification target: GRWTSK.Topology.GeneralTopology.RJNS.Variant13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f6855681dc4b39bbecb2e52574a5d7072a125de",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RJNS/Variant13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f6855681dc4b39bbecb2e52574a5d7072a125de`.

Source path: `GRWTSK/Topology/GeneralTopology/RJNS/Variant13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RJNS/Variant13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CordTheory.Records` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pullback](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1.lean/declarations/pullback--0f0f903a015a171c6781f665.md) | 19 | `declaration-track:0f0f903a015a171c6781f665139b0875e0b56438e5343359117500a1a932425d` |
| 2 | `def` | [PreservesModelLocus](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1.lean/declarations/preservesmodellocus--ca2a39f3d7a7303da8fa741b.md) | 23 | `declaration-track:ca2a39f3d7a7303da8fa741b4e6f98422a01b6218abf1666ff45c70108b7c7e2` |
| 3 | `def` | [PullbackStable](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1.lean/declarations/pullbackstable--47bd347fa03bb20253ea16b2.md) | 28 | `declaration-track:47bd347fa03bb20253ea16b2c815f3a4b7d9ac10195a3aca200df1fb005e1c40` |
| 4 | `theorem` | [reflective_preservation_iff](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1.lean/declarations/reflective-preservation-iff--32731c0dc87c80566e142b29.md) | 33 | `result-track:32731c0dc87c80566e142b29f66b11c9fe692f36fc52aa3fc476c3447bf3c46c` |
| 5 | `def` | [classicalOperationalTopology](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1.lean/declarations/classicaloperationaltopology--03054c6ca5f7eda198882e26.md) | 52 | `declaration-track:03054c6ca5f7eda198882e26ff9a3ba05e1400b91e575ca2ddcc80c510d44858` |
| 6 | `theorem` | [closure_is_reachability](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1.lean/declarations/closure-is-reachability--188dd7c6e41b4c524fec3e6f.md) | 55 | `result-track:188dd7c6e41b4c524fec3e6fb3786be0ee05695fd8d99d09f5549681bc8a785f` |
| 7 | `theorem` | [boundary_formula](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1.lean/declarations/boundary-formula--eb9099b3b2c75d61db143d01.md) | 60 | `result-track:eb9099b3b2c75d61db143d017c22b0c9d7bdd60553c46b4d0ea280a31a072f13` |
| 8 | `theorem` | [finite_operational_space_compact](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1.lean/declarations/finite-operational-space-compact--7dff7b916951cc93e040515b.md) | 64 | `result-track:7dff7b916951cc93e040515b734f8d304a416fd0515856500cfdc43410571ed6` |
| 9 | `theorem` | [operational_alexandrov](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1.lean/declarations/operational-alexandrov--39326f010e82358eb0af18c1.md) | 70 | `result-track:39326f010e82358eb0af18c1716ade903056fcac5d7cb4c46244e8f8fe386cc4` |
| 10 | `theorem` | [topological_theorem_readiness](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1.lean/declarations/topological-theorem-readiness--1516f6b73f2948bc0a3e6bcb.md) | 78 | `result-track:1516f6b73f2948bc0a3e6bcb60a2660a105b790e4511d018cffae732ed60e223` |
| 11 | `structure` | [RJNS3TheoremBundle](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1.lean/declarations/rjns3theorembundle--e41a395a68a90983835193f8.md) | 85 | `declaration-track:e41a395a68a90983835193f846163b515243fa176618a1c026db6e255575ac40` |
| 12 | `def` | [rjns3Bundle](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1.lean/declarations/rjns3bundle--20c975975346fee958da2f05.md) | 101 | `declaration-track:20c975975346fee958da2f051c7c14af9b04801acffe76552f3a267c9eb6a0d5` |
| 13 | `theorem` | [rjns3_normative_le_extensional](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1.lean/declarations/rjns3-normative-le-extensional--f0c04ab35daf3d80a76611f0.md) | 113 | `result-track:f0c04ab35daf3d80a76611f0c645b845405d2d3e0a3702c14fa69e8c416091be` |
| 14 | `theorem` | [rjns3_normative_le_evidence](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1.lean/declarations/rjns3-normative-le-evidence--83b87e6c58f34ed22f00a293.md) | 119 | `result-track:83b87e6c58f34ed22f00a293b41042022c0920759d50cee7d185fee53529526c` |
| 15 | `theorem` | [rjns3_positive_tension_iff_overprecision](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1.lean/declarations/rjns3-positive-tension-iff-overprecision--4d4509bd0eabc1949726eda0.md) | 125 | `result-track:4d4509bd0eabc1949726eda01a4aecf4487b4c0609db906faa3fbfcc6cfea92d` |
| 16 | `theorem` | [rjns3_change_classification](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1.lean/declarations/rjns3-change-classification--411667393ee734052e6560c0.md) | 132 | `result-track:411667393ee734052e6560c013ec9335296034eef5b499096e7993c0124f3125` |
| 17 | `structure` | [ReflectiveJacobsonNullstellensatzCertificate](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1.lean/declarations/reflectivejacobsonnullstellensatzcertificate--e833f6750f0cedf0a689da8d.md) | 140 | `declaration-track:e833f6750f0cedf0a689da8dd1dc4fd9e8e887d05016eaa771f6dbe7d3169f00` |
| 18 | `theorem` | [rjns3Certificate](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant13336768fc0b940bb256872c5ea5009b11265143cbb1e183d563fc2a75dc96e1.lean/declarations/rjns3certificate--715c2eb9dd7c85dd29e31e9a.md) | 178 | `result-track:715c2eb9dd7c85dd29e31e9ad86873536f3b34e27f06e30227347cc00e1d0cb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
