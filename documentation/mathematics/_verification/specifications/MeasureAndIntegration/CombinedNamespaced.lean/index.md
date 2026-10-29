# Verification target: Combined Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e79ec9ca9a9e2442eef9e7dacdc6be558cbbf190",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007fCombined/Variant3d9d84600f4324ec633c2ea372a8c16c8604f19d8853231dfafe8e79df86ab33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CombinedNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CombinedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e79ec9ca9a9e2442eef9e7dacdc6be558cbbf190`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007fCombined/Variant3d9d84600f4324ec633c2ea372a8c16c8604f19d8853231dfafe8e79df86ab33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007fCombined/Variant3d9d84600f4324ec633c2ea372a8c16c8604f19d8853231dfafe8e79df86ab33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Beta` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [betaIntegral_nat_factorials](../../../../MeasureAndIntegration/CombinedNamespaced.lean/declarations/betaintegral-nat-factorials.md) | 18 | `result-track:5d3db9402387bf641182a5c0c2b0fe01663937a2014a549d632e3bf4c325a0ae` |
| 2 | `theorem` | [integral_pow_mul_sub_pow_nat](../../../../MeasureAndIntegration/CombinedNamespaced.lean/declarations/integral-pow-mul-sub-pow-nat.md) | 32 | `result-track:e83637ff020ab48a737a9606e06ecb47f74f09f367da5ed36ed3ea364dbc3de0` |
| 3 | `theorem` | [beta_evenBasis_tailKernel_mul](../../../../MeasureAndIntegration/CombinedNamespaced.lean/declarations/beta-evenbasis-tailkernel-mul.md) | 55 | `result-track:6774e357080140c2f5f4b365ec96379eebd53776cb36dd38a52b2e777873a954` |
| 4 | `def` | [thetaTailPairKernel](../../../../MeasureAndIntegration/CombinedNamespaced.lean/declarations/thetatailpairkernel.md) | 87 | `declaration-track:224cfcc763fd6e0988f9136c45bc7088546283d11e85cd54c51874edcdeee611` |
| 5 | `theorem` | [thetaTailPairKernel_nonnegative](../../../../MeasureAndIntegration/CombinedNamespaced.lean/declarations/thetatailpairkernel-nonnegative.md) | 91 | `result-track:6e01f85238980185dae1d4827d44d92784cf9fd70cd6bd8e07d1dec68681e001` |
| 6 | `theorem` | [continuous_thetaTailPairKernel](../../../../MeasureAndIntegration/CombinedNamespaced.lean/declarations/continuous-thetatailpairkernel.md) | 97 | `result-track:5518e0753abf2052d132c3ed760c30b443b700a4d8beb97cf4a5eb0fbdd65c63` |
| 7 | `def` | [thetaTailPairIntegrand](../../../../MeasureAndIntegration/CombinedNamespaced.lean/declarations/thetatailpairintegrand.md) | 103 | `declaration-track:3006cefdf45b8b4011bdbf9c4f9545f2bdf7e98f12f6f081e4663df3f2b95361` |
| 8 | `theorem` | [measurable_thetaTailPairIntegrand](../../../../MeasureAndIntegration/CombinedNamespaced.lean/declarations/measurable-thetatailpairintegrand.md) | 107 | `result-track:264db6ebd24e4619c5257e36da2739cca51530a4fdbdd8875a7dc3370f40460e` |
| 9 | `theorem` | [thetaTailPairIntegrand_nonnegative](../../../../MeasureAndIntegration/CombinedNamespaced.lean/declarations/thetatailpairintegrand-nonnegative.md) | 113 | `result-track:d83b9143c719e0eda23b808a9d105e71eb8193849f64064c5561c28a19a55aa3` |
| 10 | `theorem` | [thetaTailPairIntegrand_right](../../../../MeasureAndIntegration/CombinedNamespaced.lean/declarations/thetatailpairintegrand-right.md) | 120 | `result-track:9e9c07a62cad34ad23be0d8417f6fab72e91346210df9a186651e7bfe5765bff` |
| 11 | `theorem` | [thetaTailPairIntegrand_right_of_neg](../../../../MeasureAndIntegration/CombinedNamespaced.lean/declarations/thetatailpairintegrand-right-of-neg.md) | 126 | `result-track:cfe76122187603709551aa3ee8007ed35775678d2f9a00925fd0b46ca7269dbb` |
| 12 | `theorem` | [thetaTailPairIntegrand_left](../../../../MeasureAndIntegration/CombinedNamespaced.lean/declarations/thetatailpairintegrand-left.md) | 131 | `result-track:3588e3c9257e6c9e3dbdb18e9a875e7e3892111cb4803fb7483aaa16b7d051ed` |
| 13 | `theorem` | [thetaTailPairIntegrand_right_integrable](../../../../MeasureAndIntegration/CombinedNamespaced.lean/declarations/thetatailpairintegrand-right-integrable.md) | 135 | `result-track:a1ffe4b13a84bc638d51ea0ca0d915c38a6efe91bf3353d4984768f0b25b0fb0` |
| 14 | `theorem` | [thetaTailPairIntegrand_left_integrable](../../../../MeasureAndIntegration/CombinedNamespaced.lean/declarations/thetatailpairintegrand-left-integrable.md) | 148 | `result-track:f43c35102fbca53c7d407195e7d81ea5e605c5387829e7188478c082211a6d71` |
| 15 | `theorem` | [thetaTailPairIntegrand_integral_right](../../../../MeasureAndIntegration/CombinedNamespaced.lean/declarations/thetatailpairintegrand-integral-right.md) | 154 | `result-track:dd590caa450fee113adc8c07cafb226f6973bbdfc28f6fe93d93b9189fa3d806` |
| 16 | `theorem` | [thetaTailPairIntegrand_integral_left](../../../../MeasureAndIntegration/CombinedNamespaced.lean/declarations/thetatailpairintegrand-integral-left.md) | 170 | `result-track:5775cd02b5bbe6a5b8e30a6e434a2149abff18a97d87e259c2ea57e47ba530a1` |
| 17 | `theorem` | [tailPairing_succ_eq_iteratedIntegral](../../../../MeasureAndIntegration/CombinedNamespaced.lean/declarations/tailpairing-succ-eq-iteratedintegral.md) | 186 | `result-track:fad171e929225212781e39c1c6eb65c2275602c616249ad5825b80384ed4fd6c` |
| 18 | `theorem` | [nonnegative_integral_integral_swap](../../../../MeasureAndIntegration/CombinedNamespaced.lean/declarations/nonnegative-integral-integral-swap.md) | 208 | `result-track:0848d4041da13ac1f21bc51de9f095498528f5858ab49142f4dd686395d67162` |
| 19 | `theorem` | [tailPairing_succ_tonelli](../../../../MeasureAndIntegration/CombinedNamespaced.lean/declarations/tailpairing-succ-tonelli.md) | 235 | `result-track:c757e02e8cfa86b99e8a5f2b45b941bb5a33e3a0e108f677be8cbbafdf5d6d86` |
| 20 | `theorem` | [tailPairing_succ_beta](../../../../MeasureAndIntegration/CombinedNamespaced.lean/declarations/tailpairing-succ-beta.md) | 251 | `result-track:f378848b7feb961458ee9d5e2add256c51f7eca800b7f16a77e5ea1f632634cd` |
| 21 | `theorem` | [thetaTailPairing_transport](../../../../MeasureAndIntegration/CombinedNamespaced.lean/declarations/thetatailpairing-transport.md) | 261 | `result-track:18a003ae2e573192bafcfd77de81a0887ea784f134248a691f80506c2b25dd8c` |
| 22 | `theorem` | [thetaTailTransport](../../../../MeasureAndIntegration/CombinedNamespaced.lean/declarations/thetatailtransport.md) | 268 | `result-track:9738a027e48ae2111590b1e1cc63434185dd128513dd349b7209db4790023da9` |
| 23 | `theorem` | [thetaTailPairing_order_two](../../../../MeasureAndIntegration/CombinedNamespaced.lean/declarations/thetatailpairing-order-two.md) | 272 | `result-track:c6dbb826fcd3b9214b3e8464fcb85604395d32ddd522f67458cae565f41240a0` |
| 24 | `theorem` | [beta_tailKernel_zero_one](../../../../MeasureAndIntegration/CombinedNamespaced.lean/declarations/beta-tailkernel-zero-one.md) | 277 | `result-track:38811c8c25ca6deb62aedc4966f238914cbe9619b84248332b5eee8861ed664e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0be4b0fda21dbaede88f11e84aa32bfc77fc93cd7f8ed5f6c9a69c31c5e6ced0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007fCombined/Variant3d9d84600f4324ec633c2ea372a8c16c8604f19d8853231dfafe8e79df86ab33.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007fCombined/Variant3d9d84600f4324ec633c2ea372a8c16c8604f19d8853231dfafe8e79df86ab33.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
