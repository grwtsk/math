# Verification target: Rademacher Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0da3e3d4b8d695aed3d96e0072caafea5557e7c2",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variante84f066a05107315ab7277ebecf47e7e47c9e0f16635b827bdb30d3daa636dcb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/RademacherNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/RademacherNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0da3e3d4b8d695aed3d96e0072caafea5557e7c2`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variante84f066a05107315ab7277ebecf47e7e47c9e0f16635b827bdb30d3daa636dcb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variante84f066a05107315ab7277ebecf47e7e47c9e0f16635b827bdb30d3daa636dcb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.LineDeriv.Measurable` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.FiniteDimension` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoundedVariation` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Distribution.AEEqOfIntegralContDiff` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Disintegration` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [memLp_lineDeriv](../../../../RealFunctions/RademacherNamespaced.lean/declarations/memlp-linederiv.md) | 72 | `result-track:cf6caddca70e43906f92b2e87cb4ce0e0110b62c3e784b3367e0ab81b833e067` |
| 2 | `theorem` | [ae_lineDifferentiableAt](../../../../RealFunctions/RademacherNamespaced.lean/declarations/ae-linedifferentiableat.md) | 82 | `result-track:0272a58e876d26dcb332e80d4f3bb8d37286a3e37273d0fa36f8c1f804fa982f` |
| 3 | `theorem` | [locallyIntegrable_lineDeriv](../../../../RealFunctions/RademacherNamespaced.lean/declarations/locallyintegrable-linederiv.md) | 99 | `result-track:55eb4b7d0c3d4c41d6ec58481ba8227054dc2c5ff8104f93f22795639df6c6d9` |
| 4 | `theorem` | [integral_inv_smul_sub_mul_tendsto_integral_lineDeriv_mul](../../../../RealFunctions/RademacherNamespaced.lean/declarations/integral-inv-smul-sub-mul-tendsto-integral-linederiv-mul.md) | 112 | `result-track:bfde9a1802d011c750dd65ede7f8513f85e204bb8b484686eb50315b0a4580db` |
| 5 | `theorem` | [integral_inv_smul_sub_mul_tendsto_integral_lineDeriv_mul'](../../../../RealFunctions/RademacherNamespaced.lean/declarations/integral-inv-smul-sub-mul-tendsto-integral-linederiv-mul-source-edition-2.md) | 134 | `result-track:f2eabddc2e8f7d40c60cf28738f9b835480ef7e6147f407f863a6457113cbe5f` |
| 6 | `theorem` | [integral_lineDeriv_mul_eq](../../../../RealFunctions/RademacherNamespaced.lean/declarations/integral-linederiv-mul-eq.md) | 179 | `result-track:4f9b0f1aecc400a4a9efbcaa4660d92c66977a2ab94d25704611789bb2881308` |
| 7 | `theorem` | [ae_lineDeriv_sum_eq](../../../../RealFunctions/RademacherNamespaced.lean/declarations/ae-linederiv-sum-eq.md) | 214 | `result-track:486b423507fcd393fb8e305e87ce8184f67e0000e61bbc31f471abb05d1f67e5` |
| 8 | `theorem` | [ae_exists_fderiv_of_countable](../../../../RealFunctions/RademacherNamespaced.lean/declarations/ae-exists-fderiv-of-countable.md) | 255 | `result-track:5747cc4b4a5a4fd46ffbf40fd3c7d4fc545501d112be194b5669cc9838aefd8e` |
| 9 | `theorem` | [hasFDerivAt_of_hasLineDerivAt_of_closure](../../../../RealFunctions/RademacherNamespaced.lean/declarations/hasfderivat-of-haslinederivat-of-closure.md) | 274 | `result-track:4a00c59648ef0da5cb1626995e77366d82123bf621db47a5554066c996b0dbbe` |
| 10 | `theorem` | [ae_differentiableAt_of_real](../../../../RealFunctions/RademacherNamespaced.lean/declarations/ae-differentiableat-of-real.md) | 333 | `result-track:f1486fa6f75b3b0123defe5baa11b0b33c3ca66b8e99cb3b30128b05c1feeb48` |
| 11 | `theorem` | [ae_differentiableWithinAt_of_mem_of_real](../../../../RealFunctions/RademacherNamespaced.lean/declarations/ae-differentiablewithinat-of-mem-of-real.md) | 352 | `result-track:d85ef0f51593f7d26acd5981e5aa2390042957a3e168cc1725869ab9c507894b` |
| 12 | `theorem` | [ae_differentiableWithinAt_of_mem_pi](../../../../RealFunctions/RademacherNamespaced.lean/declarations/ae-differentiablewithinat-of-mem-pi.md) | 362 | `result-track:fa0bd09c8890ec8e6119c2f1c9d72c4cd3b4843b1b5097231c64a46ba60b00d1` |
| 13 | `theorem` | [ae_differentiableWithinAt_of_mem](../../../../RealFunctions/RademacherNamespaced.lean/declarations/ae-differentiablewithinat-of-mem.md) | 374 | `result-track:b4d182d02d446f474221f21862152f506bb14ebe53139804f26d37e526d35542` |
| 14 | `theorem` | [ae_differentiableWithinAt](../../../../RealFunctions/RademacherNamespaced.lean/declarations/ae-differentiablewithinat.md) | 388 | `result-track:16e5fe91371a9dec735de82668e967dd11d58cd886ee30ce3f2e51100db6f723` |
| 15 | `theorem` | [LipschitzWith.ae_differentiableAt](../../../../RealFunctions/RademacherNamespaced.lean/declarations/lipschitzwith-ae-differentiableat.md) | 398 | `result-track:f2d6580a0040fbc07ff2b73dc9c78eb75ba029af01a3b0b156d42c298a46ad0a` |
| 16 | `theorem` | [ae_differentiableAt_norm](../../../../RealFunctions/RademacherNamespaced.lean/declarations/ae-differentiableat-norm.md) | 405 | `result-track:a656d7b67f54d0ddd2b7f6b18d526f569fbe9bdad7c12b173e735e3b23213da4` |
| 17 | `theorem` | [dense_differentiableAt_norm](../../../../RealFunctions/RademacherNamespaced.lean/declarations/dense-differentiableat-norm.md) | 411 | `result-track:800e881786fc3e6301446507c331be4ceca7fbcfbfd75c3f6d4d1a0d9220304a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da1ce83cdf351b0ad00105023387914c83e8465b904df852f2064009da83231d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variante84f066a05107315ab7277ebecf47e7e47c9e0f16635b827bdb30d3daa636dcb.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variante84f066a05107315ab7277ebecf47e7e47c9e0f16635b827bdb30d3daa636dcb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
