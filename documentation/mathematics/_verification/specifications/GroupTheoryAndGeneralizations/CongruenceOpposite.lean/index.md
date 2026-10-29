# Verification target: Congruence Opposite

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "757c4b47b9e4a522cd852e112d84ea8173449b8c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Opposite/Variant46c70a48b52cca63a577c37ace8a4bc6e1ff886b8320c5a6e0fe4e5218b5f338.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/CongruenceOpposite.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/CongruenceOpposite.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `757c4b47b9e4a522cd852e112d84ea8173449b8c`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Opposite/Variant46c70a48b52cca63a577c37ace8a4bc6e1ff886b8320c5a6e0fe4e5218b5f338.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Opposite/Variant46c70a48b52cca63a577c37ace8a4bc6e1ff886b8320c5a6e0fe4e5218b5f338.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Opposites` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [op](../../../../GroupTheoryAndGeneralizations/CongruenceOpposite.lean/declarations/op.md) | 26 | `declaration-track:13efeb8cc5dad6f95c161e9353ba315b0fefafdb8d29f3bc428ce4915248b8ac` |
| 2 | `def` | [unop](../../../../GroupTheoryAndGeneralizations/CongruenceOpposite.lean/declarations/unop.md) | 38 | `declaration-track:f7f8931dcf3e9dc86847829faff643132fc720cddc198a5dc63d63c0935e3c3b` |
| 3 | `def` | [orderIsoOp](../../../../GroupTheoryAndGeneralizations/CongruenceOpposite.lean/declarations/orderisoop.md) | 51 | `declaration-track:376326e2eb9e6b7b2a3d1e5c9e7f29055ad9d4bea4bfd2947854404d9386278b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=668b6b8a2627ff68d58c4de71d454e614d1581a5f031f0c1360064032a66dca5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Opposite/Variant46c70a48b52cca63a577c37ace8a4bc6e1ff886b8320c5a6e0fe4e5218b5f338.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Opposite/Variant46c70a48b52cca63a577c37ace8a4bc6e1ff886b8320c5a6e0fe4e5218b5f338.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
