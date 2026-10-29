# Verification target: Normal Form Namespaced Is Canonical Executable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "997ff941573cc7f30bca4768728ff07933796684",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NormalForm/Variant118c3d0c72dace7fbbc1306f842140e14135b7260ebbc39b450cb951fc8acc5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormNamespacedIsCanonicalExecutable.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormNamespacedIsCanonicalExecutable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `997ff941573cc7f30bca4768728ff07933796684`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NormalForm/Variant118c3d0c72dace7fbbc1306f842140e14135b7260ebbc39b450cb951fc8acc5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/NormalForm/Variant118c3d0c72dace7fbbc1306f842140e14135b7260ebbc39b450cb951fc8acc5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.StratifiedBoundary.OrdinalTally.Semantics` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsCanonicalExecutable](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormNamespacedIsCanonicalExecutable.lean/declarations/iscanonicalexecutable.md) | 21 | `declaration-track:a653d4d32594f905d3202ae1e9b2ea196eb22b479fc7d9802df9d8301ca86019` |
| 2 | `structure` | [ExecutableNormalForm](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormNamespacedIsCanonicalExecutable.lean/declarations/executablenormalform.md) | 29 | `declaration-track:3670e41818a0e3f050cb45615eadf600979246ca29de35df923d0036bae071e5` |
| 3 | `def` | [value](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormNamespacedIsCanonicalExecutable.lean/declarations/value.md) | 35 | `declaration-track:89dcc2cbebe42cb30d5f57ebb6ca00e91d3504032f8af59c36efa59132941fd2` |
| 4 | `def` | [raw](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormNamespacedIsCanonicalExecutable.lean/declarations/raw.md) | 39 | `declaration-track:b5e956be61a2467f8774876e93e03ab4810217db1cffa83335de4c49e7a32810` |
| 5 | `abbrev` | [CanonicalCode](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormNamespacedIsCanonicalExecutable.lean/declarations/canonicalcode.md) | 45 | `declaration-track:f4d5f75437b4dba16b90555481ffdd97de8630863792929f3613c4e8c9375d81` |
| 6 | `def` | [zero](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormNamespacedIsCanonicalExecutable.lean/declarations/zero.md) | 51 | `declaration-track:a51d3db6860296db6b3c0b7cb4f5861671d40fa722f28444f118b57619b3d4e3` |
| 7 | `def` | [tall](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormNamespacedIsCanonicalExecutable.lean/declarations/tall.md) | 56 | `declaration-track:5971899e40961ff903e50d3f389cba36c69b4b1f80c8a2bf7235e91d27624f9c` |
| 8 | `structure` | [NormalizationCertificate](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormNamespacedIsCanonicalExecutable.lean/declarations/normalizationcertificate.md) | 73 | `declaration-track:8795e52c4f014d4887334f14fa7e089f9f16e011e7c766c033fbe7a0837c9cbd` |
| 9 | `def` | [NormalizationCertificate.notationallyEqual](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormNamespacedIsCanonicalExecutable.lean/declarations/normalizationcertificate-notationallyequal.md) | 86 | `declaration-track:868c68c6237bad6f6463d498c05d949b759abe04332d92894cb22f0acf1a5928` |
| 10 | `theorem` | [ordinalTally_normalization_sound](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormNamespacedIsCanonicalExecutable.lean/declarations/ordinaltally-normalization-sound.md) | 94 | `result-track:820e129625733b7c765f96bec182255ccd34e2a18ffc6e5f99873e2e1e3489ef` |
| 11 | `theorem` | [ordinalTally_normalization_fixed](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormNamespacedIsCanonicalExecutable.lean/declarations/ordinaltally-normalization-fixed.md) | 103 | `result-track:9369990e35fe3e239b322224e5b65c30ea934934d0631cd2cdc9df2e04250c6e` |
| 12 | `theorem` | [normalized_notation_equal_is_semantic](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormNamespacedIsCanonicalExecutable.lean/declarations/normalized-notation-equal-is-semantic.md) | 112 | `result-track:0762db8c8b8016d26c40e0618151dcb672741d39ad34fc9ebd30ecd53a02c89a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12b75d03c18b18a3197f5bb2f2fec00f86a78e2ed3c8f6534a50c818bf7cf8ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NormalForm/Variant118c3d0c72dace7fbbc1306f842140e14135b7260ebbc39b450cb951fc8acc5e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/NormalForm/Variant118c3d0c72dace7fbbc1306f842140e14135b7260ebbc39b450cb951fc8acc5e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
