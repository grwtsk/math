# Verification target: Verified Numerical Estimate Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55101f3ca477ca98f3e66fe1de9c842e3fa844b3",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimate/Variant507d2922c3ee657e102f73cf507948aaca9f68ce3af8fe7e5428409d72fb3a2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55101f3ca477ca98f3e66fe1de9c842e3fa844b3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimate/Variant507d2922c3ee657e102f73cf507948aaca9f68ce3af8fe7e5428409d72fb3a2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimate/Variant507d2922c3ee657e102f73cf507948aaca9f68ce3af8fe7e5428409d72fb3a2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Number.NumericalEstimate` — import line 6; external provider; requires a separately pinned dependency.
- `AnalyticNumber.Certificate` — import line 7; external provider; requires a separately pinned dependency.
- `Authority.BoundaryCalculus` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AnalyticDomainSymbol](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/analyticdomainsymbol.md) | 38 | `declaration-track:03d6df21e36df75898cb7670dc3f414a291962da58a5484067eadfebc364c416` |
| 2 | `structure` | [PrecisionSymbol](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/precisionsymbol.md) | 43 | `declaration-track:1cd04a9367d38e5ea9c3378f69a3826c3849882d604d635479d33e5041b35354` |
| 3 | `structure` | [AlgorithmSymbol](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/algorithmsymbol.md) | 48 | `declaration-track:77643fb272c9c42796373caad2909c6e75460d69da94fdaebb9e152551556a6b` |
| 4 | `structure` | [ErrorModelSymbol](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/errormodelsymbol.md) | 53 | `declaration-track:cd522171ed8a91a84796f79d872f3b1e717affe5c255cad806d3235930f676e1` |
| 5 | `structure` | [NumericalEstimateSymbol](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/numericalestimatesymbol.md) | 58 | `declaration-track:3a12bc1ae93a85fa35c820ebcdd0fe7eed5fa0e244ce980c0b92ff50f2028a03` |
| 6 | `structure` | [NumericalAnalyticCertificateSchema](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/numericalanalyticcertificateschema.md) | 70 | `declaration-track:0e051476e737947d7ef7c7390ec57a0d04ed76ab95916050c6af64a601d50e97` |
| 7 | `theorem` | [numerical_schema_authorized](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/numerical-schema-authorized.md) | 84 | `result-track:070eb0c495aea6106ed196ebf64d71267e79ac0dcdefeeb8c969c1b791e0dfa9` |
| 8 | `structure` | [IntervalArithmeticAuthority](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/intervalarithmeticauthority.md) | 90 | `declaration-track:53269a5f5e0a4bc70dfa2360035351771522fe3037fd4c65909b5c77ea269c0b` |
| 9 | `structure` | [TailBoundAuthority](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/tailboundauthority.md) | 96 | `declaration-track:52e9c4144d636ba51380510d31f5a18fb6423ca9b33beae6b0105c8ca0a9b6dd` |
| 10 | `structure` | [ContourIntegralAuthority](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/contourintegralauthority.md) | 102 | `declaration-track:4e6074cb2db15905fad70679aef94dd097c0a54b4fb419f3e614b2335c6b281b` |
| 11 | `structure` | [ArgumentPrincipleCountAuthority](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/argumentprinciplecountauthority.md) | 108 | `declaration-track:2b8129136e075c127acaf57cde9be1d13b12bcfdc098128cde513ca9ec2f5f6b` |
| 12 | `structure` | [ValidatedIntegrationAuthority](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/validatedintegrationauthority.md) | 114 | `declaration-track:a3bc8d4bf3114572b1264ccda4cf32f2ebc17bfd2ad9b290f36881ca90342419` |
| 13 | `structure` | [SpectralEnclosureAuthority](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/spectralenclosureauthority.md) | 121 | `declaration-track:0f3bad76cc73b83642ea3dc8a0672e393b39d1f2ddb10de7c13bc9ecd4c39cf4` |
| 14 | `structure` | [OperatorNormBoundAuthority](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/operatornormboundauthority.md) | 127 | `declaration-track:09b0e52163a1d2f59ae157266c26d23cc76f6ecc8bb33de96989cdc032193420` |
| 15 | `structure` | [RigorousQuadratureAuthority](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/rigorousquadratureauthority.md) | 133 | `declaration-track:e61045b7cf0ea365b12b63562c8a5b6b26d9efcb7f30163f555ee6e9af696d61` |
| 16 | `theorem` | [interval_arithmetic_authorized](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/interval-arithmetic-authorized.md) | 138 | `result-track:2f972e172589b454512e334711a168c618cca809d411f18b032ba73a4324f371` |
| 17 | `theorem` | [tail_bound_authorized](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/tail-bound-authorized.md) | 147 | `result-track:52e2318d490f0bd33eb5f2e02459a76a09cd5fc1620649aff974d9897028a740` |
| 18 | `theorem` | [contour_integral_authorized](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/contour-integral-authorized.md) | 156 | `result-track:33786ed9fd7eb36276c70fe6d648ab8dc4d758d25754edae34eece4247019eaa` |
| 19 | `theorem` | [argument_principle_count_authorized](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/argument-principle-count-authorized.md) | 165 | `result-track:2b2cc7f59e12c2490663ef701da94b69d7ad4213893a9a33fe6c26812eef0081` |
| 20 | `theorem` | [validated_integration_authorized](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/validated-integration-authorized.md) | 174 | `result-track:715d1ac8d7ed78838db70e431fdc03fce5bba639b84d410d0af40088282e6a8e` |
| 21 | `theorem` | [spectral_enclosure_authorized](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/spectral-enclosure-authorized.md) | 183 | `result-track:c20d29c2a935614e99b656cc4691f92cba038af690156ebe53e0feff4c028886` |
| 22 | `theorem` | [operator_norm_bound_authorized](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/operator-norm-bound-authorized.md) | 192 | `result-track:65da5a64beeb2c5f801216c4bfbf3b104f7096469e6c8df982cc1cf6db7e0ca0` |
| 23 | `theorem` | [rigorous_quadrature_authorized](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/rigorous-quadrature-authorized.md) | 201 | `result-track:87fc15b7632259b2e46a8d95cfc33f42c8dc0058d9c470355b5e0e4f92ff113e` |
| 24 | `def` | [NumericalEstimateSymbolOwnsEnclosure](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/numericalestimatesymbolownsenclosure.md) | 211 | `declaration-track:69d449b439ebbcee7897aad1a28315797193d6743e3d44e4a1f4f8e9800c5893` |
| 25 | `def` | [NumericalEstimateSymbolOwnsTheoremInterpretation](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/numericalestimatesymbolownstheoreminterpretation.md) | 216 | `declaration-track:afa708a7eee898136f25107623c2eae14c60d969eb329e98409b27fc387a9141` |
| 26 | `def` | [NumericalEstimateSymbolOwnsIntervalArithmetic](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/numericalestimatesymbolownsintervalarithmetic.md) | 221 | `declaration-track:00cb57c1c66bbae6b8c7e1797bc09442af611cad572ead27d165a06622053d54` |
| 27 | `def` | [NumericalEstimateSymbolOwnsTailBound](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/numericalestimatesymbolownstailbound.md) | 226 | `declaration-track:01cfe8a7ab6fd96bfa685ff695714929269f5b894befbb2f2c9a29c6b25e28c7` |
| 28 | `def` | [NumericalEstimateSymbolOwnsContourIntegral](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/numericalestimatesymbolownscontourintegral.md) | 231 | `declaration-track:bc1ebdf27844677a04cb1efc0bbc58218c6fd7bbd56886d20accc974e0fed0f0` |
| 29 | `def` | [NumericalEstimateSymbolOwnsArgumentPrincipleCount](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/numericalestimatesymbolownsargumentprinciplecount.md) | 236 | `declaration-track:14333d976497bc03ddae3caf8ffced54a1d44fbe44c53221fd56708c2d0f5df3` |
| 30 | `def` | [NumericalEstimateSymbolOwnsValidatedIntegration](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/numericalestimatesymbolownsvalidatedintegration.md) | 241 | `declaration-track:6106d179a0e5fe679baeabb1e1235ef86d061503ffe2630320aecaa8efcb397f` |
| 31 | `def` | [NumericalEstimateSymbolOwnsSpectralEnclosure](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/numericalestimatesymbolownsspectralenclosure.md) | 246 | `declaration-track:9ad91cd885b3e18ab4ca30a927aaede5b40c01c8cb4a03e0b622b7e11358fdfa` |
| 32 | `def` | [NumericalEstimateSymbolOwnsOperatorNormBound](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/numericalestimatesymbolownsoperatornormbound.md) | 251 | `declaration-track:f5712acf713494ec8ec895a4c730d2976187a539cec22fc6e619afe7ad67ebaa` |
| 33 | `def` | [NumericalEstimateSymbolOwnsRigorousQuadrature](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/numericalestimatesymbolownsrigorousquadrature.md) | 256 | `declaration-track:58a66856e6946f30439c4651a29bdde6e0ee321513d2fab5f1080d958ce767ef` |
| 34 | `theorem` | [numerical_estimate_symbol_not_enclosure_authority](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/numerical-estimate-symbol-not-enclosure-authority.md) | 260 | `result-track:f4799894474a969a15d94fc11d9b706bf28775701b036b6782f15ae63a434201` |
| 35 | `theorem` | [numerical_estimate_symbol_not_theorem_interpretation_authority](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/numerical-estimate-symbol-not-theorem-interpretation-authority.md) | 266 | `result-track:3362e51288d21218cf7e54cde3b4697ae6de3cc9af78dceae3056c3016536ce0` |
| 36 | `theorem` | [numerical_estimate_symbol_not_interval_arithmetic_authority](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/numerical-estimate-symbol-not-interval-arithmetic-authority.md) | 272 | `result-track:ded0ad15a106f17f80326c66c8b1f7a0944629bfbcd8fc430a57599389036664` |
| 37 | `theorem` | [numerical_estimate_symbol_not_tail_bound_authority](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/numerical-estimate-symbol-not-tail-bound-authority.md) | 278 | `result-track:edce149f4c328bfd522820b20cc623033392afd0764aaa78f4fe1b2fab7b5cc3` |
| 38 | `theorem` | [numerical_estimate_symbol_not_contour_integral_authority](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/numerical-estimate-symbol-not-contour-integral-authority.md) | 284 | `result-track:4e4ac42f2f655509afe9be6e730d116b5846a05275f5fec58819d11bced4750a` |
| 39 | `theorem` | [numerical_estimate_symbol_not_argument_principle_count_authority](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/numerical-estimate-symbol-not-argument-principle-count-authority.md) | 290 | `result-track:70064df37c539de1683a5774a79cf9735f040467d75ec82fa32c23757dd1517a` |
| 40 | `theorem` | [numerical_estimate_symbol_not_validated_integration_authority](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/numerical-estimate-symbol-not-validated-integration-authority.md) | 296 | `result-track:ae56d793d611d86af30e2d6639088eca597149d51926cde968199c60d3e57324` |
| 41 | `theorem` | [numerical_estimate_symbol_not_spectral_enclosure_authority](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/numerical-estimate-symbol-not-spectral-enclosure-authority.md) | 302 | `result-track:ca6223e3651f5329fb9872a659d39d9125397533a5c1411cb798e00f41ecc4e9` |
| 42 | `theorem` | [numerical_estimate_symbol_not_operator_norm_bound_authority](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/numerical-estimate-symbol-not-operator-norm-bound-authority.md) | 308 | `result-track:efddfa9413068c11b3076f830344dad536d19424044a153271067654f47cd148` |
| 43 | `theorem` | [numerical_estimate_symbol_not_rigorous_quadrature_authority](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/numerical-estimate-symbol-not-rigorous-quadrature-authority.md) | 314 | `result-track:709d3ed0070e54c7501b24f80f24ddda68c949b72e130473acfea36f4f45cbeb` |
| 44 | `theorem` | [numerical_estimate_symbol_boundary_summary](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/numerical-estimate-symbol-boundary-summary.md) | 326 | `result-track:b8711abb759b21708d7d66013fb4f82eca257bd2ab235d7f4faefd76222fe2dc` |
| 45 | `def` | [intervalArithmeticCertificate](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/intervalarithmeticcertificate.md) | 350 | `declaration-track:86158e233a149a3a43a9c1a3ec3801afaf36d116803fe7b3c3112deab1d78074` |
| 46 | `def` | [tailBoundCertificate](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/tailboundcertificate.md) | 363 | `declaration-track:9c59ee7aa4870c023c2c1abfbb2e84b704bdd90615540efc9eeb2dbabb90e938` |
| 47 | `def` | [contourIntegralCertificate](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/contourintegralcertificate.md) | 376 | `declaration-track:4133664ebf7f0f5ae3b8b70382fa148d649081e7c01d062b03c4c98a5fabac58` |
| 48 | `def` | [argumentPrincipleCountCertificate](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/argumentprinciplecountcertificate.md) | 389 | `declaration-track:29e911d8fd339dbe52ecfd5ad27536c27d0d9e5c8378a081d63104b54645deb8` |
| 49 | `def` | [validatedIntegrationCertificate](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/validatedintegrationcertificate.md) | 402 | `declaration-track:46b37251b925ca964c79324d5a2c53870755cb81f757d413d5fce466b030fda7` |
| 50 | `def` | [spectralEnclosureCertificate](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/spectralenclosurecertificate.md) | 415 | `declaration-track:9bf6035f2c2a4c16b41e02e17aa52406191eb40ffd6de0f91c54c65e9ac52b2f` |
| 51 | `def` | [operatorNormBoundCertificate](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/operatornormboundcertificate.md) | 428 | `declaration-track:1d5b64b97cad0fdb94261e84004e90a3ee56ab2af576f20546a2c5b755c011ca` |
| 52 | `def` | [rigorousQuadratureCertificate](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/rigorousquadraturecertificate.md) | 441 | `declaration-track:b05bd07cb45c94c631e5696da63cc06ecff7b812c28261e5893c06e492cf0ea2` |
| 53 | `def` | [theoremLevelInterpretationCertificate](../../../../RealFunctions/VerifiedNumericalEstimateNamespaced.lean/declarations/theoremlevelinterpretationcertificate.md) | 454 | `declaration-track:83216edbba8958f33df00bd73b3eaa5c859fcaf3af7703b37a93fa37f3ddd5bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f97380971feb8687bcd37d262ebba583f7fd8bf2d0f14d3fb6f5a508755696e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimate/Variant507d2922c3ee657e102f73cf507948aaca9f68ce3af8fe7e5428409d72fb3a2f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimate/Variant507d2922c3ee657e102f73cf507948aaca9f68ce3af8fe7e5428409d72fb3a2f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
