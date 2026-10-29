# Verification target: Flux Target V1 Prebytes Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4729ecd4348e8d61a0eca1f909e9971938297b6d",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FluxTargetV1Prebytes/Variant2d21ae1d2e3c4931a25ecb4d23e3ecd1928360238fe06073dd90b30e1d32da2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4729ecd4348e8d61a0eca1f909e9971938297b6d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FluxTargetV1Prebytes/Variant2d21ae1d2e3c4931a25ecb4d23e3ecd1928360238fe06073dd90b30e1d32da2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FluxTargetV1Prebytes/Variant2d21ae1d2e3c4931a25ecb4d23e3ecd1928360238fe06073dd90b30e1d32da2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePrimeMomentScale` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [continuousHalfDenominator](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/continuoushalfdenominator.md) | 35 | `declaration-track:4db37d803624bc7cb68149958d44f579e3dc4b21b6bcf7432bc41af0de4bebf4` |
| 2 | `def` | [continuousHalfRational](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/continuoushalfrational.md) | 38 | `declaration-track:85e9c1b660389a3937d0934b23de69e1812080bf19cad2b7f2c3cab85671ed44` |
| 3 | `def` | [continuousHalfScaleDerivative](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/continuoushalfscalederivative.md) | 42 | `declaration-track:8f26c841f96e42da6cda78b62b2639ca1cd983847579cea59ec31e2f25938a33` |
| 4 | `theorem` | [continuousHalfDenominator_pos](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/continuoushalfdenominator-pos.md) | 46 | `result-track:1eac92d32dc7b9aa80459cd8d9518b0ddbe2f6001d8e428826f32486d163fde0` |
| 5 | `theorem` | [continuousHalfRational_hasDerivAt](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/continuoushalfrational-hasderivat.md) | 51 | `result-track:8ff10402ca8b99a60a98aa11a2549575a9112dd1283bb9964c20a18d176a85a8` |
| 6 | `theorem` | [continuousHalfRational_contDiff](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/continuoushalfrational-contdiff.md) | 63 | `result-track:ec157c64e8fb63814321540d8f099d7d14a886f403163321bfe656fa899cbd45` |
| 7 | `theorem` | [continuousHalfScaleDerivative_continuous](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/continuoushalfscalederivative-continuous.md) | 71 | `result-track:e33f18c621dd59b0c1882e86ee5f0a3c515d800b6784196a33450e065aca7418` |
| 8 | `theorem` | [continuousHalfScaleDerivative_lt_zero](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/continuoushalfscalederivative-lt-zero.md) | 80 | `result-track:ec5a4409a7bc1fa430a7b694cc6b5f2fb9d26e27d723711489a805467311365e` |
| 9 | `theorem` | [criticalContinuousMoment_eventually_eq_rational](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/criticalcontinuousmoment-eventually-eq-rational.md) | 91 | `result-track:10acc0ded9a4d90c68ead231afbda2e6d5441bf9963b04aeb228e4bdfd94132a` |
| 10 | `theorem` | [criticalContinuousMoment_hasDerivAt](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/criticalcontinuousmoment-hasderivat.md) | 97 | `result-track:92262bacb89425b5a057a3be50874d6638b32533293be74b4391ec2ec85df5ec` |
| 11 | `theorem` | [criticalContinuousMoment_contDiffAt](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/criticalcontinuousmoment-contdiffat.md) | 103 | `result-track:77cfaa793fcec0d1a1fae7f1bbea6e89757fdd60ceee9d6479e911026b286bb6` |
| 12 | `theorem` | [criticalContinuousMoment_contDiffOn](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/criticalcontinuousmoment-contdiffon.md) | 109 | `result-track:c9fd3bd059058d0b8bdbe73257b171e2ebf412db8d0f1cbb73d5816bff5e2f52` |
| 13 | `theorem` | [criticalContinuousMoment_deriv](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/criticalcontinuousmoment-deriv.md) | 114 | `result-track:2758c6b69de5201cbd4e95281c67ed6f20739521a01984916b1ace5f710d8579` |
| 14 | `def` | [mangoldtWorkScaleDerivative](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/mangoldtworkscalederivative.md) | 119 | `declaration-track:ad9e5169d3262a588a6bce3a3d213ef1321dfb481bcaa4accb2db789c906c336` |
| 15 | `theorem` | [criticalMangoldtWork_eventually_eq_sub](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/criticalmangoldtwork-eventually-eq-sub.md) | 124 | `result-track:fbb5929d4f1e7c57437de556c324e96327ca00af3551bd983fd69f34c63e0bd9` |
| 16 | `theorem` | [criticalMangoldtWork_hasDerivAt](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/criticalmangoldtwork-hasderivat.md) | 132 | `result-track:08253576ff904d92078f686d86179025c426ff5f9b37207d1df91459ff35293b` |
| 17 | `theorem` | [criticalMangoldtWork_contDiffAt](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/criticalmangoldtwork-contdiffat.md) | 139 | `result-track:897851f2b8a074ba1d848a13bbef33153a6be0dfeed219a838b56d8ffb45d2b9` |
| 18 | `theorem` | [criticalMangoldtWork_contDiffOn](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/criticalmangoldtwork-contdiffon.md) | 146 | `result-track:d1206a17e0b4d24fcff6d9ff1be6c215d439c9878e0c39750069ec4ba71cf86d` |
| 19 | `theorem` | [criticalMangoldtWork_deriv](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/criticalmangoldtwork-deriv.md) | 151 | `result-track:7bc4c209072e2578fdc903ee37b62b467300a1b9ecca45ef792319782f43c330` |
| 20 | `theorem` | [mangoldtWorkScaleDerivative_continuousOn](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/mangoldtworkscalederivative-continuouson.md) | 156 | `result-track:90c1a0b0839fb22d7190f27e69ac515a5e52b7908a7cf8047657f866411889dd` |
| 21 | `theorem` | [uIcc_subset_scaleDomain](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/uicc-subset-scaledomain.md) | 164 | `result-track:49779539bfe453a749ad7c62f5b684a1db5f3ba9ec36e062df402907d521a239` |
| 22 | `theorem` | [continuousHalfScaleDerivative_intervalIntegrable](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/continuoushalfscalederivative-intervalintegrable.md) | 172 | `result-track:87d933c8e0c500aef7056555ae976fea08f161e6f6cbfeb0fff6d15446abe3f1` |
| 23 | `theorem` | [closedPrimeMomentScaleDerivative_intervalIntegrable](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/closedprimemomentscalederivative-intervalintegrable.md) | 177 | `result-track:1082e34c2e3f39672287406a431e3adbb929f0169ecb5ec34434556743876b08` |
| 24 | `theorem` | [mangoldtWorkScaleDerivative_intervalIntegrable](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/mangoldtworkscalederivative-intervalintegrable.md) | 187 | `result-track:799dae11ff62b088f3333f264a047d7489c56ce23a348238c3c8c553d92d2ef1` |
| 25 | `theorem` | [criticalContinuousMoment_flux](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/criticalcontinuousmoment-flux.md) | 194 | `result-track:7e75b20824a4382fae82fc246ad86d64958c38f51a301223a7a0d6bc68dd11be` |
| 26 | `theorem` | [criticalMangoldtWork_flux](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/criticalmangoldtwork-flux.md) | 202 | `result-track:2c372ea7f6a82744a08122e72ef6dfc0c3477b43b6245d280c929c0a0b1aec22` |
| 27 | `theorem` | [criticalMangoldtWork_flux_eq_sub](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/criticalmangoldtwork-flux-eq-sub.md) | 210 | `result-track:c02de51a35e310a02f200a90c4cb59c3783f431d0cee952c3abac3aef8414b75` |
| 28 | `theorem` | [continuousHalfScaleDerivative_flux_abs_lt_two](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/continuoushalfscalederivative-flux-abs-lt-two.md) | 219 | `result-track:df5223aae8d108b4f1168458c4b57a707b3e5c33caf3eb8c3397eb060a6bc6b4` |
| 29 | `theorem` | [continuousHalfScaleDerivative_flux_nonpos](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/continuoushalfscalederivative-flux-nonpos.md) | 228 | `result-track:954a71b2cff9fd8da19e25ceea063285e3e4c0b1ac78472a8573fca02616eb00` |
| 30 | `theorem` | [continuousHalfScaleDerivative_flux_bounds](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/continuoushalfscalederivative-flux-bounds.md) | 240 | `result-track:14b28b4c2c1bdbc9ccd42b9709b15f66e4d162b17663b58923046d40afb5a041` |
| 31 | `theorem` | [criticalContinuousMoment_antitoneOn](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/criticalcontinuousmoment-antitoneon.md) | 248 | `result-track:d77241c6d29f12821c4b001818f65b18158430c328aab35adb1ccf91f63f8a61` |
| 32 | `theorem` | [negativeContinuousHalf_monotoneOn](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/negativecontinuoushalf-monotoneon.md) | 255 | `result-track:992fb1a3321edbe26530173a37e52c9e599a6541548fde48d65e5c9ea4d15915` |
| 33 | `def` | [IntegratedMangoldtWorkTailLowerBound](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/integratedmangoldtworktaillowerbound.md) | 261 | `declaration-track:33632057e7e4e5f5242cbc7e24264526a79a011565b7151bd453b8c3c906de91` |
| 34 | `theorem` | [work_tail_of_integrated_work_tail](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/work-tail-of-integrated-work-tail.md) | 266 | `result-track:d08f7c621a45e0120e222637a9b478099d934aaa38f09c65968e0cf0778d4a4d` |
| 35 | `theorem` | [integrated_work_tail_of_work_tail](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/integrated-work-tail-of-work-tail.md) | 278 | `result-track:2e129d14b39549479bbf14d57a8e4fabaad067acd791b7216b5d4c7f2aa2377b` |
| 36 | `theorem` | [integrated_work_tail_iff_work_tail](../../../../MeasureAndIntegration/FluxTargetV1PrebytesNamespaced.lean/declarations/integrated-work-tail-iff-work-tail.md) | 293 | `result-track:d0246149d460e80f15ee00d2624a8b2ff3f20c9c23331c2d1af3640b6f8bcaa2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f5d69b447a2361f14d808b584bb25a3869fc5e679bc0db99f2f88b8de894347 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FluxTargetV1Prebytes/Variant2d21ae1d2e3c4931a25ecb4d23e3ecd1928360238fe06073dd90b30e1d32da2f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/FluxTargetV1Prebytes/Variant2d21ae1d2e3c4931a25ecb4d23e3ecd1928360238fe06073dd90b30e1d32da2f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
