# Verification target: Encode Decode Round Trips

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdef2a1951558f1303a266eab8f011d4edeed86a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/CenterShellReconstruction/Variante92975a1f55379d5/EncodeDecodeRoundTrips.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodeDecodeRoundTrips.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodeDecodeRoundTrips.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdef2a1951558f1303a266eab8f011d4edeed86a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/CenterShellReconstruction/Variante92975a1f55379d5/EncodeDecodeRoundTrips.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/CenterShellReconstruction/Variante92975a1f55379d5/EncodeDecodeRoundTrips.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Spectral.Fiber` — import line 19; external provider; requires a separately pinned dependency.
- [Center Shell Data](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CenterShellData.lean/index.md) — import line 21; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [encodeShell](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodeDecodeRoundTrips.lean/declarations/encodeshell.md) | 44 | `declaration-track:6a5becf57d6abccd41fb69a8edd35c05bfd598cc42d01f7c53388596d829afae` |
| 2 | `def` | [decodeShell](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodeDecodeRoundTrips.lean/declarations/decodeshell.md) | 53 | `declaration-track:92b849c4ca1b33e11f029f997f6df3312b3071fda0e090308075c5471d39a3c1` |
| 3 | `theorem` | [encodeShell_center_value](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodeDecodeRoundTrips.lean/declarations/encodeshell-center-value.md) | 66 | `result-track:a901c08e2074fa37bfd2a9b54a059adb5a16e9e4744a834d03a27fad84dc9fb3` |
| 4 | `theorem` | [encodeShell_shell_value](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodeDecodeRoundTrips.lean/declarations/encodeshell-shell-value.md) | 76 | `result-track:c86f09116ef68fd5974524bf4b988d1e2d0a73f072c962eecc0eb4343d335fbc` |
| 5 | `theorem` | [decode_encode_shell](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodeDecodeRoundTrips.lean/declarations/decode-encode-shell.md) | 84 | `result-track:329c32552ea258b8929f3e15014cef18781711a0271e23caa3d4cf5362121b56` |
| 6 | `theorem` | [encode_decode_shell](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodeDecodeRoundTrips.lean/declarations/encode-decode-shell.md) | 94 | `result-track:dcf8f545e68544e298d0c5cb0bb1243fa23105357132b58ab3917d4cb4ddc1eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ee414394abf95db2eb9eb2a55e6f18437ae7cd9a2686cc9acbaa65645057bca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/CenterShellReconstruction/Variante92975a1f55379d5/EncodeDecodeRoundTrips.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/CenterShellReconstruction/Variante92975a1f55379d5/EncodeDecodeRoundTrips.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
