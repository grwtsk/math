# Verification target: GRWTSK.Topology.GeneralTopology.ProperMap.Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28e43acb0c67a5ecf427f1a5ea49d13338f4b310",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28e43acb0c67a5ecf427f1a5ea49d13338f4b310`.

Source path: `GRWTSK/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.StoneCech` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Filter` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Cofinite` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsProperMap](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean/declarations/ispropermap--c51de7be3bc3d2edbda804e0.md) | 92 | `declaration-track:c51de7be3bc3d2edbda804e0227380d81b97b17d7a0b67ec47b1a4e152beea53` |
| 2 | `lemma` | [IsProperMap.continuous](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean/declarations/ispropermap-continuous--a4ad63816a599a6ea172ca5a.md) | 103 | `result-track:a4ad63816a599a6ea172ca5a8092c505c4e98e300a8c5a0414ff4d872fd496e4` |
| 3 | `lemma` | [Homeomorph.isProperMap](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean/declarations/homeomorph-ispropermap--523f2e2645b50cecc38a976d.md) | 106 | `result-track:523f2e2645b50cecc38a976dd58bfc7025ffdfc841b3dcd1059354e6cdac4c24` |
| 4 | `lemma` | [isProperMap_id](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean/declarations/ispropermap-id--be135dcd2b70093c530760bf.md) | 114 | `result-track:be135dcd2b70093c530760bfde24704e6b9265df83d9eab98b14b1ea2520e02e` |
| 5 | `lemma` | [IsProperMap.isClosedMap](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean/declarations/ispropermap-isclosedmap--1a952cf964b29b423e41d1e3.md) | 117 | `result-track:1a952cf964b29b423e41d1e329818f12c40b7233dea5e871441ae6c03e39a769` |
| 6 | `lemma` | [isProperMap_iff_ultrafilter](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean/declarations/ispropermap-iff-ultrafilter--a4b972c2f5250da709c73eb7.md) | 122 | `result-track:a4b972c2f5250da709c73eb77c03992544d2e10bc42b97e681c166e1e06beb4e` |
| 7 | `lemma` | [isProperMap_iff_ultrafilter_of_t2](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean/declarations/ispropermap-iff-ultrafilter-of-t2--bc9b374f37d911d0153d9ac9.md) | 137 | `result-track:bc9b374f37d911d0153d9ac9513ba6efb116aac8f9e3582a9cfe405001ba4dda` |
| 8 | `lemma` | [IsProperMap.ultrafilter_le_nhds_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean/declarations/ispropermap-ultrafilter-le-nhds-of-tendsto--aa8fc34db4141e22d0efaef0.md) | 145 | `result-track:aa8fc34db4141e22d0efaef00641278487e18946cedaf939d6a6fe4e2409022f` |
| 9 | `lemma` | [IsProperMap.prod_map](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean/declarations/ispropermap-prod-map--95b0575f573eaf6c54fbac02.md) | 150 | `result-track:95b0575f573eaf6c54fbac02ea244bc3df0c4ecb1a62f2c46ac94243cb1c684e` |
| 10 | `lemma` | [IsProperMap.pi_map](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean/declarations/ispropermap-pi-map--1a1dd2ba7096536ee6bc6850.md) | 174 | `result-track:1a1dd2ba7096536ee6bc6850d03e8c6ca7bf7683ce54dfad16b94fcab2b9d13b` |
| 11 | `lemma` | [IsProperMap.isCompact_preimage](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean/declarations/ispropermap-iscompact-preimage--94851eeb12141d48696628ff.md) | 198 | `result-track:94851eeb12141d48696628ff721eceb5669cc40f45e66c04c08d8a18dcbc865e` |
| 12 | `theorem` | [isProperMap_iff_isClosedMap_and_compact_fibers](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean/declarations/ispropermap-iff-isclosedmap-and-compact-fibers--410d80887944f41456a89703.md) | 213 | `result-track:410d80887944f41456a8970371f9ee3a1d06762c30d73069bf59431e8df4dd49` |
| 13 | `lemma` | [isProperMap_iff_isClosedMap_and_tendsto_cofinite](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean/declarations/ispropermap-iff-isclosedmap-and-tendsto-cofinite--18aeb7140e56e92156320a9a.md) | 241 | `result-track:18aeb7140e56e92156320a9aaaa2f46c1581ed57306a8a20c463465e28b7aecf` |
| 14 | `theorem` | [Continuous.isProperMap](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean/declarations/continuous-ispropermap--40958f5be058553232e210e2.md) | 252 | `result-track:40958f5be058553232e210e217f2585287b6eb621d2128fa91c550d6dbc70b68` |
| 15 | `theorem` | [isProperMap_iff_isCompact_preimage](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean/declarations/ispropermap-iff-iscompact-preimage--141f95e94a0646a398e7b501.md) | 257 | `result-track:141f95e94a0646a398e7b5010a460e0768e13606b1fce011081a99d0ab1120ac` |
| 16 | `lemma` | [isProperMap_iff_tendsto_cocompact](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean/declarations/ispropermap-iff-tendsto-cocompact--e3d32f211dc9eb945bbfab69.md) | 276 | `result-track:e3d32f211dc9eb945bbfab6949113e5e0d448712a0d23b895a5727909f1ce542` |
| 17 | `theorem` | [IsProperMap.universally_closed](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean/declarations/ispropermap-universally-closed--86061a0cc5899e20dd5fcc09.md) | 290 | `result-track:86061a0cc5899e20dd5fcc09f88116a82fb030a63707cfcf5f697b476ea85959` |
| 18 | `theorem` | [isProperMap_iff_isClosedMap_filter](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean/declarations/ispropermap-iff-isclosedmap-filter--4699a88131b01ac0367dd365.md) | 299 | `result-track:4699a88131b01ac0367dd36540c8275de36ebe8c864d65d2a164f3ad54f63991` |
| 19 | `theorem` | [isProperMap_iff_isClosedMap_ultrafilter](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean/declarations/ispropermap-iff-isclosedmap-ultrafilter--fa775341ea36a93868ccdaa7.md) | 343 | `result-track:fa775341ea36a93868ccdaa7c1218462407e0dfbebc8ffb59e6cf900c6181070` |
| 20 | `theorem` | [isProperMap_iff_universally_closed](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean/declarations/ispropermap-iff-universally-closed--15f799be481a4c8d1969c084.md) | 371 | `result-track:15f799be481a4c8d1969c0842d7e21a2a347beabf0d9a062b156c658d18d580e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
