# Verification target: GRWTSK.Topology.Stability.Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45ee170f2a8448df257fd77cec84643df54ce756",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean/index.md) · [Full source](../../../../mathematics/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45ee170f2a8448df257fd77cec84643df54ce756`.

Source path: `GRWTSK/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Contracting` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Operational.DiscreteFixedPoint` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsLyapunovStable](../../../../mathematics/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean/declarations/islyapunovstable--0a438854f22ad6f894141a45.md) | 30 | `declaration-track:0a438854f22ad6f894141a452c5d5ba49621ff74c834665fe7aab969264fded9` |
| 2 | `def` | [IsLocallyAttractive](../../../../mathematics/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean/declarations/islocallyattractive--044118926fb5cac900a583f8.md) | 43 | `declaration-track:044118926fb5cac900a583f82917a03bf20209dafde6b51007d4c5d78c30284a` |
| 3 | `def` | [IsLocallyAsymptoticallyStable](../../../../mathematics/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean/declarations/islocallyasymptoticallystable--7b1ca5e8c67632f58ce43f27.md) | 56 | `declaration-track:7b1ca5e8c67632f58ce43f27b4dae3702d76c281ad22962ccf524ac2d14b8f56` |
| 4 | `def` | [IsExponentiallyStable](../../../../mathematics/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean/declarations/isexponentiallystable--bfd35842b14bde2e516c63d3.md) | 64 | `declaration-track:bfd35842b14bde2e516c63d38bd736aa80b69fd9cf74a0f067edfe8dd7afb139` |
| 5 | `def` | [fixedFamilyDistance](../../../../mathematics/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean/declarations/fixedfamilydistance--f3e29ed9214f262ef27c7488.md) | 80 | `declaration-track:f3e29ed9214f262ef27c74887f0a80920311018e335bd2d8dd5abefa729232e2` |
| 6 | `def` | [IsSetStable](../../../../mathematics/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean/declarations/issetstable--16fa492b9855f0e46ffe47be.md) | 94 | `declaration-track:16fa492b9855f0e46ffe47be687e1d3db5a90aed4a81147e96eb8073dfad5995` |
| 7 | `def` | [OperatorOrbitCompatible](../../../../mathematics/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean/declarations/operatororbitcompatible--d33ea13bfe35566dd72685d3.md) | 108 | `declaration-track:d33ea13bfe35566dd72685d3246af998c55ec6e4053adbff16ec9da4a8b73f62` |
| 8 | `def` | [orbitDistance](../../../../mathematics/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean/declarations/orbitdistance--1a70c89eb0169aaaaba033e6.md) | 120 | `declaration-track:1a70c89eb0169aaaaba033e6d9814362e564401a9f7c0c6f41131df27246a403` |
| 9 | `def` | [IsOrbitStable](../../../../mathematics/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean/declarations/isorbitstable--0dd33b499df3aba4c82d9fd7.md) | 139 | `declaration-track:0dd33b499df3aba4c82d9fd73b91883aacefc4840b6e863b811f8feb19e3247c` |
| 10 | `def` | [IsStructurallyStable](../../../../mathematics/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean/declarations/isstructurallystable--bf7dd7f725b9648b6252717d.md) | 164 | `declaration-track:bf7dd7f725b9648b6252717df0e32c909c8a9f7637feb6c6a2876f336476d02d` |
| 11 | `def` | [inputTrajectory](../../../../mathematics/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean/declarations/inputtrajectory--4d0b44ed142743f07e4c69d6.md) | 183 | `declaration-track:4d0b44ed142743f07e4c69d61b042a19c404e64f7b24b6bc0e3a8bc557d2b22a` |
| 12 | `def` | [IsInputToStateStable](../../../../mathematics/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean/declarations/isinputtostatestable--2b4cff07575d5be056ab8d4c.md) | 200 | `declaration-track:2b4cff07575d5be056ab8d4cc46ef09ebf8b971a411fea926290befc405f7511` |
| 13 | `theorem` | [isLyapunovStable_of_iterate_nonexpansive](../../../../mathematics/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean/declarations/islyapunovstable-of-iterate-nonexpansive--8a0653047f5f970688e8479c.md) | 226 | `result-track:8a0653047f5f970688e8479cf51a35fadd76a5fda44028471bdae70a053b918c` |
| 14 | `theorem` | [isLyapunovStable_of_contraction](../../../../mathematics/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean/declarations/islyapunovstable-of-contraction--808e5b737c8d9d5bdf4d4485.md) | 244 | `result-track:808e5b737c8d9d5bdf4d4485f5b7009d22b0c301896cdda6db1880f9a5e53350` |
| 15 | `theorem` | [isLocallyAttractive_of_contraction](../../../../mathematics/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean/declarations/islocallyattractive-of-contraction--5dc23fda77ab6ee7b266dc1a.md) | 266 | `result-track:5dc23fda77ab6ee7b266dc1a292341f7fa0160f2b50785627a9a649bc2585b88` |
| 16 | `theorem` | [isLocallyAsymptoticallyStable_of_contraction](../../../../mathematics/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean/declarations/islocallyasymptoticallystable-of-contraction--302d7eeb88573498860a7f42.md) | 287 | `result-track:302d7eeb88573498860a7f421b1e52b4fbcbcbe7a6027f2eebc4a48647ee8f7a` |
| 17 | `theorem` | [not_isLyapunovStable_of_escape](../../../../mathematics/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean/declarations/not-islyapunovstable-of-escape--b75c08dba0528e2bbd9bd69e.md) | 299 | `result-track:b75c08dba0528e2bbd9bd69ec9324920878c29462b1725da3962e4e019ff0020` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
