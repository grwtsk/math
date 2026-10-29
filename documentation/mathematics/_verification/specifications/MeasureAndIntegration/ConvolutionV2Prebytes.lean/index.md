# Verification target: Convolution V2 Prebytes

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a291676084e4782bf30daaa0d7c5aed87880964f",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV2Prebytes/Variant0c9edacefb4de9acb6b0d808b250378985896820ea246677df8568aba193d5c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ConvolutionV2Prebytes.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ConvolutionV2Prebytes.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a291676084e4782bf30daaa0d7c5aed87880964f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV2Prebytes/Variant0c9edacefb4de9acb6b0d808b250378985896820ea246677df8568aba193d5c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV2Prebytes/Variant0c9edacefb4de9acb6b0d808b250378985896820ea246677df8568aba193d5c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceHankelReflection` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [greenKernel](../../../../MeasureAndIntegration/ConvolutionV2Prebytes.lean/declarations/greenkernel.md) | 27 | `declaration-track:b9ed1fbcea91a3dc2511f3aadee19c3d32923360ac774ada389ef42c40c88537` |
| 2 | `def` | [sourceGreenPairing](../../../../MeasureAndIntegration/ConvolutionV2Prebytes.lean/declarations/sourcegreenpairing.md) | 30 | `declaration-track:ec75dc25cbe832dd6a1f6798da06b931734e8be36114f3448c1d61b385722b47` |
| 3 | `def` | [sourceGreenConvolution](../../../../MeasureAndIntegration/ConvolutionV2Prebytes.lean/declarations/sourcegreenconvolution.md) | 34 | `declaration-track:2913c3bbb89c2c13d454256f4367619bd82f4b7411a5fc0c83e7e4b1fa7c848a` |
| 4 | `theorem` | [greenKernel_continuous](../../../../MeasureAndIntegration/ConvolutionV2Prebytes.lean/declarations/greenkernel-continuous.md) | 38 | `result-track:5e0c30947d046b040ed7416b2d503ac7b1d61ba441eff21d92e70f1d02227898` |
| 5 | `theorem` | [greenKernel_even](../../../../MeasureAndIntegration/ConvolutionV2Prebytes.lean/declarations/greenkernel-even.md) | 42 | `result-track:a4b0115041b18790b0ef54f6f665768721af5b2848508947910499d4bb7d0e3d` |
| 6 | `theorem` | [sourceGreenPairing_integrable](../../../../MeasureAndIntegration/ConvolutionV2Prebytes.lean/declarations/sourcegreenpairing-integrable.md) | 46 | `result-track:168fcc3faf258fce1ddae28aa1203feca7b1247c724e5c9112dac70c7efb9b47` |
| 7 | `theorem` | [sourceGreenConvolution_integrable](../../../../MeasureAndIntegration/ConvolutionV2Prebytes.lean/declarations/sourcegreenconvolution-integrable.md) | 51 | `result-track:5225b7ed17c16eb775877f293515e3f09546eb077b9a152132429e5a309413e1` |
| 8 | `theorem` | [sourceGreenPairing_eq_twice_negativeSmoothMoment](../../../../MeasureAndIntegration/ConvolutionV2Prebytes.lean/declarations/sourcegreenpairing-eq-twice-negativesmoothmoment.md) | 58 | `result-track:038e040b34b4da270ba47ee3390239ae86416ebfb6eb6a108bd27ae3e22c186a` |
| 9 | `theorem` | [sourceGreenPairing_eq_causal_energy](../../../../MeasureAndIntegration/ConvolutionV2Prebytes.lean/declarations/sourcegreenpairing-eq-causal-energy.md) | 96 | `result-track:99f3ae5b25bb84f59f56111260870980431672dcd28243d56ec2b55381d654cf` |
| 10 | `theorem` | [criticalContinuousMoment_eq_neg_half_green](../../../../MeasureAndIntegration/ConvolutionV2Prebytes.lean/declarations/criticalcontinuousmoment-eq-neg-half-green.md) | 103 | `result-track:55228d5d58ec25acff57f48fc45ca5bec45fc4c8bb534afd1e317c42dd6d85f6` |
| 11 | `theorem` | [normalizedPrimitiveBump_even](../../../../MeasureAndIntegration/ConvolutionV2Prebytes.lean/declarations/normalizedprimitivebump-even.md) | 109 | `result-track:e8bd89367ce38475f5d1d3b43fff33b299b7fb068720e11fa8f03068bcceddfe` |
| 12 | `theorem` | [normalizedPrimitiveBump_deriv_odd](../../../../MeasureAndIntegration/ConvolutionV2Prebytes.lean/declarations/normalizedprimitivebump-deriv-odd.md) | 122 | `result-track:a64b754cb4718adc168fcfc9f154df0f6296ebf625d839b76baf8a48ad335eac` |
| 13 | `theorem` | [causalSourceTail_add_reflection](../../../../MeasureAndIntegration/ConvolutionV2Prebytes.lean/declarations/causalsourcetail-add-reflection.md) | 135 | `result-track:be3528b7b15f2c74190ff2e20620d222c2d32281c053a8f2a460ec1a1dc2d3be` |
| 14 | `theorem` | [sourceGreenConvolution_upper_half](../../../../MeasureAndIntegration/ConvolutionV2Prebytes.lean/declarations/sourcegreenconvolution-upper-half.md) | 142 | `result-track:b1114fc39c08fb783ada32f6d14af62a94e6994ac13143fab437ca4dc0ce9c3d` |
| 15 | `theorem` | [sourceGreenConvolution_lower_half](../../../../MeasureAndIntegration/ConvolutionV2Prebytes.lean/declarations/sourcegreenconvolution-lower-half.md) | 155 | `result-track:12f3d073e5985caa81e149f29eaa002db05b5e96247847d82e7455d23c323883` |
| 16 | `theorem` | [sourceGreenConvolution_eq_tails](../../../../MeasureAndIntegration/ConvolutionV2Prebytes.lean/declarations/sourcegreenconvolution-eq-tails.md) | 170 | `result-track:352387868d35ffd44898c89dc26babdccc880b38bf05d85e9f1b0828bc85bbbe` |
| 17 | `theorem` | [sourceGreenConvolution_eq_neg_bump](../../../../MeasureAndIntegration/ConvolutionV2Prebytes.lean/declarations/sourcegreenconvolution-eq-neg-bump.md) | 179 | `result-track:f4a325c87b849afb95ec4334d30977b381257deee84b99baa31f5adfa7bca983` |
| 18 | `theorem` | [sourceGreenConvolution_continuous](../../../../MeasureAndIntegration/ConvolutionV2Prebytes.lean/declarations/sourcegreenconvolution-continuous.md) | 185 | `result-track:f33c391d65b8434a10da695dc3be1516c03119a09e96bd0db21f925172492f33` |
| 19 | `theorem` | [sourceGreenConvolution_hasCompactSupport](../../../../MeasureAndIntegration/ConvolutionV2Prebytes.lean/declarations/sourcegreenconvolution-hascompactsupport.md) | 193 | `result-track:cf2c17c879bddf93b4c4902c76fd96ed0752bb57472503e1f1bdf64ebd189a06` |
| 20 | `theorem` | [sourceGreenConvolution_zero_of_not_mem](../../../../MeasureAndIntegration/ConvolutionV2Prebytes.lean/declarations/sourcegreenconvolution-zero-of-not-mem.md) | 201 | `result-track:d91366a4fe408d83c96051bfb7cf670b283bab65e09097ede1d0626f228df217` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3cb3e90e8e8b6e1451331327d71cfa2e101d394cfa1e562c7a68f535a916e635 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV2Prebytes/Variant0c9edacefb4de9acb6b0d808b250378985896820ea246677df8568aba193d5c2.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV2Prebytes/Variant0c9edacefb4de9acb6b0d808b250378985896820ea246677df8568aba193d5c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
