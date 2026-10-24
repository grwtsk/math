# Verification target: GRWTSK.Topology.GeneralTopology.Sober.Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c18b9f3fcae54d01dd4e9e0faed3eb25b5c0afd",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c18b9f3fcae54d01dd4e9e0faed3eb25b5c0afd`.

Source path: `GRWTSK/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsGenericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/isgenericpoint--06cfadf6be8cc41f0669a882.md) | 42 | `declaration-track:06cfadf6be8cc41f0669a8821fa9c2ddb8929079b3603259e838c88a2d1ec55c` |
| 2 | `theorem` | [isGenericPoint_def](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/isgenericpoint-def--03a1fe84cc733cf7fc6cb905.md) | 46 | `result-track:03a1fe84cc733cf7fc6cb90518fb176d61d060d0dc81abaa3f6f09574a9e50a7` |
| 3 | `theorem` | [IsGenericPoint.def](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/isgenericpoint-def--2e97a2125ad624558500744d.md) | 50 | `result-track:2e97a2125ad624558500744d1685b58e176f75f2a5f16b41238beac35de7b88c` |
| 4 | `theorem` | [isGenericPoint_closure](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/isgenericpoint-closure--f3ac38ec0ee97e412d36d260.md) | 55 | `result-track:f3ac38ec0ee97e412d36d2608e4d17a4657c3454da91900df17ecda1ac8b10a0` |
| 5 | `theorem` | [isGenericPoint_iff_specializes](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/isgenericpoint-iff-specializes--a6b90ba9de79c6677b275a81.md) | 61 | `result-track:a6b90ba9de79c6677b275a81868e4b80609d13340cc117c9e717f795baa07425` |
| 6 | `theorem` | [specializes_iff_mem](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/specializes-iff-mem--e883908e144d1488bd1e8299.md) | 67 | `result-track:e883908e144d1488bd1e82999d66dfa5a9840bb08512fa8338960d939a7c5237` |
| 7 | `theorem` | [specializes](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/specializes--abd5a56fa5128a6d88e469e5.md) | 71 | `result-track:abd5a56fa5128a6d88e469e5e07025f8fe4b4a695d22a33978280ef56644e5d2` |
| 8 | `theorem` | [mem](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/mem--01378d5a830ff50701612da1.md) | 75 | `result-track:01378d5a830ff50701612da1f8631c5689048fea68535217327556ae38a5984f` |
| 9 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/isclosed--384079d405581fb20f286ce0.md) | 79 | `result-track:384079d405581fb20f286ce00f99ae77c03449a37d297e4a36643f90b2980b24` |
| 10 | `theorem` | [isIrreducible](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/isirreducible--5e0113ff5946a04f76add1fa.md) | 83 | `result-track:5e0113ff5946a04f76add1faa83e5dc068552b678ce1409dec47c901fd7c06ae` |
| 11 | `theorem` | [inseparable](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/inseparable--9501d6d4fbd9e8aefb516846.md) | 87 | `result-track:9501d6d4fbd9e8aefb51684696bd4b4801587c4a7e06360db19686a28647d764` |
| 12 | `theorem` | [eq](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/eq--5d0a2182a9204b06496b69fb.md) | 92 | `result-track:5d0a2182a9204b06496b69fb6a71168c7ef76662f920fe51a0aed0f1728fc650` |
| 13 | `theorem` | [mem_open_set_iff](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/mem-open-set-iff--5dd1b7aa5596fd495b97d409.md) | 96 | `result-track:5dd1b7aa5596fd495b97d409950bf8b2b0ac77edfe8f76667b5d9fbe74330b50` |
| 14 | `theorem` | [disjoint_iff](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/disjoint-iff--c7dd1c4749171352391b4d2d.md) | 100 | `result-track:c7dd1c4749171352391b4d2de31bee5b1282760d7ef2a967e9f6c93127c41660` |
| 15 | `theorem` | [mem_closed_set_iff](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/mem-closed-set-iff--11f9d25f1da624a48e5e6af6.md) | 104 | `result-track:11f9d25f1da624a48e5e6af6eed792231cf35fdfdca055c6e5e550145cd04cb4` |
| 16 | `theorem` | [image](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/image--cd08f12e22f3c19db1314930.md) | 108 | `result-track:cd08f12e22f3c19db1314930795820d16246b5d66372ee809e41efa818cb3435` |
| 17 | `theorem` | [isGenericPoint_iff_forall_closed](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/isgenericpoint-iff-forall-closed--5a885522f2a110ce3687e83d.md) | 115 | `result-track:5a885522f2a110ce3687e83dcadd75c5af4d8e370cc8df96a93ecd4bceaf66ff` |
| 18 | `class` | [QuasiSober](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/quasisober--52f9a938a22b141ad32533ac.md) | 128 | `declaration-track:52f9a938a22b141ad32533ac6a6d4710efc64f8c012ab2bbd8306a70aa28c3b6` |
| 19 | `def` | [IsIrreducible.genericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/isirreducible-genericpoint--a764e2ee0afa61b9f6164746.md) | 133 | `declaration-track:a764e2ee0afa61b9f6164746780a9370da9cd937e92337279a2792abeefd473a` |
| 20 | `theorem` | [IsIrreducible.genericPoint_spec](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/isirreducible-genericpoint-spec--b1566be5c6b15d4a5a22e939.md) | 138 | `result-track:b1566be5c6b15d4a5a22e939d9fb51737402c29b289b44391d5e3bdbee3d758a` |
| 21 | `theorem` | [IsIrreducible.genericPoint_closure_eq](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/isirreducible-genericpoint-closure-eq--fd7f0bbaed6081b3d8314b6e.md) | 144 | `result-track:fd7f0bbaed6081b3d8314b6e239f476494431e1540f26ad1b7fc4b3c7279db08` |
| 22 | `def` | [genericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/genericpoint--42a3a7eec87747645ee4b7eb.md) | 152 | `declaration-track:42a3a7eec87747645ee4b7ebc1658ba4e7369c6c4ce9dc7c7509b748677b8149` |
| 23 | `theorem` | [genericPoint_spec](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/genericpoint-spec--ea71f55a0751f2d503041adc.md) | 156 | `result-track:ea71f55a0751f2d503041adcbeac72654416cdb8409bcb76557ffde2d5dca2cb` |
| 24 | `theorem` | [genericPoint_closure](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/genericpoint-closure--b8188347d54e3caee1e07cc8.md) | 161 | `result-track:b8188347d54e3caee1e07cc8dd4b4c8792ec5bc90eff9ef596ba27c2cd2f0e41` |
| 25 | `theorem` | [genericPoint_specializes](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/genericpoint-specializes--5647e7f76da9571f397f3062.md) | 168 | `result-track:5647e7f76da9571f397f3062319848a98db0f02bb1dcabb77f46947af16d1df6` |
| 26 | `def` | [irreducibleSetEquivPoints](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/irreduciblesetequivpoints--266204d9741dce7b77a938b2.md) | 175 | `declaration-track:266204d9741dce7b77a938b24fb6e8dd55c2c72d3133fb4172f91692c84ef12a` |
| 27 | `theorem` | [ClosedEmbedding.quasiSober](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/closedembedding-quasisober--7377ee8b385e0ae88ebd6ae2.md) | 189 | `result-track:7377ee8b385e0ae88ebd6ae224ef0d3c9b5b7fad0b5f2cf105686422dd8454b2` |
| 28 | `theorem` | [OpenEmbedding.quasiSober](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/openembedding-quasisober--ed09ee21b0bca622ca3a5952.md) | 200 | `result-track:ed09ee21b0bca622ca3a595201daf8073dae82935f357f668e236aa6248c88cd` |
| 29 | `theorem` | [quasiSober_of_open_cover](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/quasisober-of-open-cover--cf0b1c22329df65116af9047.md) | 225 | `result-track:cf0b1c22329df65116af90475b04678f814195059282006b664e91173c7c3601` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/declarations/instance--ab6226c66381f91a6385877a.md) | 251 | `declaration-track:ab6226c66381f91a6385877a71cf7ebb8d1482bf405b114eb7f64fbfe1ed75db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
