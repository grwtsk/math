# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.RationalClosedCarrierGrid.Variant114b3a405a97d561.ClosedSupportAndOrigins

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5dc1b70b42319252ac314c45b4638ba667843151",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/ClosedSupportAndOrigins.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/ClosedSupportAndOrigins.lean/index.md) · [Full source](../../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/ClosedSupportAndOrigins.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5dc1b70b42319252ac314c45b4638ba667843151`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/ClosedSupportAndOrigins.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/ClosedSupportAndOrigins.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Geometry.GridCell` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NormalizedPoint](../../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/ClosedSupportAndOrigins.lean/declarations/normalizedpoint--3d5a87c0fedbfca4f9e0cf16.md) | 39 | `declaration-track:3d5a87c0fedbfca4f9e0cf16c64d40111c2b4851b2e0ed6350a8e46a44e6699f` |
| 2 | `def` | [InClosedUnitInterval](../../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/ClosedSupportAndOrigins.lean/declarations/inclosedunitinterval--b7ed30e3cb4b4e810cafc71e.md) | 46 | `declaration-track:b7ed30e3cb4b4e810cafc71ef249030ee6b361cb7e4727082dbaa60746ead189` |
| 3 | `def` | [AxisSupports](../../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/ClosedSupportAndOrigins.lean/declarations/axissupports--7f0ca0d29c427c5f1fca34a0.md) | 52 | `declaration-track:7f0ca0d29c427c5f1fca34a00dcd394a10a6f465b8fa0ea0e1e4774f151f9787` |
| 4 | `instance` | [axisSupportsDecidable](../../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/ClosedSupportAndOrigins.lean/declarations/axissupportsdecidable--ae21047221ae1256b473dc1b.md) | 57 | `declaration-track:ae21047221ae1256b473dc1b0397d022d728a9b9bb4613d12d01e6f60fa69b68` |
| 5 | `def` | [axisCarriers](../../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/ClosedSupportAndOrigins.lean/declarations/axiscarriers--ed3e53abbfd0cfd925d2defd.md) | 65 | `declaration-track:ed3e53abbfd0cfd925d2defdf77660143d97162c8e6ad454f502ce35277bbe0e` |
| 6 | `def` | [ExactCarrier](../../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/ClosedSupportAndOrigins.lean/declarations/exactcarrier--cd324404b3c9a58c799c4761.md) | 71 | `declaration-track:cd324404b3c9a58c799c47619b28c7dd26575d047eb1c9dc4e34cc58b7cd367f` |
| 7 | `instance` | [exactCarrierDecidablePred](../../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/ClosedSupportAndOrigins.lean/declarations/exactcarrierdecidablepred--00bd77d965c3002b1496befc.md) | 77 | `declaration-track:00bd77d965c3002b1496befc0d7d491df02c026b4e81cc792f7e8d7bc9f0ba35` |
| 8 | `def` | [carrierMultiplicity](../../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/ClosedSupportAndOrigins.lean/declarations/carriermultiplicity--8b4c11c26331bc3125e2bc49.md) | 84 | `declaration-track:8b4c11c26331bc3125e2bc4938a0689769dc628b3d33cba063571b4f7ac652b8` |
| 9 | `def` | [AxisOriginMatches](../../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/ClosedSupportAndOrigins.lean/declarations/axisoriginmatches--b6d685a2283fd20c776e57e7.md) | 90 | `declaration-track:b6d685a2283fd20c776e57e7caa2edada2035b2f9c5ff498a524a8331c9edd1c` |
| 10 | `def` | [OriginMatches](../../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/ClosedSupportAndOrigins.lean/declarations/originmatches--ab83c6f10b31293a5e21e02e.md) | 95 | `declaration-track:ab83c6f10b31293a5e21e02e0882766027b31cb8ba34710a87f7271d96caadc2` |
| 11 | `theorem` | [mem_axisCarriers_iff](../../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/ClosedSupportAndOrigins.lean/declarations/mem-axiscarriers-iff--7a257f94bddbc179d9ac15a6.md) | 102 | `result-track:7a257f94bddbc179d9ac15a6781dfb333ec4fb8b66420b657f673c9f55d407c8` |
| 12 | `theorem` | [exactCarrier_iff_axis_membership](../../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/ClosedSupportAndOrigins.lean/declarations/exactcarrier-iff-axis-membership--aac0f314d984e46af5137604.md) | 111 | `result-track:aac0f314d984e46af5137604ad58ef9d566cadcca482c4147b4dc1c7c9b46873` |
| 13 | `def` | [exactCarrierEquivAxisCarriers](../../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/ClosedSupportAndOrigins.lean/declarations/exactcarrierequivaxiscarriers--e575611ca7550aad6f5b73bf.md) | 121 | `declaration-track:e575611ca7550aad6f5b73bf2490e0bc4ba9b693f9e05b9c2d57f2487d023381` |
| 14 | `theorem` | [card_exactCarrier_eq_carrierMultiplicity](../../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/ClosedSupportAndOrigins.lean/declarations/card-exactcarrier-eq-carriermultiplicity--65fc35a50c1446e3c622f4b5.md) | 142 | `result-track:65fc35a50c1446e3c622f4b573b59c09ea1ef3048bacaeff0f20814b0f9f8d4c` |
| 15 | `theorem` | [axisOriginMatches_implies_support](../../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/ClosedSupportAndOrigins.lean/declarations/axisoriginmatches-implies-support--a1a8658c87020b9f678e0100.md) | 154 | `result-track:a1a8658c87020b9f678e01008bc27c866b5a1c8eedcb14011026e36bc44e808f` |
| 16 | `theorem` | [originMatches_implies_exactCarrier](../../../../../../../../Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/ClosedSupportAndOrigins.lean/declarations/originmatches-implies-exactcarrier--c680e953870a615fca3867eb.md) | 165 | `result-track:c680e953870a615fca3867ebdbda677ee42de46bf83ebe2c711a68a464f8f3be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a46f83a44a1e10973db911f2fce77e656574a70ab8415e9ff37eaf64b8dd493 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/ClosedSupportAndOrigins.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/ClosedSupportAndOrigins.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
