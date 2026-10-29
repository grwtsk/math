# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCone

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfd3e090cadde51c011080362b9e3a5c3addf17c",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCone.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/index.md) · [Full source](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfd3e090cadde51c011080362b9e3a5c3addf17c`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCone.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonPerimeterCone.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialProductQuotient`](../../../../GeneralTopology/SurfacePolygonRadialProductQuotient.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Topology.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.Compact` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [cornerDiscreteTopology](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/cornerdiscretetopology.md) | 68 | `declaration-track:ad51d8336f80c1bad577fa7611fdc9314db3f4bdb50d59b4ec58df7e2e253be8` |
| 2 | `abbrev` | [ConeCylinder](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/conecylinder.md) | 74 | `declaration-track:70d16018cbc0feb76c2702c96fb8450735e75327d43ef4bea93709f40c8f5ddd` |
| 3 | `inductive` | [PerimeterConeStep](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/perimeterconestep.md) | 81 | `declaration-track:2e60f3df4897d6c87c3c10a110ffbfbc0b2ce05b39213ab8591961690498dd49` |
| 4 | `def` | [ConeConnected](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/coneconnected.md) | 88 | `declaration-track:bab967fc5ac6d288ab2cb97aae3ec0f211cc405e7d53b356876088d0d09e5655` |
| 5 | `theorem` | [coneConnected_iff](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/coneconnected-iff.md) | 94 | `result-track:d38491b9a956dfbb591464bd4053c3431fe8d327963c612b53f923107fb74aaa` |
| 6 | `def` | [coneSetoid](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/conesetoid.md) | 129 | `declaration-track:647edf7b338cb429543928d32def65fa7d2e146909ef2ba339f7dc9323e92eb8` |
| 7 | `instance` | [coneSourceSetoid](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/conesourcesetoid.md) | 133 | `declaration-track:bfb91f2e887d92edbbaa0c10057a23de25d232831d76088da007e5e5dc26898d` |
| 8 | `def` | [PerimeterCone](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/perimetercone.md) | 137 | `declaration-track:96e014da5924f98bcc5504c39c7cd8086e47587d048601145d36eeb3a1430063` |
| 9 | `instance` | [perimeterConeTopology](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/perimeterconetopology.md) | 140 | `declaration-track:fb5145b0b76ec61cd450223e3352bd9e2455f1fc48b8504bdbb0a804707f3d40` |
| 10 | `theorem` | [coneTopology_coinduced](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/conetopology-coinduced.md) | 145 | `result-track:f987c4c546e6df2b855ceec7db8d48fbc4de54acd0623746d9a62dd1ced91916` |
| 11 | `def` | [coneProjection](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/coneprojection.md) | 152 | `declaration-track:2c3a401a0ab8cd4c22dc1f8c6d34c9569ba981fbb32956242db87654f1b6ee7a` |
| 12 | `theorem` | [coneProjection_continuous](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/coneprojection-continuous.md) | 156 | `result-track:10a438609c8e495df67536641e35f172432dd4616b19552e1e1deda6289fd312` |
| 13 | `theorem` | [coneProjection_isQuotientMap](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/coneprojection-isquotientmap.md) | 162 | `result-track:95e88ac937cf4f1b8da1591bd7dd6ab5d28731e8963883706b57d4ae530c1363` |
| 14 | `theorem` | [coneProjection_eq_iff_of_ne_zero](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/coneprojection-eq-iff-of-ne-zero.md) | 171 | `result-track:15920a98ffaefed066259769b56fb2edd88deecdf98c1f9a4cca431f5f849a7c` |
| 15 | `theorem` | [coneConnected_preserves_radius](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/coneconnected-preserves-radius.md) | 186 | `result-track:e6d1d432f4766402416d3cc8b04b74b9dc44bea420b5313b413831e0f2aff59d` |
| 16 | `def` | [coneRadius](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/coneradius.md) | 195 | `declaration-track:dbcd35da15b273ee5f0ac9318f6d3a0a1ad1a992d39056bd8571acdde2a106d3` |
| 17 | `theorem` | [coneRadius_projection](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/coneradius-projection.md) | 200 | `result-track:357e1c43450171507678cc4c8f09160ae62cfb08c14a646ce975fdd9a4525b6e` |
| 18 | `theorem` | [coneRadius_continuous](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/coneradius-continuous.md) | 204 | `result-track:3f70ecc41856faf68aa7cf86993fb6676b015edf9bf77e907d18a226ce26d130` |
| 19 | `theorem` | [coneConnected_jointRadialMap_eq](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/coneconnected-jointradialmap-eq.md) | 213 | `result-track:23a3811e4520b57cfed7a7a0b3ce6ebd86723835868878fd2eae2e907bd3c5c5` |
| 20 | `def` | [coneToFilled](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/conetofilled.md) | 229 | `declaration-track:181c74661a675fff718cdb44c31c29e905a58df1ce96cbda061dca0f880734e3` |
| 21 | `theorem` | [coneToFilled_projection](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/conetofilled-projection.md) | 234 | `result-track:12167a6221894e44c67b6abb7773f780807f433b14131f7b91fec108ea041503` |
| 22 | `theorem` | [coneToFilled_continuous](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/conetofilled-continuous.md) | 242 | `result-track:aae7db82efe68ee3b6a9b0ae8e3bba81546649fe60b264f985a118fd5d67bab0` |
| 23 | `theorem` | [coneToFilled_surjective](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/conetofilled-surjective.md) | 250 | `result-track:0995d0b2811054c741612be43652096349c52567918d2461ac8eceb87a39db45` |
| 24 | `theorem` | [coneToFilled_preserves_radius](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/conetofilled-preserves-radius.md) | 261 | `result-track:99e4841dee7ef6934168a6a58a7b976e470491e4f11fdc6b4537d534b2f2c22e` |
| 25 | `def` | [coneApex](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/coneapex.md) | 269 | `declaration-track:881e3a2fcc7edd297574e55bc7d9a54a9a316b364a991501a927654b063dd738` |
| 26 | `theorem` | [cone_zero_eq_apex](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/cone-zero-eq-apex.md) | 275 | `result-track:ef2ac440f5e4dbf8f6ae5e5ae6ac4b82b3a3666b6f77e9f84449649cc978dbaf` |
| 27 | `theorem` | [coneToFilled_apex](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/conetofilled-apex.md) | 283 | `result-track:ae9d79cfb22d1a371bed466d43bc8a0e150c6f70b6de8ea6c1be2749eb7cb8b0` |
| 28 | `def` | [coneBoundary](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/coneboundary.md) | 289 | `declaration-track:c88f3531b441760a593b52930e38abebbac9f26cb6ce5fa9c6a17541be2315d0` |
| 29 | `theorem` | [coneBoundary_continuous](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/coneboundary-continuous.md) | 293 | `result-track:d67d5f40c69471a2e7a7eefcd41d5729b28d252c25e0b3cce2ba0357b779fb26` |
| 30 | `theorem` | [coneBoundary_injective](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/coneboundary-injective.md) | 301 | `result-track:5f978c65b69f87c63e71b52f858a15688cea9454f8393ff08289ddd12a879156` |
| 31 | `theorem` | [coneToFilled_boundary](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/conetofilled-boundary.md) | 313 | `result-track:02153110deb4e6d38cb9a9c11b919ef4050558ea24a035206254601c2d8412db` |
| 32 | `def` | [unitCircleConeBoundary](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/unitcircleconeboundary.md) | 321 | `declaration-track:53b404b4d689d444d724a777db178104f382799019770e3f8180fcb08353c4f8` |
| 33 | `theorem` | [unitCircleConeBoundary_continuous](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/unitcircleconeboundary-continuous.md) | 325 | `result-track:239a71e8823ed6b9cb937e6103530c7ed41325c85a00924299e1413ab8c4d616` |
| 34 | `theorem` | [coneToFilled_unitCircle_boundary](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/conetofilled-unitcircle-boundary.md) | 332 | `result-track:bd711e24062c4557d108fe8e31a7694332585ab8c5536fe55aa67aea9a286591` |
| 35 | `theorem` | [coneToFilled_not_injective](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/conetofilled-not-injective.md) | 343 | `result-track:8e4379224cdfae57397ea420b36b718f8174dc3dbe867939e6ffb251517be8aa` |
| 36 | `theorem` | [perimeterConeCompactSpace](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/perimeterconecompactspace.md) | 362 | `result-track:9b30817843a46c230e35ba90bcac6393eb683c05484ea9d0e97ed1d365dd8158` |
| 37 | `theorem` | [filledPolygonCompactSpace](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/filledpolygoncompactspace.md) | 372 | `result-track:eeeb3caf6934670ccde0eaec96ff9004cba185328b27fe2c99d2dd72c7901ac6` |
| 38 | `theorem` | [coneApex_ne_boundary](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/coneapex-ne-boundary.md) | 379 | `result-track:d2f180afdd7eff172e6190642f79706d134623cb1506635fb13322176318dc8c` |
| 39 | `theorem` | [genusTwo_coneToFilled_noninjective](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/genustwo-conetofilled-noninjective.md) | 390 | `result-track:6783a7f674300e12b45f8fc09e89a519139b791dee1bac098cc0cc622eb332b9` |
| 40 | `theorem` | [genusThree_coneToFilled_noninjective](../../../../GeneralTopology/SurfacePolygonPerimeterCone.lean/declarations/genusthree-conetofilled-noninjective.md) | 396 | `result-track:50abc798647a4b45c01d25e5be6401ae0c0858fe62ff229e2d065b3b32773f42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9eb1a867cbe7276c70cfc4cdd4b1fd9e81b4f4cd5a2bde04966a8c7a6ad7ebb3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCone.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/SurfacePolygonPerimeterCone.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
