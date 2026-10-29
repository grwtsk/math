# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicStepCorrection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40a4c3d9cf3af0f5ea33d1e8c07a983b3f045ee6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicStepCorrection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerCyclicStepCorrection.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerCyclicStepCorrection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40a4c3d9cf3af0f5ea33d1e8c07a983b3f045ee6`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicStepCorrection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicStepCorrection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerArithmeticReduction`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticReduction.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nonAliasingFejerPositiveFirstMoment](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerCyclicStepCorrection.lean/declarations/nonaliasingfejerpositivefirstmoment.md) | 13 | `declaration-track:7c8b79527a96d1510d0f104f5385c777ec5bdb6e93da3383e5ba9ac2d7b36424` |
| 2 | `def` | [nonAliasingFejerCyclicStepBudget](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerCyclicStepCorrection.lean/declarations/nonaliasingfejercyclicstepbudget.md) | 24 | `declaration-track:c9088df74879e4f9653654a4c56a8e993527968c30524a35fb09179d19635450` |
| 3 | `def` | [NonAliasingFejerSharpStepL1FirstMomentFourClaim](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerCyclicStepCorrection.lean/declarations/nonaliasingfejersharpstepl1firstmomentfourclaim.md) | 31 | `declaration-track:18bb1cb89e0b59a9f3b4f5143a2c4c3b2b612303dedc77ac44acba49ccdb8de2` |
| 4 | `def` | [NonAliasingPrimePrefixFejerFirstMomentComparisonFactorFour](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerCyclicStepCorrection.lean/declarations/nonaliasingprimeprefixfejerfirstmomentcomparisonfactorfour.md) | 39 | `declaration-track:8018e06d2d9cb23244568d0137bdbf970a3ab7e302fc641ce740b85af353e863` |
| 5 | `theorem` | [sharpStepL1FirstMomentFour_to_arithmeticComparison](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerCyclicStepCorrection.lean/declarations/sharpstepl1firstmomentfour-to-arithmeticcomparison.md) | 49 | `result-track:c8255ac5cd4ac27cba01202d828098534db35d95cd0c47e1e80f929d13f70417` |
| 6 | `theorem` | [nonAliasingFejerCyclicStepBudget_le_harmonicShape](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerCyclicStepCorrection.lean/declarations/nonaliasingfejercyclicstepbudget-le-harmonicshape.md) | 69 | `result-track:6f2aff5b7ca95302f9a50e59f1f918b6b04eff1ad5df774c8eb6292bd2aaf597` |
| 7 | `theorem` | [correctedFejerArithmeticTail_le_logSquaredShape](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerCyclicStepCorrection.lean/declarations/correctedfejerarithmetictail-le-logsquaredshape.md) | 84 | `result-track:96b7e540a17163873dcd8ec6cf558a41c57dbba246eec647cdd79e3f1eb27198` |
| 8 | `def` | [NonAliasingFejerCyclicTranslationContractionClaim](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerCyclicStepCorrection.lean/declarations/nonaliasingfejercyclictranslationcontractionclaim.md) | 106 | `declaration-track:41af356a5cdd8ce1b0f755be8251867c19361a79bb8de33082a78a0b18cdee64` |
| 9 | `theorem` | [cyclicTranslationContraction_iff_correctedL1](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerCyclicStepCorrection.lean/declarations/cyclictranslationcontraction-iff-correctedl1.md) | 115 | `result-track:9e12b4081cbd45cf530243f1944c9210e5f80299e4783b7788a1ceaa0ba1c9f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4201883082e73bd22b7919167fa8a671a6af95c62d4267ff2875065a653d49a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicStepCorrection.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicStepCorrection.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
