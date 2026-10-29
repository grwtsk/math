# Verification target: Source V3 Prebytes

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3283ad1159b5b804affd47ddadd17323efbacd95",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceV3Prebytes/Variantefaa0134e9cd9d4209e4e67c54db8e154d2e59057f584bd97d3da1910a1dc6fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3283ad1159b5b804affd47ddadd17323efbacd95`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceV3Prebytes/Variantefaa0134e9cd9d4209e4e67c54db8e154d2e59057f584bd97d3da1910a1dc6fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceV3Prebytes/Variantefaa0134e9cd9d4209e4e67c54db8e154d2e59057f584bd97d3da1910a1dc6fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtInteraction` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceL2FourierCompatibility` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceDualFourierJump` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [symmetricPhaseMultiplier](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/symmetricphasemultiplier.md) | 27 | `declaration-track:c5d42a8921c8ab7d0dce540ecd48d9d2c6f431cce195764a606f0500f42b9c0a` |
| 2 | `theorem` | [symmetricPhaseMultiplier_apply](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/symmetricphasemultiplier-apply.md) | 32 | `result-track:26f3a58094c9c06f36cece511be3fb83f3b90f9ee2324829a7239c733ad70806` |
| 3 | `theorem` | [fourier_symmetricTranslation](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/fourier-symmetrictranslation.md) | 37 | `result-track:4593263ba4e59ddfd9bef03c97f4553354c2af199bc7399cf56667eeedfd4abb` |
| 4 | `theorem` | [translationPhase_half_sum](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/translationphase-half-sum.md) | 44 | `result-track:120057dd51fcccbf559f6822bda290fe3173b91d80d80e1e2258c597ba50bbba` |
| 5 | `theorem` | [symmetricPhaseMultiplier_coe_ae](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/symmetricphasemultiplier-coe-ae.md) | 54 | `result-track:2132e65ee5cca952e39c597a0b950ce58c1f45136c2fa8b1bb350445ebce6ea7` |
| 6 | `def` | [mangoldtFourierSymbol](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/mangoldtfouriersymbol.md) | 69 | `declaration-track:7fd75f55d4c89e1bf4fad691ff77f06ca1d50f22bda93f4f92b2d00353d25085` |
| 7 | `def` | [mangoldtFourierMultiplier](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/mangoldtfouriermultiplier.md) | 74 | `declaration-track:860ae0c9a0b50660abce37074041fa53bc6e03661ebc4d94643a4810100ce6a6` |
| 8 | `theorem` | [mangoldtFourierMultiplier_apply](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/mangoldtfouriermultiplier-apply.md) | 79 | `result-track:2d4023038c2ccf89908ac146f7f31c1dd73cab0c381e073fd3d18c91c540b602` |
| 9 | `theorem` | [fourier_mangoldtInteraction](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/fourier-mangoldtinteraction.md) | 85 | `result-track:62de6824f77aa810578fc1c32c5ecbf7f845277d9eafa1c02ff42a0361c089ab` |
| 10 | `theorem` | [mangoldtFourierMultiplier_coe_ae](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/mangoldtfouriermultiplier-coe-ae.md) | 92 | `result-track:f4d6694dff06714ff96bd7dd5083a213441be23d665f11b6aff357187a0ce792` |
| 11 | `theorem` | [mangoldtInteraction_fourier_intertwining](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/mangoldtinteraction-fourier-intertwining.md) | 119 | `result-track:ec5f764cb4a6928437a2706784e3b38ab3556b2ce44a6986f9f17bae0f0f9d31` |
| 12 | `theorem` | [mangoldtFourierSymbol_continuous](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/mangoldtfouriersymbol-continuous.md) | 129 | `result-track:66256195335bed856bb90ed7b0700894ad5623101ae9d7387508a9885d108e05` |
| 13 | `theorem` | [mangoldtFourierSymbol_abs_le](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/mangoldtfouriersymbol-abs-le.md) | 135 | `result-track:71e705469c2cab58913eb660cc51545e5cd1ffbe65608cbeec49182773189084` |
| 14 | `theorem` | [inner_real_multiplier](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/inner-real-multiplier.md) | 145 | `result-track:38abf7484d4f34993210a8efb8494498097e2e60537ba034320368cf189a1fb6` |
| 15 | `theorem` | [mangoldtFourierDensity_integrable](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/mangoldtfourierdensity-integrable.md) | 155 | `result-track:ce96ad1256135d7db9cae3fff3ea1f3bbf5b54797b0fbb668710bee274236abe` |
| 16 | `theorem` | [mangoldtFourierMultiplier_quadratic_integral](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/mangoldtfouriermultiplier-quadratic-integral.md) | 163 | `result-track:8d3424c620b12c1d82cb39854f49cd30e8ab99e348234994fec40019d36b0187` |
| 17 | `theorem` | [mangoldtInteraction_pointed_parseval](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/mangoldtinteraction-pointed-parseval.md) | 175 | `result-track:330f73917fa1745582ff4694d2243b31f6e9d125f785a3490f0a0e1a1840c4c0` |
| 18 | `theorem` | [closedPrimeMoment_eq_fourier_integral](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/closedprimemoment-eq-fourier-integral.md) | 182 | `result-track:96f7594250b395eebb22dd2e85b08d4c20254e92398a512f5e4304fdee9ca207` |
| 19 | `theorem` | [mertensResidual_eq_fourier_integral](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/mertensresidual-eq-fourier-integral.md) | 189 | `result-track:c4fc42de44368b7cde1be0b03df5000ebfc38f06cc15544254003d49a1797db6` |
| 20 | `theorem` | [mangoldtInteraction_pointed_bochner](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/mangoldtinteraction-pointed-bochner.md) | 196 | `result-track:1325cb191673db1e8a2b4e2012f18da371b3d969fde143a553454361ae33b109` |
| 21 | `theorem` | [originalSourceState_integrable](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/originalsourcestate-integrable.md) | 206 | `result-track:67339221298ee8c3cbc0dbbc73d5c0912e07c4dea45d68d58906070501429bf6` |
| 22 | `theorem` | [originalSourceState_fourier_coe_ae](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/originalsourcestate-fourier-coe-ae.md) | 212 | `result-track:fe450979bc8f491a400c13f16963f5fc6f80b3b297a2843c7b27d014ea0b1793` |
| 23 | `theorem` | [mangoldtStandardSourceDensity_integrable](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/mangoldtstandardsourcedensity-integrable.md) | 219 | `result-track:3be4bd13907a8cc63584646f7e22bec401cc8e43fec7db3f65b4fb47a9fa62e6` |
| 24 | `theorem` | [closedPrimeMoment_eq_standardSourceIntegral](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/closedprimemoment-eq-standardsourceintegral.md) | 227 | `result-track:bc950871f6ecc0902634a9cc022d6b453e4c1a56124b1acfd2d7acbef7a93adc` |
| 25 | `theorem` | [mertensResidual_eq_standardSourceIntegral](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/mertensresidual-eq-standardsourceintegral.md) | 236 | `result-track:83c75a2ad35272827feb2e7a2618999a5eb2cf7cde5351f692b678f10c0d5fc7` |
| 26 | `def` | [mangoldtAngularSymbol](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/mangoldtangularsymbol.md) | 243 | `declaration-track:3e1bcd4612db86a78c420c716e751119d2ebf6a84aef99541713b8198a59672a` |
| 27 | `theorem` | [mangoldtFourierSymbol_eq_angular](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/mangoldtfouriersymbol-eq-angular.md) | 247 | `result-track:53189d6fc9457244ff6ae92efa6d22598b1b6cedd6781ff3d7a97bc0c329571e` |
| 28 | `theorem` | [mangoldtAngularSourceDensity_integrable](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/mangoldtangularsourcedensity-integrable.md) | 256 | `result-track:e5eeb113d1511c4c2c81b71af9b7f819e642efc1515082116295ccb98989edb7` |
| 29 | `theorem` | [closedPrimeMoment_eq_angularSourceIntegral](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/closedprimemoment-eq-angularsourceintegral.md) | 266 | `result-track:5e1d51ecd5907b17bf42a24ad17639a4c0b80dc2728105367f9093f9854d3c67` |
| 30 | `theorem` | [mertensResidual_eq_angularSourceIntegral](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/mertensresidual-eq-angularsourceintegral.md) | 281 | `result-track:100ae64d7b95412b9f55b3aa0673dee990e6292700e375e1f4137ffad4796a7f` |
| 31 | `theorem` | [standardSourceMass_not_angular_prefactor](../../../../MeasureAndIntegration/SourceV3Prebytes.lean/declarations/standardsourcemass-not-angular-prefactor.md) | 289 | `result-track:afcc3d0bf979cdb521d9e78e334408e1012ddd03c7a41ba57dd293729c76c71d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd14c9835e5308452a533ed5173660b578ee9d0d40b634e1b201fbfe8a345af6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/SourceV3Prebytes/Variantefaa0134e9cd9d4209e4e67c54db8e154d2e59057f584bd97d3da1910a1dc6fe.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/SourceV3Prebytes/Variantefaa0134e9cd9d4209e4e67c54db8e154d2e59057f584bd97d3da1910a1dc6fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
