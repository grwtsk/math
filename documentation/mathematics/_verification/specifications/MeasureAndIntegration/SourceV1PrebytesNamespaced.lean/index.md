# Verification target: Source V1 Prebytes Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8a13ffdaf1a01bd48feed794eb194ef67fea37d",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceV1Prebytes/Variant91e2d5258825e6f9fc44a92393aa85292ab1f0e67ba16efa734ba5b01437a61a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8a13ffdaf1a01bd48feed794eb194ef67fea37d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceV1Prebytes/Variant91e2d5258825e6f9fc44a92393aa85292ab1f0e67ba16efa734ba5b01437a61a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceV1Prebytes/Variant91e2d5258825e6f9fc44a92393aa85292ab1f0e67ba16efa734ba5b01437a61a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtInteraction` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceL2FourierCompatibility` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [symmetricPhaseMultiplier](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/symmetricphasemultiplier.md) | 34 | `declaration-track:918c5ca1eb5a91a73a624496f95d8b27813116eb5ac05668a6102257876c46c5` |
| 2 | `theorem` | [symmetricPhaseMultiplier_apply](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/symmetricphasemultiplier-apply.md) | 39 | `result-track:a7a67a1f3a9eaf2fe09e463ff4a83172dd2376f4152929e94cabc9cf6908286b` |
| 3 | `theorem` | [fourier_symmetricTranslation](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/fourier-symmetrictranslation.md) | 44 | `result-track:221766cc4e8f99e0324476ed829010f5260a11c04de98d6c9549f3de5e6dbb9f` |
| 4 | `theorem` | [translationPhase_half_sum](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/translationphase-half-sum.md) | 51 | `result-track:b9a26717ae0b305aaa086af3d692ff8950003ec39092c1d4d3264efd0eb5a719` |
| 5 | `theorem` | [symmetricPhaseMultiplier_coe_ae](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/symmetricphasemultiplier-coe-ae.md) | 61 | `result-track:ceb6c8048029b83662ef0c8e35781362ed764558f4388b3992eca114b661003c` |
| 6 | `def` | [mangoldtFourierSymbol](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/mangoldtfouriersymbol.md) | 76 | `declaration-track:5f82524ec597918b4e755f8b7331c6c244c08d5daeb3bd7ef80269aa989ba0df` |
| 7 | `def` | [mangoldtFourierMultiplier](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/mangoldtfouriermultiplier.md) | 81 | `declaration-track:2aaa849f23ae2c4cbb0d9733a8eb92a02a674ffa84c9d7659be8225be9823d7c` |
| 8 | `theorem` | [mangoldtFourierMultiplier_apply](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/mangoldtfouriermultiplier-apply.md) | 86 | `result-track:2e41c54293d318398d0ea3bc77eb8e64971b79b29d93051dc7d150de0cdb12f9` |
| 9 | `theorem` | [fourier_mangoldtInteraction](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/fourier-mangoldtinteraction.md) | 92 | `result-track:168b64b7339f112034ae04dbd9334d78b21d93b93c3d16d7df13ede6646bfb7a` |
| 10 | `theorem` | [mangoldtFourierMultiplier_coe_ae](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/mangoldtfouriermultiplier-coe-ae.md) | 99 | `result-track:cd3b10bea9316c651fa9a5bec453470dc12c0583c4ab1058bbe5eac9b18b72d2` |
| 11 | `theorem` | [mangoldtInteraction_fourier_intertwining](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/mangoldtinteraction-fourier-intertwining.md) | 126 | `result-track:27cae608e3a6c0791e4aa237ce424182d4f844680c7d1cb2607d69acaebae30e` |
| 12 | `theorem` | [mangoldtFourierSymbol_continuous](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/mangoldtfouriersymbol-continuous.md) | 136 | `result-track:e058b7ddc5150bbfb1779f38b8088b34f3b2c293a031888f65056da535d91ed9` |
| 13 | `theorem` | [mangoldtFourierSymbol_abs_le](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/mangoldtfouriersymbol-abs-le.md) | 142 | `result-track:98cd4f4ce98df8ccfcb0b0ba71fa025bd72f6d4955f854cc4b78dbd6d6eed2bf` |
| 14 | `theorem` | [inner_real_multiplier](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/inner-real-multiplier.md) | 152 | `result-track:d91cf1cf4c90e36098df2b6b7be3205d1261299b8fa3eb752b5723d79920ef22` |
| 15 | `theorem` | [mangoldtFourierDensity_integrable](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/mangoldtfourierdensity-integrable.md) | 162 | `result-track:2cacd1f42a5f1857a2037abc825d822fbce9c39ec67b5ac64619b1ea35aa32fd` |
| 16 | `theorem` | [mangoldtFourierMultiplier_quadratic_integral](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/mangoldtfouriermultiplier-quadratic-integral.md) | 169 | `result-track:4f9d013a62c75d39cf095c7187d01f3643e23737b76d385ef6743b2afdae4884` |
| 17 | `theorem` | [mangoldtInteraction_pointed_parseval](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/mangoldtinteraction-pointed-parseval.md) | 179 | `result-track:30e677a98f8d4d343d6b2cc2599befc048ae669e8154ff004b4dde30de157bef` |
| 18 | `theorem` | [closedPrimeMoment_eq_fourier_integral](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/closedprimemoment-eq-fourier-integral.md) | 186 | `result-track:73ce324baf370e19258cb0118ac4a0c6e1fad8bf6286dc3890e4fbda406b367c` |
| 19 | `theorem` | [mertensResidual_eq_fourier_integral](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/mertensresidual-eq-fourier-integral.md) | 193 | `result-track:79474279084fa12e41c286a7ed98d1ddc993573cde762c177ebd14357765f1ee` |
| 20 | `theorem` | [mangoldtInteraction_pointed_bochner](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/mangoldtinteraction-pointed-bochner.md) | 200 | `result-track:18346630a1a56b48551181ad23bb07bd1302775f197d12e83aae9140187c336e` |
| 21 | `theorem` | [originalSourceState_integrable](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/originalsourcestate-integrable.md) | 210 | `result-track:37ebc42fa04e705c9dc2f57ca3bf7fb88bdb6ee9c396f2a0a3476726f5934f2c` |
| 22 | `theorem` | [originalSourceState_fourier_coe_ae](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/originalsourcestate-fourier-coe-ae.md) | 216 | `result-track:336bb671987b80d20e284cbc4a8ca1f59e4e5c3a3abf2934b020759642bda549` |
| 23 | `theorem` | [mangoldtStandardSourceDensity_integrable](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/mangoldtstandardsourcedensity-integrable.md) | 223 | `result-track:2112a2beb5c92322f538750df1a02342f1b407fe9393eafccb50870b438ef61e` |
| 24 | `theorem` | [closedPrimeMoment_eq_standardSourceIntegral](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/closedprimemoment-eq-standardsourceintegral.md) | 231 | `result-track:6cdaf8cb4618f32ccfa5300ab847012b6267de24733a88be2e8f0f526c655d99` |
| 25 | `theorem` | [mertensResidual_eq_standardSourceIntegral](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/mertensresidual-eq-standardsourceintegral.md) | 240 | `result-track:257d4efca836ab745e9fbe69c722b0dde88ca957fbdeeac04eb2453ba8d0850b` |
| 26 | `def` | [mangoldtAngularSymbol](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/mangoldtangularsymbol.md) | 247 | `declaration-track:35a2a076ecf57464d3138b72b74ae8dc6b5ba7294fc2525eaea3973ff7409cfd` |
| 27 | `theorem` | [mangoldtFourierSymbol_eq_angular](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/mangoldtfouriersymbol-eq-angular.md) | 251 | `result-track:d6ac669611e4c70a1895f88785f45344264b145b49512989b0b43da619c48e82` |
| 28 | `theorem` | [mangoldtAngularSourceDensity_integrable](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/mangoldtangularsourcedensity-integrable.md) | 260 | `result-track:9f3f73349ecb97751fdfe4ff3fea74fb789ef898b9518de5e7f6e76312b56ca4` |
| 29 | `theorem` | [closedPrimeMoment_eq_angularSourceIntegral](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/closedprimemoment-eq-angularsourceintegral.md) | 270 | `result-track:f8f3da7b0280985862528325096ff61ff0d5efe67ccd38255b471093b2e7e82a` |
| 30 | `theorem` | [mertensResidual_eq_angularSourceIntegral](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/mertensresidual-eq-angularsourceintegral.md) | 285 | `result-track:01ed5695b720969599c1ad6eed3c74f776772671b8e2f9b3855210b97673da9e` |
| 31 | `theorem` | [standardSourceMass_not_angular_prefactor](../../../../MeasureAndIntegration/SourceV1PrebytesNamespaced.lean/declarations/standardsourcemass-not-angular-prefactor.md) | 293 | `result-track:a52640fc187394d3e18e806cacc0def30d37fcb58968ddacec56d2625e8b6cf3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9416253739ce47058896a5fa31a762d73fd8d434a392e960cb230aab023a72cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/SourceV1Prebytes/Variant91e2d5258825e6f9fc44a92393aa85292ab1f0e67ba16efa734ba5b01437a61a.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/SourceV1Prebytes/Variant91e2d5258825e6f9fc44a92393aa85292ab1f0e67ba16efa734ba5b01437a61a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
