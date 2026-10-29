# Verification target: Convolution V3 Prebytes Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70845586e169d0fbd97896cdd8d8c53bf1a40527",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV3Prebytes/Variantd1b15a4918b81fba46f7260257195b7f45623a85312d9da4f796bd622a0a6a12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ConvolutionV3PrebytesNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ConvolutionV3PrebytesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70845586e169d0fbd97896cdd8d8c53bf1a40527`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV3Prebytes/Variantd1b15a4918b81fba46f7260257195b7f45623a85312d9da4f796bd622a0a6a12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV3Prebytes/Variantd1b15a4918b81fba46f7260257195b7f45623a85312d9da4f796bd622a0a6a12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceHankelReflection` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [greenKernel](../../../../MeasureAndIntegration/ConvolutionV3PrebytesNamespaced.lean/declarations/greenkernel.md) | 35 | `declaration-track:4c3a48132c831665d5099c80d02b84c17c9f91874a8e9a876f4ff2784758be68` |
| 2 | `def` | [sourceGreenPairing](../../../../MeasureAndIntegration/ConvolutionV3PrebytesNamespaced.lean/declarations/sourcegreenpairing.md) | 38 | `declaration-track:a87527438f65c010ef0e25c27a78194ac53a17fc98f3fdb796329ad4a99bc1a9` |
| 3 | `def` | [sourceGreenConvolution](../../../../MeasureAndIntegration/ConvolutionV3PrebytesNamespaced.lean/declarations/sourcegreenconvolution.md) | 42 | `declaration-track:90b454c6af095ad2ee8572b21fb41b7e30ebc0622833384aa25bde5aaa2f5145` |
| 4 | `theorem` | [greenKernel_continuous](../../../../MeasureAndIntegration/ConvolutionV3PrebytesNamespaced.lean/declarations/greenkernel-continuous.md) | 46 | `result-track:ab56731a4d7c273fc19e04b61250959a35ab81c4046f14343fb933e3e0cd001b` |
| 5 | `theorem` | [greenKernel_even](../../../../MeasureAndIntegration/ConvolutionV3PrebytesNamespaced.lean/declarations/greenkernel-even.md) | 50 | `result-track:4c75484647ba13c39af52e1d1a12cb217b4565d2926e2c916650086b96a944c7` |
| 6 | `theorem` | [sourceGreenPairing_integrable](../../../../MeasureAndIntegration/ConvolutionV3PrebytesNamespaced.lean/declarations/sourcegreenpairing-integrable.md) | 54 | `result-track:6fd93cf4dea9949ee37e069b2831f2321d55b0f7f7436f6b5993e9a4f914f8fd` |
| 7 | `theorem` | [sourceGreenConvolution_integrable](../../../../MeasureAndIntegration/ConvolutionV3PrebytesNamespaced.lean/declarations/sourcegreenconvolution-integrable.md) | 59 | `result-track:7386bab3133d440742fffd90ad7a375547f48de24f0bd5cfd97051a0eb538fe9` |
| 8 | `theorem` | [sourceGreenPairing_eq_twice_negativeSmoothMoment](../../../../MeasureAndIntegration/ConvolutionV3PrebytesNamespaced.lean/declarations/sourcegreenpairing-eq-twice-negativesmoothmoment.md) | 66 | `result-track:18912c845f5fce8838ffaf37efa12e57fdb69078eb63d238f8b8a577563fec57` |
| 9 | `theorem` | [sourceGreenPairing_eq_causal_energy](../../../../MeasureAndIntegration/ConvolutionV3PrebytesNamespaced.lean/declarations/sourcegreenpairing-eq-causal-energy.md) | 104 | `result-track:d340f91bcc3c3d2bb79860bde37e0ff8757a622d9d1fd5dc9b14596abade17d7` |
| 10 | `theorem` | [criticalContinuousMoment_eq_neg_half_green](../../../../MeasureAndIntegration/ConvolutionV3PrebytesNamespaced.lean/declarations/criticalcontinuousmoment-eq-neg-half-green.md) | 111 | `result-track:461cff63705b71e6372b1b6f64e293a1b00d8f65967d6b1426a65808e55dcc42` |
| 11 | `theorem` | [normalizedPrimitiveBump_even](../../../../MeasureAndIntegration/ConvolutionV3PrebytesNamespaced.lean/declarations/normalizedprimitivebump-even.md) | 117 | `result-track:c888bf9a68552acda38deeac739b84b66ef203c592ddae7636390b4511023e4b` |
| 12 | `theorem` | [normalizedPrimitiveBump_deriv_odd](../../../../MeasureAndIntegration/ConvolutionV3PrebytesNamespaced.lean/declarations/normalizedprimitivebump-deriv-odd.md) | 130 | `result-track:6552539980f53d083216dd06a9b42afee6da8137ca6fe3f1a0ce40fa21203032` |
| 13 | `theorem` | [causalSourceTail_add_reflection](../../../../MeasureAndIntegration/ConvolutionV3PrebytesNamespaced.lean/declarations/causalsourcetail-add-reflection.md) | 143 | `result-track:9c9a019e84c1d58d7b62d4c1ab708209a068674a2d4ffe2c665b82ccfcca8f9e` |
| 14 | `theorem` | [sourceGreenConvolution_upper_half](../../../../MeasureAndIntegration/ConvolutionV3PrebytesNamespaced.lean/declarations/sourcegreenconvolution-upper-half.md) | 150 | `result-track:a07a89a48324776d36c7b5ec227595af0891e32ee19d643f32df7800b64f0d6f` |
| 15 | `theorem` | [sourceGreenConvolution_lower_half](../../../../MeasureAndIntegration/ConvolutionV3PrebytesNamespaced.lean/declarations/sourcegreenconvolution-lower-half.md) | 163 | `result-track:c39ab849e619af572152c0905d8c87d927edb31898c46d718ef5090b7ac0896a` |
| 16 | `theorem` | [sourceGreenConvolution_eq_tails](../../../../MeasureAndIntegration/ConvolutionV3PrebytesNamespaced.lean/declarations/sourcegreenconvolution-eq-tails.md) | 178 | `result-track:25b6cda0d544eb63f497edef153ea40acd019aeae1a8ff72c84459adef781493` |
| 17 | `theorem` | [sourceGreenConvolution_eq_neg_bump](../../../../MeasureAndIntegration/ConvolutionV3PrebytesNamespaced.lean/declarations/sourcegreenconvolution-eq-neg-bump.md) | 187 | `result-track:7c29cb0930f8b1092390a2fac6421cdfbabb79849790261dbbfa9429c4a5044d` |
| 18 | `theorem` | [sourceGreenConvolution_continuous](../../../../MeasureAndIntegration/ConvolutionV3PrebytesNamespaced.lean/declarations/sourcegreenconvolution-continuous.md) | 193 | `result-track:14d8a0d826327629fac514f9a0a17ade844b54ae3a6126d228207f9798aef66e` |
| 19 | `theorem` | [sourceGreenConvolution_hasCompactSupport](../../../../MeasureAndIntegration/ConvolutionV3PrebytesNamespaced.lean/declarations/sourcegreenconvolution-hascompactsupport.md) | 201 | `result-track:18d0ba7d828407f4ecfa67ce6196aff7c8f59c369bd6e0a6f274a2e78f37f74e` |
| 20 | `theorem` | [sourceGreenConvolution_zero_of_not_mem](../../../../MeasureAndIntegration/ConvolutionV3PrebytesNamespaced.lean/declarations/sourcegreenconvolution-zero-of-not-mem.md) | 209 | `result-track:7a91dd567fd796362db73ffad85a9be83a93440bf3b6be0ff3c2000944d56117` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a14107fc1ae38db1cde06a240033c503b7b174937fa9a026d0a25cfd928f74bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV3Prebytes/Variantd1b15a4918b81fba46f7260257195b7f45623a85312d9da4f796bd622a0a6a12.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV3Prebytes/Variantd1b15a4918b81fba46f7260257195b7f45623a85312d9da4f796bd622a0a6a12.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
