# Verification target: Quantization Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93a3915536481bd67ec3ecb005b770264fa1fb53",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quantization/Variant7388485f04c6ffb2abe3b26b7e583243c3f6ea2856f1be1df7222c13bc5e98e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/QuantizationNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/QuantizationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93a3915536481bd67ec3ecb005b770264fa1fb53`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quantization/Variant7388485f04c6ffb2abe3b26b7e583243c3f6ea2856f1be1df7222c13bc5e98e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Quantization/Variant7388485f04c6ffb2abe3b26b7e583243c3f6ea2856f1be1df7222c13bc5e98e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Carrier.BinaryMatrix` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Tensor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TensorQuantizer](../../../../../MathematicalLogicAndFoundations/GeneralLogic/QuantizationNamespaced.lean/declarations/tensorquantizer.md) | 30 | `declaration-track:cd83618e1899f98b4849b2ca7a8929e3f5035f76991640e6d665e8960c901c21` |
| 2 | `def` | [quantizeChannel](../../../../../MathematicalLogicAndFoundations/GeneralLogic/QuantizationNamespaced.lean/declarations/quantizechannel.md) | 36 | `declaration-track:f6f5d234dbc58c08bcf23cf4b3b9b5238da2131e63fcc96e76cd1ffd18d97058` |
| 3 | `def` | [unitThresholdQuantizer](../../../../../MathematicalLogicAndFoundations/GeneralLogic/QuantizationNamespaced.lean/declarations/unitthresholdquantizer.md) | 44 | `declaration-track:1db8c02d2db91cf91895f24094f9462bcd913f24c27c43b702c8f2379b5fa74b` |
| 4 | `theorem` | [quantization_not_declared_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/QuantizationNamespaced.lean/declarations/quantization-not-declared-injective.md) | 54 | `result-track:1c9eacbd724fe94d94a247333162a80b7bbc6d71ef59563f9f57716506957264` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47e0766bcfd1f8b25c3a889c601e051a9b384ea9cbcff7b0d89ef231f18443e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quantization/Variant7388485f04c6ffb2abe3b26b7e583243c3f6ea2856f1be1df7222c13bc5e98e2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Quantization/Variant7388485f04c6ffb2abe3b26b7e583243c3f6ea2856f1be1df7222c13bc5e98e2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
