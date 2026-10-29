# Verification target: LFunction Lowering Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23a39396af8af07d9ea7881a52daae3ed2f8f865",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LFunctionLowering/Variant1514650fba3a771d84616241bbd0f2fefc29471d868ad510aab6717084046fb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLoweringNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLoweringNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23a39396af8af07d9ea7881a52daae3ed2f8f865`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LFunctionLowering/Variant1514650fba3a771d84616241bbd0f2fefc29471d868ad510aab6717084046fb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LFunctionLowering/Variant1514650fba3a771d84616241bbd0f2fefc29471d868ad510aab6717084046fb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.ModularWave.FiniteQWave` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LFunctionExpression](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLoweringNamespaced.lean/declarations/lfunctionexpression.md) | 13 | `declaration-track:e31f25ec4cde447a92ab2a749ca4e445fbced78f679e91213b9bc08d9b31c3a7` |
| 2 | `def` | [LFunctionExpression.NoForbiddenAuthority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLoweringNamespaced.lean/declarations/lfunctionexpression-noforbiddenauthority.md) | 23 | `declaration-track:58666fc686579cf58549ced20aa4b10645629bed8755ff4ee206f597ccbfd0c2` |
| 3 | `def` | [LFunctionExpression.IsFiniteExpression](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLoweringNamespaced.lean/declarations/lfunctionexpression-isfiniteexpression.md) | 32 | `declaration-track:6f3d22a108a24548a4daca30ac3a04bcc2aeadcc9ac8d7ac72a043a703ba3b66` |
| 4 | `structure` | [EMLProgram](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLoweringNamespaced.lean/declarations/emlprogram.md) | 38 | `declaration-track:f27b717d4cde094133788f3e0ebaad553d80278c1fb245432c3140978c1d98c0` |
| 5 | `structure` | [NANDCircuit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLoweringNamespaced.lean/declarations/nandcircuit.md) | 43 | `declaration-track:f9348edc4678ff7d9cd2037b55c8d78cf6c0d6000a6361d8da6a72ef1a4c722a` |
| 6 | `structure` | [BitMatrixStream](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLoweringNamespaced.lean/declarations/bitmatrixstream.md) | 49 | `declaration-track:daccab3bfec58ef0fae6d47690e013e7ae2a728cbdb0562af8284a714938084e` |
| 7 | `structure` | [BoundedWord](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLoweringNamespaced.lean/declarations/boundedword.md) | 56 | `declaration-track:de35b8aaf4f6ab7b0f21b7ffffc555218b5faad03b8ed8972fceaf793eec9cbd` |
| 8 | `def` | [LFunctionExpression.LowersToEML](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLoweringNamespaced.lean/declarations/lfunctionexpression-lowerstoeml.md) | 61 | `declaration-track:d2903d1f5c1cae4b49a17b08e34d24be09bb9518e7fa05dda5840abd3e6fae23` |
| 9 | `def` | [EMLProgram.LowersToNAND](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLoweringNamespaced.lean/declarations/emlprogram-lowerstonand.md) | 69 | `declaration-track:a0b171736c8e740e5007043c731555145dde1f3cd54df17ec206497255215b22` |
| 10 | `def` | [NANDCircuit.LowersToBitMatrixStream](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLoweringNamespaced.lean/declarations/nandcircuit-lowerstobitmatrixstream.md) | 78 | `declaration-track:c931084f21ca58a2b1a86fba33967a8a74b69925543b162763f8bbfe72e92636` |
| 11 | `def` | [BitMatrixStream.DecodesToWord](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLoweringNamespaced.lean/declarations/bitmatrixstream-decodestoword.md) | 88 | `declaration-track:f6e5489fb2892d4fa847bd50a5980d121c5814b2fe2b8dcf11e582e00179dbc7` |
| 12 | `theorem` | [finite_q_wave_lowers_to_finite_lfunction_expression](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLoweringNamespaced.lean/declarations/finite-q-wave-lowers-to-finite-lfunction-expression.md) | 97 | `result-track:b0556fb59ef6c6a06bdfd79bb2add5dafa7f5c2a04c2f359872a06a3b8adcbe4` |
| 13 | `theorem` | [lfunction_expression_lowers_to_eml_or_residue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLoweringNamespaced.lean/declarations/lfunction-expression-lowers-to-eml-or-residue.md) | 105 | `result-track:26f9c8e67cc26c5962d208e1013be510e3727c67d35d2e23288cf4b8e8e993e6` |
| 14 | `theorem` | [eml_lowers_to_nand_or_residue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLoweringNamespaced.lean/declarations/eml-lowers-to-nand-or-residue.md) | 112 | `result-track:81c8e6a7d7e02910ae677902c7d0438ae6e1658d07ee81a2dfe4d32fe88973e1` |
| 15 | `theorem` | [nand_lowers_to_bitmatrixstream_or_residue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLoweringNamespaced.lean/declarations/nand-lowers-to-bitmatrixstream-or-residue.md) | 119 | `result-track:20d4a12a8edcb8c66519131ca18c42faea87203e605f4931d42975cab9385403` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c2ebf66dd3d855905a3b730e59164c662f64629c8968b4a68c3c1c5ad83897f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LFunctionLowering/Variant1514650fba3a771d84616241bbd0f2fefc29471d868ad510aab6717084046fb8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LFunctionLowering/Variant1514650fba3a771d84616241bbd0f2fefc29471d868ad510aab6717084046fb8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
