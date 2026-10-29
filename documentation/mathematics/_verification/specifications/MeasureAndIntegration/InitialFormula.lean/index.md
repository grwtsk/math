# Verification target: Initial Formula

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76b2ad5ffe2373e33cd15334a5f0a9a5b7216591",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Variant3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/InitialFormula.lean/index.md) · [Full source](../../../../MeasureAndIntegration/InitialFormula.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76b2ad5ffe2373e33cd15334a5f0a9a5b7216591`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Variant3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Variant3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Expansion` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/instance.md) | 38 | `declaration-track:7602486c0c19e16c3e6a91996553d48082d4cfefa9914ab026e7460118b126b6` |
| 2 | `def` | [rCoeff](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/rcoeff.md) | 48 | `declaration-track:b80b217b8207c8a282a51b9b358e43dbe35ce79b0207c75d9208339306cbd1d8` |
| 3 | `def` | [sCoeff](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/scoeff.md) | 62 | `declaration-track:7f82688c600146bc746c000847e945ab911c1627f97d1023a22ea9b5329f38c3` |
| 4 | `def` | [scalePolynomial](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/scalepolynomial.md) | 75 | `declaration-track:3fe4e1b2ea6947abf345551937828627849273cdd20929195edbb1ae465bc6ba` |
| 5 | `def` | [positivePolynomial](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/positivepolynomial.md) | 79 | `declaration-track:463598a360a975de4125548d29cd0a086b27380e3e3942310b2bdfcee7c95258` |
| 6 | `def` | [mixedPolynomial](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/mixedpolynomial.md) | 82 | `declaration-track:f9ade56136bb64ded9b52cb78c2b125742c1dc50beb76ff056e4b69f2ac26551` |
| 7 | `theorem` | [scalePolynomial_eval](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/scalepolynomial-eval.md) | 85 | `result-track:2ed9902661fe27f2944b42c3f9eeb1cdbdc7716ac74fdd95731119de9050340a` |
| 8 | `theorem` | [positivePolynomial_eval](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/positivepolynomial-eval.md) | 91 | `result-track:5250d72009ee9f512467730f52509df2d71b2db351593d270d2ee31f65c9c27d` |
| 9 | `theorem` | [mixedPolynomial_eval](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/mixedpolynomial-eval.md) | 96 | `result-track:6a88bc70ba9dca63449c246628b27c0140c9a9dfbfeea177ed9a7daa04f048c0` |
| 10 | `theorem` | [positivePolynomial_expansion](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/positivepolynomial-expansion.md) | 102 | `result-track:f21f9444b52d2026ce7df7a4107c788f958c2bb67a6717d4883de3346f33c493` |
| 11 | `theorem` | [mixedPolynomial_expansion](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/mixedpolynomial-expansion.md) | 116 | `result-track:962e9d60656b6dfe8a6ddc0e4a5d4ce149e4f007f6b73fc8c2c9693ebad27f0c` |
| 12 | `theorem` | [positivePolynomial_natDegree_le](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/positivepolynomial-natdegree-le.md) | 127 | `result-track:8fc1d85db70d5f1982533b40fa0b3ed4f45f416d2d2157688b70b9d9d0eed271` |
| 13 | `theorem` | [mixedPolynomial_natDegree_le](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/mixedpolynomial-natdegree-le.md) | 132 | `result-track:659057cc17ef65fea5b49df4e469c5df92ee87a7a72d27ba63cefaf67c197403` |
| 14 | `theorem` | [positivePolynomial_coeff](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/positivepolynomial-coeff.md) | 138 | `result-track:a5d124c4942ada2cab5f47603e1f3571a6995e5b301ca52d160ec8c29dac72a2` |
| 15 | `theorem` | [positivePolynomial_neg_coeff](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/positivepolynomial-neg-coeff.md) | 148 | `result-track:45099f9ae572bda3c7b2f1408bd3ce8c6a1c590c977483c78983a1a42bab39cd` |
| 16 | `theorem` | [mixedPolynomial_coeff](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/mixedpolynomial-coeff.md) | 157 | `result-track:cc63c4392687a68c3299e8672c496977f64d7692510d6caeeed0f492c4d81996` |
| 17 | `def` | [polynomialKernel](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/polynomialkernel.md) | 167 | `declaration-track:da2f6275925c7bf9a90e1eeb16ae98df99de316e4146b766d605217d632b0863` |
| 18 | `def` | [sourceKernel](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/sourcekernel.md) | 171 | `declaration-track:46be52abcd308ac65445c63118a9046f1c3e2b64ecf09d42c4f1d0cb8838f8e5` |
| 19 | `def` | [equation20Summand](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/equation20summand.md) | 178 | `declaration-track:287042f05c63ae61433a68b721349616de373bdced741042ca29f258af677841` |
| 20 | `theorem` | [polynomialKernel_positive](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/polynomialkernel-positive.md) | 186 | `result-track:c79c8c592aab2e5c4fd967cc2e5f44e2f99e43604e7e0b6a744df67c50750ded` |
| 21 | `theorem` | [polynomialKernel_negative](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/polynomialkernel-negative.md) | 198 | `result-track:3814f2c019780ca72de4b0a2b24d9b9423ef342693eb081615e3feddfca794ff` |
| 22 | `theorem` | [polynomialKernel_mixed](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/polynomialkernel-mixed.md) | 210 | `result-track:dd2ee0db56fb91069627f95ea32f4ced9f52b30535a5b2c04837e135a3bc6388` |
| 23 | `theorem` | [sourceKernel_eq_equation20Summand](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/sourcekernel-eq-equation20summand.md) | 224 | `result-track:93f4954b82195b80b9f59e1392ba8ee8ce80adadc786eca7f6006d6f02c729a8` |
| 24 | `def` | [weightedPolynomial](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/weightedpolynomial.md) | 239 | `declaration-track:fcb4cf021abc514bac8e0f5552dbc4d1ac13d028a0dba61788ea734cc3168295` |
| 25 | `theorem` | [weightedPolynomial_eq_sum](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/weightedpolynomial-eq-sum.md) | 243 | `result-track:0e2c3f574fef5a332937640efb6b2b6d4eeedd79bad51d7ab11db0187ef17412` |
| 26 | `theorem` | [weightedPolynomial_integrable](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/weightedpolynomial-integrable.md) | 260 | `result-track:bc496f096aed7eb86c6e8235deacab24f0ec2806722f60b1598d57e560c352f9` |
| 27 | `theorem` | [integral_weightedPolynomial](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/integral-weightedpolynomial.md) | 273 | `result-track:37043fbeb44c9bcc4acce01cb5166c220c4a5db42b7886072b5bf35a91d907f2` |
| 28 | `theorem` | [weighted_expandedSummand_eq](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/weighted-expandedsummand-eq.md) | 292 | `result-track:7a0e91969b406d1c7a1bfb4a3620b05eb1b43c739bfcf665ee6c3ad8b1d4997e` |
| 29 | `theorem` | [occurrence_integrable](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/occurrence-integrable.md) | 321 | `result-track:750dfc51a3760cbd3e5e62fee133d646c612f6260e1b20875f379eaa1751ccb7` |
| 30 | `theorem` | [integral_occurrence](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/integral-occurrence.md) | 358 | `result-track:ebb7785e1735e54e7e0e88194774e720b111d04d824b77d0c3e4b1079966e694` |
| 31 | `def` | [occurrenceIntegrand](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/occurrenceintegrand.md) | 408 | `declaration-track:160b290a37e6e3a4b512831a271c3951f1edd12fb10e81b2aa13210ec12460ee` |
| 32 | `def` | [scaleMajorant](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/scalemajorant.md) | 414 | `declaration-track:41368639cc3b0c2267c838b1d80374f9fb5e216a42a70b0be549a8e7b40c00d0` |
| 33 | `theorem` | [scaleMajorant_nonneg](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/scalemajorant-nonneg.md) | 418 | `result-track:ee721e457207d189573cb23e33eb0db6f1bf17bab4394b5de4f63fe0f3e98e64` |
| 34 | `theorem` | [scaleMajorant_integrable](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/scalemajorant-integrable.md) | 426 | `result-track:ca3bd7719cfb1ab57505571dc40b6ed962e5c301ed9e0c0951f5e5b91c08bfed` |
| 35 | `theorem` | [occurrenceIntegrand_norm_le](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/occurrenceintegrand-norm-le.md) | 455 | `result-track:90422d2b88ecf8461e9513bd50e00a13be96184105c3d37e068acfe546ab209a` |
| 36 | `theorem` | [integral_norm_le](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/integral-norm-le.md) | 488 | `result-track:8d1b4603245bd242f2df56eeb76c064e7d82a47783846f42727923a6959be0b5` |
| 37 | `theorem` | [integral_norms_summable](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/integral-norms-summable.md) | 503 | `result-track:d64f8f7669201e2a8e30baefee857e44a4cde2d79d296e3b94668ec01393d1c7` |
| 38 | `theorem` | [summedIntegrand_eq](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/summedintegrand-eq.md) | 518 | `result-track:98b56c1cf5c2ba615ca9f3dbec5ce6437eadf819322c68c94245bb0420864a6b` |
| 39 | `theorem` | [integral_tsum_occurrences](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/integral-tsum-occurrences.md) | 530 | `result-track:b5ab7066ca8ee848fc6594dcb5272d1f19cec8dbaae83c2c85460bafc602f43d` |
| 40 | `theorem` | [integrals_enorm_ne_top](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/integrals-enorm-ne-top.md) | 545 | `result-track:1a23ddc146963473a6b2a24f42b8336ce6c54cea16a41fb5405526062504d46f` |
| 41 | `theorem` | [summedIntegrand_integrable](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/summedintegrand-integrable.md) | 563 | `result-track:e529ecfa581d0009cd47ee448b3669079895c6dfa6b93b71943fb31d47f7cd68` |
| 42 | `theorem` | [weightedSource_laplace_integrable](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/weightedsource-laplace-integrable.md) | 588 | `result-track:8c15e67fc65752968e162a82133192a198f1e6b632278b69f8ff70d4ac403b8a` |
| 43 | `theorem` | [equation20](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/equation20.md) | 600 | `result-track:813f25d008525547371ebe79a8db1632394e5ed1b8ff6c426b55eda35e728e2a` |
| 44 | `theorem` | [equation20_norms_summable](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/equation20-norms-summable.md) | 622 | `result-track:100df38e3ebfac254820d56a4c68a38bbe681f4df92655a09b1b851258aa56af` |
| 45 | `def` | [InitialFormulaCheckpoint](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/initialformulacheckpoint.md) | 637 | `declaration-track:9a2370ff3cb59136ee8c77d1bc17f9a7ea59817f5a3e1772f00132bc36b832a8` |
| 46 | `theorem` | [initial_formula_checkpoint](../../../../MeasureAndIntegration/InitialFormula.lean/declarations/initial-formula-checkpoint.md) | 653 | `result-track:f153449cb8dfba612627e6b9c910825e72f1953831dc6af56179f634a8d5de62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=21b0dfe1815c162fc2cf2a7c66f68276193328ed6e8b29b012259e95d009b756 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Variant3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Variant3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
