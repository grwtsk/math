# Verification target: GRWTSK.Topology.GeneralTopology.PrimeWalkTrajectoryAdmission.Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad9f0b1c519ce2c5a6b756eee360d06dede2ade2",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad9f0b1c519ce2c5a6b756eee360d06dede2ade2`.

Source path: `GRWTSK/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AdmissionStage](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/admissionstage--f73c17f6c5688c67d67644bb.md) | 57 | `declaration-track:f73c17f6c5688c67d67644bbc71353f0945b7cb6a7ee25b87a49a420b9844962` |
| 2 | `inductive` | [AdmissionBoundary](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/admissionboundary--308f2c91d58bb502caa4e4e4.md) | 64 | `declaration-track:308f2c91d58bb502caa4e4e4fc609b6ffa1c0c23c5510ca4f27e51c3ea7e991c` |
| 3 | `inductive` | [AdmissionError](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/admissionerror--3e53838104813836106fe1b3.md) | 71 | `declaration-track:3e53838104813836106fe1b30ddc4f82a9813cef36dc75b6b890625d5b76c51e` |
| 4 | `structure` | [AdmissionClockDraft](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/admissionclockdraft--ca420732fb010c118b378f31.md) | 78 | `declaration-track:ca420732fb010c118b378f3127c7ac74bc62e1cbc5410807bf7ddc038d1e68d4` |
| 5 | `structure` | [AdmissionClock](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/admissionclock--a449212acb873e2a6a45e751.md) | 85 | `declaration-track:a449212acb873e2a6a45e7516b1176f8c6169e87d7c4d91906ec616ae6777263` |
| 6 | `def` | [validatePrecedence](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/validateprecedence--2c8c7be1157eaaf9d6947b27.md) | 94 | `declaration-track:2c8c7be1157eaaf9d6947b274cebef47f668c85fdb34c5954e7214f7d3ff8b60` |
| 7 | `def` | [sealAdmissionClock](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/sealadmissionclock--9839dd52a75b86ffca871974.md) | 107 | `declaration-track:9839dd52a75b86ffca871974844db820d8b4df09d20bb82c2f13775b4dacd91e` |
| 8 | `structure` | [TransitionDraft](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/transitiondraft--1fb6c635c67a0f1f65ce6067.md) | 124 | `declaration-track:1fb6c635c67a0f1f65ce606751620d332bf2c6ddae60476e90ddaaed0ba29f14` |
| 9 | `structure` | [AdmissionRecord](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/admissionrecord--8800a6ed296ba7870d8190fd.md) | 132 | `declaration-track:8800a6ed296ba7870d8190fdd2945c0b7faad21532909d2434e391c68a6a3229` |
| 10 | `def` | [sealTransition](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/sealtransition--dc148761be869e971c062ba1.md) | 140 | `declaration-track:dc148761be869e971c062ba1c347555482ee44026ff2157731cb198de91219a4` |
| 11 | `inductive` | [AdjacentChain](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/adjacentchain--f100fa46e0491b51713f2743.md) | 156 | `declaration-track:f100fa46e0491b51713f2743eb18d020f66952cb7b5cccbae5a6902f2155d335` |
| 12 | `structure` | [AdmissionLedger](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/admissionledger--7f3c44fc271c00f130acb67d.md) | 169 | `declaration-track:7f3c44fc271c00f130acb67d887340f8d87713b9aaa1c79f0123534e008a62d4` |
| 13 | `structure` | [LedgerChainEvidence](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/ledgerchainevidence--ceeea03680cfd42a3435a822.md) | 180 | `declaration-track:ceeea03680cfd42a3435a822f5bde035dc7585bfd5f8d86c786d4be665c417c6` |
| 14 | `def` | [sealLedgerRecords](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/sealledgerrecords--24d56884f4ec10779cffff8e.md) | 191 | `declaration-track:24d56884f4ec10779cffff8e43f6b1c6941bb9eb2cd398e58cb9f7c953ba4605` |
| 15 | `def` | [sealLedger](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/sealledger--41b21904aafaf3f1afae0487.md) | 214 | `declaration-track:41b21904aafaf3f1afae0487093c798c602afc435ac1c212b1f0fc0992b2b2e7` |
| 16 | `theorem` | [AdmissionClock.controlFlowTick_ne_kernelAdmissionTick](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/admissionclock-controlflowtick-ne-kerneladmissiontick--932178285cefe3acb0f269ef.md) | 231 | `result-track:932178285cefe3acb0f269ef7525f063e25fb15a3bbab80a20668f084da495ca` |
| 17 | `theorem` | [AdmissionClock.kernelAdmissionTick_ne_handshakeTick](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/admissionclock-kerneladmissiontick-ne-handshaketick--f188f678013515e451eb3934.md) | 238 | `result-track:f188f678013515e451eb39347c8c2aaad9451b948cccb73bd55c4f7cdd92ae27` |
| 18 | `theorem` | [AdmissionClock.controlFlow_before_handshake](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/admissionclock-controlflow-before-handshake--89bbc5625a0d1c9049d67e5c.md) | 245 | `result-track:89bbc5625a0d1c9049d67e5c5bd9ec56f4088a13b391b2c183c582f82cf3578a` |
| 19 | `theorem` | [sealAdmissionClock_sound](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/sealadmissionclock-sound--cf4abeab44a39fd189d49221.md) | 254 | `result-track:cf4abeab44a39fd189d492212a8a9f9130d27936b4308f52fa2525ea68f8470d` |
| 20 | `theorem` | [validatePrecedence_sameTick](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/validateprecedence-sametick--0aceb544c6800912c592fc95.md) | 277 | `result-track:0aceb544c6800912c592fc95db19d9d3248521479904ea26f559c33c8ff6a3da` |
| 21 | `theorem` | [validatePrecedence_regression](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/validateprecedence-regression--45b2b2e39e1c42446cdc5f6b.md) | 285 | `result-track:45b2b2e39e1c42446cdc5f6bb44c91d3957a1ac57fb1e36f1cbe7b4033ff4283` |
| 22 | `def` | [projectiveTrajectory](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/projectivetrajectory--760aec0a40514e331fc8abfa.md) | 299 | `declaration-track:760aec0a40514e331fc8abfac8f9975f44e8003742a45038932347969c7603a1` |
| 23 | `structure` | [ProjectivePathFlatnessCertificate](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/projectivepathflatnesscertificate--d166eb83331246069dfda2b3.md) | 310 | `declaration-track:d166eb83331246069dfda2b35d3ea0b9883566b02dd202aa0085cb42dee0fbff` |
| 24 | `structure` | [AdmittedProjectiveTrajectory](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/admittedprojectivetrajectory--12b88e181367eea135cda30a.md) | 331 | `declaration-track:12b88e181367eea135cda30a58c6067c3327858e9d2aba42e66cff6fa609b510` |
| 25 | `def` | [HasAdmittedProjectiveTrajectory](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/hasadmittedprojectivetrajectory--55e81d5faa715ced644db438.md) | 349 | `declaration-track:55e81d5faa715ced644db438df1f1ce4935b141e34f18831487c1876f50756b9` |
| 26 | `theorem` | [projectiveTrajectory_apply](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/projectivetrajectory-apply--237057e0b1181939dbe4005f.md) | 358 | `result-track:237057e0b1181939dbe4005f19e445e7e394360250a2621f8d81857bc283ffb2` |
| 27 | `theorem` | [AdmittedProjectiveTrajectory.observes_signal](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/admittedprojectivetrajectory-observes-signal--356256db7b4bff5747bb447e.md) | 368 | `result-track:356256db7b4bff5747bb447eaebef0fbb6f0e1ee7d211022ec6103f8d0da546e` |
| 28 | `theorem` | [AdmittedProjectiveTrajectory.transport_identity](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/admittedprojectivetrajectory-transport-identity--8f77b6258789415796a42887.md) | 380 | `result-track:8f77b6258789415796a42887737d6205d8d30a802f456948340dacf3a982cc67` |
| 29 | `theorem` | [AdmittedProjectiveTrajectory.transport_cocycle](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/admittedprojectivetrajectory-transport-cocycle--8912c990948995a82d5d1342.md) | 395 | `result-track:8912c990948995a82d5d13423334501582ec0d281c01a4bcf3c1b165180edd31` |
| 30 | `theorem` | [AdmittedProjectiveTrajectory.record_parameter_strict](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/admittedprojectivetrajectory-record-parameter-strict--b975df176f967fddc30d4c28.md) | 410 | `result-track:b975df176f967fddc30d4c28b04fb896e536da460005a7038f23bef638a57c93` |
| 31 | `theorem` | [AdmittedProjectiveTrajectory.record_has_flatTransport](../../../../../mathematics/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/declarations/admittedprojectivetrajectory-record-has-flattransport--034bba9622001425684c0893.md) | 424 | `result-track:034bba9622001425684c0893a772ce228714d15f51dce80e479125a20953a562` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
