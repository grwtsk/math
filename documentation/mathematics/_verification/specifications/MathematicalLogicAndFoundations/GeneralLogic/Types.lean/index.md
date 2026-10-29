# Verification target: GRWTSK.Logic.Classification.Types

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cff43b32657d1d1dff5aa223ff56c3dc4108183",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/Classification/Types.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Types.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Types.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cff43b32657d1d1dff5aa223ff56c3dc4108183`.

Source path: `GRWTSK/Logic/Classification/Types.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/Classification/Types.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Order.Taxonomy.Core`](../../../../../Combinatorics/Core.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Signature](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Types.lean/declarations/signature.md) | 25 | `declaration-track:d077e2ef1d996978cecf27d86463be04cf4f21b030f4129246732ac6e70be96b` |
| 2 | `def` | [leanTypeSignature](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Types.lean/declarations/leantypesignature.md) | 31 | `declaration-track:bd6f90c02678c0d04509ede112016db7e1f114f39cfcbf5df6d8d0b8b5815fda` |
| 3 | `def` | [propositionSignature](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Types.lean/declarations/propositionsignature.md) | 36 | `declaration-track:e8656fa7ceb13bc39a949e1390d30e23d7fe5cd61adc6acd98e12b0b3801a4a6` |
| 4 | `def` | [policySignature](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Types.lean/declarations/policysignature.md) | 41 | `declaration-track:a7fa1523fc1ab9b26263f1f262cf33307447425c3f56efe4af299a15b1b59425` |
| 5 | `structure` | [CheckedTerm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Types.lean/declarations/checkedterm.md) | 47 | `declaration-track:d7ff076990eba08ec90f190c1e0e4645fbbe2156af9f2ad3318a16eda1ffbe41` |
| 6 | `def` | [signatureOfFamily](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Types.lean/declarations/signatureoffamily.md) | 53 | `declaration-track:f3b4f647b9fd9c60afd9263ca3207859de95bb40bb9c091f6672e32dfa7a05d6` |
| 7 | `theorem` | [signatureOfFamily_el](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Types.lean/declarations/signatureoffamily-el.md) | 56 | `result-track:ab27b3d7c4c62379866e2b2c48671401ab078795cf20b4056631e4f6c8754b67` |
| 8 | `structure` | [Binding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Types.lean/declarations/binding.md) | 61 | `declaration-track:b80d0a9a7be51830eaeee357957578fc29bbcc9509defe2e50a6232f5b3a22ae` |
| 9 | `def` | [Binding.identity](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Types.lean/declarations/binding-identity.md) | 65 | `declaration-track:e08adf1b77bcb2cae40e3931a8c0f9b66c13fa4d3bc0d509e51f82f418997f98` |
| 10 | `def` | [Binding.comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Types.lean/declarations/binding-comp.md) | 68 | `declaration-track:0b951b918c129897989f982877165470ff48c5250a1187e33c624e55eb40bba1` |
| 11 | `structure` | [ReversibleBinding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Types.lean/declarations/reversiblebinding.md) | 74 | `declaration-track:57c437bc9a433a406d954a49878477b6215bf60092de5c0c50dcf931904b6298` |
| 12 | `structure` | [RestrictionSystem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Types.lean/declarations/restrictionsystem.md) | 81 | `declaration-track:1f87126aec9774c666bb594f928f8bfe6967deea320161b05e1f27af4378c2ab` |
| 13 | `def` | [RestrictionSystem.CompatiblePair](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Types.lean/declarations/restrictionsystem-compatiblepair.md) | 91 | `declaration-track:6c254b4d16d5bda058fd620fceb96d6bec525b38a2e34156c197d706cd1c82b8` |
| 14 | `def` | [RestrictionSystem.UniqueLift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Types.lean/declarations/restrictionsystem-uniquelift.md) | 97 | `declaration-track:4cfa771aeb0f1d3f850f57ba49359c7e9c895931651477fd1262a42a1c5bcd52` |
| 15 | `def` | [RestrictionSystem.bindOfUniqueLift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Types.lean/declarations/restrictionsystem-bindofuniquelift.md) | 102 | `declaration-track:9a90a00ef8eb0fdbc3318bd302314cf3e655f9a0d8d2c64c17ed156d75dc1df3` |
| 16 | `theorem` | [RestrictionSystem.bindOfUniqueLift_compatible](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Types.lean/declarations/restrictionsystem-bindofuniquelift-compatible.md) | 106 | `result-track:6ae24bea0a8ac2fb6ea7bc5cdb61e4442226fe65e70823e666068fbb676cabc8` |
| 17 | `theorem` | [noUniversalConversion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Types.lean/declarations/nouniversalconversion.md) | 113 | `result-track:2f2662b26fbd4409085008eb094b6ce83de7321e79cec76d0d8139833405f02b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d9d9bb3f67a0ead6f6faa9dcaca0cf8fef6e2be6476fe072c6748750e9283e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Logic/Classification/Types.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Types__SourceOccurrence35f064557c2d6520a8709440.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
