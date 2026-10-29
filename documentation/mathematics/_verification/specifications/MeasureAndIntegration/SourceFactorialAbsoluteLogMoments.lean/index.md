# Verification target: Source Factorial Absolute Log Moments

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "478195b180bf52aecd246b29638b0c0e1fbeb4c9",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variantcfecf1e49c2446ca2a6ac12f8a1231fef8f16bbb6cfed64fa0ed7b648a6183b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceFactorialAbsoluteLogMoments.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceFactorialAbsoluteLogMoments.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `478195b180bf52aecd246b29638b0c0e1fbeb4c9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variantcfecf1e49c2446ca2a6ac12f8a1231fef8f16bbb6cfed64fa0ed7b648a6183b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variantcfecf1e49c2446ca2a6ac12f8a1231fef8f16bbb6cfed64fa0ed7b648a6183b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualFactorialJointCancellation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fractionalPrimitive_interval_integrable](../../../../MeasureAndIntegration/SourceFactorialAbsoluteLogMoments.lean/declarations/fractionalprimitive-interval-integrable.md) | 19 | `result-track:2009019b6b467005f21d5670caecdad81d937d4c72f0e411c52cc39efa1d4c4e` |
| 2 | `theorem` | [factorialLogDefect_abs_le_one_add_log](../../../../MeasureAndIntegration/SourceFactorialAbsoluteLogMoments.lean/declarations/factoriallogdefect-abs-le-one-add-log.md) | 36 | `result-track:f75960e7ce0005be67609c1faffc1c7e0d60abc6e0bbc84464dd1fce9e5cc43c` |
| 3 | `def` | [factorialAbsLogWeight](../../../../MeasureAndIntegration/SourceFactorialAbsoluteLogMoments.lean/declarations/factorialabslogweight.md) | 58 | `declaration-track:1f128e6ab143a7a892a5ef9d59fe03fe845c7ebd2e48781893d9bdb6ace60d3e` |
| 4 | `def` | [factorialAbsLogMoment](../../../../MeasureAndIntegration/SourceFactorialAbsoluteLogMoments.lean/declarations/factorialabslogmoment.md) | 61 | `declaration-track:f97919289cd38e896c402bc21eb28b10682dd368789c244f802f0edbc4411eda` |
| 5 | `theorem` | [factorialAbsLogWeight_eq_literal](../../../../MeasureAndIntegration/SourceFactorialAbsoluteLogMoments.lean/declarations/factorialabslogweight-eq-literal.md) | 64 | `result-track:d396850ca858705dd47902300794c5aa5aacb744872f51c06a5271ac45f03315` |
| 6 | `theorem` | [factorialAbsLogWeight_measurable](../../../../MeasureAndIntegration/SourceFactorialAbsoluteLogMoments.lean/declarations/factorialabslogweight-measurable.md) | 70 | `result-track:8c58e9879ff6d171bd364317241d981dd58c8bd759e3d1112737f7627ce0e911` |
| 7 | `theorem` | [factorialAbsLogWeight_eq_lower](../../../../MeasureAndIntegration/SourceFactorialAbsoluteLogMoments.lean/declarations/factorialabslogweight-eq-lower.md) | 79 | `result-track:c42c64760520d1f1e84dcbf8189acac1d7f6b4ff56ad67a4170055ebe09700ce` |
| 8 | `theorem` | [factorialAbsLogWeight_lower_integrable](../../../../MeasureAndIntegration/SourceFactorialAbsoluteLogMoments.lean/declarations/factorialabslogweight-lower-integrable.md) | 93 | `result-track:d3bae326cad1f1644045aa7f794ce5f0618a6ef0402720ba8116c7957a8b3e98` |
| 9 | `theorem` | [factorialAbsLogWeight_lower_integral](../../../../MeasureAndIntegration/SourceFactorialAbsoluteLogMoments.lean/declarations/factorialabslogweight-lower-integral.md) | 104 | `result-track:3c0b65af32dd2d4abf3ec6dd241a27f2f2162cf5cc91fbf1191d4d820d4bd091` |
| 10 | `theorem` | [factorialAbsLogWeight_upper_le](../../../../MeasureAndIntegration/SourceFactorialAbsoluteLogMoments.lean/declarations/factorialabslogweight-upper-le.md) | 121 | `result-track:25b6f537dab1ecc7893fe1a0bf8a03c7e735f14fb79dfb8e020b6aba2b26fb82` |
| 11 | `theorem` | [factorialAbsLogWeight_upper_integrable](../../../../MeasureAndIntegration/SourceFactorialAbsoluteLogMoments.lean/declarations/factorialabslogweight-upper-integrable.md) | 133 | `result-track:f82986c6ab3e280e9e9ec93438cb4a4e41f895fb72ec8e52774d314dcf4d69ea` |
| 12 | `theorem` | [factorialAbsLogWeight_integrable](../../../../MeasureAndIntegration/SourceFactorialAbsoluteLogMoments.lean/declarations/factorialabslogweight-integrable.md) | 144 | `result-track:6a790a262ccce805bf0e2089c102594577a394abee9233c31c7d6b6456458319` |
| 13 | `theorem` | [factorialAbsLogMoment_le](../../../../MeasureAndIntegration/SourceFactorialAbsoluteLogMoments.lean/declarations/factorialabslogmoment-le.md) | 153 | `result-track:91e7914f6f1348c85d6d777751c85766c369900a77a2b2fb1eccd5710a15b1e1` |
| 14 | `theorem` | [factorialAbsLogMoment_first_three](../../../../MeasureAndIntegration/SourceFactorialAbsoluteLogMoments.lean/declarations/factorialabslogmoment-first-three.md) | 173 | `result-track:dfc31b75db3e1635442d0f29762b72372044d7a0094b90a9b3402bc25872ffcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=462922449b8776b0ea0dbd514ec3c264fd2dab296881c3995675a22e8445945c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variantcfecf1e49c2446ca2a6ac12f8a1231fef8f16bbb6cfed64fa0ed7b648a6183b8.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variantcfecf1e49c2446ca2a6ac12f8a1231fef8f16bbb6cfed64fa0ed7b648a6183b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
