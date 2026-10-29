# Verification target: Logarithmic Source Attemptrebuild01 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "942aa4a042327e136ad723121582ebd394e65f7e",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantc35c211c854c27f99cabef09e5a73c7cd97e5738547ed78a92b00b3b6e7200c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/LogarithmicSourceAttemptrebuild01Namespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/LogarithmicSourceAttemptrebuild01Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `942aa4a042327e136ad723121582ebd394e65f7e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantc35c211c854c27f99cabef09e5a73c7cd97e5738547ed78a92b00b3b6e7200c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantc35c211c854c27f99cabef09e5a73c7cd97e5738547ed78a92b00b3b6e7200c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveLogLift](../../../../MeasureAndIntegration/LogarithmicSourceAttemptrebuild01Namespaced.lean/declarations/positiveloglift.md) | 27 | `declaration-track:a1fa4870be9e0e23886e781587698dc3356255128467326cd4dee83dc509d318` |
| 2 | `theorem` | [positiveLogLift_exp](../../../../MeasureAndIntegration/LogarithmicSourceAttemptrebuild01Namespaced.lean/declarations/positiveloglift-exp.md) | 30 | `result-track:024c171be906bd3f1fe660d6fd6422d9139056632b0a86f10d16a4d1868291ce` |
| 3 | `theorem` | [exp_square_weight](../../../../MeasureAndIntegration/LogarithmicSourceAttemptrebuild01Namespaced.lean/declarations/exp-square-weight.md) | 34 | `result-track:72843da30f82a6f78efdb4c0242a0c4a19969e104f8930237c56e1743ed7751d` |
| 4 | `theorem` | [lift_square_jacobian](../../../../MeasureAndIntegration/LogarithmicSourceAttemptrebuild01Namespaced.lean/declarations/lift-square-jacobian.md) | 40 | `result-track:502d3bbf4cf62fc4c3052423dbeb161c5c4e4938cc0553ab576a59561cdc55ca` |
| 5 | `theorem` | [lift_square_integrable_iff](../../../../MeasureAndIntegration/LogarithmicSourceAttemptrebuild01Namespaced.lean/declarations/lift-square-integrable-iff.md) | 47 | `result-track:bd693e56bf965a1abb50a5608f0dd8b09f86f7c98ef447212f3629dc116b0a47` |
| 6 | `theorem` | [lift_square_integral](../../../../MeasureAndIntegration/LogarithmicSourceAttemptrebuild01Namespaced.lean/declarations/lift-square-integral.md) | 58 | `result-track:68ab55c640492dce0bd103b3e850ae2d9f537ec5af1b1c628de1d93108658e28` |
| 7 | `def` | [actualLogSource](../../../../MeasureAndIntegration/LogarithmicSourceAttemptrebuild01Namespaced.lean/declarations/actuallogsource.md) | 69 | `declaration-track:1fcc44f5ff1be546b27ae949e4f6fb96e0968478875450d864eb6d0fe2cdd396` |
| 8 | `theorem` | [actualLogSource_square_integrable](../../../../MeasureAndIntegration/LogarithmicSourceAttemptrebuild01Namespaced.lean/declarations/actuallogsource-square-integrable.md) | 72 | `result-track:b1c398ea288b3c7bbe4541545f906b6c7aa3ea6fd7d9280eefb1afe7ae786e97` |
| 9 | `theorem` | [actualLogSource_square_integral](../../../../MeasureAndIntegration/LogarithmicSourceAttemptrebuild01Namespaced.lean/declarations/actuallogsource-square-integral.md) | 76 | `result-track:c7024833f875ebd9d8086b49db863c228f94bb870c19ba181953abc065c15d40` |
| 10 | `theorem` | [actualLogSource_zero_outside](../../../../MeasureAndIntegration/LogarithmicSourceAttemptrebuild01Namespaced.lean/declarations/actuallogsource-zero-outside.md) | 81 | `result-track:2bce039144318b5ab64a7855ab4601d8158954bb5a72e0b45ff406a2587a5034` |
| 11 | `theorem` | [actualLogSource_hasCompactSupport](../../../../MeasureAndIntegration/LogarithmicSourceAttemptrebuild01Namespaced.lean/declarations/actuallogsource-hascompactsupport.md) | 97 | `result-track:02423516f538cbf5ce01d098ebad5a8d33922b980e8ba7e2164f39bb72c13586` |
| 12 | `theorem` | [lift_first_jacobian](../../../../MeasureAndIntegration/LogarithmicSourceAttemptrebuild01Namespaced.lean/declarations/lift-first-jacobian.md) | 108 | `result-track:55334fb64656471910d775b0c0c0557c401e117796bdec674958cfa83e85f1cd` |
| 13 | `theorem` | [actualLogSource_integrable](../../../../MeasureAndIntegration/LogarithmicSourceAttemptrebuild01Namespaced.lean/declarations/actuallogsource-integrable.md) | 114 | `result-track:233058b4def93211799b3ffa61b54350cd3135dbccd4bf9ea60ebeac734ca4c7` |
| 14 | `theorem` | [actualLogSource_integral_zero](../../../../MeasureAndIntegration/LogarithmicSourceAttemptrebuild01Namespaced.lean/declarations/actuallogsource-integral-zero.md) | 129 | `result-track:c22d8cf7940296583249318bbf1867a8039159905a7c9517ec7763ff4571917e` |
| 15 | `theorem` | [positiveLogLift_dilation](../../../../MeasureAndIntegration/LogarithmicSourceAttemptrebuild01Namespaced.lean/declarations/positiveloglift-dilation.md) | 143 | `result-track:d156be0827c78997b63e7a23a0dc539ab478723f9bdce9890fd2bff8e1d66918` |
| 16 | `theorem` | [actualLogSource_real_dilation](../../../../MeasureAndIntegration/LogarithmicSourceAttemptrebuild01Namespaced.lean/declarations/actuallogsource-real-dilation.md) | 152 | `result-track:56c1a84df861dcb617ac5bdd0a655c9b982bb8d4c453e3f0c2f0418085fde48b` |
| 17 | `theorem` | [actualLogSource_integer_dilation](../../../../MeasureAndIntegration/LogarithmicSourceAttemptrebuild01Namespaced.lean/declarations/actuallogsource-integer-dilation.md) | 161 | `result-track:9e869b10cdd3f70c54b7d66792638cdcf8f0888c02f258be4932a7f686c82205` |
| 18 | `theorem` | [lift_mellin_jacobian](../../../../MeasureAndIntegration/LogarithmicSourceAttemptrebuild01Namespaced.lean/declarations/lift-mellin-jacobian.md) | 166 | `result-track:5bc5904b9659f085420ffb94a8016f94246e715d95d5f8bea6861e568be4f238` |
| 19 | `theorem` | [lift_mellin_eq_bilateral](../../../../MeasureAndIntegration/LogarithmicSourceAttemptrebuild01Namespaced.lean/declarations/lift-mellin-eq-bilateral.md) | 180 | `result-track:93ab90fd267ff744807b62302667dc190a786f25fc48046ba19fdb938140342e` |
| 20 | `theorem` | [lift_mellin_integrable_iff](../../../../MeasureAndIntegration/LogarithmicSourceAttemptrebuild01Namespaced.lean/declarations/lift-mellin-integrable-iff.md) | 192 | `result-track:5adfaebd48c14584222e971a4b92b94844c9326b5aed0b48f12f0b07b27e0b6f` |
| 21 | `theorem` | [actualLogSource_mellin_integrable](../../../../MeasureAndIntegration/LogarithmicSourceAttemptrebuild01Namespaced.lean/declarations/actuallogsource-mellin-integrable.md) | 203 | `result-track:9be4cb629151a41270a6f5c7ae68bfecf89198f6273f92716b626d2b0a2b9f4e` |
| 22 | `theorem` | [actualLogSource_mellin_critical](../../../../MeasureAndIntegration/LogarithmicSourceAttemptrebuild01Namespaced.lean/declarations/actuallogsource-mellin-critical.md) | 212 | `result-track:75a742bbb2fec34b83720233de0d54f0ee9e9fc0b104f54e19e444d36ccb4241` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f53a41193c4a564105319ff6769ad1b121096910f31620f8fd7bb4159d42034f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantc35c211c854c27f99cabef09e5a73c7cd97e5738547ed78a92b00b3b6e7200c4.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantc35c211c854c27f99cabef09e5a73c7cd97e5738547ed78a92b00b3b6e7200c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
