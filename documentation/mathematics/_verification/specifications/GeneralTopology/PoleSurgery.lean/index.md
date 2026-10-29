# Verification target: Pole Surgery

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fada495239ce8cc9d2cee3080c72f18a8c166511",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PoleSurgery/Variant1331fd2abb78766cabffabcf40f6dcb7cf4520982fb89bc6b55215745c47c937.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PoleSurgery.lean/index.md) · [Full source](../../../../GeneralTopology/PoleSurgery.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fada495239ce8cc9d2cee3080c72f18a8c166511`.

Source path: `GRWTSK/Topology/GeneralTopology/PoleSurgery/Variant1331fd2abb78766cabffabcf40f6dcb7cf4520982fb89bc6b55215745c47c937.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PoleSurgery/Variant1331fd2abb78766cabffabcf40f6dcb7cf4520982fb89bc6b55215745c47c937.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Projection.AbsoluteCompactification` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Terrain.PointedMetricReconstruction` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.Authority.AuditEvidence` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Defs` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.Compact` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PoleKind](../../../../GeneralTopology/PoleSurgery.lean/declarations/polekind.md) | 29 | `declaration-track:3ddd317a2b811395037e51cd05c36aae9e8e11f97c95652f58d54eb5e5a69981` |
| 2 | `structure` | [PoleCandidate](../../../../GeneralTopology/PoleSurgery.lean/declarations/polecandidate.md) | 40 | `declaration-track:f895db9fe59f203f358e49629b6488e8599df9b2d8732860eea0e802a3e48a3d` |
| 3 | `structure` | [CertifiedPole](../../../../GeneralTopology/PoleSurgery.lean/declarations/certifiedpole.md) | 57 | `declaration-track:4e3a879a7a8e61a1f4146abccec658acf86330f181054a98ecdafe98fb4501f1` |
| 4 | `def` | [poleId](../../../../GeneralTopology/PoleSurgery.lean/declarations/poleid.md) | 69 | `declaration-track:7e32a294a123849213087ba1da4ee5fa978db4b259dda00c03d23db4e9c869db` |
| 5 | `def` | [stage](../../../../GeneralTopology/PoleSurgery.lean/declarations/stage.md) | 72 | `declaration-track:136fd406c0a102c96afc4fd25dd65745132b4ed28d7d2d421ff04a9f425be6f8` |
| 6 | `def` | [point](../../../../GeneralTopology/PoleSurgery.lean/declarations/point.md) | 75 | `declaration-track:bfd1760133c557486c9b629394f9b52c1fc8923d30e38840bd8e4cbbc8959d6d` |
| 7 | `def` | [kind](../../../../GeneralTopology/PoleSurgery.lean/declarations/kind.md) | 78 | `declaration-track:1b5138849e8dcd9d3fca7e2be0a18d58b393d396ebbcb8977cdd1d907577bf2b` |
| 8 | `def` | [neighborhoodId](../../../../GeneralTopology/PoleSurgery.lean/declarations/neighborhoodid.md) | 81 | `declaration-track:f78af18288585f6c2f97dbe2834be26c3b34ca7988aa7db860a0b76042c3d623` |
| 9 | `def` | [boundaryId](../../../../GeneralTopology/PoleSurgery.lean/declarations/boundaryid.md) | 84 | `declaration-track:2a4c9a6f932b385e6d215697053460c36249dbd01f508daa7a2b0aec3c37905c` |
| 10 | `def` | [invariantLedgerId](../../../../GeneralTopology/PoleSurgery.lean/declarations/invariantledgerid.md) | 87 | `declaration-track:04dde9caa1a36c64a4505fb268b7f7aaf3633424d968d094e90c0e294cd58a78` |
| 11 | `def` | [certificateId](../../../../GeneralTopology/PoleSurgery.lean/declarations/certificateid.md) | 90 | `declaration-track:b91a273d2e271afd62be125fb9fd0fce1e8557c9e9404b470ce530bfc1f40689` |
| 12 | `theorem` | [evidence_exact](../../../../GeneralTopology/PoleSurgery.lean/declarations/evidence-exact.md) | 94 | `result-track:ce43214839128910773d8843ac9e3e82c47cdb6e1699d39ff2494dfcbf060529` |
| 13 | `structure` | [FinitePoleSystem](../../../../GeneralTopology/PoleSurgery.lean/declarations/finitepolesystem.md) | 106 | `declaration-track:b0b85b832c1b4ab67b7a65e017e102792d721a72d25dacecc218612ee42fb47b` |
| 14 | `def` | [boundary](../../../../GeneralTopology/PoleSurgery.lean/declarations/boundary.md) | 129 | `declaration-track:e316801d164b6af979347c07bafdfc9a9abeaacfcb7ccecaeacf3266ba84e03c` |
| 15 | `structure` | [FinitePoleSurgery](../../../../GeneralTopology/PoleSurgery.lean/declarations/finitepolesurgery.md) | 141 | `declaration-track:7103f588219f1705b34a3016d08884d20b689e013d003f7cb6fe8222f4173f26` |
| 16 | `def` | [carrier](../../../../GeneralTopology/PoleSurgery.lean/declarations/carrier.md) | 162 | `declaration-track:d24ded38afca7b15b637500cf824a93dc16032638e4f4704f94a20aaec3b9ef0` |
| 17 | `theorem` | [pole_mem_carrier](../../../../GeneralTopology/PoleSurgery.lean/declarations/pole-mem-carrier.md) | 166 | `result-track:55199300ae0f2f543489eae0f2165015590ea1bc18ac0e57530e8a756efeb91e` |
| 18 | `theorem` | [realized_mem_carrier](../../../../GeneralTopology/PoleSurgery.lean/declarations/realized-mem-carrier.md) | 170 | `result-track:663f79a37109e8821f9f17ad22667b996b7318d5ce65b004d105c2309d501dfe` |
| 19 | `theorem` | [carrier_isCompact](../../../../GeneralTopology/PoleSurgery.lean/declarations/carrier-iscompact.md) | 179 | `result-track:5f04a6684a52f89e6f9cd8bf58e79f6dfe26f27d73406252f2ed9a13023f653a` |
| 20 | `structure` | [CertifiedBoundaryIsometry](../../../../GeneralTopology/PoleSurgery.lean/declarations/certifiedboundaryisometry.md) | 189 | `declaration-track:04448ffe0b1675583456e256a6a2bdf1dca421250a5002496cc1e37c3740eccc` |
| 21 | `theorem` | [isometry](../../../../GeneralTopology/PoleSurgery.lean/declarations/isometry.md) | 204 | `result-track:0a7b35b5703b8cfda56554961c6aca2744d6c194af1332ccd75a3051d4838249` |
| 22 | `abbrev` | [SurgeryPiece](../../../../GeneralTopology/PoleSurgery.lean/declarations/surgerypiece.md) | 215 | `declaration-track:6db9deab524d47238e1fecbdbc29737e1131d85d9c43f49881bc468b0169a539` |
| 23 | `inductive` | [SurgeryBoundaryIdentification](../../../../GeneralTopology/PoleSurgery.lean/declarations/surgeryboundaryidentification.md) | 225 | `declaration-track:8ccd39e209c7940ac04f02332ce4662e424e9120b45dd23c1fcc2d32dba33720` |
| 24 | `def` | [surgeryGluingSetoid](../../../../GeneralTopology/PoleSurgery.lean/declarations/surgerygluingsetoid.md) | 241 | `declaration-track:a5237535da4b47a8b2db43b100be20e2a9cc99b4167074e742a543e47d332f48` |
| 25 | `structure` | [FixedSurgeryData](../../../../GeneralTopology/PoleSurgery.lean/declarations/fixedsurgerydata.md) | 257 | `declaration-track:a489752d834cb98235ad489f5145989487c6568789a14d85dc116cb2919eb963` |
| 26 | `def` | [finitePoleExterior](../../../../GeneralTopology/PoleSurgery.lean/declarations/finitepoleexterior.md) | 281 | `declaration-track:95d725810b36247f8c46192e119e556bab74e43891d4b939b224a9145d8f770d` |
| 27 | `structure` | [CertifiedFinitePoleSurgeryData](../../../../GeneralTopology/PoleSurgery.lean/declarations/certifiedfinitepolesurgerydata.md) | 299 | `declaration-track:279282d746ee4a09ff634ec9b2f799379b0119feb959070c9588f10b4c674a7d` |
| 28 | `abbrev` | [SurgeryCarrier](../../../../GeneralTopology/PoleSurgery.lean/declarations/surgerycarrier.md) | 368 | `declaration-track:147db2940b42b650324cec5db8ae4eecc9cbd20a695031e2ff223d189f070524` |
| 29 | `def` | [exteriorPoint](../../../../GeneralTopology/PoleSurgery.lean/declarations/exteriorpoint.md) | 389 | `declaration-track:00e65c88506c188fefaf7080fbb522bf50a2e70614c86b35ea1777ac3f4cb783` |
| 30 | `def` | [capPoint](../../../../GeneralTopology/PoleSurgery.lean/declarations/cappoint.md) | 400 | `declaration-track:5a175f0b560fb30abd01aa8c8b48cc9d12f1c65e40ccc4101545898ef2ab17f7` |
| 31 | `theorem` | [boundary_identified](../../../../GeneralTopology/PoleSurgery.lean/declarations/boundary-identified.md) | 411 | `result-track:539d4dbc7afb2020ca3696ae82bfee77e85a9e48ef0e5ca22225432ab498c7d4` |
| 32 | `structure` | [AdmissibleQuotientPseudometric](../../../../GeneralTopology/PoleSurgery.lean/declarations/admissiblequotientpseudometric.md) | 425 | `declaration-track:a6210e231cbbf4e2169d2945baeeaaf14a003eab17ddb69602009897052f67fb` |
| 33 | `structure` | [InducedQuotientLengthMetric](../../../../GeneralTopology/PoleSurgery.lean/declarations/inducedquotientlengthmetric.md) | 451 | `declaration-track:4c9ac5f20641282ba46a2dd4104ec169e01ba5bdf291d9ee02048ea06a047636` |
| 34 | `theorem` | [distance_unique](../../../../GeneralTopology/PoleSurgery.lean/declarations/distance-unique.md) | 476 | `result-track:bcb19cd9627a27decd91fde22f9ff70e371d2a6fb6f5213d446e984d73115883` |
| 35 | `def` | [RealizedCarrier](../../../../GeneralTopology/PoleSurgery.lean/declarations/realizedcarrier.md) | 485 | `declaration-track:a2955d78528158d3be41c4b0e49a21de2bebd090f965b5236e67f5f008737ecf` |
| 36 | `instance` | [realizedMetric](../../../../GeneralTopology/PoleSurgery.lean/declarations/realizedmetric.md) | 489 | `declaration-track:472dbaf6ed0873bfabc22aea079e62f4b051fa644ba5a49ee7ff2e8b962fda9a` |
| 37 | `def` | [canonicalComparison](../../../../GeneralTopology/PoleSurgery.lean/declarations/canonicalcomparison.md) | 495 | `declaration-track:55b5cf7f495afe3217c7d707442a2c52fd6e136bf095a2153bc09e59c212e0b7` |
| 38 | `theorem` | [fixedSurgeryData_unique](../../../../GeneralTopology/PoleSurgery.lean/declarations/fixedsurgerydata-unique.md) | 505 | `result-track:b1a5f24dcd99f62d1d54044c9dfc4fe4819eeb564e09659c79760d6ca9cac291` |
| 39 | `structure` | [CertifiedPoleCoverTower](../../../../GeneralTopology/PoleSurgery.lean/declarations/certifiedpolecovertower.md) | 527 | `declaration-track:910bc4424003b6c78d669fcfbb6237977dd01f88e75c0d77c42408e2d860930a` |
| 40 | `def` | [compactification](../../../../GeneralTopology/PoleSurgery.lean/declarations/compactification.md) | 551 | `declaration-track:72a5b2af76e8dbff436d5bc584ca2e8600a4858bcc06c62a9c8a835ef90d74d9` |
| 41 | `theorem` | [pole_mem_compactification](../../../../GeneralTopology/PoleSurgery.lean/declarations/pole-mem-compactification.md) | 555 | `result-track:0e806a44bacacb04b9bb9d833e22268d1f9b5f4d9aefb02a6e601aacadf51019` |
| 42 | `theorem` | [compactification_isCompact](../../../../GeneralTopology/PoleSurgery.lean/declarations/compactification-iscompact.md) | 564 | `result-track:b5e28f02a21470a7123376778e192a95adfe9e53fd1da22acfc7cf3af6a9cd44` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd749d01aa54b6a1e63908dcc6a847ac9ac916a824b312867ad357865707deba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PoleSurgery/Variant1331fd2abb78766cabffabcf40f6dcb7cf4520982fb89bc6b55215745c47c937.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/PoleSurgery/Variant1331fd2abb78766cabffabcf40f6dcb7cf4520982fb89bc6b55215745c47c937.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
