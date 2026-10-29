# Verification target: GRWTSK.Topology.Algebra.PortFiberRing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0fbf24c47782bfd67c020cf30bc981bf6a7f199",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Algebra/PortFiberRing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PortFiberRing.lean/index.md) · [Full source](../../../../GeneralTopology/PortFiberRing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0fbf24c47782bfd67c020cf30bc981bf6a7f199`.

Source path: `GRWTSK/Topology/Algebra/PortFiberRing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Algebra/PortFiberRing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.PortFiber.Certified`](../../../../GeneralTopology/Certified.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RingCertificate](../../../../GeneralTopology/PortFiberRing.lean/declarations/ringcertificate.md) | 16 | `declaration-track:bd622ad79123f0c3b48aca9cec6ad9c7ba5f52ad089fcf2a4b6f62349d6d377c` |
| 2 | `def` | [hom](../../../../GeneralTopology/PortFiberRing.lean/declarations/hom.md) | 25 | `declaration-track:d55b7c1b898c9ff5726ce073d20795d5a2eb1de07258a2c5f40a124e925254f9` |
| 3 | `theorem` | [map_eq](../../../../GeneralTopology/PortFiberRing.lean/declarations/map-eq.md) | 35 | `result-track:86cd468fdd66488417d74ad431832774e9ee09aaf56d8ceb272c5f14c94473ce` |
| 4 | `def` | [ofHom](../../../../GeneralTopology/PortFiberRing.lean/declarations/ofhom.md) | 40 | `declaration-track:955f4b9b3351da20804640f88c9b3c05eb2fdccc5f9291bd6ddd5cc77bd680f9` |
| 5 | `theorem` | [hom_ofHom](../../../../GeneralTopology/PortFiberRing.lean/declarations/hom-ofhom.md) | 53 | `result-track:16c0dbee144f186b54a6404786b247cc294875aad57f884e81f4c590fa99aeb5` |
| 6 | `def` | [identity](../../../../GeneralTopology/PortFiberRing.lean/declarations/identity.md) | 60 | `declaration-track:38da3d76beb31e2b2a378c69ee77e7b0a21e7acf90c1a63807ae8728f588cee3` |
| 7 | `def` | [comp](../../../../GeneralTopology/PortFiberRing.lean/declarations/comp.md) | 64 | `declaration-track:7809681fc95fc98d430ec5ba1593e00b3395bf8c7eb0c303fb960c0abc02004e` |
| 8 | `def` | [composableProperty](../../../../GeneralTopology/PortFiberRing.lean/declarations/composableproperty-source-edition-2.md) | 70 | `declaration-track:e4304fdc365781dd1b2852b9a3fb379d9bf194b347adb277fec8c438ab3084af` |
| 9 | `structure` | [TopologicalRingCertificate](../../../../GeneralTopology/PortFiberRing.lean/declarations/topologicalringcertificate.md) | 83 | `declaration-track:b0558f6dee64c09085721569498d4733822d19770a18d3e6cc2044ba425757d0` |
| 10 | `def` | [identity](../../../../GeneralTopology/PortFiberRing.lean/declarations/identity-source-edition-2.md) | 90 | `declaration-track:66fa91c280208e5aa11a480339900c9883a9814ff4bae57e9612fd13601f5a79` |
| 11 | `def` | [comp](../../../../GeneralTopology/PortFiberRing.lean/declarations/comp-source-edition-2.md) | 100 | `declaration-track:f54b8699699dd7e9b59b1373187ace61a5051b2972bf5efa19f1eb860f2913c4` |
| 12 | `def` | [composableProperty](../../../../GeneralTopology/PortFiberRing.lean/declarations/composableproperty.md) | 113 | `declaration-track:565dc98549c01dc58364ce789e4a5dcbd289ba98f9ccbc4a01162067ae7f7186` |
| 13 | `def` | [complexFunctionFiber](../../../../GeneralTopology/PortFiberRing.lean/declarations/complexfunctionfiber.md) | 123 | `declaration-track:a380c33a216c43d68701a676ba59ffe84678e8821ace2a98dd8df204e8c56597` |
| 14 | `def` | [complexIdentityCertificate](../../../../GeneralTopology/PortFiberRing.lean/declarations/complexidentitycertificate.md) | 127 | `declaration-track:0ec75a09578969a9065773202725b76f9a495c2a95a8a12233492f7d7a1ca75e` |
| 15 | `def` | [complexDoubleIdentityCertificate](../../../../GeneralTopology/PortFiberRing.lean/declarations/complexdoubleidentitycertificate.md) | 133 | `declaration-track:c3b172bb56d1761b64be2f9c0fde09b5d22d514d21a7e3e3d052238853611323` |
| 16 | `def` | [complexIdentityPath](../../../../GeneralTopology/PortFiberRing.lean/declarations/complexidentitypath.md) | 142 | `declaration-track:69654b433191473440c675971b37e20cc0663b1b7384bd1992a15eab115b76de` |
| 17 | `theorem` | [complexIdentityPath_certified](../../../../GeneralTopology/PortFiberRing.lean/declarations/complexidentitypath-certified.md) | 151 | `result-track:9708fbdfabd05956da4009466775983049f4118bd9ccff1551acd5371b0ba38f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cee484730c30cbab4d7e985c050488e2fd4ed4eddb49e8a0723a3acdc704376a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/Algebra/PortFiberRing.lean","GRWTSK/_verification/specifications/Topology/Algebra/PortFiberRing.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
