# Verification target: GRWTSK.Topology.GeneralTopology.RiemannSphere.Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a47523e0032386cf7bed56c38b10139ec9bd9b7",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a47523e0032386cf7bed56c38b10139ec9bd9b7`.

Source path: `GRWTSK/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Ambient](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/ambient--ccdc4044baa5eff055b03b45.md) | 79 | `declaration-track:ccdc4044baa5eff055b03b4592af0f4f9e659cd684fbfbba8edba762b90062f8` |
| 2 | `abbrev` | [AxisSphere](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/axissphere--6cbc7d5267eec39bccd3ba3b.md) | 82 | `declaration-track:6cbc7d5267eec39bccd3ba3b1ed1d2c9294060c51fb1f88f0e6c0c0e0a074b7b` |
| 3 | `abbrev` | [RiemannSphere](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/riemannsphere--cf165c1bb8fb15402b00047c.md) | 85 | `declaration-track:cf165c1bb8fb15402b00047c5da7df516bbe752ffe0164631b188e9e76bd5f52` |
| 4 | `def` | [infinity](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/infinity--7c27f243e49ee34319261dd6.md) | 88 | `declaration-track:7c27f243e49ee34319261dd6493c810eed5c71f6b325bcc67c176ed779ae6a6a` |
| 5 | `theorem` | [isOpen_iff_alexandroff](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/isopen-iff-alexandroff--a5eb9cc80bfc9a87e18487fa.md) | 97 | `result-track:a5eb9cc80bfc9a87e18487faac67443d79cbc92058e1acc4085235d1fb3c92c7` |
| 6 | `theorem` | [nhds_infinity_eq](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/nhds-infinity-eq--ca772c4d2a2d0d0f2ef5b387.md) | 108 | `result-track:ca772c4d2a2d0d0f2ef5b387b0d83fc3a6c689aadaa7319c88c8892ccf8e16fd` |
| 7 | `theorem` | [hasBasis_nhds_infinity](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/hasbasis-nhds-infinity--d873cc1776e4c76a5a4912fd.md) | 119 | `result-track:d873cc1776e4c76a5a4912fdededc17292e8c64fc8ea2ba50d2b514623a36854` |
| 8 | `theorem` | [finiteChart_isOpenEmbedding](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/finitechart-isopenembedding--21abe46552ddcbbdfde58032.md) | 127 | `result-track:21abe46552ddcbbdfde5803298183e58f0a11a47bf3236fe7571b5954c85f3a6` |
| 9 | `theorem` | [finiteChart_denseRange](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/finitechart-denserange--a803136c5dac585d05de8c10.md) | 134 | `result-track:a803136c5dac585d05de8c1068496c3d324eda314c015709c704cebeb5174cd2` |
| 10 | `theorem` | [finiteChart_isDenseEmbedding](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/finitechart-isdenseembedding--ae2be5efbdce6a02c2f11778.md) | 140 | `result-track:ae2be5efbdce6a02c2f117782b85dd0c2e3ac8f12583150ec08dd2b5b2237939` |
| 11 | `theorem` | [continuous_onePointMap_iff_isProperMap](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/continuous-onepointmap-iff-ispropermap--5f76ec33c965286ba96edf6d.md) | 156 | `result-track:5f76ec33c965286ba96edf6df54bb1b29439fbc6e9715e8c785556fb60d69224` |
| 12 | `def` | [north](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/north--9b1ab21f1a1102ce3a625d16.md) | 164 | `declaration-track:9b1ab21f1a1102ce3a625d160f1c1cf0223e2d6b48e3a73447f4e9e7fe3a8688` |
| 13 | `theorem` | [norm_north](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/norm-north--deb48cdbd698ee97ed19d6ae.md) | 167 | `result-track:deb48cdbd698ee97ed19d6ae2a08fb6740c6e5642087523890ce7338fc56134e` |
| 14 | `def` | [south](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/south--53deba4abc1326b71dc74746.md) | 171 | `declaration-track:53deba4abc1326b71dc74746248e1e6e8a9e02e02f1b3a6ab3d0d9ddce347824` |
| 15 | `theorem` | [norm_south](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/norm-south--17b3d2f18ea2dd7920a3370f.md) | 174 | `result-track:17b3d2f18ea2dd7920a3370fe7d65da81a6c6df6f153b56c85d53e83fc95e3d0` |
| 16 | `abbrev` | [EquatorPlane](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/equatorplane--f5be3fe8206d7c8e97292747.md) | 178 | `declaration-track:f5be3fe8206d7c8e97292747716d9f80244409d09ed762299c4f9a293438524c` |
| 17 | `def` | [planePoint](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/planepoint--9b6433875427f8659ec51b4b.md) | 182 | `declaration-track:9b6433875427f8659ec51b4b1447ea9f6f6193cfbc0399523ac6e4c41c6f939b` |
| 18 | `def` | [tangentPlanePoint](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/tangentplanepoint--1134460ed297840a5c8e3e16.md) | 190 | `declaration-track:1134460ed297840a5c8e3e166fd6d564e61d16103336d1351dd1188f8a79c6c7` |
| 19 | `theorem` | [tangentPlanePoint_zero](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/tangentplanepoint-zero--cc6d5c679c748a1736e8587d.md) | 195 | `result-track:cc6d5c679c748a1736e8587d1d66366a6262e1eb0fae824801b1e1b50c377b77` |
| 20 | `theorem` | [tangentPlanePoint_components](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/tangentplanepoint-components--1975d2b0a8a3a3bd8645e2d2.md) | 202 | `result-track:1975d2b0a8a3a3bd8645e2d2faadd7f32ce0b0628081bade0efb401f51c18830` |
| 21 | `theorem` | [tangentPlanePoint_inner_north](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/tangentplanepoint-inner-north--b54f87e6379345fa5b153a94.md) | 211 | `result-track:b54f87e6379345fa5b153a949a3d9884775ba2519cdd0a9be8b349b66e006e5a` |
| 22 | `theorem` | [equator_second_eq_zero](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/equator-second-eq-zero--b18b680a7071e94f77d72b41.md) | 218 | `result-track:b18b680a7071e94f77d72b41e3b224edad74f1c4042480a55f05011bfe6693da` |
| 23 | `def` | [complexEquatorLinearEquiv](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/complexequatorlinearequiv--1270a0fd1e98c4e032789f8e.md) | 223 | `declaration-track:1270a0fd1e98c4e032789f8ec47822d5060b58e6450276ea37d34e172d1d792d` |
| 24 | `def` | [complexEquatorHomeomorph](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/complexequatorhomeomorph--2d8ff4ecff20860c500ae325.md) | 253 | `declaration-track:2d8ff4ecff20860c500ae32516909e933083a174b922420cae6ce3f286d6ec5a` |
| 25 | `def` | [riemannSphereHomeomorph](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/riemannspherehomeomorph--aeea49b4f3122567c726eb80.md) | 258 | `declaration-track:aeea49b4f3122567c726eb80b0180c0164c27f57a84dc7dc385fac60e0222bbc` |
| 26 | `theorem` | [riemannSphereHomeomorph_infinity](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/riemannspherehomeomorph-infinity--63093773c1a010178389d4af.md) | 263 | `result-track:63093773c1a010178389d4af94d113ad89cb9bcd5c1fd20eb406f75d373d190d` |
| 27 | `theorem` | [riemannSphereHomeomorph_bijective](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/riemannspherehomeomorph-bijective--cb0e7860eb5fef4ae66b5980.md) | 268 | `result-track:cb0e7860eb5fef4ae66b59808b188a7fbfb6dd36e222de3410b5bfb08e9a55d1` |
| 28 | `theorem` | [riemannSphereHomeomorph_coe](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/riemannspherehomeomorph-coe--a8752b192668484a327276a6.md) | 275 | `result-track:a8752b192668484a327276a632b7be7f9a7c23803750202c429b5ee30cfaa024` |
| 29 | `def` | [stereographicDenominator](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/stereographicdenominator--be66bb53fb9d943eb4b480de.md) | 281 | `declaration-track:be66bb53fb9d943eb4b480de697b59634a4029b4fd4ecda8989efa57b357b2a0` |
| 30 | `theorem` | [stereographicDenominator_pos](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/stereographicdenominator-pos--c6056a9d1215d8ed14739631.md) | 285 | `result-track:c6056a9d1215d8ed14739631cc9bbe4ee79e15486c60729825be2b8cd9a6ce69` |
| 31 | `theorem` | [planePoint_norm_sq](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/planepoint-norm-sq--8d3f8c216e5b12dc94ca2bd4.md) | 290 | `result-track:8d3f8c216e5b12dc94ca2bd42a6b2d936666144608b357922f0d102983ec5331` |
| 32 | `theorem` | [riemannSphereHomeomorph_coe_value](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/riemannspherehomeomorph-coe-value--46735bd4d0cbfc8d4e6e6deb.md) | 303 | `result-track:46735bd4d0cbfc8d4e6e6deb7da77a9b18ae8e9f5297f7b4678c626de17d485f` |
| 33 | `theorem` | [riemannSphereHomeomorph_zero](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/riemannspherehomeomorph-zero--db219c286394d7af08a13ecb.md) | 332 | `result-track:db219c286394d7af08a13ecb58f114d7c8744219311af517053d674ca331c904` |
| 34 | `theorem` | [riemannSphereHomeomorph_coe_ray](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/riemannspherehomeomorph-coe-ray--fba9d3039acaeaf937726ab3.md) | 345 | `result-track:fba9d3039acaeaf937726ab3e85df6fc52be956b8f5326c6a5ff77d8c4a51737` |
| 35 | `theorem` | [riemannSphereHomeomorph_components](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/riemannspherehomeomorph-components--6967c2608d9e8a01c0bbf70a.md) | 370 | `result-track:6967c2608d9e8a01c0bbf70a849640406c5dd9a15a303d23302dcb24e48b3a95` |
| 36 | `theorem` | [range_finite_stereographic](../../../../../mathematics/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/declarations/range-finite-stereographic--be23defebe9a667cc3e244cd.md) | 387 | `result-track:be23defebe9a667cc3e244cd650fbd001aff762b9f99a5ff3f8240bcc8bab2db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
