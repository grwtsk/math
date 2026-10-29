# Verification target: Estimate Moment Reflection Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98a3c805ff7511c7ec786de6a69bd4c610eb951a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8e28a4bf7e0c3fcb45c541ae5952fc41bd6446676d0a0025c307720be68168da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/EstimateMomentReflectionEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/EstimateMomentReflectionEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98a3c805ff7511c7ec786de6a69bd4c610eb951a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8e28a4bf7e0c3fcb45c541ae5952fc41bd6446676d0a0025c307720be68168da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8e28a4bf7e0c3fcb45c541ae5952fc41bd6446676d0a0025c307720be68168da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSampling` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Integral` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TwoMomentProfile](../../../../MeasureAndIntegration/EstimateMomentReflectionEdition1.lean/declarations/twomomentprofile.md) | 36 | `declaration-track:899bf9b924580a7a8b6c2de4a6ce168f6b259f2ec1315c6c4640c6fec02954a3` |
| 2 | `def` | [shiftedMomentIntegrand](../../../../MeasureAndIntegration/EstimateMomentReflectionEdition1.lean/declarations/shiftedmomentintegrand.md) | 42 | `declaration-track:0ae7993e178ecfffdcd9d5fa94e9ef0bb1c35b3555b0dc91f085f984bcc294f4` |
| 3 | `def` | [reflectedMomentIntegrand](../../../../MeasureAndIntegration/EstimateMomentReflectionEdition1.lean/declarations/reflectedmomentintegrand.md) | 45 | `declaration-track:75bb92a8de8d68de36b488fc8edb4cac58a92fd80ad9ac11453aebd28c70ab60` |
| 4 | `theorem` | [weighted_zero_integrable](../../../../MeasureAndIntegration/EstimateMomentReflectionEdition1.lean/declarations/weighted-zero-integrable.md) | 48 | `result-track:8daee2f49b73f34da086fc0bed55af73c3e8e029f72194aff380972eb05c2103` |
| 5 | `theorem` | [weighted_first_integrable](../../../../MeasureAndIntegration/EstimateMomentReflectionEdition1.lean/declarations/weighted-first-integrable.md) | 55 | `result-track:15a76ff727913efe985d4ef56c26341c37240dc3ce84a4fa3fffc5a7d0bddd5e` |
| 6 | `theorem` | [shiftedMomentIntegrand_integrable](../../../../MeasureAndIntegration/EstimateMomentReflectionEdition1.lean/declarations/shiftedmomentintegrand-integrable.md) | 63 | `result-track:024c463ab32a0cfc705ebd115fb9724068651e3e83325402e4f72a7a5b661fcd` |
| 7 | `theorem` | [reflectedMomentIntegrand_integrable](../../../../MeasureAndIntegration/EstimateMomentReflectionEdition1.lean/declarations/reflectedmomentintegrand-integrable.md) | 82 | `result-track:bb7c3084633dd2d1d1e8382f21cd1bd6d5c01208662040c04463a7b110fae8b7` |
| 8 | `theorem` | [shiftedMoment_integral_zero](../../../../MeasureAndIntegration/EstimateMomentReflectionEdition1.lean/declarations/shiftedmoment-integral-zero.md) | 102 | `result-track:60635f91eabdc376f2cccbf8538af27f93203663d97e0ed2f9f95a48f934d4c8` |
| 9 | `theorem` | [reflectedMoment_eq_neg_negativeHalf](../../../../MeasureAndIntegration/EstimateMomentReflectionEdition1.lean/declarations/reflectedmoment-eq-neg-negativehalf.md) | 155 | `result-track:75019408520ced2ac9e9f0392dc0ce8cf97359a0c79dfb2e12bc7733790595ac` |
| 10 | `theorem` | [two_moment_reflection](../../../../MeasureAndIntegration/EstimateMomentReflectionEdition1.lean/declarations/two-moment-reflection.md) | 181 | `result-track:edc0d352a84fbbc441d57ed2b494dfe051c151fd7aed652a618bb72cba5fa178` |
| 11 | `theorem` | [sourceCorrelation_twoMomentProfile](../../../../MeasureAndIntegration/EstimateMomentReflectionEdition1.lean/declarations/sourcecorrelation-twomomentprofile.md) | 200 | `result-track:bde7a91aae8ed2ca27f3d7269f16ca0256709ece65ee472abfbb0988e075b4fc` |
| 12 | `theorem` | [derivativeProfile_twoMomentProfile](../../../../MeasureAndIntegration/EstimateMomentReflectionEdition1.lean/declarations/derivativeprofile-twomomentprofile.md) | 217 | `result-track:12f9194258b0c4f310b6d65c06d5e1523bdf232a7f30310fccfa76575263f6f5` |
| 13 | `theorem` | [sourceCorrelation_reflection](../../../../MeasureAndIntegration/EstimateMomentReflectionEdition1.lean/declarations/sourcecorrelation-reflection.md) | 248 | `result-track:b803a9963ebf905ab49a3d1de958b47e836c4a4a3828021f5ee17e403398dd99` |
| 14 | `theorem` | [derivativeProfile_reflection](../../../../MeasureAndIntegration/EstimateMomentReflectionEdition1.lean/declarations/derivativeprofile-reflection.md) | 260 | `result-track:e7a5f60404a7c8a90696a1800208a35b3fbe34a2a2c9f3fcc8bc8e5341099370` |
| 15 | `def` | [MomentReflectionCheckpoint](../../../../MeasureAndIntegration/EstimateMomentReflectionEdition1.lean/declarations/momentreflectioncheckpoint.md) | 272 | `declaration-track:b74fd55e24691dce2f29cda87a3b9a862a8a10ef8548611a2a6581c43f5705f5` |
| 16 | `theorem` | [moment_reflection_checkpoint](../../../../MeasureAndIntegration/EstimateMomentReflectionEdition1.lean/declarations/moment-reflection-checkpoint.md) | 288 | `result-track:8a08f25dab4d3cc190a784ca89a4cc4e0fa6484302026bb5c813e05242b1b415` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56e7ae687699097360f95fc9aa44221873f20f652ba06b3db758d93881015987 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8e28a4bf7e0c3fcb45c541ae5952fc41bd6446676d0a0025c307720be68168da.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8e28a4bf7e0c3fcb45c541ae5952fc41bd6446676d0a0025c307720be68168da.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
