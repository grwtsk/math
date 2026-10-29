# Verification target: Tao PNTLi2 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b150bbf11a5f99749e8c71897be6f5e4a7a8f0b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TaoPNTLi2/Variant2c44c343797af20e8fcdd0b88ae7173a8143b60030040ed40e32c34d4c381d9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/TaoPNTLi2Namespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/TaoPNTLi2Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b150bbf11a5f99749e8c71897be6f5e4a7a8f0b`.

Source path: `GRWTSK/Topology/GeneralTopology/TaoPNTLi2/Variant2c44c343797af20e8fcdd0b88ae7173a8143b60030040ed40e32c34d4c381d9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TaoPNTLi2/Variant2c44c343797af20e8fcdd0b88ae7173a8143b60030040ed40e32c34d4c381d9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.TaylorModel.Log1p` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [symmetric_combination_removable_singularity](../../../../MeasureAndIntegration/TaoPNTLi2Namespaced.lean/declarations/symmetric-combination-removable-singularity.md) | 42 | `result-track:ae3fbd26bd8824283ba9866a7fa883d001ef27d0fa5fff6bf4f86665e9461320` |
| 2 | `theorem` | [symmetric_combination_bounded](../../../../MeasureAndIntegration/TaoPNTLi2Namespaced.lean/declarations/symmetric-combination-bounded.md) | 49 | `result-track:0f4b71743841a9f8f1eadbdf3e9cb362a4c922c07da8abfe61de5865673d3b49` |
| 3 | `theorem` | [symmetric_combination_alt_form](../../../../MeasureAndIntegration/TaoPNTLi2Namespaced.lean/declarations/symmetric-combination-alt-form.md) | 54 | `result-track:b5f86e3c8f20cbb9cc93f39fddc2fd1fb3a9b41cc565acd41e662cc73af99bef` |
| 4 | `def` | [li2](../../../../MeasureAndIntegration/TaoPNTLi2Namespaced.lean/declarations/li2.md) | 73 | `declaration-track:3424f769a4c6d973cc8ce6857f676ca394ce1cff7eef5e1744ddaab306cd2f02` |
| 5 | `theorem` | [li2_le_two](../../../../MeasureAndIntegration/TaoPNTLi2Namespaced.lean/declarations/li2-le-two.md) | 82 | `result-track:bd47182d29b87869d8e8f6e7c1b3bb5e87f3612f22973ba96335c010364e455a` |
| 6 | `theorem` | [li2_pos](../../../../MeasureAndIntegration/TaoPNTLi2Namespaced.lean/declarations/li2-pos.md) | 86 | `result-track:ed35919c206276cc56f1c5da495a9021c2cd54be2943169ff720ce2d54796eb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=100083fc90316346dc5c5012f967faed28e82c1cb3e88e8c63228b39440a909e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/TaoPNTLi2/Variant2c44c343797af20e8fcdd0b88ae7173a8143b60030040ed40e32c34d4c381d9b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/TaoPNTLi2/Variant2c44c343797af20e8fcdd0b88ae7173a8143b60030040ed40e32c34d4c381d9b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
