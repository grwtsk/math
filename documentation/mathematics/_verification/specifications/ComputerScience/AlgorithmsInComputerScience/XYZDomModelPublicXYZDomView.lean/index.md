# Verification target: XYZDom Model Public XYZDom View

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbc54a10170827c9d898923ecdcddd0cc2203e6d",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant8b95948f697a10827ce37d6086957d4737452e490aea748d10ae203fe6f3a063.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbc54a10170827c9d898923ecdcddd0cc2203e6d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant8b95948f697a10827ce37d6086957d4737452e490aea748d10ae203fe6f3a063.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant8b95948f697a10827ce37d6086957d4737452e490aea748d10ae203fe6f3a063.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [XYZDomView](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/xyzdomview.md) | 34 | `declaration-track:6e92096bba68932c48122f23623bd5da7c12cedc89e578ad3649ea11ed849fce` |
| 2 | `def` | [xyzDomProjectionAdapter](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/xyzdomprojectionadapter.md) | 40 | `declaration-track:03060232f86a6837bffaa43ffe6a62da66ea0de739f598aa126eb9468eb4bb91` |
| 3 | `abbrev` | [DomNode](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/domnode.md) | 50 | `declaration-track:ae77fb1a4f11bced30e619e2681d1a60ee1356a00908d8325444904fbee35309` |
| 4 | `abbrev` | [DomModel](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/dommodel.md) | 53 | `declaration-track:3fe0ae4477e1d02a5eff699d7765bb0f7e950a3083259db2528bf0f0186db4ee` |
| 5 | `def` | [DomNode.revision](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/domnode-revision.md) | 58 | `declaration-track:4004d1b1c6aba2427266138d4d099352eb207e2c9bfa0721d51a26089d95f537` |
| 6 | `def` | [DomNode.xRaw](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/domnode-xraw.md) | 62 | `declaration-track:1f5f47f366b9e7578a3cffa026f23b1339c99fb417f22c81e668b8378979db78` |
| 7 | `def` | [DomNode.yRaw](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/domnode-yraw.md) | 64 | `declaration-track:5aa31ae6de624e13e7c16803776d9caccb3e21c89f5ef3324ff3eb48d27f3cb0` |
| 8 | `def` | [DomNode.zRaw](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/domnode-zraw.md) | 66 | `declaration-track:821f035423d6037003c0fb806250d5300f7a13c31534093f678b301b3058bd04` |
| 9 | `def` | [DomModel.publishedRevision](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/dommodel-publishedrevision.md) | 68 | `declaration-track:7d218816d7100784fad1b929af32504a2d959e66c1c9d70bb3011264fdd83875` |
| 10 | `def` | [targetHostCode](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/targethostcode.md) | 72 | `declaration-track:fe243b526f82192e4ce4b5bb1600fea7276cde2e6d0e4b30c3f9918ca3ae871b` |
| 11 | `def` | [preparedPublication](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/preparedpublication.md) | 76 | `declaration-track:cdb8486462d864edb399134da50c9c8a9c6e811251d6b17f4042dd5ac1111bbd` |
| 12 | `def` | [DomNode.withRevisionedXYZ](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/domnode-withrevisionedxyz.md) | 87 | `declaration-track:a79528c2745701dd0dda146fb1b48194f279e630d6f09a24427ce30587164a4d` |
| 13 | `def` | [DomNode.fromRevisionedXYZ](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/domnode-fromrevisionedxyz.md) | 93 | `declaration-track:23d9469c09b9142ca18103a436c0434a11d0bd2eacac2be589160e0649c1495e` |
| 14 | `def` | [applyAdmittedProjection](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/applyadmittedprojection.md) | 103 | `declaration-track:fcb8f1393b51bb81bfe1fb31eba31735b1e1d4eb8aba7dd55ec588ef027dece3` |
| 15 | `theorem` | [applyAdmittedProjection_publishes_output_revision](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/applyadmittedprojection-publishes-output-revision.md) | 109 | `result-track:cedd1922491ed9a7e3b79837bdc228ebae881a0b54752632e9f0cc9119c9ab38` |
| 16 | `theorem` | [applyAdmittedProjection_preserves_payload_identity_reference](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/applyadmittedprojection-preserves-payload-identity-reference.md) | 116 | `result-track:0d795528f5ba52fb3d78f655093a7a323b2c8935cbe7e77cf4a3ef6f6d9c46ca` |
| 17 | `theorem` | [applyAdmittedProjection_preserves_sourceSnapshotHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/applyadmittedprojection-preserves-sourcesnapshothash.md) | 123 | `result-track:a5a256fed204eb9b378e883baa249ff22f9a0fe80175b8189ce5e9f3cdab4790` |
| 18 | `theorem` | [applyAdmittedProjection_target_present](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/applyadmittedprojection-target-present.md) | 131 | `result-track:dd1aef4f45e23ee079def9a5e629be56ee61eb105f0c1d9c7ea7da3f16cb8f5f` |
| 19 | `def` | [DomModel.revisionAt?](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/dommodel-revisionat.md) | 172 | `declaration-track:f692ed33438bde34553911b043a3d6e43a4be7a533f964c04e91c7ca7baeff44` |
| 20 | `def` | [verifiedTargetRevision?](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/verifiedtargetrevision.md) | 177 | `declaration-track:2ca57b1f416f4aacfe9cfaf28f3a221fded529c987a6d6c50cedd7c6f41797e4` |
| 21 | `def` | [precommitStateMatches](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/precommitstatematches.md) | 183 | `declaration-track:fa6a76e451f39a92f3f244cae5988e95db72272ad08dbe551961ceab49f21b57` |
| 22 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/instance.md) | 189 | `declaration-track:25f122a64a29fe67d7be9b68f8deea5e79fd50f59e1e202364a353657bdb72d7` |
| 23 | `def` | [commitAfterRecheck](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/commitafterrecheck.md) | 194 | `declaration-track:fec06cb22cafeb4053ab1b02a8291d9a60868acec82fcd5cccce047021a69914` |
| 24 | `theorem` | [commitAfterRecheck_eq_some_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/commitafterrecheck-eq-some-iff.md) | 202 | `result-track:aaaddae5b8c2986dc30b6bdbf476988ed8f1da6080ee15c3c64b2da14aac4628` |
| 25 | `theorem` | [sourceSnapshotRace_preventsCommit](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/sourcesnapshotrace-preventscommit.md) | 210 | `result-track:307c4326086878f65e2b3ce9976c75cb245c492bc0b4209d5d3aa1f1d850af0c` |
| 26 | `theorem` | [targetRevisionRace_preventsCommit](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/targetrevisionrace-preventscommit.md) | 217 | `result-track:2785d5822f3d43210e8b799ce8d00b807e7ec4002ee0dc9dddede4c124b3d8d0` |
| 27 | `def` | [commitAdmitted](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/commitadmitted.md) | 225 | `declaration-track:3635a4be59ec215b59ab61d4ecbb9a75a09aef0818ced2dfc5a52c421c49f347` |
| 28 | `theorem` | [commitAdmitted_of_precommitStateMatches](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/commitadmitted-of-precommitstatematches.md) | 230 | `result-track:f323e988adb45364981e3516b7e84b00ceae9575940d9525d407be37f10c5e25` |
| 29 | `theorem` | [commitAdmitted_of_precommitStateMismatch](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/commitadmitted-of-precommitstatemismatch.md) | 237 | `result-track:3a05f738f158dcd20eb4e62c2b9716552b59b7b297b0b032bfc9b474f2983ca9` |
| 30 | `theorem` | [commitAdmitted_target_present](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/commitadmitted-target-present.md) | 244 | `result-track:f77d63db040bbe2ca463565cf2072329c18607e872434f4403e65efd6cd4be8a` |
| 31 | `theorem` | [commitAdmitted_publishes_output_revision](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/commitadmitted-publishes-output-revision.md) | 253 | `result-track:c089d84d6d44822c50525547e621e58d6d9d5c26180c020de936de89b1fe1fe0` |
| 32 | `theorem` | [commitAdmitted_preserves_payload_identity_reference](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/commitadmitted-preserves-payload-identity-reference.md) | 262 | `result-track:e6bbe71e536adeefff08053eb9e3be9cf1ea808ef3f945ce47e660b9dbeaf350` |
| 33 | `theorem` | [commitAdmitted_preserves_sourceSnapshotHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/commitadmitted-preserves-sourcesnapshothash.md) | 271 | `result-track:20c32a908b71d927a59ba669ecc61ebb59058a45fca3d8a0316f732b2d1c8562` |
| 34 | `def` | [handleVerificationResult](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/handleverificationresult.md) | 280 | `declaration-track:8e0e07ed4ccc8474f8178da3e188ed5375fafe940768d04c0c90d8770e8355fe` |
| 35 | `theorem` | [rejectedProposal_leavesDomModelUnchanged](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/rejectedproposal-leavesdommodelunchanged.md) | 287 | `result-track:e3189e8000608ff3b245bf70e32ba582982b15d108b78f173f0b81a0caf156d2` |
| 36 | `theorem` | [admittedSourceSnapshotRace_leavesDomModelUnchanged](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/admittedsourcesnapshotrace-leavesdommodelunchanged.md) | 294 | `result-track:88b69ab4d32304c1325e751c87591e7438f61e32321353980596a912b880da23` |
| 37 | `theorem` | [admittedTargetRevisionRace_leavesDomModelUnchanged](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelPublicXYZDomView.lean/declarations/admittedtargetrevisionrace-leavesdommodelunchanged.md) | 302 | `result-track:22e2af406d2e5e6ab5bfa32296d85547a21453ab01ad2318de9cc821cb7c9fee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f799414ae0f4cb4bcf554fd59e5a512b54bdabd55b5826c91fe73d47db9ea151 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant8b95948f697a10827ce37d6086957d4737452e490aea748d10ae203fe6f3a063.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant8b95948f697a10827ce37d6086957d4737452e490aea748d10ae203fe6f3a063.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
