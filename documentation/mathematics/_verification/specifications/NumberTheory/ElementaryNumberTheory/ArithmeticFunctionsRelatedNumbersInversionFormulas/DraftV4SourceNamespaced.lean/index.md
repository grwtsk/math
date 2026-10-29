# Verification target: Draft V4 Source Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b78d85f817c2ff25a96b2290e65d6a9f0168b8ab",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DraftV4Source/Varianta96d2242f259db6f5e41cba3215ba8129a154426fde35b8fcbc14ac0962382bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV4SourceNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV4SourceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b78d85f817c2ff25a96b2290e65d6a9f0168b8ab`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DraftV4Source/Varianta96d2242f259db6f5e41cba3215ba8129a154426fde35b8fcbc14ac0962382bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/DraftV4Source/Varianta96d2242f259db6f5e41cba3215ba8129a154426fde35b8fcbc14ac0962382bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePrimePowerPartition` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalPrimeTest](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV4SourceNamespaced.lean/declarations/criticalprimetest.md) | 36 | `declaration-track:cfcd03de1582cb4033c7fd768998a06a0df921336369217c9055179f4a399b85` |
| 2 | `def` | [criticalContinuousMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV4SourceNamespaced.lean/declarations/criticalcontinuousmoment.md) | 40 | `declaration-track:6eb8a4d3c8309bf9c179a366de8a0b8d6b0ca85b845f37816f349cafd613a9c7` |
| 3 | `def` | [criticalSignedWork](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV4SourceNamespaced.lean/declarations/criticalsignedwork.md) | 44 | `declaration-track:8774d5ad9c8209e78b6afa77d04f11236664d536a41debda066e9a2d27881685` |
| 4 | `def` | [CriticalAbelTailLowerBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV4SourceNamespaced.lean/declarations/criticalabeltaillowerbound.md) | 48 | `declaration-track:b6d52d40959ae6d82edb9d7051fa8e6d3c58a42827c34a8b4b0286809f1dd102` |
| 5 | `theorem` | [criticalPrimeTest_contDiff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV4SourceNamespaced.lean/declarations/criticalprimetest-contdiff.md) | 52 | `result-track:a81da6f3e9b839ee1707420df8d2344c32ba518c4f7011a4eddc452596f07dc2` |
| 6 | `theorem` | [criticalPrimeTest_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV4SourceNamespaced.lean/declarations/criticalprimetest-deriv.md) | 57 | `result-track:facda68901b303afef3c0eecd5622e85edaa9e7178659c6c0dd52e3e90c66c24` |
| 7 | `theorem` | [prime_source_coefficient_eq_critical_test](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV4SourceNamespaced.lean/declarations/prime-source-coefficient-eq-critical-test.md) | 70 | `result-track:be318fffe0a5eabc38d14b9d88ce9238a0dd6b94442ef6704ccba6e733f9fbb1` |
| 8 | `theorem` | [firstPrimeMoment_eq_criticalPrimeSum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV4SourceNamespaced.lean/declarations/firstprimemoment-eq-criticalprimesum.md) | 88 | `result-track:6a19a081c7def01fba90ab7ad7562009fa281781aa4458ea7e6e34111d8ef03c` |
| 9 | `theorem` | [criticalSignedWork_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV4SourceNamespaced.lean/declarations/criticalsignedwork-intervalintegrable.md) | 97 | `result-track:2aae394e45c0cce68b92f11eb635d5a6fe6308d765f74d6025f6b8a4a38a7f0d` |
| 10 | `theorem` | [criticalPrimeTest_at_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV4SourceNamespaced.lean/declarations/criticalprimetest-at-upper.md) | 103 | `result-track:6838896932e79dbf650b779a956ea2b7224f2d435dda6c5f9d7814bad8fc56f3` |
| 11 | `theorem` | [criticalPrimeTest_at_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV4SourceNamespaced.lean/declarations/criticalprimetest-at-zero.md) | 107 | `result-track:0cdaece312b9bada5eb459b5ae9c652baac4ded68f06fade2c4e37d1bf769819` |
| 12 | `theorem` | [criticalContinuousMoment_eq_neg_negative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV4SourceNamespaced.lean/declarations/criticalcontinuousmoment-eq-neg-negative.md) | 113 | `result-track:d8baafead35c4207eacc7ceae2fc13d5e93862efb623e7487d1c888718006b77` |
| 13 | `theorem` | [criticalContinuousMoment_eq_smooth_add_initial](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV4SourceNamespaced.lean/declarations/criticalcontinuousmoment-eq-smooth-add-initial.md) | 120 | `result-track:da75028931517fa5b5dc96cb0f405fbc30b27f530bf7f62035bdf7c98f72046c` |
| 14 | `theorem` | [criticalContinuousMoment_abs_le_two](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV4SourceNamespaced.lean/declarations/criticalcontinuousmoment-abs-le-two.md) | 127 | `result-track:7187c00d6b469017cc15dcc058053fb315bb3f226cd6cafd1692e3975080305d` |
| 15 | `theorem` | [criticalPrimeWindow_eq_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV4SourceNamespaced.lean/declarations/criticalprimewindow-eq-sum.md) | 133 | `result-track:52d4924c883f0323079ec2608c1418e48e29d5bcd0210e5fc75804b2c693ff47` |
| 16 | `theorem` | [criticalPrimeSum_eq_continuous_sub_work](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV4SourceNamespaced.lean/declarations/criticalprimesum-eq-continuous-sub-work.md) | 147 | `result-track:df9bc5c5470be704d26906b16b18a1565884c1df883ee2818a60dedbbb051d11` |
| 17 | `theorem` | [criticalPrimeTailUpper_iff_signed_lower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV4SourceNamespaced.lean/declarations/criticalprimetailupper-iff-signed-lower.md) | 161 | `result-track:cb071b3d7e3f9be3992a49601becfde82af40a6bf869c022d8837e6aff2ac8ce` |
| 18 | `theorem` | [firstPrimeMoment_eq_continuous_sub_work](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV4SourceNamespaced.lean/declarations/firstprimemoment-eq-continuous-sub-work.md) | 183 | `result-track:2378c4180d9291a007197fff0484cbbe5672949872f10add941f999ed348ac4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d911914f98ccdc8de70a9f744cd136d91076b2434236aaaec46302084b356a89 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DraftV4Source/Varianta96d2242f259db6f5e41cba3215ba8129a154426fde35b8fcbc14ac0962382bc.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/DraftV4Source/Varianta96d2242f259db6f5e41cba3215ba8129a154426fde35b8fcbc14ac0962382bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
