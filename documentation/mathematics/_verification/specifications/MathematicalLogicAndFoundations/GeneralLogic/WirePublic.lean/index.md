# Verification target: Wire Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e577c4b74cf3459d62ea0c6af7e543029e27c3dd",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Wire/Variant586a598ef269a880f1cb55fcecfb7ec25b41f1b2ac6f0061e19686bb55616f6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WirePublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WirePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e577c4b74cf3459d62ea0c6af7e543029e27c3dd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Wire/Variant586a598ef269a880f1cb55fcecfb7ec25b41f1b2ac6f0061e19686bb55616f6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Wire/Variant586a598ef269a880f1cb55fcecfb7ec25b41f1b2ac6f0061e19686bb55616f6c.lean.json)

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
| 1 | `def` | [refactorBridgeRequestSchema](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WirePublic.lean/declarations/refactorbridgerequestschema.md) | 11 | `declaration-track:99ecfb5af04d01bac0713d33d7c7e54762c53c9182a73e514a738fc48532de8e` |
| 2 | `def` | [refactorBridgeResponseSchema](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WirePublic.lean/declarations/refactorbridgeresponseschema.md) | 14 | `declaration-track:cd25e2888a04141578dab303e3c24f2b2f4da719988836b6ffa24631e01d700b` |
| 3 | `def` | [reasoningAstSchema](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WirePublic.lean/declarations/reasoningastschema.md) | 17 | `declaration-track:2af1c11eba4b93358511fb460fa307a963002354e97da391d545816c937f0c0b` |
| 4 | `def` | [patchBundleSchema](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WirePublic.lean/declarations/patchbundleschema.md) | 18 | `declaration-track:2bcfe20635e328b65c2b12b51117dc8b50f765b0ba6e9fb6bd5a9ae517521e18` |
| 5 | `inductive` | [RefactorBridgeOperation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WirePublic.lean/declarations/refactorbridgeoperation.md) | 21 | `declaration-track:13414c33743881f25d3d27f9e8ad03e494ff7814090b9d6208bb9d903577a3b6` |
| 6 | `inductive` | [RefactorErrorCode](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WirePublic.lean/declarations/refactorerrorcode.md) | 41 | `declaration-track:80f348c1ac1d8918aa6ce3578c46681e02551bbaaed2bdfb892e58cb36b9fb03` |
| 7 | `def` | [RefactorErrorCode.spelling](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WirePublic.lean/declarations/refactorerrorcode-spelling.md) | 79 | `declaration-track:2ce2d0567988d56c11caa35acd61dfe27ca56ee3ddc4077cd34416c402318e19` |
| 8 | `structure` | [RefactorBridgeRequestV1](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WirePublic.lean/declarations/refactorbridgerequestv1.md) | 117 | `declaration-track:9c7a35c6cff10541bf880f2a5ff2261e993a1f5b7c70b4829619bca75f150989` |
| 9 | `def` | [RefactorBridgeRequestV1.Valid](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WirePublic.lean/declarations/refactorbridgerequestv1-valid.md) | 126 | `declaration-track:cdc0dec0093865fc12d3db5ba9ae145c6d5348732f52617ce3f90a4f5d1ce865` |
| 10 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WirePublic.lean/declarations/instance-source-edition-2.md) | 133 | `declaration-track:f9e140b15d5c5dcdcd656ac8c47507fcbd2b8ac2cc26954a2b8cb2f9ee25994e` |
| 11 | `def` | [verifyRefactorBridgeRequest](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WirePublic.lean/declarations/verifyrefactorbridgerequest.md) | 137 | `declaration-track:2ce9602b7ab890656276ef6118ca4028ede3a06f57ecf4b4071be10930f2ca2f` |
| 12 | `theorem` | [verifyRefactorBridgeRequest_sound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WirePublic.lean/declarations/verifyrefactorbridgerequest-sound.md) | 141 | `result-track:ce57845066fa8935551fbaef5aa54122ab56cbcdf56270f615481c7468ac0f42` |
| 13 | `structure` | [RefactorBridgeErrorV1](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WirePublic.lean/declarations/refactorbridgeerrorv1.md) | 146 | `declaration-track:b9ab542570beb23e518d448b94b3d8c38f4a5e7d7665f2b551e49af8c08f63c5` |
| 14 | `structure` | [RefactorBridgeResponseV1](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WirePublic.lean/declarations/refactorbridgeresponsev1.md) | 153 | `declaration-track:a66f89a850176d204a527402cd7f4595209155d4cd9a695bb75885249ccc7d19` |
| 15 | `def` | [RefactorBridgeResponseV1.Valid](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WirePublic.lean/declarations/refactorbridgeresponsev1-valid.md) | 166 | `declaration-track:c6c07622367d5432d687deaa0e142b113481083023cd6510703f9fcf71549076` |
| 16 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WirePublic.lean/declarations/instance.md) | 176 | `declaration-track:6193420b866268cd4db3d608b07b1ad5683288fe9f886696bee1ae508b273603` |
| 17 | `def` | [verifyRefactorBridgeResponse](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WirePublic.lean/declarations/verifyrefactorbridgeresponse.md) | 180 | `declaration-track:8ade5453e49f276420221459f53090f621e902b6c0e041fb856d4b2274d14d61` |
| 18 | `theorem` | [verifyRefactorBridgeResponse_sound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WirePublic.lean/declarations/verifyrefactorbridgeresponse-sound.md) | 185 | `result-track:361ba32546515b481952d369456e7b093fbd7032f0c9f32a99ad4c3e356fe896` |
| 19 | `structure` | [CanonicalJsonRules](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WirePublic.lean/declarations/canonicaljsonrules-source-edition-2.md) | 190 | `declaration-track:de8237f0511985057c8b2f913af1e91af1271f2db419e949650577120b70fa4c` |
| 20 | `def` | [canonicalJsonRules](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WirePublic.lean/declarations/canonicaljsonrules.md) | 202 | `declaration-track:a491aae7e4b11113bb3abd833d7e39ed176b4437e5ea3a13efb1287cf24b9fdd` |
| 21 | `theorem` | [canonical_wire_has_no_timestamp_field](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WirePublic.lean/declarations/canonical-wire-has-no-timestamp-field.md) | 205 | `result-track:5fc8e7f1f74f45bd9208749fafa53d8d5fad5ac893bcc763f49dda05f0205427` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b39f346c68352967eae5c84e1c2e6f646358d95bd5b8cae0e9e8ac54aac50cde -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Wire/Variant586a598ef269a880f1cb55fcecfb7ec25b41f1b2ac6f0061e19686bb55616f6c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Wire/Variant586a598ef269a880f1cb55fcecfb7ec25b41f1b2ac6f0061e19686bb55616f6c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
