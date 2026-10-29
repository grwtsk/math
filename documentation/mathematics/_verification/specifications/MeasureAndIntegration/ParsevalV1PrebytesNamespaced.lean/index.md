# Verification target: Parseval V1 Prebytes Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f09cdd7f2ea4231bb00d7d43dd56a94dc1183f2",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ParsevalV1Prebytes/Varianta4f67ca555c4b7937769784db98b177d0f43cc0b78cbfff72546956b99553e34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ParsevalV1PrebytesNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ParsevalV1PrebytesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f09cdd7f2ea4231bb00d7d43dd56a94dc1183f2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ParsevalV1Prebytes/Varianta4f67ca555c4b7937769784db98b177d0f43cc0b78cbfff72546956b99553e34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ParsevalV1Prebytes/Varianta4f67ca555c4b7937769784db98b177d0f43cc0b78cbfff72546956b99553e34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtInteraction` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceL2FourierCompatibility` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [symmetricPhaseMultiplier](../../../../MeasureAndIntegration/ParsevalV1PrebytesNamespaced.lean/declarations/symmetricphasemultiplier.md) | 32 | `declaration-track:0efff368edebd409d86bf6746cbeeaf9dcee75c57d4e8cb8aee569dc63f7946f` |
| 2 | `theorem` | [symmetricPhaseMultiplier_apply](../../../../MeasureAndIntegration/ParsevalV1PrebytesNamespaced.lean/declarations/symmetricphasemultiplier-apply.md) | 37 | `result-track:f81f62ee2c481fb24c90de120b22470f846fe1a0ffbf21f05fafcd16405f60b5` |
| 3 | `theorem` | [fourier_symmetricTranslation](../../../../MeasureAndIntegration/ParsevalV1PrebytesNamespaced.lean/declarations/fourier-symmetrictranslation.md) | 42 | `result-track:071b0fcc897d4c7898f78dff5ac996d38563c578e29ef95feb7da6b2500ca3a0` |
| 4 | `theorem` | [translationPhase_half_sum](../../../../MeasureAndIntegration/ParsevalV1PrebytesNamespaced.lean/declarations/translationphase-half-sum.md) | 49 | `result-track:afce49aeb58225f542f71e157f34795246021ef2fa09bd039c2fccf6b09242b5` |
| 5 | `theorem` | [symmetricPhaseMultiplier_coe_ae](../../../../MeasureAndIntegration/ParsevalV1PrebytesNamespaced.lean/declarations/symmetricphasemultiplier-coe-ae.md) | 59 | `result-track:def07ee1213d02176e9910d3b2c5cde481f20522b4b60a27e954f3dfe8ff458d` |
| 6 | `def` | [mangoldtFourierSymbol](../../../../MeasureAndIntegration/ParsevalV1PrebytesNamespaced.lean/declarations/mangoldtfouriersymbol.md) | 74 | `declaration-track:5969e1ec66a2ade479420fac04d8f0bed079ce14514b37b196ee3e560197abb8` |
| 7 | `def` | [mangoldtFourierMultiplier](../../../../MeasureAndIntegration/ParsevalV1PrebytesNamespaced.lean/declarations/mangoldtfouriermultiplier.md) | 79 | `declaration-track:1e314234e35cbd963a447688b1b2b9b4a0372bc07a0ccb359fc3f083dda86b0d` |
| 8 | `theorem` | [mangoldtFourierMultiplier_apply](../../../../MeasureAndIntegration/ParsevalV1PrebytesNamespaced.lean/declarations/mangoldtfouriermultiplier-apply.md) | 84 | `result-track:5b6cf3c11e8ede85ba9e4ea401f079ddef89e8758c28c68f44e45c167bd8e3f4` |
| 9 | `theorem` | [fourier_mangoldtInteraction](../../../../MeasureAndIntegration/ParsevalV1PrebytesNamespaced.lean/declarations/fourier-mangoldtinteraction.md) | 90 | `result-track:dc21740f8d69a7cec82dad07893764eecb581f59ad4d36f3a0fd48e11a9600cc` |
| 10 | `theorem` | [mangoldtFourierMultiplier_coe_ae](../../../../MeasureAndIntegration/ParsevalV1PrebytesNamespaced.lean/declarations/mangoldtfouriermultiplier-coe-ae.md) | 97 | `result-track:8b4b7bd33c13091b671919f515151d265837962b9a4b5185959bfa514480938d` |
| 11 | `theorem` | [mangoldtInteraction_fourier_intertwining](../../../../MeasureAndIntegration/ParsevalV1PrebytesNamespaced.lean/declarations/mangoldtinteraction-fourier-intertwining.md) | 124 | `result-track:d866e870c606c09e7f35a36e77db8c55225c0ca669b727f2884475095a1aa017` |
| 12 | `theorem` | [mangoldtFourierSymbol_continuous](../../../../MeasureAndIntegration/ParsevalV1PrebytesNamespaced.lean/declarations/mangoldtfouriersymbol-continuous.md) | 133 | `result-track:636dbc21b7614b7f6aca936c028aa3991bfc170c94a353fae878f14177804e65` |
| 13 | `theorem` | [mangoldtFourierSymbol_abs_le](../../../../MeasureAndIntegration/ParsevalV1PrebytesNamespaced.lean/declarations/mangoldtfouriersymbol-abs-le.md) | 139 | `result-track:4b3767f39f2fbbd21a8a2358beba7a6ebe762a99e86f5804e0054d64b34dee4b` |
| 14 | `theorem` | [inner_real_multiplier](../../../../MeasureAndIntegration/ParsevalV1PrebytesNamespaced.lean/declarations/inner-real-multiplier.md) | 149 | `result-track:b1fc1f36fb8fefdde64b320db41dc752c7080a893fd4ecf6b61a560c356f7277` |
| 15 | `theorem` | [mangoldtFourierDensity_integrable](../../../../MeasureAndIntegration/ParsevalV1PrebytesNamespaced.lean/declarations/mangoldtfourierdensity-integrable.md) | 159 | `result-track:119a50668154265c363da243663714dbdbb2ac79fa2c400b41b2a60598265ec4` |
| 16 | `theorem` | [mangoldtFourierMultiplier_quadratic_integral](../../../../MeasureAndIntegration/ParsevalV1PrebytesNamespaced.lean/declarations/mangoldtfouriermultiplier-quadratic-integral.md) | 166 | `result-track:de384eab95bc26c02203bb08e3cb59284c65a27fffbbab63aea8835963a43f16` |
| 17 | `theorem` | [mangoldtInteraction_pointed_parseval](../../../../MeasureAndIntegration/ParsevalV1PrebytesNamespaced.lean/declarations/mangoldtinteraction-pointed-parseval.md) | 175 | `result-track:9e1920f15aee109b4207048dff471e09821e319d69b75f76ec12873245b33651` |
| 18 | `theorem` | [closedPrimeMoment_eq_fourier_integral](../../../../MeasureAndIntegration/ParsevalV1PrebytesNamespaced.lean/declarations/closedprimemoment-eq-fourier-integral.md) | 182 | `result-track:002e7edfb1394633fef9e4964a84136107366fdb6fe6376443f1b3ecc0eec36c` |
| 19 | `theorem` | [mertensResidual_eq_fourier_integral](../../../../MeasureAndIntegration/ParsevalV1PrebytesNamespaced.lean/declarations/mertensresidual-eq-fourier-integral.md) | 189 | `result-track:b739d68cda7ca4b287336efff1e92c80d95531f0ad2b85d79ab6cc1648635880` |
| 20 | `theorem` | [mangoldtInteraction_pointed_bochner](../../../../MeasureAndIntegration/ParsevalV1PrebytesNamespaced.lean/declarations/mangoldtinteraction-pointed-bochner.md) | 196 | `result-track:deac3a5c3946bea077ec34901f28bbe2f6054b266ddc64a97d08e92d3dff723b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47aea22b25173be72cfc1fa3e101948c575f62e12e6305c3e406405853be747e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ParsevalV1Prebytes/Varianta4f67ca555c4b7937769784db98b177d0f43cc0b78cbfff72546956b99553e34.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ParsevalV1Prebytes/Varianta4f67ca555c4b7937769784db98b177d0f43cc0b78cbfff72546956b99553e34.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
