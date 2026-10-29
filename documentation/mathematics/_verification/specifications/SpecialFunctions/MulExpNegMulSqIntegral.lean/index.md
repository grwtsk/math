# Verification target: Mul Exp Neg Mul Sq Integral

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9710a5608d8e461dce2e62bdc919b68a4dc9b10f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant7a87d3b9d16424b158f7d4ad10f97cdd5c3f6c877a9f783ab484a9140abacf28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/MulExpNegMulSqIntegral.lean/index.md) · [Full source](../../../../SpecialFunctions/MulExpNegMulSqIntegral.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9710a5608d8e461dce2e62bdc919b68a4dc9b10f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant7a87d3b9d16424b158f7d4ad10f97cdd5c3f6c877a9f783ab484a9140abacf28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant7a87d3b9d16424b158f7d4ad10f97cdd5c3f6c877a9f783ab484a9140abacf28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.MulExpNegMulSq` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.LogBounds` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.BoundedContinuousFunction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.RegularityCompacts` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.StoneWeierstrass` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrable_mulExpNegMulSq_comp](../../../../SpecialFunctions/MulExpNegMulSqIntegral.lean/declarations/integrable-mulexpnegmulsq-comp.md) | 47 | `result-track:e3a14b39a3484d9c6d9842aa44fd5d84ddd10333a3c7d7490506cc875cd6b13b` |
| 2 | `theorem` | [integrable_mulExpNegMulSq_comp_restrict_of_isCompact](../../../../SpecialFunctions/MulExpNegMulSqIntegral.lean/declarations/integrable-mulexpnegmulsq-comp-restrict-of-iscompact.md) | 52 | `result-track:bafcf2b79e00ba119978a2bfa1e508b4c4347be4bc80c7a5d40c597c57ef7f20` |
| 3 | `theorem` | [tendsto_integral_mulExpNegMulSq_comp](../../../../SpecialFunctions/MulExpNegMulSqIntegral.lean/declarations/tendsto-integral-mulexpnegmulsq-comp.md) | 59 | `result-track:e06aec20b7b38f2a1dd5f94832142eb5a4860234341c884b7e8a49acdda06804` |
| 4 | `theorem` | [tendsto_integral_mul_one_add_inv_smul_sq_pow](../../../../SpecialFunctions/MulExpNegMulSqIntegral.lean/declarations/tendsto-integral-mul-one-add-inv-smul-sq-pow.md) | 77 | `result-track:953c806b099ed63f1f454e31d733d582458786323bca6b8fe66f0458dc66449c` |
| 5 | `theorem` | [integral_mulExpNegMulSq_comp_eq](../../../../SpecialFunctions/MulExpNegMulSqIntegral.lean/declarations/integral-mulexpnegmulsq-comp-eq.md) | 115 | `result-track:edaa892d2832fdeb9ec4446f5d702ae59ab32325efaddb1d33ddc2f8e0337a5c` |
| 6 | `theorem` | [abs_integral_sub_setIntegral_mulExpNegMulSq_comp_lt](../../../../SpecialFunctions/MulExpNegMulSqIntegral.lean/declarations/abs-integral-sub-setintegral-mulexpnegmulsq-comp-lt.md) | 130 | `result-track:fba97e045cba5a87a3206335f5b09b8919141812db6b165f3ce42e17c4d1d9fe` |
| 7 | `theorem` | [abs_setIntegral_mulExpNegMulSq_comp_sub_le_mul_measure](../../../../SpecialFunctions/MulExpNegMulSqIntegral.lean/declarations/abs-setintegral-mulexpnegmulsq-comp-sub-le-mul-measure.md) | 139 | `result-track:8cd92fde57f38061e5c228cb75aeaec7b83b20cf813186174971e1f40b0ee02f` |
| 8 | `theorem` | [dist_integral_mulExpNegMulSq_comp_le](../../../../SpecialFunctions/MulExpNegMulSqIntegral.lean/declarations/dist-integral-mulexpnegmulsq-comp-le.md) | 156 | `result-track:52b0ff662e24e7e56e2c301c15e5522809fdd3ad0d2a0649bd5014d48fc74bf2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50c2da51d453b9c07f7c0c0e032c8fa304a09085c87ff8736bcf45de10b075cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant7a87d3b9d16424b158f7d4ad10f97cdd5c3f6c877a9f783ab484a9140abacf28.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant7a87d3b9d16424b158f7d4ad10f97cdd5c3f6c877a9f783ab484a9140abacf28.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
