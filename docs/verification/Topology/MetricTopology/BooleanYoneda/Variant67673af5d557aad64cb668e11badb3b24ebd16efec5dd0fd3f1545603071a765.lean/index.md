# Verification target: GRWTSK.Topology.MetricTopology.BooleanYoneda.Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9adb6d323a717bd9b53e80caf3cdf55b6c520e76",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9adb6d323a717bd9b53e80caf3cdf55b6c520e76`.

Source path: `GRWTSK/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.KanExtension.Dense` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bases` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Defs` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RestrictedNerve](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/restrictednerve--f3504b8788a586d82e011b38.md) | 36 | `declaration-track:f3504b8788a586d82e011b389d0c757f90e9b3453a1642dcc9dbc0ddbf3ba50a` |
| 2 | `def` | [restrictedNerveFullyFaithful](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/restrictednervefullyfaithful--46b9fc7518881745f2af100e.md) | 44 | `declaration-track:46b9fc7518881745f2af100ef25f2d9cdaf4a260648bfcbf92191248a8b045e2` |
| 3 | `def` | [restrictedNerveHomEquiv](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/restrictednervehomequiv--802f77c36bc3f282bd73da11.md) | 50 | `declaration-track:802f77c36bc3f282bd73da1139d0d984bc2319ee847e060d14d43f02a2c4ef35` |
| 4 | `def` | [support](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/support--c18aaaa1eb5d5a409eb8333a.md) | 58 | `declaration-track:c18aaaa1eb5d5a409eb8333a3a447b89d7fecbea52a78528f9765bed304bedfd` |
| 5 | `def` | [booleanIncidence](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/booleanincidence--14c7cbd96f0b6e09afb28139.md) | 62 | `declaration-track:14c7cbd96f0b6e09afb2813991d1bdc98c8d9fc18e97f540db6f3ee2a9850ca1` |
| 6 | `def` | [equivSupportOfSubsingleton](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/equivsupportofsubsingleton--a47822a8d0e06d2b22a06933.md) | 70 | `declaration-track:a47822a8d0e06d2b22a06933d77541a0b59856a275734bd5666c571e3ca52948` |
| 7 | `def` | [homEquivBooleanIncidenceOfSubsingleton](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/homequivbooleanincidenceofsubsingleton--4a67ba795f537782d4bb0148.md) | 79 | `declaration-track:4a67ba795f537782d4bb0148f9cff6b9d951455ee9cf88a30c69ef61d684a47d` |
| 8 | `def` | [singletonProbeSupport](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/singletonprobesupport--4114dbaf616465a5ec44e0d1.md) | 90 | `declaration-track:4114dbaf616465a5ec44e0d109b9b264506fd2399c6a7055cefa8aa2373ab780` |
| 9 | `theorem` | [singletonProbeSupport_iff](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/singletonprobesupport-iff--39b95ddc0e789596ca40878f.md) | 93 | `result-track:39b95ddc0e789596ca40878f105adf7dbd21bfb341defdec53684dcd8ef3835c` |
| 10 | `theorem` | [singletonProbeSupport_unit_iff_bool](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/singletonprobesupport-unit-iff-bool--778c8080e8b20cb8a9c581e7.md) | 102 | `result-track:778c8080e8b20cb8a9c581e73963095173f10177a22a75e48e9621ee59bec8ec` |
| 11 | `theorem` | [unit_not_equiv_bool](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/unit-not-equiv-bool--f2701b2a1997f97851d81e6e.md) | 109 | `result-track:f2701b2a1997f97851d81e6ea791e0211807b0a72665b0518173e81a3caa0879` |
| 12 | `def` | [twoEndpointUnitRadiusCode](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/twoendpointunitradiuscode--ff2b8145609077af879f0e61.md) | 118 | `declaration-track:ff2b8145609077af879f0e61601f91c7b342903d4e6d39cea1d17068967a09de` |
| 13 | `theorem` | [twoEndpointUnitRadiusCode_oneThird_eq_twoThird](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/twoendpointunitradiuscode-onethird-eq-twothird--fbc1fe8d857abbecf520d936.md) | 122 | `result-track:fbc1fe8d857abbecf520d9364ca2ceb30f7b077d879fd959f71f89e0ff5817ac` |
| 14 | `theorem` | [oneThird_ne_twoThird](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/onethird-ne-twothird--4d668de6fdd072cbe98df55a.md) | 130 | `result-track:4d668de6fdd072cbe98df55a5ea65ea031732b1b8a58dd4f2141a514eb7819fb` |
| 15 | `def` | [regionCode](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/regioncode--666bbb0b797e2520becd5aa1.md) | 141 | `declaration-track:666bbb0b797e2520becd5aa193e66d6d513fe8fc491905dfefd88a57eb4d5328` |
| 16 | `def` | [reconstructRegion](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/reconstructregion--6791dcdebf7101944edc3334.md) | 145 | `declaration-track:6791dcdebf7101944edc33346d7e81d187222e8b8c10b051121613496bf16685` |
| 17 | `def` | [JoinGenerated](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/joingenerated--7c3b0c55eb05c12be68884e1.md) | 149 | `declaration-track:7c3b0c55eb05c12be68884e12e1b2ce79f3dfa6a438b14f69dd5cb2413e36d98` |
| 18 | `theorem` | [reconstructRegion_regionCode](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/reconstructregion-regioncode--50815a2f282dcee3a934c98d.md) | 152 | `result-track:50815a2f282dcee3a934c98dd1ae259e836999e2a7e68bceb686ba9ba5418b22` |
| 19 | `theorem` | [le_iff_regionCode_imp](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/le-iff-regioncode-imp--dd7cc184056e4804886008d2.md) | 161 | `result-track:dd7cc184056e4804886008d2f93443e4b52e5aa0c2196ac43299660425afd351` |
| 20 | `theorem` | [regionCode_injective](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/regioncode-injective--6e7ff5709a81616faf404ec5.md) | 174 | `result-track:6e7ff5709a81616faf404ec5455a91656b679c8194d7cfa78d6600daddad8250` |
| 21 | `def` | [regionCodeOrderEmbedding](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/regioncodeorderembedding--77b3940ca5a6b5ef8f77f1bd.md) | 187 | `declaration-track:77b3940ca5a6b5ef8f77f1bd64c5fe787e55ff6a2b11d8e82c05794158d56348` |
| 22 | `def` | [completeAtomicBooleanRegionEquiv](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/completeatomicbooleanregionequiv--00aa7ba468a47f8876b5ffca.md) | 206 | `declaration-track:00aa7ba468a47f8876b5ffca5212fba22c64e9977693520d478bd65df8029fb0` |
| 23 | `def` | [neighborhoodCode](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/neighborhoodcode--b4b2e40c9a7e029f4b69cd07.md) | 217 | `declaration-track:b4b2e40c9a7e029f4b69cd071c7f83591c1cca99c60f41c142e43cd3ba726e69` |
| 24 | `theorem` | [neighborhoodCode_injective](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/neighborhoodcode-injective--60e823cc32bbe074c196b8a4.md) | 224 | `result-track:60e823cc32bbe074c196b8a497a0a513dbf144eeaed3f7f5ef279af41e97fc0b` |
| 25 | `structure` | [RationalRadiusProbe](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/rationalradiusprobe--ba099beb2bed7a5949f615eb.md) | 240 | `declaration-track:ba099beb2bed7a5949f615ebbe30ce7ba16528c52a218ceb13a024fdea6c41e3` |
| 26 | `def` | [metricThresholdCode](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/metricthresholdcode--46443acf99d1d6a545cb3eeb.md) | 246 | `declaration-track:46443acf99d1d6a545cb3eebf92a0abe6c31aa2897de0ab5c17f760631f35f93` |
| 27 | `theorem` | [metricThresholdCode_eq_iff](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/metricthresholdcode-eq-iff--10a66be00a9797e7d95e4332.md) | 254 | `result-track:10a66be00a9797e7d95e4332500ac5adfbd546946d912ede18530e925cd75cc5` |
| 28 | `theorem` | [metricThresholdCode_injective](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/metricthresholdcode-injective--0cb8d89af7deb4ed97465cae.md) | 280 | `result-track:0cb8d89af7deb4ed97465cae98b4c52f2f07ed298f147b9f6183869313bd9a0b` |
| 29 | `theorem` | [metricThresholdCode_determines_distance](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/metricthresholdcode-determines-distance--c8a1056f0fe4b36a65db84e7.md) | 297 | `result-track:c8a1056f0fe4b36a65db84e75416f42014c7596b59a15744a097a079ba9913c4` |
| 30 | `def` | [probeCode](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/probecode--18ac492b422244dcda92be58.md) | 313 | `declaration-track:18ac492b422244dcda92be58272165a0d071a42f5b2eb04ce0ae1ee4dededd38` |
| 31 | `def` | [ProbeEquivalent](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/probeequivalent--9b5ebcf42a5d9b8c5dd16e22.md) | 317 | `declaration-track:9b5ebcf42a5d9b8c5dd16e22ff760eda40ba246fa07b147e5ac7800180217830` |
| 32 | `def` | [probeSetoid](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/probesetoid--ff5e9856c4f89e70c7e03dc4.md) | 320 | `declaration-track:ff5e9856c4f89e70c7e03dc456842a781922687e9ffaca5a8fd198fdafa0f30b` |
| 33 | `abbrev` | [ComputationalQuotient](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/computationalquotient--42a89a6d1914d88b4495365f.md) | 325 | `declaration-track:42a89a6d1914d88b4495365f64ecdf46a5473101d8a4b77b4dae31f273812b2c` |
| 34 | `def` | [quotientCode](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/quotientcode--f65d241f3e8a2e412242365d.md) | 329 | `declaration-track:f65d241f3e8a2e412242365df5ead4b471742995da8f68875f0b7e134565496e` |
| 35 | `theorem` | [quotientCode_injective](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/quotientcode-injective--e559cdcf1029ef7fb7be017a.md) | 334 | `result-track:e559cdcf1029ef7fb7be017af2ae3a39ceea868ff3793d4bf38e3cd71183d2ef` |
| 36 | `structure` | [ResolutionCertificate](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/resolutioncertificate--cf653638ef28384577a98fb4.md) | 351 | `declaration-track:cf653638ef28384577a98fb41351be62bee2f4b1c39ed44facba1d688ed694b6` |
| 37 | `theorem` | [equivalent_dist_le](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/equivalent-dist-le--b1137a25dd3ed075175e814f.md) | 355 | `result-track:b1137a25dd3ed075175e814f07aa0088a754a87f0019212f8e4098fb305afdf1` |
| 38 | `structure` | [CarrierPartition](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/carrierpartition--cb7493d9a08339f7f9b64e68.md) | 366 | `declaration-track:cb7493d9a08339f7f9b64e68f2d67d8108960fbd2ac2563bb0a6c3eca5d90b25` |
| 39 | `theorem` | [existsUnique_carrier](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/existsunique-carrier--5346e6d0960379c26744bb9a.md) | 371 | `result-track:5346e6d0960379c26744bb9a787dc51d69811a18ac33848316c24ddecdc6c5e1` |
| 40 | `def` | [CodeImage](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/codeimage--03042e062b9e74882c59a380.md) | 385 | `declaration-track:03042e062b9e74882c59a38009c750afc7b9ddc71ad5a1c3a6c67575370bb3a0` |
| 41 | `def` | [decodeImage](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/decodeimage--ff7cbd65f1b027b90e2ffb13.md) | 389 | `declaration-track:ff7cbd65f1b027b90e2ffb13f4223cd3a969533ea09d1e0d6bec02e67e548c64` |
| 42 | `theorem` | [encode_decodeImage](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/encode-decodeimage--31120ff3bba904e0432b5323.md) | 394 | `result-track:31120ff3bba904e0432b5323169430c2c9b42afc991ff3a1d844633c7373ce58` |
| 43 | `theorem` | [decodeImage_encode](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/decodeimage-encode--325f37e391ae3326dabfbc45.md) | 400 | `result-track:325f37e391ae3326dabfbc4589329803fcc7c6757c9679505528f7b6999028b8` |
| 44 | `structure` | [DecoderCertificate](../../../../../mathematics/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/declarations/decodercertificate--ce86f145becca606369406a8.md) | 411 | `declaration-track:ce86f145becca606369406a82c6b1794a57d62d79f093a1414d53f63d41960e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
