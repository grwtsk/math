# Verification target: XYZDom Model Namespaced Public XYZDom View

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27b73e8b2b37c8f1cec4d9daafb21b9a6e2d2038",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variante087402cac7aaca07830b780276fefce486281b5cfa075038f0cc1f9261c44bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27b73e8b2b37c8f1cec4d9daafb21b9a6e2d2038`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variante087402cac7aaca07830b780276fefce486281b5cfa075038f0cc1f9261c44bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variante087402cac7aaca07830b780276fefce486281b5cfa075038f0cc1f9261c44bd.lean.json)

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
| 1 | `structure` | [XYZDomView](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/xyzdomview.md) | 42 | `declaration-track:dfacd7206c1a7e1d9e3f01a4d1e175a52b8870b3eef4aee74b2880244d50af07` |
| 2 | `def` | [xyzDomProjectionAdapter](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/xyzdomprojectionadapter.md) | 48 | `declaration-track:4fc14112d0f3ecf614ab98becbfd3ea2d1c9efad73e7acf12b4c70a868248156` |
| 3 | `abbrev` | [DomNode](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/domnode.md) | 58 | `declaration-track:41e8c69a8276b1c32de2c1a92939c5f802539318ed595344970c9666bc47fa0c` |
| 4 | `abbrev` | [DomModel](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/dommodel.md) | 61 | `declaration-track:d2395af3d6dfad88d4a56a7b8838d7909b19525b849b77af74976dacaba68b37` |
| 5 | `def` | [DomNode.revision](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/domnode-revision.md) | 66 | `declaration-track:566b27a954170fb9661c1f648dcfa611f6fd10b793b749a5c13105807ea9c299` |
| 6 | `def` | [DomNode.xRaw](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/domnode-xraw.md) | 70 | `declaration-track:7e818098d61fb044fda9e9561802f9119cc2a24189bbf98de27b54d6e0165ee3` |
| 7 | `def` | [DomNode.yRaw](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/domnode-yraw.md) | 72 | `declaration-track:ea2f7cad991e06d03c2d4f14571efd92e4d51cf22414c0f24b86b3a826c4f6ea` |
| 8 | `def` | [DomNode.zRaw](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/domnode-zraw.md) | 74 | `declaration-track:ea6afc22bb1cb2719494ebb3ab210e6b07697360a9880634c55e6199d8f90558` |
| 9 | `def` | [DomModel.publishedRevision](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/dommodel-publishedrevision.md) | 76 | `declaration-track:19a481a0f8cf2622b4773fe4ca332b365f00cfb51b6acd31e0b4136187cebcc6` |
| 10 | `def` | [targetHostCode](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/targethostcode.md) | 80 | `declaration-track:61494e2761479c221a4d724ae22fa5e4674dba201b711a08b257de386ffd529d` |
| 11 | `def` | [preparedPublication](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/preparedpublication.md) | 84 | `declaration-track:71477a9664c2e1374a6d69ca297627913d708b028c95b90f9aaa99bb4f51f9b2` |
| 12 | `def` | [DomNode.withRevisionedXYZ](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/domnode-withrevisionedxyz.md) | 95 | `declaration-track:b5b99802273ad3deca5d37e2041fa22e07fdd425d64b1bc9f1e3a137f13e8d8a` |
| 13 | `def` | [DomNode.fromRevisionedXYZ](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/domnode-fromrevisionedxyz.md) | 101 | `declaration-track:0113b2847358ed1cdbf49930a15a17289df182dcaa21f63a4ac12d0858c28594` |
| 14 | `def` | [applyAdmittedProjection](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/applyadmittedprojection.md) | 111 | `declaration-track:f75275434296b88fc3958af6a407871ed6a2092318b57d8a96a925db69b57f1e` |
| 15 | `theorem` | [applyAdmittedProjection_publishes_output_revision](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/applyadmittedprojection-publishes-output-revision.md) | 117 | `result-track:48fddcfeea515c09c5a7674628b53e0db0df0e3d21ebdc8a6b246da8f5b7dcc6` |
| 16 | `theorem` | [applyAdmittedProjection_preserves_payload_identity_reference](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/applyadmittedprojection-preserves-payload-identity-reference.md) | 124 | `result-track:f75886d5e36a271c6b8093ad5f4e05c35f14cf406a008b681fe476f03bc11ebc` |
| 17 | `theorem` | [applyAdmittedProjection_preserves_sourceSnapshotHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/applyadmittedprojection-preserves-sourcesnapshothash.md) | 131 | `result-track:6d5f726c4d69d4ea6cf0c4e9590923300e98de05f51adb090c6e4e81ec83a1ba` |
| 18 | `theorem` | [applyAdmittedProjection_target_present](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/applyadmittedprojection-target-present.md) | 139 | `result-track:a0524cb6ebd5fe7bf11cb3c0e5614720eb46eb65b6b330382d28ef1ce6764d1c` |
| 19 | `def` | [DomModel.revisionAt?](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/dommodel-revisionat.md) | 180 | `declaration-track:8e5a6a9c1a542b811e488dade89e2ac5c62719cfd0468c15cb6c9594b480313d` |
| 20 | `def` | [verifiedTargetRevision?](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/verifiedtargetrevision.md) | 185 | `declaration-track:f24bdc692b6c913c83bf89a736638779bc2f40ca7c966f79ceaf016a41320020` |
| 21 | `def` | [precommitStateMatches](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/precommitstatematches.md) | 191 | `declaration-track:ec37038604cc91e488b743666a9e44bcb6e68a265e48a1f6c3269a04f1e8c077` |
| 22 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/instance.md) | 197 | `declaration-track:911454ef39b9b57b16a1f9958b3131b51a4d4e3e208b7139d121d68187f7fb54` |
| 23 | `def` | [commitAfterRecheck](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/commitafterrecheck.md) | 202 | `declaration-track:d1cc1f19375ddd4aa24dd86ff656b712917729de1c699177022643800bb82f65` |
| 24 | `theorem` | [commitAfterRecheck_eq_some_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/commitafterrecheck-eq-some-iff.md) | 210 | `result-track:c5a225eb7d14712a2c1f2553c8be8525624808983295ded6c09b7ea978ff30aa` |
| 25 | `theorem` | [sourceSnapshotRace_preventsCommit](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/sourcesnapshotrace-preventscommit.md) | 218 | `result-track:d4aab9051a442f757a219f8c8252d4b3f71f01679d8c72535498e76cb690f650` |
| 26 | `theorem` | [targetRevisionRace_preventsCommit](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/targetrevisionrace-preventscommit.md) | 225 | `result-track:c3341296f1cdfae18388a2bfffb4827b8018f0090524334b9075dbc84d0c9c4c` |
| 27 | `def` | [commitAdmitted](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/commitadmitted.md) | 233 | `declaration-track:097101bdaa0938981baf9a59a9c7d7b923847aa151e69e6f370d8edea8af224b` |
| 28 | `theorem` | [commitAdmitted_of_precommitStateMatches](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/commitadmitted-of-precommitstatematches.md) | 238 | `result-track:3bbe2ae2e23b79bf3dc84dc2ce927a0c33cdfac27dd3d6a249e3ac9434b0eb65` |
| 29 | `theorem` | [commitAdmitted_of_precommitStateMismatch](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/commitadmitted-of-precommitstatemismatch.md) | 245 | `result-track:ef029a2a84f23a49415f7caac047b5505f79ef605fb444b2e84505322277b7cb` |
| 30 | `theorem` | [commitAdmitted_target_present](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/commitadmitted-target-present.md) | 252 | `result-track:85f0bb5bab82f312e1155cc536375038d4b56e2a47c54a9d72251226838831fb` |
| 31 | `theorem` | [commitAdmitted_publishes_output_revision](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/commitadmitted-publishes-output-revision.md) | 261 | `result-track:695f03d07f5c7b35642c1e97e021833a2a305623b68bf53383a26bc96e22d2da` |
| 32 | `theorem` | [commitAdmitted_preserves_payload_identity_reference](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/commitadmitted-preserves-payload-identity-reference.md) | 270 | `result-track:b26420305b01fc04fcc7f3e3ea35f88e8b260506d6b43f1b3474c93c4c4dfa8b` |
| 33 | `theorem` | [commitAdmitted_preserves_sourceSnapshotHash](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/commitadmitted-preserves-sourcesnapshothash.md) | 279 | `result-track:3235e6117f3f018300c8ff09ab7d5b847b655b55cf3383e51a01a9573c366d1a` |
| 34 | `def` | [handleVerificationResult](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/handleverificationresult.md) | 288 | `declaration-track:09be96a258da7188d8ea9fbb61eabb54c1fd0c96d3c22e5bd0199921c7e124a7` |
| 35 | `theorem` | [rejectedProposal_leavesDomModelUnchanged](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/rejectedproposal-leavesdommodelunchanged.md) | 295 | `result-track:ee2eb9dbc6c71a402934036715c00c4e6880519223a501fd96d53ad437c949dc` |
| 36 | `theorem` | [admittedSourceSnapshotRace_leavesDomModelUnchanged](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/admittedsourcesnapshotrace-leavesdommodelunchanged.md) | 302 | `result-track:b452fe56b3a6704b4e0ebf79639295d858e1db4e983b7e65ab37ba3f6ee2a50c` |
| 37 | `theorem` | [admittedTargetRevisionRace_leavesDomModelUnchanged](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/declarations/admittedtargetrevisionrace-leavesdommodelunchanged.md) | 310 | `result-track:991f3c2f2cdbb7c8191efdd31aadf8366a5ace33967b1c2037811f4f82e39a83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1e0ede7e2d82ce58675a0dca9feedd46e248bcc87f0242b1631f56c467a08ff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variante087402cac7aaca07830b780276fefce486281b5cfa075038f0cc1f9261c44bd.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variante087402cac7aaca07830b780276fefce486281b5cfa075038f0cc1f9261c44bd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
