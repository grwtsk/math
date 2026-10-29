# Verification target: Induction Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd7d373be90bdf0c079f7b05790fade4feb266b1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Induction/Variant15009e8769c2ee189fcd6cac57e02f3ce2dfc07edfd10e42463e4d9cfb3ae3aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/InductionPublic.lean/index.md) · [Full source](../../../../GeneralTopology/InductionPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd7d373be90bdf0c079f7b05790fade4feb266b1`.

Source path: `GRWTSK/Topology/Induction/Variant15009e8769c2ee189fcd6cac57e02f3ce2dfc07edfd10e42463e4d9cfb3ae3aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Induction/Variant15009e8769c2ee189fcd6cac57e02f3ce2dfc07edfd10e42463e4d9cfb3ae3aa.lean.json)

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
| 1 | `theorem` | [GoodProducts.P0](../../../../GeneralTopology/InductionPublic.lean/declarations/goodproducts-p0.md) | 57 | `result-track:7169dc1ebc726897d27511e797ecce98ae78805529b8ebeb0a5cb5ec1e60f13d` |
| 2 | `theorem` | [GoodProducts.Plimit](../../../../GeneralTopology/InductionPublic.lean/declarations/goodproducts-plimit.md) | 67 | `result-track:ac4ea91933fe957ca8bfa98256c56c4ae652de8ee1b449c3154572b2eb29d526` |
| 3 | `theorem` | [GoodProducts.linearIndependentAux](../../../../GeneralTopology/InductionPublic.lean/declarations/goodproducts-linearindependentaux.md) | 76 | `result-track:6122857a01d57fa950fb2ac9ac7da1f30a21b06ebe5583d2d826ba6ddbd39194` |
| 4 | `theorem` | [GoodProducts.linearIndependent](../../../../GeneralTopology/InductionPublic.lean/declarations/goodproducts-linearindependent.md) | 89 | `result-track:0783bd0e98a77c8d128923d87dddee28c8825b336e0a32e8a8398a40fc1645f5` |
| 5 | `def` | [GoodProducts.Basis](../../../../GeneralTopology/InductionPublic.lean/declarations/goodproducts-basis.md) | 96 | `declaration-track:952d7bb1f3362be8dde9d5865272e7252a6f73e9ada1a2ebc587048fe63fc83d` |
| 6 | `theorem` | [Nobeling_aux](../../../../GeneralTopology/InductionPublic.lean/declarations/nobeling-aux.md) | 109 | `result-track:37622bd568c93af336486ecba41266e1b1e2cdd1106dc483fdba1fa60cd3f544` |
| 7 | `def` | [Nobeling.ι](../../../../GeneralTopology/InductionPublic.lean/declarations/nobeling.md) | 120 | `declaration-track:f508fe549d299f7c35ccaa816569c598d3d0ddc88b99473de98704aa6745978f` |
| 8 | `theorem` | [Nobeling.isClosedEmbedding](../../../../GeneralTopology/InductionPublic.lean/declarations/nobeling-isclosedembedding.md) | 123 | `result-track:7b0b9584424cf3729b7b79dfd0945e8b2fcb8504ac5046c4da5cd6326bb19f09` |
| 9 | `instance` | [LocallyConstant.freeOfProfinite](../../../../GeneralTopology/InductionPublic.lean/declarations/locallyconstant-freeofprofinite.md) | 154 | `declaration-track:a73834e770e0a13288ab701fbe8ad0cd6d97d61e160ad601a96e074b6e34fdb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5bdca36e90f821e03a8c536eafa677db01a6d4bcf5dcc66376cf2bd6fd7d3ec3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/Induction/Variant15009e8769c2ee189fcd6cac57e02f3ce2dfc07edfd10e42463e4d9cfb3ae3aa.lean","GRWTSK/_verification/specifications/Topology/Induction/Variant15009e8769c2ee189fcd6cac57e02f3ce2dfc07edfd10e42463e4d9cfb3ae3aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
