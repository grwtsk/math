# Verification target: Estimate Prime Smooth Defect Results

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27b7cb8b2f201fd96e6e5188789eadb1a67da151",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfbd1b3118b781cd3394802394d94ec615a168b433d58320e6df94144eea0f08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefectResults.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefectResults.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27b7cb8b2f201fd96e6e5188789eadb1a67da151`.

Source path: `GRWTSK/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfbd1b3118b781cd3394802394d94ec615a168b433d58320e6df94144eea0f08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfbd1b3118b781cd3394802394d94ec615a168b433d58320e6df94144eea0f08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTailReduction` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closedPrimeMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefectResults.lean/declarations/closedprimemoment.md) | 35 | `declaration-track:9d4ce1ed527b4f6e04c4a50eb22e87d3e4a44726abdac7d752dfcafc3f8e8269` |
| 2 | `def` | [smoothMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefectResults.lean/declarations/smoothmoment.md) | 43 | `declaration-track:51be86d861f601f7bb38472d67a251978b241b7e326236245332bb0feaa7e051` |
| 3 | `def` | [endpointMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefectResults.lean/declarations/endpointmoment.md) | 49 | `declaration-track:43eded1397d3e3c73003c7bde8c101e1b377a6a449957711d30a045287ad5314` |
| 4 | `def` | [primeSmoothDefect](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefectResults.lean/declarations/primesmoothdefect.md) | 55 | `declaration-track:400e4d9c60c715436268b7693a72ba7bd140ee525bd7a7f3c200fe5d1afab498` |
| 5 | `theorem` | [primePowerContribution_eq_closedPrimeMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefectResults.lean/declarations/primepowercontribution-eq-closedprimemoment.md) | 60 | `result-track:51beeb94072e347c8607125e59d6c403e8e74dbb29919c59207cf4a6a8f5dcd5` |
| 6 | `theorem` | [signedPairing_eq_endpoint_sub_defect](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefectResults.lean/declarations/signedpairing-eq-endpoint-sub-defect.md) | 72 | `result-track:7118f3d71e6943e008c9db0ac74139c05b78b2437f0faab526d62f954c588a13` |
| 7 | `theorem` | [endpointMoment_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefectResults.lean/declarations/endpointmoment-abs-le.md) | 86 | `result-track:651fed152cbdba2c683df19e3946cf4150f6ee6fc8c1557d8b23f82b0517b522` |
| 8 | `theorem` | [endpointMoment_lower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefectResults.lean/declarations/endpointmoment-lower.md) | 96 | `result-track:1729fe32606621fd843dc1084002a846ab1d1f41e3550f9e8e5888250799a06f` |
| 9 | `theorem` | [endpointMoment_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefectResults.lean/declarations/endpointmoment-upper.md) | 101 | `result-track:11af96bff2b7590948bb6bdfc6994cf51f9456133cc9a34633989d73e097e841` |
| 10 | `def` | [PrimeSmoothDefectTailUpperBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefectResults.lean/declarations/primesmoothdefecttailupperbound.md) | 107 | `declaration-track:28102f5587fdefa9083baaa74a809f5a2d42c8c4938209bb6b79cdfefd668440` |
| 11 | `theorem` | [signed_pairing_tail_of_defect_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefectResults.lean/declarations/signed-pairing-tail-of-defect-tail.md) | 115 | `result-track:f0ab84586c1dd2166a84be7ac66eb8ebbc242e0fc36ffa4bfba9925abf62c141` |
| 12 | `theorem` | [defect_tail_of_signed_pairing_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefectResults.lean/declarations/defect-tail-of-signed-pairing-tail.md) | 129 | `result-track:844c6f6799809abf48b3370913da831da18b63779fbfbd807a8859e3b925e3d0` |
| 13 | `theorem` | [signed_pairing_tail_iff_prime_smooth_defect_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefectResults.lean/declarations/signed-pairing-tail-iff-prime-smooth-defect-tail.md) | 143 | `result-track:882b36e49ae0edfe482a0b288a97fddd461accd193aa7e9c3b4d1c98685ae76b` |
| 14 | `theorem` | [estimate_of_prime_smooth_defect_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefectResults.lean/declarations/estimate-of-prime-smooth-defect-tail.md) | 150 | `result-track:6b9d29cfadc878c65c781c0b9bd0c2e9f9fd51aba0594bcfa2d93f16192313c3` |
| 15 | `def` | [PrimeSmoothDefectCheckpoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefectResults.lean/declarations/primesmoothdefectcheckpoint.md) | 157 | `declaration-track:0d3891c6272932824693fa2fe99a625ab38d3d26312f7bf76eab4958cb0140aa` |
| 16 | `theorem` | [prime_smooth_defect_checkpoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefectResults.lean/declarations/prime-smooth-defect-checkpoint.md) | 167 | `result-track:acbc675b52ef57b58e1cf9b993de150a30152ff5bf65c089e1cac0e11eed099b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d04abdcd96b4f2648df26e2f1dc4b076fcbbd00915a6e46490f257675f47fe23 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfbd1b3118b781cd3394802394d94ec615a168b433d58320e6df94144eea0f08.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfbd1b3118b781cd3394802394d94ec615a168b433d58320e6df94144eea0f08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
