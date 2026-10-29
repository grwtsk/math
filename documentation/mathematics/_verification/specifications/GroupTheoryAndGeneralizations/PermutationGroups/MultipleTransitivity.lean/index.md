# Verification target: Multiple Transitivity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1736aa123dbe5d8a34bb9629baa5cfade647113a",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/MultipleTransitivity/Variantf4a07fd7a094dca573323cc58426ae80906ee6efddaff65de1f30f966e42d58d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivity.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1736aa123dbe5d8a34bb9629baa5cfade647113a`.

Source path: `GRWTSK/Algebra/GroupTheory/MultipleTransitivity/Variantf4a07fd7a094dca573323cc58426ae80906ee6efddaff65de1f30f966e42d58d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/MultipleTransitivity/Variantf4a07fd7a094dca573323cc58426ae80906ee6efddaff65de1f30f966e42d58d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.Embedding` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Primitive` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.SubMulAction.OfStabilizer` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Embedding` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Function.Injective.mulActionHom_embedding](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivity.lean/declarations/function-injective-mulactionhom-embedding.md) | 54 | `declaration-track:3a3340d33c253b9d7bf88f344e96f5263fdabc2aeaaf5222aebcdd34105d9441` |
| 2 | `theorem` | [Function.Injective.mulActionHom_embedding_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivity.lean/declarations/function-injective-mulactionhom-embedding-apply.md) | 60 | `result-track:0599e57556aa560e60e5301ebc632e1b34f94b0d2d887404d9710c0664ed9f86` |
| 3 | `theorem` | [Function.Injective.mulActionHom_embedding_isInjective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivity.lean/declarations/function-injective-mulactionhom-embedding-isinjective.md) | 65 | `result-track:2dca0c23039f97d0d9b5207227928c716baae0a28af6f7a2d2faf6d31ceb8a71` |
| 4 | `theorem` | [Function.Bijective.mulActionHom_embedding_isBijective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivity.lean/declarations/function-bijective-mulactionhom-embedding-isbijective.md) | 76 | `result-track:e72eac93c1707a5d2801b9fdbea67106b622fd797ca94631cb996b3c7c5a8cc5` |
| 5 | `abbrev` | [IsMultiplyPretransitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivity.lean/declarations/ismultiplypretransitive-source-edition-2.md) | 98 | `declaration-track:4306b657de098b20bf0728fa8b489ee403be36fb88d283c793397346f1222148` |
| 6 | `theorem` | [IsPretransitive.of_embedding](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivity.lean/declarations/ispretransitive-of-embedding.md) | 109 | `result-track:540a95b419e331aeeae5f14c0b20515017597855a2754f38c0395ff65feed611` |
| 7 | `theorem` | [IsPretransitive.of_embedding_congr](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivity.lean/declarations/ispretransitive-of-embedding-congr.md) | 126 | `result-track:38bb339b288966c57fc0d4e78dddf8fea167cadcd18fe13b4d99cda3f72345a0` |
| 8 | `theorem` | [is_zero_pretransitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivity.lean/declarations/is-zero-pretransitive-source-edition-2.md) | 135 | `result-track:fcf7fd419512c3e363b95c32a3fe18d3153677d8a739810eb7da0150ecf6d8d5` |
| 9 | `theorem` | [is_zero_pretransitive'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivity.lean/declarations/is-zero-pretransitive.md) | 140 | `result-track:f49ca1d12c82786e10cf7f96027904e2887517bf3aa3dbbac688499af7f7348c` |
| 10 | `def` | [_root_.MulActionHom.oneEmbeddingMap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivity.lean/declarations/root-mulactionhom-oneembeddingmap.md) | 151 | `declaration-track:f7aed8512df9fef7debec81b5610886e26a2908acb1f1d202b6f05b81f79b1bd` |
| 11 | `theorem` | [_root_.MulActionHom.oneEmbeddingMap_bijective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivity.lean/declarations/root-mulactionhom-oneembeddingmap-bijective.md) | 157 | `result-track:862d49474ed2509bd375250e20dfb850690af5067011cd5aff0c21701563a4de` |
| 12 | `theorem` | [oneEmbedding_isPretransitive_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivity.lean/declarations/oneembedding-ispretransitive-iff.md) | 163 | `result-track:f1d5857bfdd1077637bcc295ed4688a71c3d4912fdbf54f34586681f4fd0060e` |
| 13 | `theorem` | [is_one_pretransitive_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivity.lean/declarations/is-one-pretransitive-iff.md) | 169 | `result-track:40e2519d1ee0173283a1c52f341a3f9a3e1aba5bac078962274cc050cda402f7` |
| 14 | `theorem` | [is_two_pretransitive_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivity.lean/declarations/is-two-pretransitive-iff.md) | 181 | `result-track:579912ae6f72be3a0fcf3bbf0c8b8deb313d6f3dfc8dbe538571750f5b488d7b` |
| 15 | `theorem` | [isPretransitive_of_is_two_pretransitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivity.lean/declarations/ispretransitive-of-is-two-pretransitive.md) | 203 | `result-track:91475b8912fe5a681fae5cd3637d7f7fe5b17e2e3af8a4f96b853ebb26acae00` |
| 16 | `theorem` | [isPreprimitive_of_is_two_pretransitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivity.lean/declarations/ispreprimitive-of-is-two-pretransitive.md) | 214 | `result-track:8ec93e14e51b77c24c482fa8d9fd177032db60918d441c7f2a2ef613464ecfe3` |
| 17 | `def` | [_root_.MulActionHom.embMap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivity.lean/declarations/root-mulactionhom-embmap.md) | 243 | `declaration-track:c17a6b137e31c9a4986523c210b53b2d97b2877f0a2f723318adb232c35dbcd5` |
| 18 | `theorem` | [isMultiplyPretransitive_of_le'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivity.lean/declarations/ismultiplypretransitive-of-le.md) | 259 | `result-track:6b74f084e7e558c1c009928947b13f1efa68f1225968adc5a61c6f9894f25950` |
| 19 | `theorem` | [isMultiplyPretransitive_of_le](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivity.lean/declarations/ismultiplypretransitive-of-le-source-edition-2.md) | 276 | `result-track:c17c63f1b87338055fef34f82a828ec23273d96dbe012c35fdac3a676fb2fd1d` |
| 20 | `theorem` | [isMultiplyPretransitive_iff_of_conj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivity.lean/declarations/ismultiplypretransitive-iff-of-conj.md) | 298 | `result-track:6f734181a3c8242cac706f124732279747efbf6ee13aa4ab397c147242f7a7d9` |
| 21 | `theorem` | [isMultiplyPretransitive_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivity.lean/declarations/ismultiplypretransitive-iff.md) | 305 | `result-track:5adb7ce990af4aeaf1c65825b6c0d20d1ded1eba43500878d58f59cb63972e2d` |
| 22 | `theorem` | [isMultiplyPretransitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivity.lean/declarations/ismultiplypretransitive.md) | 318 | `result-track:166922dce01ef15dd0a6d1d3d7cbd79f66bd4cd99954f46600048ca4183baee7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a444ac9350a6a17baf5f650003cc08da1d35378024ada65b8159bbcd3205700 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/MultipleTransitivity/Variantf4a07fd7a094dca573323cc58426ae80906ee6efddaff65de1f30f966e42d58d.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/MultipleTransitivity/Variantf4a07fd7a094dca573323cc58426ae80906ee6efddaff65de1f30f966e42d58d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
