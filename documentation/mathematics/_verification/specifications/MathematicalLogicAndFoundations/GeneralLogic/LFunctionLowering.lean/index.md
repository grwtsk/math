# Verification target: LFunction Lowering

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "456f142a65ea80b6dd08b922c57aaee6e8db1199",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LFunctionLowering/Variantb17c84fd29a4498dd47d25660804f582422e343464556337f5b167e806ddb617.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLowering.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLowering.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `456f142a65ea80b6dd08b922c57aaee6e8db1199`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LFunctionLowering/Variantb17c84fd29a4498dd47d25660804f582422e343464556337f5b167e806ddb617.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LFunctionLowering/Variantb17c84fd29a4498dd47d25660804f582422e343464556337f5b167e806ddb617.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.ModularWave.FiniteQWave` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LFunctionExpression](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLowering.lean/declarations/lfunctionexpression.md) | 5 | `declaration-track:eb919c286895c31d7f29481e5c335f5dab46ae912419fbc6b80a089711b4adcb` |
| 2 | `def` | [LFunctionExpression.NoForbiddenAuthority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLowering.lean/declarations/lfunctionexpression-noforbiddenauthority.md) | 15 | `declaration-track:37a9495fff4d4f184431d097a41dff3081f8c74864a663805df63da1c076c453` |
| 3 | `def` | [LFunctionExpression.IsFiniteExpression](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLowering.lean/declarations/lfunctionexpression-isfiniteexpression.md) | 24 | `declaration-track:6713d496d26f3789ca85ab255a90159a875cafc58c8bb9280aa030327af04082` |
| 4 | `structure` | [EMLProgram](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLowering.lean/declarations/emlprogram.md) | 30 | `declaration-track:7153b9e04e5d7911fbd7c9e0077fa3bc187c9ce37838323a11c88311c5fa9244` |
| 5 | `structure` | [NANDCircuit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLowering.lean/declarations/nandcircuit.md) | 35 | `declaration-track:6cfa8efcda538c0a42bc717f8c2687515cee57db9c78a7ec15c49ecb4dd851bf` |
| 6 | `structure` | [BitMatrixStream](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLowering.lean/declarations/bitmatrixstream.md) | 41 | `declaration-track:37072bd5546f3ac10194c6865d4c57d825354cd96fe9ef6d2aba3d19efdd2c36` |
| 7 | `structure` | [BoundedWord](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLowering.lean/declarations/boundedword.md) | 48 | `declaration-track:15981dac8cd445a3820a4ff42dd3f3064765fc7ba65c613f5c009fab79690f16` |
| 8 | `def` | [LFunctionExpression.LowersToEML](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLowering.lean/declarations/lfunctionexpression-lowerstoeml.md) | 53 | `declaration-track:4321731f0a5a001067131d26c0404c98db85b7bc9fb48da13bdc42bac7b46d4e` |
| 9 | `def` | [EMLProgram.LowersToNAND](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLowering.lean/declarations/emlprogram-lowerstonand.md) | 61 | `declaration-track:046d5aa1b32b551195a8c2e1d101dabac5d7ac8fb3b5aeea5b4bcf6966266582` |
| 10 | `def` | [NANDCircuit.LowersToBitMatrixStream](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLowering.lean/declarations/nandcircuit-lowerstobitmatrixstream.md) | 70 | `declaration-track:2e9e326e25d6aaa9862f1fd18c1db5fec3b8d4164010492fac7319d2ac570f95` |
| 11 | `def` | [BitMatrixStream.DecodesToWord](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLowering.lean/declarations/bitmatrixstream-decodestoword.md) | 80 | `declaration-track:3450267215282de6cee4067729abee3aed1feaca6fc1255edbabe0909aa5b6fa` |
| 12 | `theorem` | [finite_q_wave_lowers_to_finite_lfunction_expression](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLowering.lean/declarations/finite-q-wave-lowers-to-finite-lfunction-expression.md) | 89 | `result-track:ccdd5e205babea4af7eed9f91f3ee695259a12322230a9fbfb01321f6091d63c` |
| 13 | `theorem` | [lfunction_expression_lowers_to_eml_or_residue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLowering.lean/declarations/lfunction-expression-lowers-to-eml-or-residue.md) | 97 | `result-track:301ca6785f4f5667fbefb07995eb186e8adc59d2fa7865aad04093fd50704d1f` |
| 14 | `theorem` | [eml_lowers_to_nand_or_residue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLowering.lean/declarations/eml-lowers-to-nand-or-residue.md) | 104 | `result-track:2b9be92c957e4693425569fea64e1accb17a093e9505e4dd181b94a2f227c7fb` |
| 15 | `theorem` | [nand_lowers_to_bitmatrixstream_or_residue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LFunctionLowering.lean/declarations/nand-lowers-to-bitmatrixstream-or-residue.md) | 111 | `result-track:3e6affcc91785a3bf84a7f7b2c0ee237f49587c924e9049bd629172db27adfd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3cfff5fe7b8665c203f27b12ab334afd7b2e2c3127cf5f5a482eb68f91e7194f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LFunctionLowering/Variantb17c84fd29a4498dd47d25660804f582422e343464556337f5b167e806ddb617.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LFunctionLowering/Variantb17c84fd29a4498dd47d25660804f582422e343464556337f5b167e806ddb617.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
