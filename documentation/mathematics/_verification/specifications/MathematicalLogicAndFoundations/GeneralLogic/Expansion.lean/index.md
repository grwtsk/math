# Verification target: Expansion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce132bc3d41c2b4804016bc255e8e971540d3e59",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Expansion/Variante92975a1f55379d5ca50e7c05e85d1552b8bd36a59de8ceb2aec0da835d53ac6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Expansion.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Expansion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce132bc3d41c2b4804016bc255e8e971540d3e59`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Expansion/Variante92975a1f55379d5ca50e7c05e85d1552b8bd36a59de8ceb2aec0da835d53ac6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Expansion/Variante92975a1f55379d5ca50e7c05e85d1552b8bd36a59de8ceb2aec0da835d53ac6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Spectral.Fiber` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SpectralShellEncoded](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Expansion.lean/declarations/spectralshellencoded.md) | 21 | `declaration-track:df3f5c24dc66c35fbf57b46c6938cd67706943867aa25fdf9e6b331f774ba4ab` |
| 2 | `theorem` | [ext](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Expansion.lean/declarations/ext.md) | 28 | `result-track:9ee43fd3a24bd8ee9e24deeb8ef4655bdab8c6bf3802ce1307ca861af9ffc724` |
| 3 | `def` | [encodeShell](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Expansion.lean/declarations/encodeshell.md) | 42 | `declaration-track:2b990a83977c1d8c8257298849e6ff7258286f24d79b0d2e9354858fabe21290` |
| 4 | `def` | [decodeShell](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Expansion.lean/declarations/decodeshell.md) | 50 | `declaration-track:62d3d6823675a1e81109d56d75cd852779e2970acce7485cffbe29872d5393e7` |
| 5 | `theorem` | [encodeShell_center_value](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Expansion.lean/declarations/encodeshell-center-value.md) | 62 | `result-track:94ccd6af4a291872310037eb2a741b2537aca742855409ab7d92543737594ee5` |
| 6 | `theorem` | [encodeShell_shell_value](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Expansion.lean/declarations/encodeshell-shell-value.md) | 71 | `result-track:37cacfb2c0ffb15cc9f04c980779077a5596a8b2af9f1f0a0c1650fb532f65ed` |
| 7 | `theorem` | [decode_encode_shell](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Expansion.lean/declarations/decode-encode-shell.md) | 78 | `result-track:77cfed34969e1ba1cf4693093f26855dbe240f6302e10fdb41e89c3a9ed87645` |
| 8 | `theorem` | [encode_decode_shell](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Expansion.lean/declarations/encode-decode-shell.md) | 87 | `result-track:fdcc1c60495f92a0f03f10d4873382adad33f7228ad4ce5683ee95a6e58d7503` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd3f33b2b99f592a424d177115627916a41402332e9cc90d90dc326ff7369805 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Expansion/Variante92975a1f55379d5ca50e7c05e85d1552b8bd36a59de8ceb2aec0da835d53ac6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Expansion/Variante92975a1f55379d5ca50e7c05e85d1552b8bd36a59de8ceb2aec0da835d53ac6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
