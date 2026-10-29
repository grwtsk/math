# Verification target: LGrowth

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ff8a852835dd7a8f90a4ecfbe2f6fd058563dff",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variant9eaf95806a3d5ac076aa5c91cbd7807be7fc93de2b8fa8519d65e66befe5e57f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/LGrowth.lean/index.md) · [Full source](../../../../MeasureAndIntegration/LGrowth.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ff8a852835dd7a8f90a4ecfbe2f6fd058563dff`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variant9eaf95806a3d5ac076aa5c91cbd7807be7fc93de2b8fa8519d65e66befe5e57f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variant9eaf95806a3d5ac076aa5c91cbd7807be7fc93de2b8fa8519d65e66befe5e57f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.SeamL` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.ZetaGrowth` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.SumCoeff` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sum_Ico_add_period_eq_zero](../../../../MeasureAndIntegration/LGrowth.lean/declarations/sum-ico-add-period-eq-zero.md) | 40 | `result-track:7d4cecd0a0f466573e7bee12320423dee67fd5e94e9d0ff867ab2c4b8bdaa4a9` |
| 2 | `lemma` | [sum_range_add_period](../../../../MeasureAndIntegration/LGrowth.lean/declarations/sum-range-add-period.md) | 62 | `result-track:3b02ea88285c6d41f5ee79bf9cf508f4b9fb6dcb0fa2d17bb73a2b197ea2adb9` |
| 3 | `lemma` | [sum_range_add_mul_period](../../../../MeasureAndIntegration/LGrowth.lean/declarations/sum-range-add-mul-period.md) | 67 | `result-track:880f31ab2949a441630e9601d9fad914a6b0077f7db808aafcd6f1120f06ddd9` |
| 4 | `lemma` | [norm_sum_range_le](../../../../MeasureAndIntegration/LGrowth.lean/declarations/norm-sum-range-le.md) | 73 | `result-track:f37b358d702528a1d75d1b68be37b0e510bfdf98f0470f7dd13c2136e6d56526` |
| 5 | `theorem` | [norm_sum_Icc_le](../../../../MeasureAndIntegration/LGrowth.lean/declarations/norm-sum-icc-le.md) | 86 | `result-track:685de83f673b53add681f75eea33d5b703eef7b333effe92516a6118baf9ce75` |
| 6 | `def` | [abelKernel](../../../../MeasureAndIntegration/LGrowth.lean/declarations/abelkernel.md) | 106 | `declaration-track:0a47fac7c1489ae8419ca82e04e32644841aa8607f1fbd079cbc36ba33c3d9a2` |
| 7 | `lemma` | [norm_abelKernel_le](../../../../MeasureAndIntegration/LGrowth.lean/declarations/norm-abelkernel-le.md) | 109 | `result-track:ffe7ca3a188626ae50a6d9a067847c28185d0211c5167342c50eefe6d9090129` |
| 8 | `lemma` | [measurable_abelKernel](../../../../MeasureAndIntegration/LGrowth.lean/declarations/measurable-abelkernel.md) | 116 | `result-track:3c6a35134ca8f59cd47587a131046bb0841e89ff919d04d30bc789d1b336cc71` |
| 9 | `lemma` | [locallyIntegrable_abelKernel](../../../../MeasureAndIntegration/LGrowth.lean/declarations/locallyintegrable-abelkernel.md) | 122 | `result-track:6e8bfd340291d65450207dfc5f852f009dbee7111360f3c526d051504485fe42` |
| 10 | `lemma` | [mellin_abelKernel](../../../../MeasureAndIntegration/LGrowth.lean/declarations/mellin-abelkernel.md) | 130 | `result-track:f3653bdbb9b7e02a085f4775b0fb8cc7143e7ec976401bcb2a679102af63399b` |
| 11 | `lemma` | [differentiableAt_mellin_abelKernel](../../../../MeasureAndIntegration/LGrowth.lean/declarations/differentiableat-mellin-abelkernel.md) | 147 | `result-track:9e4609bc72e35ebf933994101b91b7caf909dfb3bcc199e9efbcfc505a676b0d` |
| 12 | `theorem` | [LFunction_eq_mul_integral](../../../../MeasureAndIntegration/LGrowth.lean/declarations/lfunction-eq-mul-integral.md) | 171 | `result-track:1f4cebcba4d51e62c31a2c44d96f707d810047a5cdd58a264d7b7971a2e3bf8b` |
| 13 | `theorem` | [norm_LFunction_le_of_re_pos](../../../../MeasureAndIntegration/LGrowth.lean/declarations/norm-lfunction-le-of-re-pos.md) | 209 | `result-track:e1903dfb8b01602915caef39f3b9d7438825d879a1fb0017bb7d4cb11176b9b3` |
| 14 | `theorem` | [LFunction_linear_growth](../../../../MeasureAndIntegration/LGrowth.lean/declarations/lfunction-linear-growth.md) | 236 | `result-track:b9c760f83c52742309a54cb786a4e06df9aaea932deea7e02b99968335ba9fa1` |
| 15 | `theorem` | [LFunction_growth_right](../../../../MeasureAndIntegration/LGrowth.lean/declarations/lfunction-growth-right.md) | 257 | `result-track:b8abfe3b3b71456a0eb7b6f610bfa5f11a8f66886637c5c5bd7de67ef567eee5` |
| 16 | `theorem` | [norm_LFunction_sub_one_le](../../../../MeasureAndIntegration/LGrowth.lean/declarations/norm-lfunction-sub-one-le.md) | 270 | `result-track:fc68adcec454c6c1fed6dbc44ccae523a420b2e8fafaa2f6abdee23977588e96` |
| 17 | `theorem` | [LFunction_lower_bound_two](../../../../MeasureAndIntegration/LGrowth.lean/declarations/lfunction-lower-bound-two.md) | 309 | `result-track:f9503766e697352b4bff37f9ddb6e639ef0bed6a4d0652b683e6f7f273aabd1d` |
| 18 | `theorem` | [norm_LFunction_le_of_two_le_re](../../../../MeasureAndIntegration/LGrowth.lean/declarations/norm-lfunction-le-of-two-le-re.md) | 318 | `result-track:5c54d837bbded10a1b3af2d5761aaa41de67e2a20ff94784c742491942beaf47` |
| 19 | `theorem` | [LFunction_ne_zero_of_two_le_re](../../../../MeasureAndIntegration/LGrowth.lean/declarations/lfunction-ne-zero-of-two-le-re.md) | 326 | `result-track:fe87184d5e347f5e225420303de89cd5229fb9898602d135482a0460cad6e53b` |
| 20 | `theorem` | [LFunction_growth_right_uniform](../../../../MeasureAndIntegration/LGrowth.lean/declarations/lfunction-growth-right-uniform.md) | 334 | `result-track:f6d2776cde06a28d707e13422115bb5da326a6b05f527890cfb5e2c09d3b8dac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d6b52a85ab848bb00925dae10b263f4ef7fe682a94b2a050b3aeb872a9c766e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variant9eaf95806a3d5ac076aa5c91cbd7807be7fc93de2b8fa8519d65e66befe5e57f.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variant9eaf95806a3d5ac076aa5c91cbd7807be7fc93de2b8fa8519d65e66befe5e57f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
