# Verification target: Exact Periods And Complete Cycles

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "802c13e5788a5bbadabeb4d0a63ebf17625e3cf2",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ExactPeriodsAndCompleteCycles.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `802c13e5788a5bbadabeb4d0a63ebf17625e3cf2`.

Source path: `GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ExactPeriodsAndCompleteCycles.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ExactPeriodsAndCompleteCycles.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Algebra.Symmetry` — import line 20; external provider; requires a separately pinned dependency.
- `DAF.FiniteDynamics.Permutation` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.PeriodicPts.Lemmas` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.QuotientGroup` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Defs` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasExactPeriod](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/hasexactperiod.md) | 54 | `declaration-track:c8c3c18967a827333434d881c3ea832a481cc1c01b67a1996bf4dda270bf77c9` |
| 2 | `instance` | [hasExactPeriodDecidable](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/hasexactperioddecidable.md) | 67 | `declaration-track:81d1d3ff94b0b9de44ebda33456fe6d05dff7d09e85408f93e7009ef0f9b9205` |
| 3 | `def` | [exactPeriodPoints](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/exactperiodpoints.md) | 87 | `declaration-track:78ff8bff9a81c0a969eaefe894572eb5702c23b9f01149a96cdcdd7c4b45244e` |
| 4 | `def` | [exactPeriodCount](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/exactperiodcount.md) | 93 | `declaration-track:8872bca067b52e95d05400adf688611246dcdcebb44b83af728fcaf8bbfa51af` |
| 5 | `theorem` | [mem_exactPeriodPoints_iff](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/mem-exactperiodpoints-iff.md) | 98 | `result-track:614f15c6970bb422dd72453321671f4eee3fe2ba1ef8eab208dd4f71a07999e0` |
| 6 | `theorem` | [exactPeriodPoints_zero](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/exactperiodpoints-zero.md) | 106 | `result-track:82ad20414d2f4fbcd4243e8a29c2e6163b0aee126ff3edec485c24490898d10f` |
| 7 | `theorem` | [exactPeriodCount_zero](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/exactperiodcount-zero.md) | 112 | `result-track:de9fc3f43303c9e50a47b08421cb5c9b3a157d73c113425ed2ba182ef79c6732` |
| 8 | `theorem` | [exactPeriodPoints_subset_fixedPoints](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/exactperiodpoints-subset-fixedpoints.md) | 117 | `result-track:9332b6781798a20285240ec350376646487f2881c8e38ef1dcc844746c7e6e5c` |
| 9 | `theorem` | [isPeriodicPt_iff_pow_apply](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/isperiodicpt-iff-pow-apply.md) | 127 | `result-track:32702fbed5bca0b4a7cb611f68d70bbf266f8dd9b2e03cfb1620111c85768c7e` |
| 10 | `theorem` | [hasExactPeriod_iff_minimalPeriod_eq](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/hasexactperiod-iff-minimalperiod-eq.md) | 135 | `result-track:131579931c6f7740d6cafc4c27cf634a3e5beeab2fbc60cac33ef2d563cef25c` |
| 11 | `theorem` | [exactPeriod_dvd_of_fixed](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/exactperiod-dvd-of-fixed.md) | 171 | `result-track:dc16358a4a64480f05b908312abaa59e0775140063cb982bbf46454788c05566` |
| 12 | `theorem` | [mem_fixedPoints_iff_exists_exactPeriod](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/mem-fixedpoints-iff-exists-exactperiod.md) | 185 | `result-track:7a4a3548b773591b89e928aae0eb0ec7314f9725ada8312820788a17413b9fae` |
| 13 | `theorem` | [exactPeriodPoints_disjoint](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/exactperiodpoints-disjoint.md) | 213 | `result-track:a1fc30beb23b0d93f7a439829faca939fb40f1ffa7076a7618eefdc83d7593e4` |
| 14 | `theorem` | [fixedPoints_eq_biUnion_exactPeriodPoints](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/fixedpoints-eq-biunion-exactperiodpoints.md) | 226 | `result-track:666c424c438bd109f95f865ce13cff35eecee94266ba8290ce3710ae0ff9102c` |
| 15 | `theorem` | [fixedPointCount_eq_sum_exactPeriodCount](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/fixedpointcount-eq-sum-exactperiodcount.md) | 236 | `result-track:6770e120475fc30315b2f22da927071c149c4e9cfbe728d211be9c00da3bb97b` |
| 16 | `abbrev` | [ExactPoint](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/exactpoint.md) | 251 | `declaration-track:768ef6d84033b5b7086115398aa42c59710165fc216c4bf6938ed58e4ce301d3` |
| 17 | `theorem` | [hasExactPeriod_apply](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/hasexactperiod-apply.md) | 254 | `result-track:699fd93c42e2e1a51a19e5b08c5134e61229497230cc3342853cbc7df9a7c3df` |
| 18 | `theorem` | [hasExactPeriod_symm_apply](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/hasexactperiod-symm-apply.md) | 265 | `result-track:51bd988f9a0a0d243469df0ecb4f4bad51cf4fc533118d73459521fdf02e7056` |
| 19 | `def` | [exactPeriodPerm](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/exactperiodperm.md) | 280 | `declaration-track:1cb016d188f4a1122f825a74e2b37602ffea72ab46580db7868ea142983579e1` |
| 20 | `theorem` | [exactPeriodPerm_apply_val](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/exactperiodperm-apply-val.md) | 293 | `result-track:e70de45cccf111ae876e180b8e9ab6a3d0efb79cba005a6399d65abffe4d9d2e` |
| 21 | `theorem` | [exactPeriodPerm_pow_apply_val](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/exactperiodperm-pow-apply-val.md) | 300 | `result-track:4b8e628b624844aeb52ee629244a4557cab3ae261166615374e2864924f204e4` |
| 22 | `theorem` | [minimalPeriod_exactPeriodPerm](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/minimalperiod-exactperiodperm.md) | 311 | `result-track:f6e3be82d3ee2aedf719d2dd7092d88ffc1b6ef5549d36ba8b4fbe6058c996f6` |
| 23 | `theorem` | [exactPeriodCount_dvd](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/exactperiodcount-dvd.md) | 339 | `result-track:5c99c1076ca0a748e8ce7c6daaba77293be41b00361982ffa6b23398afbe97ec` |
| 24 | `def` | [cycleCount](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/cyclecount.md) | 371 | `declaration-track:17c93615102299bb352c0dd117e26589bfac87a9b486f8d1ddfa6d9fa90786bb` |
| 25 | `theorem` | [cycleCount_zero](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/cyclecount-zero.md) | 375 | `result-track:fbf4b0a10307c979ffc521cac43d36023f94e62b1a1dc24b1833def2773cd692` |
| 26 | `theorem` | [exactPeriodCount_eq_mul_cycleCount](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/exactperiodcount-eq-mul-cyclecount.md) | 380 | `result-track:70876c4e9f27b60d03c485bee6dc0712058e1f903a0be4ceaa03c4c7b36445f2` |
| 27 | `theorem` | [fixedPointCount_eq_sum_mul_cycleCount](../../../../GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/declarations/fixedpointcount-eq-sum-mul-cyclecount.md) | 389 | `result-track:f1bc84c739c7a6648c3c68d53cb5132a174a6ae4308d34ac7604b51c6cfc2180` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7dcea97efe4b4d2f73cc95c58e20edec354210c308382a8901825f0fe7081e67 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ExactPeriodsAndCompleteCycles.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ExactPeriodsAndCompleteCycles.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
