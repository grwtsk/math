# Verification target: Simplicial Set Op Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46b7b0a055f47e4e20736d189365dce0c43088c8",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Op/Varianteb4104a508907402e8bd4e3dd6c5db4f60c86cd630f225426df569aaf2c4bf5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/SimplicialSetOpPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/SimplicialSetOpPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46b7b0a055f47e4e20736d189365dce0c43088c8`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Op/Varianteb4104a508907402e8bd4e3dd6c5db4f60c86cd630f225426df569aaf2c4bf5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Op/Varianteb4104a508907402e8bd4e3dd6c5db4f60c86cd630f225426df569aaf2c4bf5c.lean.json)

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
| 1 | `def` | [opFunctor](../../../../AlgebraicTopology/SimplicialSetOpPublic.lean/declarations/opfunctor.md) | 44 | `declaration-track:400a4b1bf14f66d1bd186fc54f397016b8643f27202b073ff4c2d1e76a456c22` |
| 2 | `abbrev` | [op](../../../../AlgebraicTopology/SimplicialSetOpPublic.lean/declarations/op-source-edition-2.md) | 47 | `declaration-track:92ea366d3aaf5607ca0fee33f5ea970debcf501ba80f9ab5895a55cd101a1f98` |
| 3 | `def` | [opObjEquiv](../../../../AlgebraicTopology/SimplicialSetOpPublic.lean/declarations/opobjequiv.md) | 50 | `declaration-track:0eb4b3a3d1df62dbd23886f9db84dae4a3668bf78fd13b23b77f702517d446a9` |
| 4 | `lemma` | [opFunctor_map](../../../../AlgebraicTopology/SimplicialSetOpPublic.lean/declarations/opfunctor-map.md) | 53 | `result-track:4349357ae4f769503af1765924f65ef1d51965a292c73ed9cd7c3bd4f7b0a3f8` |
| 5 | `lemma` | [op_map](../../../../AlgebraicTopology/SimplicialSetOpPublic.lean/declarations/op-map.md) | 57 | `result-track:819d47c0e2d8a844a05c98c990c516ac7b67a34ede694c09d78835fdcc15713b` |
| 6 | `lemma` | [op_δ](../../../../AlgebraicTopology/SimplicialSetOpPublic.lean/declarations/op.md) | 63 | `result-track:34949b7ccbbbe091e90dbb1176061adf0f444ffe79e2583927fe063b06f59830` |
| 7 | `lemma` | [op_σ](../../../../AlgebraicTopology/SimplicialSetOpPublic.lean/declarations/op-source-edition-3.md) | 68 | `result-track:cdc7cbe968320b8d6e31d9951dff094803cd83a802e807531803afc7c09dbdb5` |
| 8 | `lemma` | [δ_opObjEquiv](../../../../AlgebraicTopology/SimplicialSetOpPublic.lean/declarations/opobjequiv-source-edition-3.md) | 72 | `result-track:5a05ddc73baa4f6146c834736270d66204d7f50230ead0c1fa8c7695d5e30999` |
| 9 | `lemma` | [σ_opObjEquiv](../../../../AlgebraicTopology/SimplicialSetOpPublic.lean/declarations/opobjequiv-source-edition-2.md) | 76 | `result-track:12dfe4804bdf68286b6c9c75fabf07bec5ee2a7d6a5afaf3119bf22e11dbe7ca` |
| 10 | `def` | [opFunctorCompOpFunctorIso](../../../../AlgebraicTopology/SimplicialSetOpPublic.lean/declarations/opfunctorcompopfunctoriso.md) | 83 | `declaration-track:4de75f20a83f4613b78e3620d9863648566720338f3988fe53ddbf3fc7d4e166` |
| 11 | `def` | [opEquivalence](../../../../AlgebraicTopology/SimplicialSetOpPublic.lean/declarations/opequivalence.md) | 90 | `declaration-track:09aaf0db69b8ba40b46349544fbf0ba0cfcdb352a7ff67e2705fe85189bbdf79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f165dd3a9f93dcf12739d0d11b310239720e3d2577a33750701ee106ed7d7a7c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/Op/Varianteb4104a508907402e8bd4e3dd6c5db4f60c86cd630f225426df569aaf2c4bf5c.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/Op/Varianteb4104a508907402e8bd4e3dd6c5db4f60c86cd630f225426df569aaf2c4bf5c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
