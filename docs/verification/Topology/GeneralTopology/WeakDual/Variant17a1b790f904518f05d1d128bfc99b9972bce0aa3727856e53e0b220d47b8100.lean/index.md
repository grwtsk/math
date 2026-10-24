# Verification target: GRWTSK.Topology.GeneralTopology.WeakDual.Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a33f3abd77d951bdeefc78718f1a6af2545d4742",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a33f3abd77d951bdeefc78718f1a6af2545d4742`.

Source path: `GRWTSK/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.BilinearMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.LinearMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.WeakBilin` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [topDualPairing](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/topdualpairing--9a1c6989f1d088bd6650485a.md) | 60 | `declaration-track:9a1c6989f1d088bd6650485a7cdee0be432da9f116fd393c1c23e7a005656196` |
| 2 | `theorem` | [topDualPairing_apply](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/topdualpairing-apply--17cd56940f4557bb6812fe73.md) | 64 | `result-track:17cd56940f4557bb6812fe73d691f368377679e3dc4adfac4bf62ca00735ce77` |
| 3 | `def` | [WeakDual](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/weakdual--c3cc65ca26650793b94f7196.md) | 71 | `declaration-track:c3cc65ca26650793b94f71964c0da669dda4c42d4248a8d5fa4e438848b812c0` |
| 4 | `instance` | [instAddCommMonoid](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/instaddcommmonoid--96793fb516178d469b00334a.md) | 86 | `declaration-track:96793fb516178d469b00334a694d93022442056f619861f83839068c8a14c46a` |
| 5 | `instance` | [instModule](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/instmodule--5c8e25195b5db90232206442.md) | 89 | `declaration-track:5c8e25195b5db90232206442403277e004a8370f1a4dd971a664229598cdba29` |
| 6 | `instance` | [instTopologicalSpace](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/insttopologicalspace--304e582dcb515615115db34c.md) | 92 | `declaration-track:304e582dcb515615115db34cb7caae1da1675679ca36c9b2f36ec9eee17270b4` |
| 7 | `instance` | [instContinuousAdd](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/instcontinuousadd--39c0bdcdbe0300a3ccf243a2.md) | 95 | `declaration-track:39c0bdcdbe0300a3ccf243a294ccf8a4687fba6a454cbf57b48385a58eb96184` |
| 8 | `instance` | [instInhabited](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/instinhabited--7faee4be5d042da5fc0a97d8.md) | 98 | `declaration-track:7faee4be5d042da5fc0a97d814ddefed5d6839b6ca4791af13eef9e57ea65911` |
| 9 | `instance` | [instFunLike](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/instfunlike--cfafa72d1f634e5c0392d47b.md) | 101 | `declaration-track:cfafa72d1f634e5c0392d47b978e915544a2b8f76634700d7e5e66f6c1286fcf` |
| 10 | `instance` | [instContinuousLinearMapClass](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/instcontinuouslinearmapclass--5d16ba9a768c7bd084f3904d.md) | 104 | `declaration-track:5d16ba9a768c7bd084f3904dfe87c976e2372fc42df7dcb1132a523e51e14ae3` |
| 11 | `instance` | [instMulAction](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/instmulaction--c5efab716aa9dca5cc8c93b7.md) | 109 | `declaration-track:c5efab716aa9dca5cc8c93b71cf5a32080af0239fe1e1875d3d3ab291ad0042a` |
| 12 | `instance` | [instDistribMulAction](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/instdistribmulaction--48050bdf76f853a899245b7f.md) | 115 | `declaration-track:48050bdf76f853a899245b7faabf4c1242e462ad42f55c2c4f1b2e4d3e3d3c48` |
| 13 | `instance` | [instModule'](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/instmodule--129b98d49ae3d38d307274ae.md) | 121 | `declaration-track:129b98d49ae3d38d307274ae72a02de14cc6b85e2c972f330619885b23725c2e` |
| 14 | `instance` | [instContinuousConstSMul](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/instcontinuousconstsmul--1909a5d44abe98be26e440cb.md) | 125 | `declaration-track:1909a5d44abe98be26e440cb6533d56df640099d580e71f282639c59ea46f589` |
| 15 | `instance` | [instContinuousSMul](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/instcontinuoussmul--d36881f007a4ba5842a14b2e.md) | 132 | `declaration-track:d36881f007a4ba5842a14b2e3906643462deb76e96010a659aa6893636858e28` |
| 16 | `theorem` | [coeFn_continuous](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/coefn-continuous--206cef9b040b4a182ddfac89.md) | 137 | `result-track:206cef9b040b4a182ddfac89964f7c048d01207e64227065ae21567461c9572d` |
| 17 | `theorem` | [eval_continuous](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/eval-continuous--b15e8f4b77a84d9d63194561.md) | 140 | `result-track:b15e8f4b77a84d9d63194561ebeda4cbf52c52f0252326ebf28d975d7a2aa551` |
| 18 | `theorem` | [continuous_of_continuous_eval](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/continuous-of-continuous-eval--11ae85ed8762a749af139497.md) | 143 | `result-track:11ae85ed8762a749af139497daea9c91f35d6a20e0e2803a49a412e5155aa70d` |
| 19 | `instance` | [instT2Space](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/instt2space--9c3c9fb3abb5c8d4b9df522e.md) | 147 | `declaration-track:9c3c9fb3abb5c8d4b9df522ebeb31582909de9601ae441c4ce55a0a5d7513c85` |
| 20 | `instance` | [instAddCommGroup](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/instaddcommgroup--92a40ed9fff75af7fa46f8ab.md) | 157 | `declaration-track:92a40ed9fff75af7fa46f8abb5e87c2bfe9c9fa61e65ea36bebd14dc74354a18` |
| 21 | `instance` | [instIsTopologicalAddGroup](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/instistopologicaladdgroup--566b8219fe061724b18fa4de.md) | 160 | `declaration-track:566b8219fe061724b18fa4deab6040416c99d6f40c194483e77c943e138891ea` |
| 22 | `def` | [WeakSpace](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/weakspace--5cc0111c4db5b36ea8b628d2.md) | 169 | `declaration-track:5cc0111c4db5b36ea8b628d2c94412d4e8d4e3b25f0fac5aed0957383df37280` |
| 23 | `instance` | [instAddCommMonoid](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/instaddcommmonoid--38364f5ae675500b78aa7333.md) | 184 | `declaration-track:38364f5ae675500b78aa73337e79cfe5a182653ab909f8ba5329c9f5d8a28155` |
| 24 | `instance` | [instModule](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/instmodule--9d73514a3163595de1bd90a0.md) | 187 | `declaration-track:9d73514a3163595de1bd90a0ce079fe8666fddc005713bae93e694a86ce6d4be` |
| 25 | `instance` | [instTopologicalSpace](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/insttopologicalspace--67a8a71ee473fa5429149601.md) | 190 | `declaration-track:67a8a71ee473fa5429149601c0712df4eaea3609dfe02cdd04b1f93201ef304f` |
| 26 | `instance` | [instContinuousAdd](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/instcontinuousadd--0165f43f79aee8efa576377c.md) | 193 | `declaration-track:0165f43f79aee8efa576377c311e85b67a6881adc6eecbe019dcc3049dfdd45e` |
| 27 | `instance` | [instModule'](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/instmodule--2569edd55dde8bcb0ca38b4c.md) | 196 | `declaration-track:2569edd55dde8bcb0ca38b4cddb86a77719e08e6d78f34cb38b12f4021111451` |
| 28 | `instance` | [instIsScalarTower](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/instisscalartower--b3d0cd75d7435a9d2c6e65e0.md) | 199 | `declaration-track:b3d0cd75d7435a9d2c6e65e023a1192005b1c3a612bcd024c567dcc09c9c0998` |
| 29 | `def` | [map](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/map--c433cd6e2db5d6310aa49648.md) | 207 | `declaration-track:c433cd6e2db5d6310aa496489b7dc420a65f5145bf7c7944d12a167db360ebb3` |
| 30 | `theorem` | [map_apply](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/map-apply--c7168f41f97c241dadf5dc6f.md) | 212 | `result-track:c7168f41f97c241dadf5dc6f975010625000063c250dcf57ae384a5b41085c9d` |
| 31 | `theorem` | [coe_map](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/coe-map--cc7519553457f2f92ef2fa60.md) | 216 | `result-track:cc7519553457f2f92ef2fa60b623fac4eeb4678b3b11fc11069f46f2da995981` |
| 32 | `def` | [toWeakSpace](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/toweakspace--ccf530272dfcf6925fff4628.md) | 224 | `declaration-track:ccf530272dfcf6925fff4628d5aca64f15ae540b1e3f735f23d18acf4f5a8cfb` |
| 33 | `def` | [toWeakSpaceCLM](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/toweakspaceclm--4ee247fd99d6ed04dc6295de.md) | 229 | `declaration-track:4ee247fd99d6ed04dc6295dec537c3b86e1584144a681dab2ab15f935c21d4bd` |
| 34 | `theorem` | [toWeakSpaceCLM_eq_toWeakSpace](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/toweakspaceclm-eq-toweakspace--b7602c00fc7d65cdba5a5b31.md) | 237 | `result-track:b7602c00fc7d65cdba5a5b31c3528fb1b01fbad5bd178947e2f71bcfd66756d6` |
| 35 | `theorem` | [toWeakSpaceCLM_bijective](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/toweakspaceclm-bijective--0fd77eef4415e5b2d6792a29.md) | 240 | `result-track:0fd77eef4415e5b2d6792a29f0448c40687b87f7abb6844d4d00f8031aca6bf3` |
| 36 | `theorem` | [isOpenMap_toWeakSpace_symm](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/isopenmap-toweakspace-symm--708d90e4eea8751d4b324d64.md) | 245 | `result-track:708d90e4eea8751d4b324d64072ecc8222eebe476e360a21c64f82f85e75a0dc` |
| 37 | `theorem` | [WeakSpace.isOpen_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/weakspace-isopen-of-isopen--a1206f0bd4f06cdea974c776.md) | 250 | `result-track:a1206f0bd4f06cdea974c776d9277497630a9cfa8a27340ee7ad1aaba0b04fb4` |
| 38 | `theorem` | [tendsto_iff_forall_eval_tendsto_topDualPairing](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/tendsto-iff-forall-eval-tendsto-topdualpairing--1b011950d230adaf75023a96.md) | 254 | `result-track:1b011950d230adaf75023a9653576cd0b5489583ca676514fc0abbe7bbb21e69` |
| 39 | `instance` | [instAddCommGroup](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/instaddcommgroup--39cb9f4c30310437790299c1.md) | 269 | `declaration-track:39cb9f4c30310437790299c1300fb172f607e4afb5804bbeef065a49c95b22ba` |
| 40 | `instance` | [instIsTopologicalAddGroup](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/declarations/instistopologicaladdgroup--4d799b288d1bac2a29aaa963.md) | 272 | `declaration-track:4d799b288d1bac2a29aaa963945ce13226b2edf4d643581e57774b54e90b2d19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
