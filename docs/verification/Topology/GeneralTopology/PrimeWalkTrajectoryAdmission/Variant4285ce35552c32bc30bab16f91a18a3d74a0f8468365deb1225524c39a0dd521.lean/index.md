# Verification target: GRWTSK.Topology.GeneralTopology.PrimeWalkTrajectoryAdmission.Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43aed2212246a151167200fad8bc7cdc54ee66b4",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43aed2212246a151167200fad8bc7cdc54ee66b4`.

Source path: `GRWTSK/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AdmissionStage](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/admissionstage--e4ecf6a598d50fb94f87d70b.md) | 49 | `declaration-track:e4ecf6a598d50fb94f87d70ba6180386d9e8a328c95cb78306868f0e655d85fa` |
| 2 | `inductive` | [AdmissionBoundary](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/admissionboundary--0a67dc0d3c24727211818287.md) | 56 | `declaration-track:0a67dc0d3c24727211818287b6367c722c9fc5d5a9f21848addd7cc7032edea6` |
| 3 | `inductive` | [AdmissionError](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/admissionerror--813c066d4f26f95d0ff3f48e.md) | 63 | `declaration-track:813c066d4f26f95d0ff3f48eacce5197be373d7191f3b093bc82644442aa1e5c` |
| 4 | `structure` | [AdmissionClockDraft](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/admissionclockdraft--6d36e8e9467290e23d7c5259.md) | 70 | `declaration-track:6d36e8e9467290e23d7c52599dd565c627e0179a85338e15d2fbada332c79645` |
| 5 | `structure` | [AdmissionClock](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/admissionclock--ae6a7c690eee8b6b72f28bd3.md) | 77 | `declaration-track:ae6a7c690eee8b6b72f28bd33d915016aed61ca3f85a1069552340a66581525b` |
| 6 | `def` | [validatePrecedence](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/validateprecedence--605869f8ee5659a4163d1fd9.md) | 86 | `declaration-track:605869f8ee5659a4163d1fd9fa6edec4b2b236fe597609203f9c3cc2c003d1bb` |
| 7 | `def` | [sealAdmissionClock](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/sealadmissionclock--7a62a1395a75a728bd132096.md) | 99 | `declaration-track:7a62a1395a75a728bd132096e2ef5c84c72de9cef1608277b50f697864e15ee6` |
| 8 | `structure` | [TransitionDraft](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/transitiondraft--d9b4949282393d792bed0a7b.md) | 116 | `declaration-track:d9b4949282393d792bed0a7bf847df49a3cf3149a71325b51d7e2d7d12b944c8` |
| 9 | `structure` | [AdmissionRecord](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/admissionrecord--2822ff19829f91814c33e9ba.md) | 124 | `declaration-track:2822ff19829f91814c33e9baa368cdc8eeda62eb1678485c28b57fcb844e030e` |
| 10 | `def` | [sealTransition](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/sealtransition--0a3866f680ef1b7e0f50c32d.md) | 132 | `declaration-track:0a3866f680ef1b7e0f50c32d0b35877e4f71f06785c0445b571a4ce27e727fd7` |
| 11 | `inductive` | [AdjacentChain](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/adjacentchain--025fa56b35b595e2dbc46a9e.md) | 148 | `declaration-track:025fa56b35b595e2dbc46a9eefe17a6a7833716f1a085601697ebc81fd2c6b7a` |
| 12 | `structure` | [AdmissionLedger](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/admissionledger--2d3e957597bee360ef10863c.md) | 161 | `declaration-track:2d3e957597bee360ef10863cb9a92b1b623f3ffcc3291ba40bcd98d0c7ebb535` |
| 13 | `structure` | [LedgerChainEvidence](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/ledgerchainevidence--af70888c3411228c6429087a.md) | 172 | `declaration-track:af70888c3411228c6429087ae9818a2958672a5344a9d853fa282cfdd48466f3` |
| 14 | `def` | [sealLedgerRecords](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/sealledgerrecords--32094268a00875d6c4abf1c1.md) | 183 | `declaration-track:32094268a00875d6c4abf1c16a3e2a14c2bdda6b4d40676ddc8b12124538f3fa` |
| 15 | `def` | [sealLedger](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/sealledger--1af68c2e208f553a4c1485cc.md) | 206 | `declaration-track:1af68c2e208f553a4c1485cca44896a2f585c44a4ef59c11e7c29bb6e8a7a382` |
| 16 | `theorem` | [AdmissionClock.controlFlowTick_ne_kernelAdmissionTick](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/admissionclock-controlflowtick-ne-kerneladmissiontick--77d89694f4e19c30ae99dbd2.md) | 223 | `result-track:77d89694f4e19c30ae99dbd2c176e281e5ae07ff2846ec9190fc503e3f167e0c` |
| 17 | `theorem` | [AdmissionClock.kernelAdmissionTick_ne_handshakeTick](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/admissionclock-kerneladmissiontick-ne-handshaketick--df02feae4874a62df78326eb.md) | 230 | `result-track:df02feae4874a62df78326eb2ea18d039ab906409ff8902452670fb082edc54b` |
| 18 | `theorem` | [AdmissionClock.controlFlow_before_handshake](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/admissionclock-controlflow-before-handshake--4b3b1bd6e82f7c2cafb076f9.md) | 237 | `result-track:4b3b1bd6e82f7c2cafb076f92536ec0805ccb8f733c669d8ed94f315255ec5a2` |
| 19 | `theorem` | [sealAdmissionClock_sound](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/sealadmissionclock-sound--7402e85f574b9f300e22aa74.md) | 246 | `result-track:7402e85f574b9f300e22aa74dea346bb550e165696d44b8f500456ddb172cebf` |
| 20 | `theorem` | [validatePrecedence_sameTick](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/validateprecedence-sametick--fbefa628ba8921067a16c6d3.md) | 269 | `result-track:fbefa628ba8921067a16c6d35ea4764bee847c73aac42cf6e68dc7e9a34377d6` |
| 21 | `theorem` | [validatePrecedence_regression](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/validateprecedence-regression--661682b46f1242e48a573f4e.md) | 277 | `result-track:661682b46f1242e48a573f4e0ecfa8a7e9172a6e6171ecf8eb099407adfe00d2` |
| 22 | `def` | [projectiveTrajectory](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/projectivetrajectory--48fad28bffc13db66924c6e4.md) | 291 | `declaration-track:48fad28bffc13db66924c6e4b3684693b7840eeaec8950cc6f8a12e9a60c7312` |
| 23 | `structure` | [ProjectivePathFlatnessCertificate](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/projectivepathflatnesscertificate--f55b28d34cd148122e3bcc5b.md) | 302 | `declaration-track:f55b28d34cd148122e3bcc5b2e2b7476b206ba543621af1e568050ebf994900c` |
| 24 | `structure` | [AdmittedProjectiveTrajectory](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/admittedprojectivetrajectory--5c0c698d8d717a3bf526047b.md) | 323 | `declaration-track:5c0c698d8d717a3bf526047bb163e173dde1ebd9f8c5b3c2fe597c8885ccda42` |
| 25 | `def` | [HasAdmittedProjectiveTrajectory](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/hasadmittedprojectivetrajectory--ceac32fa8b2a6053db460a85.md) | 341 | `declaration-track:ceac32fa8b2a6053db460a8578d9829604f328d59151d83c40ac20752c41f705` |
| 26 | `theorem` | [projectiveTrajectory_apply](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/projectivetrajectory-apply--89d7e162549b6b4aec8e9bbe.md) | 350 | `result-track:89d7e162549b6b4aec8e9bbeea887f3a92fc722620e14a35b8c26fb87ed348bd` |
| 27 | `theorem` | [AdmittedProjectiveTrajectory.observes_signal](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/admittedprojectivetrajectory-observes-signal--8ece00800b78a68b83bb744e.md) | 360 | `result-track:8ece00800b78a68b83bb744e1cd4426769366644b5eba2ceab05b0f8ed68bfb0` |
| 28 | `theorem` | [AdmittedProjectiveTrajectory.transport_identity](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/admittedprojectivetrajectory-transport-identity--7ce25175dee8f59acf74d5c9.md) | 372 | `result-track:7ce25175dee8f59acf74d5c920d13bc025b89d245d4cf584247b49064c0f16ae` |
| 29 | `theorem` | [AdmittedProjectiveTrajectory.transport_cocycle](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/admittedprojectivetrajectory-transport-cocycle--ec9a409dbebd747e0be25325.md) | 387 | `result-track:ec9a409dbebd747e0be25325548f16c13ef9f50719969197b2a922b4d9440ed9` |
| 30 | `theorem` | [AdmittedProjectiveTrajectory.record_parameter_strict](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/admittedprojectivetrajectory-record-parameter-strict--e9dc09f9ff79ff80fac8cee7.md) | 402 | `result-track:e9dc09f9ff79ff80fac8cee796de304e6e7962cf06de93b633c1aecb32fc6c81` |
| 31 | `theorem` | [AdmittedProjectiveTrajectory.record_has_flatTransport](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant4285ce35552c32bc30bab16f91a18a3d74a0f8468365deb1225524c39a0dd521.lean/declarations/admittedprojectivetrajectory-record-has-flattransport--3fa5f7bcb068984be95f034f.md) | 416 | `result-track:3fa5f7bcb068984be95f034f078a3b92ff415385dfd095f8683b0cbe598f05fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
