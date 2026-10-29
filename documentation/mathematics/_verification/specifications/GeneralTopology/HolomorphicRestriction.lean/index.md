# Verification target: GRWTSK.Analysis.Complex.HolomorphicRestriction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af5d4bececd4d13e59b3778ae78f3f1c8275077c",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicRestriction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HolomorphicRestriction.lean/index.md) · [Full source](../../../../GeneralTopology/HolomorphicRestriction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af5d4bececd4d13e59b3778ae78f3f1c8275077c`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicRestriction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicRestriction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.PortFiber.MultiCertificate`](../../../../GeneralTopology/MultiCertificate.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Topology.Algebra.PortFiberRing`](../../../../GeneralTopology/PortFiberRing.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Domain](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/domain.md) | 9 | `declaration-track:65b78025a38badd8c0f687d58718e6a8c670f8dbf8e5ed73aab21d3e8069ca4e` |
| 2 | `abbrev` | [Section](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/section.md) | 13 | `declaration-track:605ee6afa1f4cafaf28d2bc2d9ddc0ccd8947dfc0cb6356a91d8c81f3bb82562` |
| 3 | `structure` | [Port](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/port.md) | 16 | `declaration-track:c5b9c105d74614dbd47bddfe44ba5820e800050f21988fee9534507c603c87e2` |
| 4 | `def` | [identity](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/identity-source-edition-2.md) | 22 | `declaration-track:fd28e4b06b597cc6748cb44bbfadc70e2a2b1c03fd436b45372ea39d1489f707` |
| 5 | `def` | [comp](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/comp.md) | 26 | `declaration-track:524862fd87834a17c575acfe5325004919f13c6d47c93f34ea1b13c348eb32ce` |
| 6 | `def` | [restrict](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/restrict.md) | 32 | `declaration-track:2a6cb41be40e346e77a047a987b42828076136c2b95cb0508cad3b4ddfa87b2d` |
| 7 | `def` | [system](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/system.md) | 36 | `declaration-track:b73d4a24acfb2c00d7bb4ea492a8e8fb0f804368e9bf3488533260a3db356f56` |
| 8 | `def` | [ExtendsHolomorphically](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/extendsholomorphically.md) | 53 | `declaration-track:28edc30638e82bb7a691bcf6e32716972b783aa158cd3d69ff292fbce2de8c49` |
| 9 | `structure` | [HolomorphicRestrictionCertificate](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/holomorphicrestrictioncertificate.md) | 59 | `declaration-track:8815ecfbb6f4c789c2699b47e451d4ea4fd36a807fe69a9686a30b85192e8639` |
| 10 | `def` | [canonical](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/canonical.md) | 69 | `declaration-track:ee4d85a6639e4b252a18d6f5be1a56fc63eb699594c52cec0df9edc2cfe9f6d9` |
| 11 | `def` | [identity](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/identity.md) | 80 | `declaration-track:995065c0b74743c60459bd83f3a00f0bed363c6bc2ed08eebcd592971b69031b` |
| 12 | `def` | [comp](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/comp-source-edition-2.md) | 85 | `declaration-track:fb78a89bcabed803ad5d4be556bf02fc7cb6ae55fadeaa84138b0f349aa52c28` |
| 13 | `def` | [composableProperty](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/composableproperty.md) | 92 | `declaration-track:815fec3dbce0baa0223576d8c7b4da25797e43fb5f484cc3ccfacf5bbcb37574` |
| 14 | `def` | [restrictionRingHom](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/restrictionringhom.md) | 101 | `declaration-track:e3c7ace64fcbf5de84b4a5b0869b90c51239db60292e1591de65773aa46073e4` |
| 15 | `def` | [ringCertificate](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/ringcertificate.md) | 120 | `declaration-track:7f4fe89b1559e4594bfa03471ba238b7f529176d20d40826782581779dbe6ae7` |
| 16 | `theorem` | [restrict_continuous](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/restrict-continuous.md) | 126 | `result-track:6a09068267d866f034a3e3a80ad96269052866476b12dbada00d66225e763594` |
| 17 | `def` | [topologicalRingCertificate](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/topologicalringcertificate.md) | 133 | `declaration-track:1ae7dd2589bd19cbcb6e4640e6542bb1244c71a809a33582b2e220f4da19ca60` |
| 18 | `inductive` | [LawIndex](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/lawindex.md) | 139 | `declaration-track:cfd900c5d0c5928ba011769c3e0c9f0d65986f0d8265e430afa19875cf07e1a7` |
| 19 | `def` | [law](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/law.md) | 145 | `declaration-track:245c8c9ddc5a66186583b4dfe16fe7cd60ad11113ad7f18009ef2a1dcb5894c0` |
| 20 | `def` | [simultaneousProperty](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/simultaneousproperty.md) | 153 | `declaration-track:79dd8444b1247af18443729f35a1029aacd518fe645e5a1713524e640222cfef` |
| 21 | `def` | [simultaneousCertificate](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/simultaneouscertificate.md) | 158 | `declaration-track:004e5381417886e023d93e3d77ecbec48e31aa52a6996955247699f0c6ae8fef` |
| 22 | `def` | [whole](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/whole.md) | 170 | `declaration-track:64793a89e712cdeda4b5fa2d83ed69af09d42ead6cba97191a63ce648ef7da71` |
| 23 | `def` | [upper](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/upper.md) | 173 | `declaration-track:cb2dfbb01b49d1444bfca4111055f6a834a810a012649dfd37d6426f911e482b` |
| 24 | `def` | [realAxis](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/realaxis.md) | 176 | `declaration-track:de5e4ae14b210e2dae5b622c11c8d7c430fa68278cf4747be3a1623a7cf640e6` |
| 25 | `def` | [wholeToUpper](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/wholetoupper.md) | 179 | `declaration-track:884c07f8d792e08a0d56d7c6682a75b83a5df61f0fe072867a7ab42aa0353d7d` |
| 26 | `def` | [upperToReal](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/uppertoreal.md) | 183 | `declaration-track:d3c0f752619a3dfa0e951248dcbbb2c56e42d525aee9ec0d54403f22ad6e07d4` |
| 27 | `def` | [restrictionPath](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/restrictionpath.md) | 189 | `declaration-track:fe6947cad8ccc1bbb4d4f775972397f5719d176f873bb6300545d7a4fdd3cd03` |
| 28 | `theorem` | [restrictionPath_holomorphic](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/restrictionpath-holomorphic.md) | 197 | `result-track:274ff75193753269429d158a3d0bfa228b466865c0e47561ad2d70d6d055543b` |
| 29 | `theorem` | [restrictionPath_topologicalRing](../../../../GeneralTopology/HolomorphicRestriction.lean/declarations/restrictionpath-topologicalring.md) | 202 | `result-track:5e43ad3f0ce562213ca41b5b5dc87776e0d3ae6d8ba8a33b3698eeb5a4a11fd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc45bdf8c1b8126878b681108803f28689f8630ec8e833469b37a46cbb362db4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/HolomorphicRestriction.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/HolomorphicRestriction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
