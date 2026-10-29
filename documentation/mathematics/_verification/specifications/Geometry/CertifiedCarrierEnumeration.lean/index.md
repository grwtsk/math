# Verification target: Certified Carrier Enumeration

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cfb92dd47021aeeb2907ec25c66ce9540fd2156",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CheckedFiniteCarrierCoordinates/Varianta330bd9a635a18f2/CertifiedCarrierEnumeration.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Geometry/CertifiedCarrierEnumeration.lean/index.md) · [Full source](../../../../Geometry/CertifiedCarrierEnumeration.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cfb92dd47021aeeb2907ec25c66ce9540fd2156`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CheckedFiniteCarrierCoordinates/Varianta330bd9a635a18f2/CertifiedCarrierEnumeration.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/CheckedFiniteCarrierCoordinates/Varianta330bd9a635a18f2/CertifiedCarrierEnumeration.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.Profiles` — import line 19; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.CarrierGrid` — import line 20; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.Semantics` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CarrierIndexedState](../../../../Geometry/CertifiedCarrierEnumeration.lean/declarations/carrierindexedstate.md) | 45 | `declaration-track:dab42affc605a1e52cff194f6bc10a9f077cabe43c62950c9bcb5088c5c37ce3` |
| 2 | `structure` | [CarrierStateRecord](../../../../Geometry/CertifiedCarrierEnumeration.lean/declarations/carrierstaterecord.md) | 57 | `declaration-track:b69f579fb147e69c965e568fa76e7f25f5d1dc2a87341dcd3ea378b4940b8134` |
| 3 | `def` | [abstractCarrierState](../../../../Geometry/CertifiedCarrierEnumeration.lean/declarations/abstractcarrierstate.md) | 70 | `declaration-track:1f6d5a9ee02059861442ae0c95954cdb655ffb032a10b747c22564c61ad3a138` |
| 4 | `def` | [carrierStateRepresentation](../../../../Geometry/CertifiedCarrierEnumeration.lean/declarations/carrierstaterepresentation.md) | 83 | `declaration-track:28690360b24ff4aa155bd5b60a3233c05a0863a36c5346b3642c8f6775085fe7` |
| 5 | `theorem` | [abstractCarrierState_weight](../../../../Geometry/CertifiedCarrierEnumeration.lean/declarations/abstractcarrierstate-weight.md) | 93 | `result-track:6871556a12351cbc003e77e0d76046baa1f31152cfd1e3a4f37a569ecb87778e` |
| 6 | `theorem` | [carrierStateRecord_support_sound](../../../../Geometry/CertifiedCarrierEnumeration.lean/declarations/carrierstaterecord-support-sound.md) | 102 | `result-track:c8cb9a8271d1517254c158464731b15d037431838b4f5d1abd70d4a2fad93cf2` |
| 7 | `theorem` | [carrierStateRecord_support_complete](../../../../Geometry/CertifiedCarrierEnumeration.lean/declarations/carrierstaterecord-support-complete.md) | 111 | `result-track:c9fa685c67c3dbfd52b426635e0efdc509c8a2e7ec46db81df015af66b150e16` |
| 8 | `def` | [CarrierIndexedState.carrierEquivExactCarrier](../../../../Geometry/CertifiedCarrierEnumeration.lean/declarations/carrierindexedstate-carrierequivexactcarrier.md) | 123 | `declaration-track:4f437f5728f2f53c095ec4e0991e27ce446b1c4075354c4c383a5562fb782f16` |
| 9 | `theorem` | [CarrierIndexedState.carrierCount_eq_carrierMultiplicity](../../../../Geometry/CertifiedCarrierEnumeration.lean/declarations/carrierindexedstate-carriercount-eq-carriermultiplicity.md) | 143 | `result-track:7d9e81490e5330e58acb56dbe3ed4be1a0aa5073453f9efee5cf1f2326d099a0` |
| 10 | `theorem` | [carrierStateRecord_count_eq_carrierMultiplicity](../../../../Geometry/CertifiedCarrierEnumeration.lean/declarations/carrierstaterecord-count-eq-carriermultiplicity.md) | 158 | `result-track:62a6c4298a8a4458e31c3387e9ca0816af55f0ebeef3ad25aa07a50635f26c45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ddc80d457ef7f0a2608be0e2dab271bcef6fef53ed41d71b9c615b3648d8d95 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CheckedFiniteCarrierCoordinates/Varianta330bd9a635a18f2/CertifiedCarrierEnumeration.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/CheckedFiniteCarrierCoordinates/Varianta330bd9a635a18f2/CertifiedCarrierEnumeration.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
