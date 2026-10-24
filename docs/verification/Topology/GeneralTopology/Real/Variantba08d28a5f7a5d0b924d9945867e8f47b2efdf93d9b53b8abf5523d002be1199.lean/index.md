# Verification target: GRWTSK.Topology.GeneralTopology.Real.Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff9496f4b89d76855514bfe5199526105c6d8e76",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff9496f4b89d76855514bfe5199526105c6d8e76`.

Source path: `GRWTSK/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformGroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformMulAction` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Star` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Field` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Archimedean` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Subring.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Archimedean` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Bounds` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Periodic` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Int` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/instance--9f4f5b84d8e750e22d6b9f94.md) | 42 | `declaration-track:9f4f5b84d8e750e22d6b9f942520279bd75ce989789d420978be980f63cbd77b` |
| 2 | `theorem` | [Real.uniformContinuous_add](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/real-uniformcontinuous-add--08d1cf2f83cff5d60296531c.md) | 44 | `result-track:08d1cf2f83cff5d60296531c603fe97c25e957c1129c26e26e215772146e1d8a` |
| 3 | `theorem` | [Real.uniformContinuous_neg](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/real-uniformcontinuous-neg--3f621974d5a142dce1ca268b.md) | 52 | `result-track:3f621974d5a142dce1ca268b8e21536622f8f147a8f505e7355ed74b2ff78d19` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/instance--9446794e69ed76c436daa1f2.md) | 57 | `declaration-track:9446794e69ed76c436daa1f2811963caa745f32aac2a8c2cc368385d785920e9` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/instance--6ef682828abc4ed4018f063d.md) | 59 | `declaration-track:6ef682828abc4ed4018f063d2926f1852364d51be01bc2188ab2fb98676f8625` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/instance--5ca66ff2896c458d828f0f9e.md) | 63 | `declaration-track:5ca66ff2896c458d828f0f9e78f7de204b3aacf2f9021672332eda9e70addf84` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/instance--203af807f308b83763aef14e.md) | 64 | `declaration-track:203af807f308b83763aef14ea704e510083c9b8cf35fb9620d9f4bd0e7c12b99` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/instance--5004b6e404acfc13b7fe0ef1.md) | 65 | `declaration-track:5004b6e404acfc13b7fe0ef1ec0763615b6a9074173776880735644bb2951d93` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/instance--fad4c9368f6cf602704e9ec0.md) | 67 | `declaration-track:fad4c9368f6cf602704e9ec0c5188d3665bd39d0f8aeb36bf8a7b24f0f6d7ba4` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/instance--044adae7808ccd1747e2ef38.md) | 72 | `declaration-track:044adae7808ccd1747e2ef3878613287812a51c81fc258ae5698960228a1e636` |
| 11 | `theorem` | [Real.isTopologicalBasis_Ioo_rat](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/real-istopologicalbasis-ioo-rat--61c8e34fa0b71d32f988447f.md) | 74 | `result-track:61c8e34fa0b71d32f988447ffedb101e1833d5d40ba24416ce4c9dfd374c3827` |
| 12 | `theorem` | [Real.cocompact_eq](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/real-cocompact-eq--c47de86ca035f69d4594d310.md) | 88 | `result-track:c47de86ca035f69d4594d310d04c4ebd682abd976c176e106f9e4831cf02b97c` |
| 13 | `theorem` | [Real.mem_closure_iff](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/real-mem-closure-iff--7b3af6306934cf14e5765d28.md) | 99 | `result-track:7b3af6306934cf14e5765d289c288f6d0ac0d36a6f1d89fda4c72d14d0a31b5b` |
| 14 | `theorem` | [Real.uniformContinuous_inv](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/real-uniformcontinuous-inv--ca04263b8c3df15ef7ab6039.md) | 103 | `result-track:ca04263b8c3df15ef7ab6039c086dd8d4bd0ded1e05bbb4681d6759156a60cb2` |
| 15 | `theorem` | [Real.uniformContinuous_abs](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/real-uniformcontinuous-abs--2a8e0bbc980c9ab31ab2f7cd.md) | 110 | `result-track:2a8e0bbc980c9ab31ab2f7cdda33a34776a341ccc705226dadbbbd155848e3e6` |
| 16 | `theorem` | [Real.tendsto_inv](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/real-tendsto-inv--840b1b67c46c7a9457ebdd4f.md) | 116 | `result-track:840b1b67c46c7a9457ebdd4fb8289335c4cb42939eeb5af4ced7d440bed9ef8d` |
| 17 | `theorem` | [Real.continuous_inv](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/real-continuous-inv--5354588442391a16fd7d403b.md) | 120 | `result-track:5354588442391a16fd7d403b43253b9a14429323b782d103aa74f9481616ad63` |
| 18 | `theorem` | [Real.Continuous.inv](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/real-continuous-inv--bf0d2f26423376aff99a6d3d.md) | 125 | `result-track:bf0d2f26423376aff99a6d3d783980d503f41bff9072a25a6c793f7cfe5844d8` |
| 19 | `theorem` | [Real.uniformContinuous_const_mul](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/real-uniformcontinuous-const-mul--65d84d83ecdd79704504f838.md) | 130 | `result-track:65d84d83ecdd79704504f8388c625fbc015b412f68f3cb1c01436e72c64af5dc` |
| 20 | `theorem` | [Real.uniformContinuous_mul](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/real-uniformcontinuous-mul--edeea7b8b1b7e054bf4fc38a.md) | 134 | `result-track:edeea7b8b1b7e054bf4fc38aa24554a999f57f19bd74d38844ff9c8736fcad54` |
| 21 | `theorem` | [Real.continuous_mul](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/real-continuous-mul--da748ce6ce6c44585aa89782.md) | 145 | `result-track:da748ce6ce6c44585aa89782aba41c339979b7b75dab1f65421e138778b4f0b0` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/instance--e52bf9f55628b02c43218a0d.md) | 150 | `declaration-track:e52bf9f55628b02c43218a0d1e917edeee764a9fb37e64e1cf007892addf5701` |
| 23 | `theorem` | [Real.totallyBounded_ball](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/real-totallybounded-ball--2c90b3855909d70bd9450589.md) | 160 | `result-track:2c90b3855909d70bd945058959b7b0b35dbdb84cfc25cf8f67e8c73f319ae932` |
| 24 | `theorem` | [closure_of_rat_image_lt](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/closure-of-rat-image-lt--5833d5e34a6e8ae1e00cf144.md) | 166 | `result-track:5833d5e34a6e8ae1e00cf14495b292430025a842048b41deef0dc3f46526993f` |
| 25 | `theorem` | [Real.bounded_iff_bddBelow_bddAbove](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/real-bounded-iff-bddbelow-bddabove--810608b6e53c765a3c91829a.md) | 186 | `result-track:810608b6e53c765a3c91829afce8a4c0f2974762ccdf2dddeca67946f038dae0` |
| 26 | `theorem` | [Real.subset_Icc_sInf_sSup_of_bounded](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/real-subset-icc-sinf-ssup-of-bounded--84e35bf1f3953fdb201e50fe.md) | 197 | `result-track:84e35bf1f3953fdb201e50feb944c7a3e980817ca498d2b3ea211b1a6999fcb3` |
| 27 | `theorem` | [Periodic.compact_of_continuous](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/periodic-compact-of-continuous--4c45d8217288094ca36f2384.md) | 210 | `result-track:4c45d8217288094ca36f2384a73b94f77a20927b93775e73c96258045b4a2309` |
| 28 | `theorem` | [Periodic.compact_of_continuous'](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/periodic-compact-of-continuous--96094579af4bbd5146c0cf60.md) | 217 | `result-track:96094579af4bbd5146c0cf608a209a9923c5bac0f7ed76d7679b55775479348b` |
| 29 | `theorem` | [Periodic.bounded_of_continuous](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/periodic-bounded-of-continuous--63aa55c8f82bbd6261c65f87.md) | 223 | `result-track:63aa55c8f82bbd6261c65f87210c30ba3b172a8a3cc6d63a485da84db997ad2e` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/instance--b6314c85e6dec184098b6fb4.md) | 240 | `declaration-track:b6314c85e6dec184098b6fb4d45579661dd23a759aedfa115fe6fdf0f4f6261b` |
| 31 | `theorem` | [tendsto_coe_cofinite](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/tendsto-coe-cofinite--ae1daa0d6135a2428e243a53.md) | 251 | `result-track:ae1daa0d6135a2428e243a534d385a10dd60c98a8c62b55f69a84d77d7c5527e` |
| 32 | `theorem` | [tendsto_zmultiplesHom_cofinite](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/tendsto-zmultipleshom-cofinite--ba6087c2d1ddb4d9a94d0f69.md) | 259 | `result-track:ba6087c2d1ddb4d9a94d0f697cd77247937d7ad38d28b34cf30cd8526f7b291a` |
| 33 | `theorem` | [tendsto_zmultiples_subtype_cofinite](../../../../../mathematics/Topology/GeneralTopology/Real/Variantba08d28a5f7a5d0b924d9945867e8f47b2efdf93d9b53b8abf5523d002be1199.lean/declarations/tendsto-zmultiples-subtype-cofinite--34a8aeafa2e904c75404790e.md) | 272 | `result-track:34a8aeafa2e904c75404790efd7cf41a69dbf832013444074519e08a89135c32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
