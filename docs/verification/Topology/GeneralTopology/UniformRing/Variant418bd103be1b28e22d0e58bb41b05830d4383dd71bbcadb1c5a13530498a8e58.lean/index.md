# Verification target: GRWTSK.Topology.GeneralTopology.UniformRing.Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "680f90869d70761237bbbfb9df290d705f28eb08",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `680f90869d70761237bbbfb9df290d705f28eb08`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Equiv.TransferInstance` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.GroupCompletion` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Ideal` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [one](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/declarations/one--5b3e0789905fed812b7c6644.md) | 47 | `declaration-track:5b3e0789905fed812b7c6644f4e4464ddabbfdff073e1f54306acbef6e3e3a24` |
| 2 | `instance` | [mul](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/declarations/mul--937c71e39f22a16ca5d2f1fe.md) | 50 | `declaration-track:937c71e39f22a16ca5d2f1fe1d0b90e72aa69412e0b44fe8c6ef29b93a693cce` |
| 3 | `theorem` | [coe_one](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/declarations/coe-one--c7d1825dd9094ca6a5bb31a9.md) | 54 | `result-track:c7d1825dd9094ca6a5bb31a91c7d525c96f5da34a0f51f3bf9d178cfedc9e245` |
| 4 | `theorem` | [coe_mul](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/declarations/coe-mul--db29651cda8ccc812b5a2365.md) | 62 | `result-track:db29651cda8ccc812b5a23658f44bb2e10922a27d8401ae5a58bcd2d1aeb36aa` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/declarations/instance--c8b0ff7af3909915ce4adbf6.md) | 68 | `declaration-track:c8b0ff7af3909915ce4adbf66a9dbcbd9b9915e26e54a6828d0c6fd663582e15` |
| 6 | `theorem` | [continuous_mul](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/declarations/continuous-mul--7cb6784b706387864846b24f.md) | 76 | `result-track:7cb6784b706387864846b24f69a393daa097f05e146c7f1b8c24a3e7eaee61ca` |
| 7 | `theorem` | [Continuous.mul](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/declarations/continuous-mul--85ae368e7ecd31b0d02d4a0d.md) | 80 | `result-track:85ae368e7ecd31b0d02d4a0d06d2cc2ddbaf8a4e992864ead936becb29499792` |
| 8 | `instance` | [ring](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/declarations/ring--0e14036b8b572109deacf14a.md) | 84 | `declaration-track:0e14036b8b572109deacf14a23b8b5940d6f5beceb0713ec948fa7f566ea8724` |
| 9 | `def` | [coeRingHom](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/declarations/coeringhom--5f008b61700d776b38a1d405.md) | 132 | `declaration-track:5f008b61700d776b38a1d405cbd9639f61f894bff77f55a40e87389637da543d` |
| 10 | `theorem` | [continuous_coeRingHom](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/declarations/continuous-coeringhom--1162991e7f7000dfbfc45b28.md) | 139 | `result-track:1162991e7f7000dfbfc45b28a54342f2f90318ae69bcd5178f7b473a1c1c165b` |
| 11 | `def` | [extensionHom](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/declarations/extensionhom--4af76cae0a00cb360d992dc1.md) | 146 | `declaration-track:4af76cae0a00cb360d992dc176b02ca2e8a837e90a02b64f26aea203c4d5a254` |
| 12 | `theorem` | [extensionHom_coe](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/declarations/extensionhom-coe--1f0440f7aa73562b088a3fbd.md) | 168 | `result-track:1f0440f7aa73562b088a3fbd46c0fa7b28aac637be8fd75a659d55551300bd38` |
| 13 | `instance` | [topologicalRing](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/declarations/topologicalring--118563506abd3d5d7e6f6129.md) | 173 | `declaration-track:118563506abd3d5d7e6f61297f27920c7f32ebcb651600211459141737740749` |
| 14 | `def` | [mapRingHom](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/declarations/mapringhom--0c9661bf0cb921f4095bab5e.md) | 178 | `declaration-track:0c9661bf0cb921f4095bab5eb8181e7b56c60a883e964404bf3dfebf16f6d174` |
| 15 | `theorem` | [map_smul_eq_mul_coe](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/declarations/map-smul-eq-mul-coe--3f06e471820567ac533cf972.md) | 187 | `result-track:3f06e471820567ac533cf9726acff706ef3dbe8a180fe78a18d5995703457fae` |
| 16 | `instance` | [algebra](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/declarations/algebra--25b3ef58e609cc98c4e9a520.md) | 194 | `declaration-track:25b3ef58e609cc98c4e9a520cfc2654bdfeed4e4beded0bb39efbbaf9f877e4a` |
| 17 | `theorem` | [algebraMap_def](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/declarations/algebramap-def--7b2a665f1d38f723481d0df2.md) | 202 | `result-track:7b2a665f1d38f723481d0df2801b5225b575da0c981175bcd27f4abc36199dc0` |
| 18 | `instance` | [commRing](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/declarations/commring--10615f29c135384b4582edcf.md) | 212 | `declaration-track:10615f29c135384b4582edcfd41673c3bdbd611e1890dab3445762df205814b9` |
| 19 | `instance` | [algebra'](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/declarations/algebra--ee25a4c936214cb00eb54f40.md) | 220 | `declaration-track:ee25a4c936214cb00eb54f401ee1ce29e3bc3e556b38f1fe8f49df96af2f158a` |
| 20 | `theorem` | [inseparableSetoid_ring](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/declarations/inseparablesetoid-ring--fc05290f33ba3e69e24623e6.md) | 231 | `result-track:fc05290f33ba3e69e24623e6b67482e69c068a4ccff8261383475855abf4212c` |
| 21 | `def` | [sepQuotHomeomorphRingQuot](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/declarations/sepquothomeomorphringquot--9d52b1f1bdc32727c2ea988d.md) | 239 | `declaration-track:9d52b1f1bdc32727c2ea988d98ba81d93c4523a6d6f1898fe21b655c6c6fe95a` |
| 22 | `instance` | [commRing](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/declarations/commring--08e1d6dcebe8e51037ecc088.md) | 247 | `declaration-track:08e1d6dcebe8e51037ecc088b30671ed3fbf241124c6fb5a7f7f6cfc42b57cb0` |
| 23 | `def` | [sepQuotRingEquivRingQuot](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/declarations/sepquotringequivringquot--cc181a23c106326a749dc992.md) | 254 | `declaration-track:cc181a23c106326a749dc99272be5333df5003afc66a7e4cfe62dd00e2f3eee6` |
| 24 | `instance` | [topologicalRing](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/declarations/topologicalring--358944ba1f067dba9951aed8.md) | 258 | `declaration-track:358944ba1f067dba9951aed874a9fa0f73a2bd5c7133fd1bb14eae5fa5329b97` |
| 25 | `def` | [IsDenseInducing.extendRingHom](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variant418bd103be1b28e22d0e58bb41b05830d4383dd71bbcadb1c5a13530498a8e58.lean/declarations/isdenseinducing-extendringhom--6066c9f69edfd042652c0465.md) | 278 | `declaration-track:6066c9f69edfd042652c0465decd3acbe498f2316e5ce3af15b736ad7502d6c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
