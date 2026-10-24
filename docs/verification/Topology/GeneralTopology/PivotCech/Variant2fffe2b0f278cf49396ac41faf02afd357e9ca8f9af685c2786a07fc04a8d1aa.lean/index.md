# Verification target: GRWTSK.Topology.GeneralTopology.PivotCech.Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb59a47773381d8349d660e1fea435dafb6c636f",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb59a47773381d8349d660e1fea435dafb6c636f`.

Source path: `GRWTSK/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotTransitions` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Matrix` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Field` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Real.Lemmas` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Constructions` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuous_columnSubmatrix](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/continuous-columnsubmatrix--577a7bbf6f853f66f326f6cb.md) | 31 | `result-track:577a7bbf6f853f66f326f6cbf23514d61cf04a8199089a1cff6b16ccf2f7a511` |
| 2 | `theorem` | [continuous_columnMinor](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/continuous-columnminor--a2f18244fc21001dbce9e0d3.md) | 38 | `result-track:a2f18244fc21001dbce9e0d3747af9f3d55e5315f13d8058340f2c3d10b195ed` |
| 3 | `def` | [framePivotDomain](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/framepivotdomain--39f8e35684d2c6200c0afd4f.md) | 43 | `declaration-track:39f8e35684d2c6200c0afd4f772ec6bc70ed1ae566432a11d2ebf86cfcbfc0a2` |
| 4 | `theorem` | [isOpen_framePivotDomain](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/isopen-framepivotdomain--447a9070a208341c67a9ef6d.md) | 47 | `result-track:447a9070a208341c67a9ef6df2ef1b939b0692f5b4a2b24af285928941653e72` |
| 5 | `theorem` | [continuousAt_pivotNormalize](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/continuousat-pivotnormalize--0b055b9df57d3f2554a7e8c5.md) | 51 | `result-track:0b055b9df57d3f2554a7e8c5c4e1ee1f6a086b76afae015cc2ccca6bcfc93199` |
| 6 | `theorem` | [continuousAt_pivotTransition](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/continuousat-pivottransition--cb384a19d7b2ad3398f4e7b8.md) | 68 | `result-track:cb384a19d7b2ad3398f4e7b867940f515e3fa777ed9d392896fcab5ec0565bca` |
| 7 | `abbrev` | [NormalizedPivotFrame](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/normalizedpivotframe--1b5a6126773bdfaf7ec9e8da.md) | 79 | `declaration-track:1b5a6126773bdfaf7ec9e8da50ebabe59c7b28283c08bcac75d84868a10a7ec6` |
| 8 | `theorem` | [normalizedPivotFrame_rank](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/normalizedpivotframe-rank--a2728689568b43e7a3f1b1db.md) | 83 | `result-track:a2728689568b43e7a3f1b1db3815f2124a72f94cf0df53b6ce8fa1fc24a1fc5b` |
| 9 | `def` | [normalizedPivotPlane](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/normalizedpivotplane--2eb7fbccd25240a8a3fd4902.md) | 90 | `declaration-track:2eb7fbccd25240a8a3fd49026ea7c20c810b6e52f710d060abd9b5c9862af730` |
| 10 | `def` | [intrinsicAtlasMap](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/intrinsicatlasmap--d995ad36ce46015b2fbf1863.md) | 95 | `declaration-track:d995ad36ce46015b2fbf1863b22b5f4fc37f3029f5a9cc9083d38a06d4283242` |
| 11 | `instance` | [intrinsicAtlasTopology](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/intrinsicatlastopology--3ce11c4283d05e9ed27021d5.md) | 99 | `declaration-track:3ce11c4283d05e9ed27021d5ad9ce03abca399ea9d15ab4504ff23e57f2e15b7` |
| 12 | `theorem` | [continuous_normalizedPivotPlane](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/continuous-normalizedpivotplane--8a2aa2d2fb846bade0b1eb9d.md) | 103 | `result-track:8a2aa2d2fb846bade0b1eb9d8bf73fbd7511b166b237da6bcd3a81c0ff535221` |
| 13 | `def` | [intrinsicPivotDomain](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/intrinsicpivotdomain--4b565adf982d55237ae30d31.md) | 112 | `declaration-track:4b565adf982d55237ae30d31d31c0d952c32d5e59f94b049ec3aa905990d3df2` |
| 14 | `theorem` | [representedPlane_mem_intrinsicPivotDomain_iff](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/representedplane-mem-intrinsicpivotdomain-iff--e3bf812e60697ec65edd2ecc.md) | 116 | `result-track:e3bf812e60697ec65edd2ecc76ef64210c0e73f611d7f1d6c4f760fd08144ae2` |
| 15 | `theorem` | [isOpen_intrinsicPivotDomain](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/isopen-intrinsicpivotdomain--d5dfd0c06adda66b08328587.md) | 136 | `result-track:d5dfd0c06adda66b08328587b850a40928e9b9033cfac088b3416b40e7c5dc4b` |
| 16 | `theorem` | [intrinsicPivotDomain_cover](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/intrinsicpivotdomain-cover--4bda4a0db21756b65e9f861d.md) | 149 | `result-track:4bda4a0db21756b65e9f861d7fbf93b4e8f7903fa96969e71364c0a292110427` |
| 17 | `theorem` | [intrinsicAtlasMap_surjective](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/intrinsicatlasmap-surjective--80a89f48d295b6377ab7a4d7.md) | 158 | `result-track:80a89f48d295b6377ab7a4d7fcae8e7996bdf190c940afda1b90253a74227693` |
| 18 | `abbrev` | [NormalizedPivotOverlap](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/normalizedpivotoverlap--e7a540884fc048faba366708.md) | 165 | `declaration-track:e7a540884fc048faba366708b9089fbbfecd368d9ccc5a2d3b5447b22c510396` |
| 19 | `def` | [normalizedOverlapChange](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/normalizedoverlapchange--0652d20e8d03cf700e59392d.md) | 169 | `declaration-track:0652d20e8d03cf700e59392d17366139708d94abc4d66a8063c1f2341db2a0c4` |
| 20 | `theorem` | [normalizedOverlapChange_inverse](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/normalizedoverlapchange-inverse--0ff9b57a0fcccba4a0e3e304.md) | 177 | `result-track:0ff9b57a0fcccba4a0e3e304bc5ecaa4c65e9f738145412d1db17d63810b0443` |
| 21 | `theorem` | [continuous_normalizedOverlapChange](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/continuous-normalizedoverlapchange--0b85ab59cfa7de7405e8c762.md) | 190 | `result-track:0b85ab59cfa7de7405e8c7623d095ed7b4e20f60eb18bb7f03f3226ef04a2703` |
| 22 | `def` | [normalizedOverlapHomeomorph](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/normalizedoverlaphomeomorph--7b2844a12ff76393398e0574.md) | 202 | `declaration-track:7b2844a12ff76393398e05745cc42b9d5aa0eca32c8df24c823d4e645851b480` |
| 23 | `abbrev` | [OpenCoverCech](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/opencovercech--6695cbfaa34f0fb4e61aa465.md) | 216 | `declaration-track:6695cbfaa34f0fb4e61aa46565dabeaa8051190e8b0236ced6ead1e3f193c9bf` |
| 24 | `instance` | [openCoverCechTopology](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/opencovercechtopology--9cbd59b6138f9a39a823b7f8.md) | 220 | `declaration-track:9cbd59b6138f9a39a823b7f8ce170c13fe9950a4766c6b1ebbee5bbd2cec116f` |
| 25 | `def` | [cechReindex](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/cechreindex--6d35306afe251bf3600d7e6a.md) | 225 | `declaration-track:6d35306afe251bf3600d7e6a2ee67103ce2c214831b5986dc75c12d559a7eeed` |
| 26 | `theorem` | [cechReindex_id](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/cechreindex-id--926eb130b627d7808af7eb73.md) | 231 | `result-track:926eb130b627d7808af7eb73974c549fd7ca058db3a518e58c27a9070f73a814` |
| 27 | `theorem` | [cechReindex_comp](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/cechreindex-comp--54ce6fff083337cc5d023a1f.md) | 238 | `result-track:54ce6fff083337cc5d023a1f5f68ae4cd9d9ebbca97849e447df8558f6e1d9bf` |
| 28 | `theorem` | [continuous_cechReindex](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/continuous-cechreindex--9aa3bd9863cc9a418be60a66.md) | 244 | `result-track:9aa3bd9863cc9a418be60a66d5a2eb9ff57a1025e92470a1ee4e7815e8d9b591` |
| 29 | `def` | [cechAugment](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/cechaugment--401e1c97b985a3291c0a0da8.md) | 257 | `declaration-track:401e1c97b985a3291c0a0da830fe38b3073d7c872ba5c2be2206f4190a220565` |
| 30 | `theorem` | [continuous_cechAugment](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/continuous-cechaugment--6c049e99fecc6d792e0317ee.md) | 260 | `result-track:6c049e99fecc6d792e0317ee686b912c350f70e802bae34f9d43b0aa82f2ea0b` |
| 31 | `theorem` | [cechAugment_surjective](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/cechaugment-surjective--30729ab41933e4074046575f.md) | 266 | `result-track:30729ab41933e4074046575f35ea9da8ba088c2876fac0371f2df0f6e00d834c` |
| 32 | `def` | [cechOverlapFiberEquiv](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/cechoverlapfiberequiv--4ace281df7a2aa986d9b9502.md) | 273 | `declaration-track:4ace281df7a2aa986d9b950232ac966692bca9a2d8cda3adb0a976a5b9fd9573` |
| 33 | `abbrev` | [IntrinsicPivotCech](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/intrinsicpivotcech--378cea35b9ed8b0e7e0da03e.md) | 283 | `declaration-track:378cea35b9ed8b0e7e0da03e692e32c3cd611b2ca786e2e8da5e5d7c0a2840ef` |
| 34 | `theorem` | [intrinsicPivotCech_augmentation_surjective](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/declarations/intrinsicpivotcech-augmentation-surjective--5d5766472da46058f0591313.md) | 287 | `result-track:5d5766472da46058f059131300bcbba6c9fe930d2e51f6d204766873bf1582c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
