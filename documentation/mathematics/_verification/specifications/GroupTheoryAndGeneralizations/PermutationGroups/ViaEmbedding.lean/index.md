# Verification target: Via Embedding

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af68a4dbe45476fdf34fe1fd95f2883f66212c77",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ViaEmbedding/Variant6e20ac0b53d406c422b0921f8e3129678167a1c17b74302744d0a87e2f11850d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ViaEmbedding.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ViaEmbedding.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af68a4dbe45476fdf34fe1fd95f2883f66212c77`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ViaEmbedding/Variant6e20ac0b53d406c422b0921f8e3129678167a1c17b74302744d0a87e2f11850d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ViaEmbedding/Variant6e20ac0b53d406c422b0921f8e3129678167a1c17b74302744d0a87e2f11850d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.End` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Embedding.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Set` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [viaEmbedding](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ViaEmbedding.lean/declarations/viaembedding.md) | 25 | `declaration-track:a900c6409fcc6f05ccd15535051057820cd820a9ba8f641e9c131bf232776f5a` |
| 2 | `theorem` | [viaEmbedding_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ViaEmbedding.lean/declarations/viaembedding-apply.md) | 29 | `result-track:7ee783f9296b57a0ea47f8ecf69ba5e923c3cfb8313eea4b85c5fc1cf25af625` |
| 3 | `theorem` | [viaEmbedding_apply_of_notMem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ViaEmbedding.lean/declarations/viaembedding-apply-of-notmem.md) | 33 | `result-track:eff4022430075b78823b856a447c54fb4f83651c120f19146e11a22450f2bdcd` |
| 4 | `def` | [viaEmbeddingHom](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ViaEmbedding.lean/declarations/viaembeddinghom.md) | 41 | `declaration-track:df4e41972d524989ca8ac6bdfcfc321121cfa8af527b13d7efce3c91981c0aab` |
| 5 | `theorem` | [viaEmbeddingHom_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ViaEmbedding.lean/declarations/viaembeddinghom-apply.md) | 44 | `result-track:d8b18ba20af26ed389e6041e4452e80d11eca4e7dd9f42c8e844f06eeba34889` |
| 6 | `theorem` | [viaEmbeddingHom_injective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ViaEmbedding.lean/declarations/viaembeddinghom-injective.md) | 48 | `result-track:7a797678b79e95b241021ed71680c866e01753436da195ec69c999cb3f6b82ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6472fdfb99302e0eae89018f7d5b55306bc4eb8e0689b80c8d87cf206a11a085 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ViaEmbedding/Variant6e20ac0b53d406c422b0921f8e3129678167a1c17b74302744d0a87e2f11850d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/ViaEmbedding/Variant6e20ac0b53d406c422b0921f8e3129678167a1c17b74302744d0a87e2f11850d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
