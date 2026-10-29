# Verification target: Boolean Yoneda Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ec7d8b40e2fc8527cf5d25e5aedfc6629f562f0",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/BooleanYoneda/Variant9ad95ad4c6f751efb5f79195bf1f3df86dd12be2deb9384442d23cf49436468e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ec7d8b40e2fc8527cf5d25e5aedfc6629f562f0`.

Source path: `GRWTSK/Topology/MetricTopology/BooleanYoneda/Variant9ad95ad4c6f751efb5f79195bf1f3df86dd12be2deb9384442d23cf49436468e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/BooleanYoneda/Variant9ad95ad4c6f751efb5f79195bf1f3df86dd12be2deb9384442d23cf49436468e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.KanExtension.Dense` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bases` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RestrictedNerve](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/restrictednerve.md) | 44 | `declaration-track:293adbc0aaedde2f3a78a29b6832af8bc150e396c8a3774c1ec13a220fbc2dc5` |
| 2 | `def` | [restrictedNerveFullyFaithful](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/restrictednervefullyfaithful.md) | 52 | `declaration-track:7d897874084608a67d3ba6bd78724a11220d0fafc041ea79151121cd92dd5a92` |
| 3 | `def` | [restrictedNerveHomEquiv](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/restrictednervehomequiv.md) | 58 | `declaration-track:39f7b2a3924c05c16ca6a0428de9b97f5da0a9ed718657e29d077c1d5a8afa5d` |
| 4 | `def` | [support](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/support.md) | 66 | `declaration-track:15246ba37d2b7d6f9d8f5b50c1c844aae937476de5b337fd9e9b4385314e9b79` |
| 5 | `def` | [booleanIncidence](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/booleanincidence.md) | 70 | `declaration-track:4a0c3d9a230ac4c3bc5a99a33da5f4aea9811cf7ff07e8cb8b6ddeaa05e2cbd6` |
| 6 | `def` | [equivSupportOfSubsingleton](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/equivsupportofsubsingleton.md) | 78 | `declaration-track:c562c7b8b6185e96679a281cfa11635b3cf178b9df1a55aedb5ca78a4a5f56db` |
| 7 | `def` | [homEquivBooleanIncidenceOfSubsingleton](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/homequivbooleanincidenceofsubsingleton.md) | 87 | `declaration-track:6c9f2cbc196bb866820c8ba467898fac9858bd0169b50d934e315a569ad44384` |
| 8 | `def` | [singletonProbeSupport](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/singletonprobesupport.md) | 98 | `declaration-track:056f8a75127d251fd90821a9c18a7d6c53d36d6c4e1aa467048bcac3bd15ceaf` |
| 9 | `theorem` | [singletonProbeSupport_iff](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/singletonprobesupport-iff.md) | 101 | `result-track:9b69542d86720949439ca66fd935f3f684698de1b9603451ba85f8bfa3397de5` |
| 10 | `theorem` | [singletonProbeSupport_unit_iff_bool](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/singletonprobesupport-unit-iff-bool.md) | 110 | `result-track:eab1f772f24bda1db23d2e8679c631564cb2ca8b39d800553682d492825db7d9` |
| 11 | `theorem` | [unit_not_equiv_bool](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/unit-not-equiv-bool.md) | 117 | `result-track:5cea31481595a985365d1895442ffbb562bedb673223e274776fd2329bba76ba` |
| 12 | `def` | [twoEndpointUnitRadiusCode](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/twoendpointunitradiuscode.md) | 126 | `declaration-track:dd9f3ad169872b0c12a79fbdba14c696f8d841e29ca4724e7bfd317f4d19209f` |
| 13 | `theorem` | [twoEndpointUnitRadiusCode_oneThird_eq_twoThird](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/twoendpointunitradiuscode-onethird-eq-twothird.md) | 130 | `result-track:961a595a4b789f71f4c8c52ae919296532d605e2bc907036bbe89e4fdeedbfc0` |
| 14 | `theorem` | [oneThird_ne_twoThird](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/onethird-ne-twothird.md) | 138 | `result-track:c5964f6411922fa66df3985e492e9c3c1711726584668da988458e31821a7b78` |
| 15 | `def` | [regionCode](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/regioncode.md) | 149 | `declaration-track:c2821dc40a05ecadb66b10b9745c15e6fa931fec178ab6863ad6de5c6932ff3a` |
| 16 | `def` | [reconstructRegion](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/reconstructregion.md) | 153 | `declaration-track:65e2ad05429b53072dd5d0ac7952f8788e27d9c281c7c28b7b442ee5f49aa317` |
| 17 | `def` | [JoinGenerated](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/joingenerated.md) | 157 | `declaration-track:d8bb84ed15481d52499b360b1b58d4c676c85092697a8cb3685d15e9dacee8fd` |
| 18 | `theorem` | [reconstructRegion_regionCode](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/reconstructregion-regioncode.md) | 160 | `result-track:89a71e4d560ed93b6826d4a62bf33d52e8b1cf99b8404e9bf1d8f52eaa8b38f4` |
| 19 | `theorem` | [le_iff_regionCode_imp](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/le-iff-regioncode-imp.md) | 169 | `result-track:32bd06540cbba2deb0a5658f596022671d453659ef9f77ecfb51427dff9b9196` |
| 20 | `theorem` | [regionCode_injective](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/regioncode-injective.md) | 182 | `result-track:08242d69959d8c042818111a4794b4edce283b3266a489d96e2523a2790746f3` |
| 21 | `def` | [regionCodeOrderEmbedding](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/regioncodeorderembedding.md) | 195 | `declaration-track:c09f64add56970ac0df6c551379e4491cc9514ad9fa70db16ce30bcb9b241190` |
| 22 | `def` | [completeAtomicBooleanRegionEquiv](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/completeatomicbooleanregionequiv.md) | 214 | `declaration-track:cce5d91f0621fa905b7880509758e5b5b3e0b6ea928f00845910c4d317f0cb84` |
| 23 | `def` | [neighborhoodCode](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/neighborhoodcode.md) | 225 | `declaration-track:92e2e0acc119191cd64ad6905e4138816f83fb3366ce0459d8cf8cf210af2b05` |
| 24 | `theorem` | [neighborhoodCode_injective](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/neighborhoodcode-injective.md) | 232 | `result-track:a36db3ab6e334a50c8bb8f0800f3933f48809273411d4054b307deeb51164d4c` |
| 25 | `structure` | [RationalRadiusProbe](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/rationalradiusprobe.md) | 248 | `declaration-track:10d9f9c1efbf7d0d503fbf224bf955b98daefb03b21ad6090f35718e1b71086a` |
| 26 | `def` | [metricThresholdCode](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/metricthresholdcode.md) | 254 | `declaration-track:88c8ca469cd4bb60e00d74067f07e474aef85eca388dc042f917d4fe2b932291` |
| 27 | `theorem` | [metricThresholdCode_eq_iff](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/metricthresholdcode-eq-iff.md) | 262 | `result-track:82d0c2998bdab305ee7f6d31bda999c058715dfe4f9fe82b2706093a23ad8ea2` |
| 28 | `theorem` | [metricThresholdCode_injective](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/metricthresholdcode-injective.md) | 288 | `result-track:5a1e0e9d73f1e08be97097fa760df8a912da9b3292e3d25f1c4c31a0201be82b` |
| 29 | `theorem` | [metricThresholdCode_determines_distance](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/metricthresholdcode-determines-distance.md) | 305 | `result-track:d3a132bef861f0ee8d6f2dda371f6d5bda5d3142ee80f6f178823be2be13bb29` |
| 30 | `def` | [probeCode](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/probecode.md) | 321 | `declaration-track:4286b853a1f34f6a5a7cecc24fcc7bd901df51b081ccf7c9270c5a13c805beec` |
| 31 | `def` | [ProbeEquivalent](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/probeequivalent.md) | 325 | `declaration-track:b5a5129cbdbbd44f570dd1194d120867e0d5090caaac68d0eab4a2365d079e5d` |
| 32 | `def` | [probeSetoid](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/probesetoid.md) | 328 | `declaration-track:46b675cec4c62f3f7621ccc367e28bfbffabe899fb41fdc5e455bf1860dba3a6` |
| 33 | `abbrev` | [ComputationalQuotient](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/computationalquotient.md) | 333 | `declaration-track:faa2a31b2bed5799a74718f4554c73f41a8ccf34fafec40f75bc1ddb8fba9699` |
| 34 | `def` | [quotientCode](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/quotientcode.md) | 337 | `declaration-track:c3f23c46e83b0e70d2013f8cb691f259c50fc7bf44926bcd0ae2a0c683bf11ea` |
| 35 | `theorem` | [quotientCode_injective](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/quotientcode-injective.md) | 342 | `result-track:2c3eca3eebe029e8ff52acd363ab3a5ac6a3c2c3bc9e0440e8f21b67abc85a02` |
| 36 | `structure` | [ResolutionCertificate](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/resolutioncertificate.md) | 359 | `declaration-track:a3bafe86b3f9a63d31d32d2cc2d8e6c8e6528161487a9f0204e93f843877e5af` |
| 37 | `theorem` | [equivalent_dist_le](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/equivalent-dist-le.md) | 363 | `result-track:f5d2edb987a6a21f8f54ae5491515b143ddfd17b49708aac4bbfd68f2c7c5049` |
| 38 | `structure` | [CarrierPartition](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/carrierpartition.md) | 374 | `declaration-track:6a2eae78580af229c920e5c83269226caf89279bac78de9ce9af91d498782bb6` |
| 39 | `theorem` | [existsUnique_carrier](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/existsunique-carrier.md) | 379 | `result-track:549e74a9c87927bed7be9b2fd1856b2afb247606f9589efae586e8a973c0f1a3` |
| 40 | `def` | [CodeImage](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/codeimage.md) | 393 | `declaration-track:e9896d1dae3eb587d17cbfbc3573cbbe47d2c29a32721836f0f63d4fa1ca882a` |
| 41 | `def` | [decodeImage](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/decodeimage.md) | 397 | `declaration-track:01affb9e6fa9ccf15e9063b2ab912593d9acfc5a424cad7deecf48f6902c5f2d` |
| 42 | `theorem` | [encode_decodeImage](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/encode-decodeimage.md) | 402 | `result-track:c34bb81e70fb8e8e80f7f142c83753fff7eb393db8e4eb680c939a0b0375d6a9` |
| 43 | `theorem` | [decodeImage_encode](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/decodeimage-encode.md) | 408 | `result-track:f923155b69d0797ad5f882acffe56350636f95069351099595359be4dfc3ac8c` |
| 44 | `structure` | [DecoderCertificate](../../../../GeneralTopology/BooleanYonedaNamespaced.lean/declarations/decodercertificate.md) | 419 | `declaration-track:ba12a2a30b93c3da37f2196f313fe47e43a1176280443e1ad40cc6365173d200` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1c03cf0f30387ddccd5de16cbc48d47831535c6cba5f296e9ec0e87ab317667 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/BooleanYoneda/Variant9ad95ad4c6f751efb5f79195bf1f3df86dd12be2deb9384442d23cf49436468e.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/BooleanYoneda/Variant9ad95ad4c6f751efb5f79195bf1f3df86dd12be2deb9384442d23cf49436468e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
