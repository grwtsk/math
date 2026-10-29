# Verification target: Source Recognition Guard Attempt04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7704af95b9c09ccc5b2ef85d316a24fa53d58892",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantc6d7f5312b69377d779bd41cf22902ca3eda8f587fb2116c144428dd9ce8e603.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7704af95b9c09ccc5b2ef85d316a24fa53d58892`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantc6d7f5312b69377d779bd41cf22902ca3eda8f587fb2116c144428dd9ce8e603.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantc6d7f5312b69377d779bd41cf22902ca3eda8f587fb2116c144428dd9ce8e603.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.Spectrum` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Charpoly` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [symmetric_charpoly_zero_real](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/symmetric-charpoly-zero-real.md) | 13 | `result-track:d2e16df7ff27a289825885e92efc55137e9efe4db07461712a7b467ddb637aa3` |
| 2 | `theorem` | [hermitian_charpoly_zero_real](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/hermitian-charpoly-zero-real.md) | 22 | `result-track:c113481ae72b8992a0432fd73907b9167fc5a9076bbbfd0d87186427ff2142b2` |
| 3 | `def` | [ZeroTransport](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/zerotransport.md) | 32 | `declaration-track:e0d5430d0fe9e5fbdcc213736dd2e18c8faa86abfb6e38e62bb3f35af10f95da` |
| 4 | `def` | [RealAxisReflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/realaxisreflection.md) | 36 | `declaration-track:766fafedda1aeb46b2db894bfbf838cd6fdb42b98e254548c89dff2c0a12598d` |
| 5 | `structure` | [Recognition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/recognition.md) | 40 | `declaration-track:445e1ea392cfc975ef64bfb1bddcf6ceda077a695720369fe12acb0eafb588d9` |
| 6 | `theorem` | [recognition_transfers_real_zeros](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/recognition-transfers-real-zeros.md) | 45 | `result-track:70870387114052ee8c7ada1c3a03b24f1ffee6ed7db662aebe57ea2223a205a7` |
| 7 | `theorem` | [exact_comparison_zero_transport](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/exact-comparison-zero-transport.md) | 53 | `result-track:44b1e15cbb2fb07650ff931e0b7cb32ee23f27acef6d551a2fd68b4f9b1a2323` |
| 8 | `theorem` | [recognition_of_exact_comparison](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/recognition-of-exact-comparison.md) | 62 | `result-track:c07d3e90b527fa852e3ffba8b4580cfc06d8d7666bb057908c77041675517d43` |
| 9 | `theorem` | [real_affine_reflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/real-affine-reflection.md) | 69 | `result-track:5d697269e2f129900e3a5d2daee1ea9dc5be878ac1ca38f652de671e50d06b5c` |
| 10 | `theorem` | [same_point_comparison_real_zeros](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/same-point-comparison-real-zeros.md) | 76 | `result-track:c93b893e8650fd536bf98fa0abb7864897c38d4969f62c4773a2cc06c90898e2` |
| 11 | `def` | [zeroMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/zeromatrix.md) | 85 | `declaration-track:d87f10e33ac3d42b25cf0048fa12584bc4cdd0b18e21922ac29307051fe81f36` |
| 12 | `def` | [hostileSource](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/hostilesource.md) | 87 | `declaration-track:7e48eff76953babf3f3e52f7a6494f211050ebe232f0b5461cf8fc0f72bef891` |
| 13 | `theorem` | [zeroMatrix_hermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/zeromatrix-hermitian.md) | 89 | `result-track:1731e95b177c08e19923de846e1ad716a2acae8494f8dff0864d098e1fb2d751` |
| 14 | `theorem` | [zeroMatrix_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/zeromatrix-charpoly.md) | 92 | `result-track:398c98c260d822850b1ee4be7a735499265fc952b98d6e4953030201a7aceb7e` |
| 15 | `theorem` | [zeroMatrix_charpoly_zeros_real](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/zeromatrix-charpoly-zeros-real.md) | 95 | `result-track:a665c1ac15f358f9b9426ece9cd7c5841ebfd5e133336518a70eecd09187da6f` |
| 16 | `theorem` | [hostileSource_nonreal_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/hostilesource-nonreal-zero.md) | 101 | `result-track:5ea071874707577e5e587207bd611c6e0df8b29cb4c77b6dc0665835615063dd` |
| 17 | `theorem` | [finite_boundary_reality_does_not_identify_source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/finite-boundary-reality-does-not-identify-source.md) | 106 | `result-track:699ac144f57f6e7c8a84faada72c0e1d286f9ecf34d439a605a7a51af0a35d31` |
| 18 | `def` | [shiftedBoundary](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/shiftedboundary.md) | 115 | `declaration-track:d3fb4d1f5b197d134280db4e225ddb4fd23756ebc6a7da02b8162f3d58c9f069` |
| 19 | `def` | [squareMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/squaremap.md) | 117 | `declaration-track:4fcc4f242b4495cbcd7d72431c7b043f842a1c98e0620775d67394a3266551d5` |
| 20 | `def` | [negativeUnitMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/negativeunitmatrix.md) | 119 | `declaration-track:15b364a5e68b43fc7c098b15c96e73766be32035c0903cbdeb6e79627b0206c5` |
| 21 | `theorem` | [negativeUnitMatrix_hermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/negativeunitmatrix-hermitian.md) | 121 | `result-track:698b5fa8ff03f04791a164f5e313a732727ccccf89e0931994fea42f7671c37a` |
| 22 | `theorem` | [negativeUnitMatrix_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/negativeunitmatrix-charpoly.md) | 124 | `result-track:ba885a8818b520b10d8922c4a1b8693e60502f948de13e1b901db29ab2a8c011` |
| 23 | `theorem` | [negativeUnitMatrix_characteristic_function](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/negativeunitmatrix-characteristic-function.md) | 132 | `result-track:d3960cbda8181ec4dc97ba163e84262e6417014c468336c258b31d6331135482` |
| 24 | `theorem` | [shiftedBoundary_real_zeros](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/shiftedboundary-real-zeros.md) | 137 | `result-track:abfe7377c8352dccb7af09ad60b604f452aba0f1898392c9213378474aa87e6d` |
| 25 | `theorem` | [square_comparison_exact](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/square-comparison-exact.md) | 142 | `result-track:722a1507444f070b120c294d8c037e0c69fec8cdbf11f416e613725f70ee94d7` |
| 26 | `theorem` | [square_zero_transport](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/square-zero-transport.md) | 147 | `result-track:324c369a3e6a2a5513e6dc7f2e203b6ad1346eca22096a9a13c25084320309ca` |
| 27 | `theorem` | [square_map_not_real_axis_reflecting](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt04.lean/declarations/square-map-not-real-axis-reflecting.md) | 151 | `result-track:96364ed9a718c9676d73c89084eb2bf6070d03d980d1017223b681f4fe1d9465` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23137d697ac154ee492e7cf8b6aef811769185ff0e4da2ba5cc87a32065b5c5b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantc6d7f5312b69377d779bd41cf22902ca3eda8f587fb2116c144428dd9ce8e603.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantc6d7f5312b69377d779bd41cf22902ca3eda8f587fb2116c144428dd9ce8e603.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
