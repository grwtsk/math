# Verification target: Kuratowski Public Is Obtainable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fb2a8108e500b9d2d6e5afb6ffde3a31f09304c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Kuratowski/Variant7cb15c93cf99cef6cf3a94539d08607b68b97ad9b35808101b46c9518db8dd4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/KuratowskiPublicIsObtainable.lean/index.md) · [Full source](../../../../GeneralTopology/KuratowskiPublicIsObtainable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fb2a8108e500b9d2d6e5afb6ffde3a31f09304c`.

Source path: `GRWTSK/Topology/GeneralTopology/Kuratowski/Variant7cb15c93cf99cef6cf3a94539d08607b68b97ad9b35808101b46c9518db8dd4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Kuratowski/Variant7cb15c93cf99cef6cf3a94539d08607b68b97ad9b35808101b46c9518db8dd4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [IsObtainable](../../../../GeneralTopology/KuratowskiPublicIsObtainable.lean/declarations/isobtainable.md) | 58 | `declaration-track:bf2b7eced3dc0d5030abd6b58026395e26347bcac60c69ecb8f6ea40f1ea39cd` |
| 2 | `theorem` | [kckc_idem](../../../../GeneralTopology/KuratowskiPublicIsObtainable.lean/declarations/kckc-idem.md) | 68 | `result-track:b634fde84af08d617bde8a89cf51fadfddb8fd0a1e0643a28969e0bbac0af322` |
| 3 | `theorem` | [kckckck_eq_kck](../../../../GeneralTopology/KuratowskiPublicIsObtainable.lean/declarations/kckckck-eq-kck.md) | 71 | `result-track:014f4cd5be9ef049049eaaf91187ba02eaa449e89747ba8f3dfd0a8e347bb14f` |
| 4 | `def` | [theFourteen](../../../../GeneralTopology/KuratowskiPublicIsObtainable.lean/declarations/thefourteen.md) | 75 | `declaration-track:eb0ed0d5da491efd0f3196ca0b570c4775cefea4beae92e9e0aad50572af9080` |
| 5 | `theorem` | [card_theFourteen](../../../../GeneralTopology/KuratowskiPublicIsObtainable.lean/declarations/card-thefourteen.md) | 81 | `result-track:4ab17d4abc628dd561aa889c9a32ac7ad0611fee56fcfef67dbc2b88958eaca1` |
| 6 | `theorem` | [IsObtainable.mem_theFourteen](../../../../GeneralTopology/KuratowskiPublicIsObtainable.lean/declarations/isobtainable-mem-thefourteen.md) | 85 | `result-track:07d1ae58daf216d0608b698348db92f96e9276c51757a957f8580dad4d829878` |
| 7 | `theorem` | [mem_theFourteen_iff_isObtainable](../../../../GeneralTopology/KuratowskiPublicIsObtainable.lean/declarations/mem-thefourteen-iff-isobtainable.md) | 91 | `result-track:56b45d3586a3963f920780aac16f971e9b7fe4afd7755792060d2b3b96953e22` |
| 8 | `theorem` | [ncard_isObtainable_le_fourteen](../../../../GeneralTopology/KuratowskiPublicIsObtainable.lean/declarations/ncard-isobtainable-le-fourteen.md) | 107 | `result-track:5c6a4e721681ede9f52c38a870490db407e322a8bdd48ef21d969760be669fb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=028cfcd7846780b07c179166cb6f6dce227321956700274605799c98244cc968 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Kuratowski/Variant7cb15c93cf99cef6cf3a94539d08607b68b97ad9b35808101b46c9518db8dd4e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Kuratowski/Variant7cb15c93cf99cef6cf3a94539d08607b68b97ad9b35808101b46c9518db8dd4e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
