# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ShellBijection.Variant9db51ea3c83e043b850fea847afc8fdea003320d7efb2b8910405980f427147e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1922a5eed9e130a0f777a3eb1e8c38af5575e6d9",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant9db51ea3c83e043b850fea847afc8fdea003320d7efb2b8910405980f427147e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant9db51ea3c83e043b850fea847afc8fdea003320d7efb2b8910405980f427147e.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant9db51ea3c83e043b850fea847afc8fdea003320d7efb2b8910405980f427147e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1922a5eed9e130a0f777a3eb1e8c38af5575e6d9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant9db51ea3c83e043b850fea847afc8fdea003320d7efb2b8910405980f427147e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant9db51ea3c83e043b850fea847afc8fdea003320d7efb2b8910405980f427147e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Expansion.ShellFiber` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Carrier.BinaryMatrix` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shellMatrix](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant9db51ea3c83e043b850fea847afc8fdea003320d7efb2b8910405980f427147e.lean/declarations/shellmatrix--2f0f97c52a57d315deadd1ec.md) | 30 | `declaration-track:2f0f97c52a57d315deadd1ec5f5bb8e12896deffd35b590a3db8181048b0ad01` |
| 2 | `def` | [matrixCenter](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant9db51ea3c83e043b850fea847afc8fdea003320d7efb2b8910405980f427147e.lean/declarations/matrixcenter--29094308b36bb1554f22acb2.md) | 33 | `declaration-track:29094308b36bb1554f22acb2ce2422c7c539a3cdabbcb6c8df64ff6e1424bd9e` |
| 3 | `def` | [matrixShell](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant9db51ea3c83e043b850fea847afc8fdea003320d7efb2b8910405980f427147e.lean/declarations/matrixshell--ff05e79214a0acb70768d574.md) | 37 | `declaration-track:ff05e79214a0acb70768d5741f8dddab1f9427b24ea9adf3d8e5ac2ac35105b5` |
| 4 | `structure` | [ShellEncoded](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant9db51ea3c83e043b850fea847afc8fdea003320d7efb2b8910405980f427147e.lean/declarations/shellencoded--3a2e32fe8aa488c64922f402.md) | 40 | `declaration-track:3a2e32fe8aa488c64922f40289dc39d2ed2a205c723850a9034869a2c9336f31` |
| 5 | `theorem` | [ext](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant9db51ea3c83e043b850fea847afc8fdea003320d7efb2b8910405980f427147e.lean/declarations/ext--7ecdcb6b9f1b7fab769f2eca.md) | 47 | `result-track:7ecdcb6b9f1b7fab769f2eca407fc1877834fba0b49e01b2d1f000e2c9563e43` |
| 6 | `def` | [encodeShell](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant9db51ea3c83e043b850fea847afc8fdea003320d7efb2b8910405980f427147e.lean/declarations/encodeshell--a9639ad813c67e5f32312918.md) | 63 | `declaration-track:a9639ad813c67e5f32312918d4c624c6207bff24c847c5b25f9b75217b2fd46d` |
| 7 | `def` | [decodedEntry](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant9db51ea3c83e043b850fea847afc8fdea003320d7efb2b8910405980f427147e.lean/declarations/decodedentry--eeeb6f950156c9f325c62e76.md) | 74 | `declaration-track:eeeb6f950156c9f325c62e76ea7b78325f4b95841da5cc380fd308d5ec68817b` |
| 8 | `theorem` | [decodedEntry_center](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant9db51ea3c83e043b850fea847afc8fdea003320d7efb2b8910405980f427147e.lean/declarations/decodedentry-center--67ebeaa35936c32dade746ab.md) | 85 | `result-track:67ebeaa35936c32dade746abdcd03538e22cc7d85e245e5eecfbea50f682f87d` |
| 9 | `theorem` | [decodedEntry_shell](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant9db51ea3c83e043b850fea847afc8fdea003320d7efb2b8910405980f427147e.lean/declarations/decodedentry-shell--3c61cff2546715d3d06846cc.md) | 95 | `result-track:3c61cff2546715d3d06846ccbc193038522a3e9933cb6a3032f8163e18542305` |
| 10 | `def` | [decodeShell](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant9db51ea3c83e043b850fea847afc8fdea003320d7efb2b8910405980f427147e.lean/declarations/decodeshell--6d483f9888089da2822bb6c9.md) | 103 | `declaration-track:6d483f9888089da2822bb6c9f5aac5b502c9c4e3a147c29a8ff2a3daff5595df` |
| 11 | `theorem` | [get_decodeShell](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant9db51ea3c83e043b850fea847afc8fdea003320d7efb2b8910405980f427147e.lean/declarations/get-decodeshell--b606d20104ac565188d5eb62.md) | 109 | `result-track:b606d20104ac565188d5eb62b4b8fc4835561d07092326dfe6649f300e861c6d` |
| 12 | `theorem` | [decodeShell_rows](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant9db51ea3c83e043b850fea847afc8fdea003320d7efb2b8910405980f427147e.lean/declarations/decodeshell-rows--e93e8db0db57c246d7db3720.md) | 118 | `result-track:e93e8db0db57c246d7db372004b446def9536b70f5231116d95199667d58d7e0` |
| 13 | `theorem` | [decodeShell_cols](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant9db51ea3c83e043b850fea847afc8fdea003320d7efb2b8910405980f427147e.lean/declarations/decodeshell-cols--898c188939d02d7d99fd6988.md) | 123 | `result-track:898c188939d02d7d99fd69886478e735e3cf6c9d8f4a7f0c2819114703f77973` |
| 14 | `theorem` | [decode_encode_shell](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant9db51ea3c83e043b850fea847afc8fdea003320d7efb2b8910405980f427147e.lean/declarations/decode-encode-shell--c1f90cf7c819e7004bbf3146.md) | 127 | `result-track:c1f90cf7c819e7004bbf314637d132169420b5ce11a8dfa86507a74176ab3355` |
| 15 | `theorem` | [encode_decode_shell](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant9db51ea3c83e043b850fea847afc8fdea003320d7efb2b8910405980f427147e.lean/declarations/encode-decode-shell--17959b962bb40a4f7b713693.md) | 146 | `result-track:17959b962bb40a4f7b7136938b69701628a7bbd7e070ca95fc14ad685fdd980e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b4f994ad2b2536a3a18c493bbca3d7afc28cb446d2d02a420c2896a0ac9fbc02 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant9db51ea3c83e043b850fea847afc8fdea003320d7efb2b8910405980f427147e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant9db51ea3c83e043b850fea847afc8fdea003320d7efb2b8910405980f427147e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
