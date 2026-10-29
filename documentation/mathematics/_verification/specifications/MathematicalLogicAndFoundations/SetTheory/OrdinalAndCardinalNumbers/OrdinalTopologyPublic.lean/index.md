# Verification target: Ordinal Topology Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7adb1015fe6f6bede211aaf15c14d53269e4a95",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variantd7ac28d46bd121a15990d83208ece91a3fb9c8aa3dc7f23e36979024c7a99b8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyPublic.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7adb1015fe6f6bede211aaf15c14d53269e4a95`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variantd7ac28d46bd121a15990d83208ece91a3fb9c8aa3dc7f23e36979024c7a99b8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variantd7ac28d46bd121a15990d83208ece91a3fb9c8aa3dc7f23e36979024c7a99b8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyPublic.lean/declarations/instance.md) | 42 | `declaration-track:23399a371db8780739176b2254b9d549a1bf138136d78cffb0f369bc90a3b6f7` |
| 2 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyPublic.lean/declarations/instance-source-edition-2.md) | 43 | `declaration-track:998da6433bf7b8cbba86de57f27b92644a4d42426fcda3d1a3278b34f9e2a99d` |
| 3 | `theorem` | [mem_closure_tfae](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyPublic.lean/declarations/mem-closure-tfae.md) | 46 | `result-track:0ab92b944b4f9aaa8f8dc681c3a0f68a4699b086beb4c82709d28c99a884f48d` |
| 4 | `theorem` | [mem_closure_iff_iSup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyPublic.lean/declarations/mem-closure-iff-isup.md) | 77 | `result-track:57a2bb39d7fc5e970031d916af9ff39a60812951e35f9317e45395a917c092f4` |
| 5 | `theorem` | [mem_iff_iSup_of_isClosed](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyPublic.lean/declarations/mem-iff-isup-of-isclosed.md) | 83 | `result-track:31da188f0f1a401da0e2299a4cf6ec22030e7cdf43ceee1da1d0230866ea7b45` |
| 6 | `theorem` | [mem_closure_iff_bsup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyPublic.lean/declarations/mem-closure-iff-bsup.md) | 89 | `result-track:1b60cc36b8b089faf754ed5b990b02a662782ae92ead9dfdaffacd4fcaccdbc3` |
| 7 | `theorem` | [mem_closed_iff_bsup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyPublic.lean/declarations/mem-closed-iff-bsup.md) | 101 | `result-track:54c07ca5494a8f793398189438674dc196de5250bffded994c88ca54f5af9e2f` |
| 8 | `theorem` | [isClosed_iff_iSup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyPublic.lean/declarations/isclosed-iff-isup.md) | 107 | `result-track:fd290adc66ad2178ebbac632d3e9b8dc139ee2dd7978dca1692a1ff90538e6a6` |
| 9 | `theorem` | [isClosed_iff_bsup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyPublic.lean/declarations/isclosed-iff-bsup.md) | 117 | `result-track:a21f0887014cccc690066334a74f1eac3be8f5af965301df110b51c5bd35a5f6` |
| 10 | `theorem` | [enumOrd_isNormal_iff_isClosed](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyPublic.lean/declarations/enumord-isnormal-iff-isclosed.md) | 129 | `result-track:987a17530c90303acba7ce3ac6793bda1fc4fbbf310b68ed3556b086b248cf2e` |
| 11 | `def` | [IsAcc](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyPublic.lean/declarations/isacc.md) | 159 | `declaration-track:52d0c2d23ab07b1fa06c892ca61099624f6f771a6e0e1e141ae683e1d310e0c0` |
| 12 | `def` | [IsClosedBelow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyPublic.lean/declarations/isclosedbelow.md) | 165 | `declaration-track:917c310c66e01c2665d71223b1385e774ae6c6961a23a9f3a81836cdef276b5f` |
| 13 | `theorem` | [isAcc_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyPublic.lean/declarations/isacc-iff.md) | 169 | `result-track:a9b8ba78d9471b14ebabc9261b561a1ae84b3f6344cdbc99388f6f759d07e96b` |
| 14 | `theorem` | [IsAcc.forall_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyPublic.lean/declarations/isacc-forall-lt.md) | 175 | `result-track:522afeb31b8109b78449857a5947c4f13c0227a10cb886351a168a9f40f6efa9` |
| 15 | `theorem` | [IsAcc.pos](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyPublic.lean/declarations/isacc-pos.md) | 179 | `result-track:af4892457cef8782749452df83e4240f0b96899391d87705c79f256782ae361a` |
| 16 | `theorem` | [IsAcc.isSuccLimit](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyPublic.lean/declarations/isacc-issucclimit.md) | 183 | `result-track:fd55582b8ab1e3171472dc913b3588ff6eb05fa28c1eeb94ae29c7dd7c13d226` |
| 17 | `theorem` | [IsAcc.mono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyPublic.lean/declarations/isacc-mono.md) | 187 | `result-track:35798e1ab72361fdb334ab5f4c361deba11c4eae9c1da18e742b023ef1ccbb6b` |
| 18 | `theorem` | [IsAcc.inter_Ioo_nonempty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyPublic.lean/declarations/isacc-inter-ioo-nonempty.md) | 191 | `result-track:ba5402113f827ba56f611f7076187d7b4ee87ff19eb0996c62a9a9c3b3a4753e` |
| 19 | `theorem` | [accPt_subtype](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyPublic.lean/declarations/accpt-subtype.md) | 195 | `result-track:5067f1e1aa5ea34ee5da28e0c3e33b44ff3ef4e944249de50d83232d8d52cb00` |
| 20 | `theorem` | [isClosedBelow_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyPublic.lean/declarations/isclosedbelow-iff.md) | 200 | `result-track:e58c7ac7c8876eb4716f9eacc0139c347fb7557212255fc25a9cfdab3a0d67db` |
| 21 | `theorem` | [IsClosedBelow.sInter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyPublic.lean/declarations/isclosedbelow-sinter.md) | 209 | `result-track:1242e6f14920f509b87d86f8224f41b9ec49ac09aa8b58f77aa8b22f01fd5bb3` |
| 22 | `theorem` | [IsClosedBelow.iInter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalTopologyPublic.lean/declarations/isclosedbelow-iinter.md) | 216 | `result-track:f9078faae1d2e058b5b795070e0f1bdcd40294e62d718456537e575a00f05051` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c558036ea3f63bb4e3e5532de9e84e85a1032c9b6b8dcfe6c1d72ba55ba64551 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Topology/Variantd7ac28d46bd121a15990d83208ece91a3fb9c8aa3dc7f23e36979024c7a99b8f.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Topology/Variantd7ac28d46bd121a15990d83208ece91a3fb9c8aa3dc7f23e36979024c7a99b8f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
