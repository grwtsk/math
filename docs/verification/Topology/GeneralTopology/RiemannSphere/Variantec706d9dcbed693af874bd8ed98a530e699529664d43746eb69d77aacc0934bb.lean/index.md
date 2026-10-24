# Verification target: GRWTSK.Topology.GeneralTopology.RiemannSphere.Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00e059276c68ef42b74f08996ee132ab545bbd77",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00e059276c68ef42b74f08996ee132ab545bbd77`.

Source path: `GRWTSK/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NormalizedXYZPoint](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/normalizedxyzpoint--d12e72af5517024c17ca5808.md) | 43 | `declaration-track:d12e72af5517024c17ca58089f7e5cc55a3849312cff0e0b2bc7ef808e4ce400` |
| 2 | `def` | [xyzChromaticityDenominator](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/xyzchromaticitydenominator--afd8b9c8b5523c5027a0c5fd.md) | 49 | `declaration-track:afd8b9c8b5523c5027a0c5fd55caaa2f32abe22e775ca2a5bfaacfc851ab598b` |
| 3 | `def` | [xChromaticity](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/xchromaticity--80cd753934f1509de568fa99.md) | 54 | `declaration-track:80cd753934f1509de568fa9929093394aeedaea566d5642af179679408f6e7be` |
| 4 | `def` | [yChromaticity](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/ychromaticity--f879d028f626d1e51550f080.md) | 59 | `declaration-track:f879d028f626d1e51550f080ac31bad527879fa147cf7670588b76c3c26afddc` |
| 5 | `def` | [zChromaticity](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/zchromaticity--4804fdebec5e722263224580.md) | 64 | `declaration-track:4804fdebec5e722263224580b913f4e6fe6ea3169793e1921499634f2d0f81ac` |
| 6 | `theorem` | [xyzChromaticity_denominator_eq_one](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/xyzchromaticity-denominator-eq-one--67840ed50cb6e1db29dd122c.md) | 68 | `result-track:67840ed50cb6e1db29dd122c8207ea4f1171a86524ee68d0cd207ed49095310b` |
| 7 | `theorem` | [xyzChromaticity_denominator_ne_zero](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/xyzchromaticity-denominator-ne-zero--529edc0b8021e6e46a2cf78a.md) | 77 | `result-track:529edc0b8021e6e46a2cf78a4f26fda445ba0c68f133f572be26bfdc727736ea` |
| 8 | `theorem` | [xyzChromaticity_sum_one](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/xyzchromaticity-sum-one--2ce590e7dd6b8cd76ff2397f.md) | 83 | `result-track:2ce590e7dd6b8cd76ff2397feb161a0c36c18f1884ac49383d522aa099a16f33` |
| 9 | `def` | [xyzChromaticityComplex](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/xyzchromaticitycomplex--27de5bc5b93a44590807d54b.md) | 92 | `declaration-track:27de5bc5b93a44590807d54b5e238bcb72fa2de386d0bb5f1a5e211cd6972167` |
| 10 | `def` | [xyzToRiemannSphere](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/xyztoriemannsphere--56abfa554f38f77f292c98ec.md) | 98 | `declaration-track:56abfa554f38f77f292c98ecb3a52e28b519eb63077e761423f9b5bb2c33bdc9` |
| 11 | `def` | [xyzToAxisSphere](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/xyztoaxissphere--7e07510672c40b0fc7bd51b2.md) | 104 | `declaration-track:7e07510672c40b0fc7bd51b268d7a5ee892253cb56a6f085beb69728637c996d` |
| 12 | `theorem` | [xyzToRiemannSphere_is_finite](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/xyztoriemannsphere-is-finite--8f4bcbead1fe4080a1644c12.md) | 108 | `result-track:8f4bcbead1fe4080a1644c12e3338ca44306c2b88a065ad27a1773832b0fcafd` |
| 13 | `theorem` | [xyzToRiemannSphere_finite_witness](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/xyztoriemannsphere-finite-witness--018cbf21c59c9fa9dce589dd.md) | 125 | `result-track:018cbf21c59c9fa9dce589dd9a6e4dfdd00898fbff6538566f345211f6f908a2` |
| 14 | `theorem` | [xyzToAxisSphere_mem_sphere](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/xyztoaxissphere-mem-sphere--2d19c451a485649027c4b715.md) | 130 | `result-track:2d19c451a485649027c4b71523e6bc44b0f53a3ddf6d9764d70a31627d91561a` |
| 15 | `theorem` | [xyzToAxisSphere_components](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/xyztoaxissphere-components--9ba704f2e8762a7c29b1bc1d.md) | 138 | `result-track:9ba704f2e8762a7c29b1bc1d29caef4ef5eec88af2cb6549272f67c11de412e5` |
| 16 | `def` | [xyzRealVector](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/xyzrealvector--ef3a5c94675702b6d84a35d2.md) | 156 | `declaration-track:ef3a5c94675702b6d84a35d231a55f31864e628f3419e0abf7a49495a4517e85` |
| 17 | `theorem` | [xyzRealVector_coordinate_sum](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/xyzrealvector-coordinate-sum--dbd5d979a3ca7abd4e23bff8.md) | 163 | `result-track:dbd5d979a3ca7abd4e23bff871ecd029ffcb41d6d97cf15800e95586af8bac6b` |
| 18 | `theorem` | [xyzRealVector_ne_zero](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/xyzrealvector-ne-zero--8344948eb3db2e574c8669be.md) | 174 | `result-track:8344948eb3db2e574c8669be6e7e927e66f07e869e09c473a288098cbd19e954` |
| 19 | `def` | [xyzToUnitSphere](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/xyztounitsphere--c27d790327c2400c69509565.md) | 187 | `declaration-track:c27d790327c2400c695095653252c910f75b1c1ee457c58476e395f205e025b4` |
| 20 | `theorem` | [xyzToUnitSphere_mem_sphere](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/xyztounitsphere-mem-sphere--42d15d0864a122f39ad0c15d.md) | 195 | `result-track:42d15d0864a122f39ad0c15dd32ae48f8a7ae693e7361e48bce28acaadc93aee` |
| 21 | `structure` | [RiemannDerivedMap](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/riemannderivedmap--006b836eab309f6381ee2ec2.md) | 205 | `declaration-track:006b836eab309f6381ee2ec237c385160ca951d1797631bebe32944fedeb3239` |
| 22 | `def` | [RiemannDerivedMap.postcomp](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/riemannderivedmap-postcomp--0d9af611fa7b4d7c8cf396e3.md) | 213 | `declaration-track:0d9af611fa7b4d7c8cf396e32b1ab84b1ac132ab0f242b38f1c533b8e6187796` |
| 23 | `def` | [RiemannDerivedMap.identity](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/riemannderivedmap-identity--89b0c9701bca6e775e72ffe1.md) | 225 | `declaration-track:89b0c9701bca6e775e72ffe1f41700e4c09c92ea2ab526b4a3a1a8eac25203dc` |
| 24 | `def` | [xyzToDerivedTopology](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/xyztoderivedtopology--ec03a94f43d6bbc5dabdd9af.md) | 233 | `declaration-track:ec03a94f43d6bbc5dabdd9af13a4601ace8f0dfbd30c75301146219a2561ab9e` |
| 25 | `theorem` | [xyzToDerivedTopology_comp](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/xyztoderivedtopology-comp--1b64ee338b68def18079797e.md) | 240 | `result-track:1b64ee338b68def18079797e18f50f8f28df7977cd8fb6cd547401fbbe3b5d77` |
| 26 | `theorem` | [xyzToDerivedTopology_identity](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/xyztoderivedtopology-identity--ef987996a561652c44f57ffa.md) | 252 | `result-track:ef987996a561652c44f57ffacfe6b8471e1269d8da156ca2253357bbc24bf176` |
| 27 | `abbrev` | [PositiveXYZRealDomain](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/positivexyzrealdomain--9820eef6c800c89d6f8923ce.md) | 262 | `declaration-track:9820eef6c800c89d6f8923cef7f9e42d1ce6112ffecdde273e70f035fdb0cb88` |
| 28 | `def` | [positiveXYZChromaticityComplex](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/positivexyzchromaticitycomplex--ad889337c780c5655a3034ed.md) | 267 | `declaration-track:ad889337c780c5655a3034ed7d3640e4c702d6e203d6ab0521e0a4a63b7c1cfa` |
| 29 | `def` | [positiveXYZToRiemannSphere](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/positivexyztoriemannsphere--7d888a8611124baca962f711.md) | 274 | `declaration-track:7d888a8611124baca962f711ac30cd4dc2b0ffe6951a9bc37452253df749b3e9` |
| 30 | `theorem` | [continuous_positiveXYZChromaticityComplex](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/continuous-positivexyzchromaticitycomplex--b68a6168dd32face9f2af1e6.md) | 278 | `result-track:b68a6168dd32face9f2af1e6f26437a68ea29f18343f88858b2c22adda5275a9` |
| 31 | `theorem` | [continuous_positiveXYZToRiemannSphere](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/continuous-positivexyztoriemannsphere--bd1e6ce986903c975a1c01c9.md) | 299 | `result-track:bd1e6ce986903c975a1c01c9957d0453c0e74ad0e2362833292d98691556aa1b` |
| 32 | `theorem` | [continuous_positiveXYZToDerivedTopology](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/continuous-positivexyztoderivedtopology--49e96a7a7cc0fea500594dde.md) | 305 | `result-track:49e96a7a7cc0fea500594dde48c9294ad7c085177ad93a8bf838453f9d88bd6f` |
| 33 | `abbrev` | [FlatColorTorus](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/flatcolortorus--873ccee6af73e29a85e350f6.md) | 315 | `declaration-track:873ccee6af73e29a85e350f612a11033685cf35d615559b2c0747ab31688fc7c` |
| 34 | `def` | [xyzToFlatColorTorus](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/declarations/xyztoflatcolortorus--4455f81040615e6b2bd1a279.md) | 319 | `declaration-track:4455f81040615e6b2bd1a279f3848eaf23395032ac9f5620628dc5c702833aa6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
