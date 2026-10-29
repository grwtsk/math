# Verification target: Source Sampling Coefficients

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f66f2f4053336c22c8fdc7cc3106f6b3ede1bc7",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantbd29f0bd719547b444121c4e4f0ec51c20bce66058d9f1d4bc6651f71618ae7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f66f2f4053336c22c8fdc7cc3106f6b3ede1bc7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantbd29f0bd719547b444121c4e4f0ec51c20bce66058d9f1d4bc6651f71618ae7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantbd29f0bd719547b444121c4e4f0ec51c20bce66058d9f1d4bc6651f71618ae7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficientWeight](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/declarations/coefficientweight.md) | 23 | `declaration-track:590f6caa953fe33d1fc88c5a885f47c86f594b7bec8805360594ddbcf27684a3` |
| 2 | `def` | [absoluteCoefficientWeight](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/declarations/absolutecoefficientweight.md) | 27 | `declaration-track:7f046d4b7081a184b5578bf484b5fee48b90778b6de5ea69a034cfd8bc45c87e` |
| 3 | `def` | [coefficientEnvelope](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/declarations/coefficientenvelope.md) | 31 | `declaration-track:9bfc82e61b9a297d766862ba12df75a4b8fa29c525994c674b3531f84003ece5` |
| 4 | `theorem` | [coefficientEnvelope_exp](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/declarations/coefficientenvelope-exp.md) | 35 | `result-track:c4919970278daed62a62e4228081419b473e1c82cff62b35c6b1281415494910` |
| 5 | `theorem` | [exponential_half_integral](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/declarations/exponential-half-integral.md) | 53 | `result-track:fa03f541b1709de159a49a5808472db8b7df631fc8a82b84974e1d3d3fb2e33a` |
| 6 | `theorem` | [exponential_half_integrable](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/declarations/exponential-half-integrable.md) | 66 | `result-track:628e5662ad723a22cca7b854865508149e72777eab1fac7e0006d84511915b21` |
| 7 | `theorem` | [even_exponential_eq_indicator](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/declarations/even-exponential-eq-indicator.md) | 74 | `result-track:970bb8f2b4fad13b5f419864a65a3d3a21b49ba65b440b6eab15846e12d04628` |
| 8 | `theorem` | [even_exponential_integrable](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/declarations/even-exponential-integrable.md) | 89 | `result-track:5764223493916f09d16050e90c8cb40b0d8a8cd3ec40dfff124918daf5991c79` |
| 9 | `theorem` | [even_exponential_integral](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/declarations/even-exponential-integral.md) | 99 | `result-track:460c07aad56caf70f09635b394efba9fdce0afc22c3162dee1a024c33b28708f` |
| 10 | `theorem` | [coefficientEnvelope_integrable](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/declarations/coefficientenvelope-integrable.md) | 116 | `result-track:6734cb52346f6dd1c0757ab87deaf69fb47b1cb357607c1badd783cc3b367617` |
| 11 | `theorem` | [coefficientEnvelope_integral](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/declarations/coefficientenvelope-integral.md) | 128 | `result-track:4d3f5d5db18b586e2a12e6854138618c89c3a9fb2db2945c3410bdeec272b00b` |
| 12 | `theorem` | [fract_le_min](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/declarations/fract-le-min.md) | 140 | `result-track:7adc0b0b7e8261b90f4fec6c4be6aeacb2f73598ad7ed2cd275de6b351ea9b87` |
| 13 | `theorem` | [absoluteCoefficientWeight_nonneg](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/declarations/absolutecoefficientweight-nonneg.md) | 149 | `result-track:e1c041774d8bf46d87cd27ae06a42937f2589d67d52526ad90599d5e4023bc45` |
| 14 | `theorem` | [absoluteCoefficientWeight_le_envelope](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/declarations/absolutecoefficientweight-le-envelope.md) | 156 | `result-track:097b2b9f7fbea982d666ec4d52950fc122b4ae1485cdb98d9615cc4926eea1c7` |
| 15 | `theorem` | [absoluteCoefficientWeight_integrable](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/declarations/absolutecoefficientweight-integrable.md) | 164 | `result-track:36bef302b96fbef70550e6a34437ae9c53e17061b81048cd6ab76cbae2c84c65` |
| 16 | `theorem` | [coefficientWeight_norm](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/declarations/coefficientweight-norm.md) | 174 | `result-track:3e4375a1afdab5f273af0413b85b98de3dd234f291a7d2b4943d53a429ce6ddc` |
| 17 | `theorem` | [coefficientWeight_integrable](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/declarations/coefficientweight-integrable.md) | 181 | `result-track:573cc12976acff6c15e0d7550ba4f957192c5ae0980f0116a0ff54de71a4a243` |
| 18 | `def` | [signedCoefficientMoment](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/declarations/signedcoefficientmoment.md) | 190 | `declaration-track:9a273a98b3e504cd8634e61ee61eef6c39a15c47a52ae4c84b3cacac3245fb43` |
| 19 | `def` | [absoluteCoefficientMoment](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/declarations/absolutecoefficientmoment.md) | 194 | `declaration-track:bc5db3286dbf87548395882283d5d3f7c04eb4b0e90d80aab94300ec2b9e4330` |
| 20 | `theorem` | [absoluteCoefficientMoment_le_factorial](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/declarations/absolutecoefficientmoment-le-factorial.md) | 198 | `result-track:02bb40e36783fc0ca5c6fbd7f250747aab956fd596b47acfb09efa1ddc7ca34e` |
| 21 | `theorem` | [signedCoefficientMoment_abs_le_factorial](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/declarations/signedcoefficientmoment-abs-le-factorial.md) | 207 | `result-track:43e72867ef64c2f0fd933b9f067d4668c20eaaed41b31c7dedc7565d289f5dc2` |
| 22 | `def` | [samplingAlpha0](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/declarations/samplingalpha0.md) | 219 | `declaration-track:3f94047d844ec05e694c66808aac51993eb0ea37c27bb8d06f0668e69738c8a0` |
| 23 | `def` | [samplingAlpha1](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/declarations/samplingalpha1.md) | 222 | `declaration-track:d1ba3827eeffa364166155519b715a5f9a3eaca2915d11af1ebb554a5c100c0c` |
| 24 | `def` | [samplingAlpha2](../../../../MeasureAndIntegration/SourceSamplingCoefficients.lean/declarations/samplingalpha2.md) | 225 | `declaration-track:e0c05ef9e55fc29e6e07714dee62c4ae4663c9589aa8fd61d4ca853ece5a64a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32f52646845259c3c2042062737f51fed933df148338b7035cfaa075e5e87e44 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantbd29f0bd719547b444121c4e4f0ec51c20bce66058d9f1d4bc6651f71618ae7a.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantbd29f0bd719547b444121c4e4f0ec51c20bce66058d9f1d4bc6651f71618ae7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
