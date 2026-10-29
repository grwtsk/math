# Verification target: GRWTSK.Analysis.Fourier.DigammaMultiplier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e167558f4c2c3084a659524c651bf9141143cfd5",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/DigammaMultiplier.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/DigammaMultiplier.lean/index.md) · [Full source](../../../../MeasureAndIntegration/DigammaMultiplier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e167558f4c2c3084a659524c651bf9141143cfd5`.

Source path: `GRWTSK/Analysis/Fourier/DigammaMultiplier.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/DigammaMultiplier.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.LogarithmicDomain`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/LogarithmicDomain.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [archimedeanMultiplier_measurable](../../../../MeasureAndIntegration/DigammaMultiplier.lean/declarations/archimedeanmultiplier-measurable.md) | 26 | `result-track:37c3ea4baa64c37b8d3ff20f3ffed119b45ec012ef205be7eface88ec5a86a4e` |
| 2 | `theorem` | [multiplier_abs_le_of_estimate](../../../../MeasureAndIntegration/DigammaMultiplier.lean/declarations/multiplier-abs-le-of-estimate.md) | 33 | `result-track:4f5d06497def02460025e9da9ceec7d113684fe5fe10dd7f41219a4b22b5ea44` |
| 3 | `theorem` | [actual_archimedean_integrable_of_multiplier_estimate](../../../../MeasureAndIntegration/DigammaMultiplier.lean/declarations/actual-archimedean-integrable-of-multiplier-estimate.md) | 46 | `result-track:8e44f7540a90a2cb1304d26548a73cf854d63700ee59ddbb43f54da7c7fcfd1c` |
| 4 | `theorem` | [normalization_admissibility_of_multiplier_estimate](../../../../MeasureAndIntegration/DigammaMultiplier.lean/declarations/normalization-admissibility-of-multiplier-estimate.md) | 72 | `result-track:f06e958cce73cb73ec257d1a77e42ef056ddcc28bab1d8257ea6d413e40c4969` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cfb8a3779530d98aa729fd30bffc173adce3a8cde5fca9e7d2907455f4fbc5cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Fourier/DigammaMultiplier.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/DigammaMultiplier.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
