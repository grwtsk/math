# Verification target: Draft V2 Source Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ae6d823c66cfa10666d805c144f6f03662951da",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DraftV2Source/Variant3d11c44b35682f2ce11de9fdffa3af692cee6fc5952f7cd37eb2d48410a75871.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/DraftV2SourceNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/DraftV2SourceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ae6d823c66cfa10666d805c144f6f03662951da`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DraftV2Source/Variant3d11c44b35682f2ce11de9fdffa3af692cee6fc5952f7cd37eb2d48410a75871.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/DraftV2Source/Variant3d11c44b35682f2ce11de9fdffa3af692cee6fc5952f7cd37eb2d48410a75871.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePrimeSquareMainTerm` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalPrimeTest](../../../../MeasureAndIntegration/DraftV2SourceNamespaced.lean/declarations/criticalprimetest.md) | 36 | `declaration-track:2ee05c6c254e72e165c02f7f18de201bec094600acb03b1bae77dc9b02610f0c` |
| 2 | `def` | [criticalContinuousMoment](../../../../MeasureAndIntegration/DraftV2SourceNamespaced.lean/declarations/criticalcontinuousmoment.md) | 40 | `declaration-track:0d55a5d8a16739ac96456509507748e88b88fdb8d812ebbca095de1b7a5c65f9` |
| 3 | `def` | [criticalSignedWork](../../../../MeasureAndIntegration/DraftV2SourceNamespaced.lean/declarations/criticalsignedwork.md) | 44 | `declaration-track:b3cc119c2ddc58fe435d26098b0c4d65d1fdcffe7093855b608e1a50f84e2063` |
| 4 | `def` | [CriticalAbelTailLowerBound](../../../../MeasureAndIntegration/DraftV2SourceNamespaced.lean/declarations/criticalabeltaillowerbound.md) | 48 | `declaration-track:0477c00aa4b3ff078a2aaad54a6d40c379860896a1111bc75d09e19676108f61` |
| 5 | `theorem` | [criticalPrimeTest_contDiff](../../../../MeasureAndIntegration/DraftV2SourceNamespaced.lean/declarations/criticalprimetest-contdiff.md) | 52 | `result-track:7af1c73025afd38baa4ecc2af70ca603fccf91e873a31986f1e098ed07b2974f` |
| 6 | `theorem` | [criticalPrimeTest_deriv](../../../../MeasureAndIntegration/DraftV2SourceNamespaced.lean/declarations/criticalprimetest-deriv.md) | 57 | `result-track:da3f0e51d81d9b3a85cfbaf5dcad46363354db391f5fdd84b83d1a48d61d8aa6` |
| 7 | `theorem` | [criticalPrimeTest_at_upper](../../../../MeasureAndIntegration/DraftV2SourceNamespaced.lean/declarations/criticalprimetest-at-upper.md) | 69 | `result-track:5f5d62d0254ce50197b37fad8ed7eb750ca89a3ec15d4dc0b068c42140808ff4` |
| 8 | `theorem` | [criticalPrimeTest_at_zero](../../../../MeasureAndIntegration/DraftV2SourceNamespaced.lean/declarations/criticalprimetest-at-zero.md) | 73 | `result-track:d76677dc5ad28c807f62d9219fbae96ca1c748f80f50e582258b18867c4e4c73` |
| 9 | `theorem` | [criticalContinuousMoment_eq_neg_negative](../../../../MeasureAndIntegration/DraftV2SourceNamespaced.lean/declarations/criticalcontinuousmoment-eq-neg-negative.md) | 79 | `result-track:98e16943d86f34085cbda9bcb0e4b2fdf92db72e36a560d0391de3a4f50954c6` |
| 10 | `theorem` | [criticalContinuousMoment_eq_smooth_add_initial](../../../../MeasureAndIntegration/DraftV2SourceNamespaced.lean/declarations/criticalcontinuousmoment-eq-smooth-add-initial.md) | 86 | `result-track:cab8d00c3322c9bcc05133497fa89808e8004d3060b640ea656875db280453a1` |
| 11 | `theorem` | [criticalContinuousMoment_abs_le_two](../../../../MeasureAndIntegration/DraftV2SourceNamespaced.lean/declarations/criticalcontinuousmoment-abs-le-two.md) | 93 | `result-track:d39a01ecfebb447214ba6547656fc9c59f2fd348e2b4580b9905d3bc0bb98118` |
| 12 | `theorem` | [criticalPrimeWindow_eq_sum](../../../../MeasureAndIntegration/DraftV2SourceNamespaced.lean/declarations/criticalprimewindow-eq-sum.md) | 99 | `result-track:623aa8af6c26acb01ce91e677136a8fb8d26c83cd192a6f11bda7f4f58fb2ee9` |
| 13 | `theorem` | [criticalPrimeSum_eq_continuous_sub_work](../../../../MeasureAndIntegration/DraftV2SourceNamespaced.lean/declarations/criticalprimesum-eq-continuous-sub-work.md) | 113 | `result-track:a9c84f5ba61aa07d9b49c6326c82fd9ab902247d0998ac32f936961d21640cc5` |
| 14 | `theorem` | [criticalPrimeTailUpper_iff_signed_lower](../../../../MeasureAndIntegration/DraftV2SourceNamespaced.lean/declarations/criticalprimetailupper-iff-signed-lower.md) | 127 | `result-track:bc3a463a3fee56fd92c25e529a42d2789ab33886421cf070787763cc4bf8dbf2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c86b2f3dc6517fcc37e8a5c59353ea658e969973fa6f19783b446ddb5a436684 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DraftV2Source/Variant3d11c44b35682f2ce11de9fdffa3af692cee6fc5952f7cd37eb2d48410a75871.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/DraftV2Source/Variant3d11c44b35682f2ce11de9fdffa3af692cee6fc5952f7cd37eb2d48410a75871.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
