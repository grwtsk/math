# Verification target: Source Recognition Guard Attemptpeer01 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17dd242682f6c8de2c58d96c3ff6a026cafff202",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variantdc9b6d84a06bf97c975434ced2e69e972dbcf2580685c4d0f3760d5ecb1b1188.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17dd242682f6c8de2c58d96c3ff6a026cafff202`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variantdc9b6d84a06bf97c975434ced2e69e972dbcf2580685c4d0f3760d5ecb1b1188.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variantdc9b6d84a06bf97c975434ced2e69e972dbcf2580685c4d0f3760d5ecb1b1188.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.Spectrum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Charpoly` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [symmetric_charpoly_zero_real](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/symmetric-charpoly-zero-real.md) | 21 | `result-track:bc7cd817ee013b8a19e68add2d14f565743d8f7d5a0f11b7e863623b5b772f08` |
| 2 | `theorem` | [hermitian_charpoly_zero_real](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/hermitian-charpoly-zero-real.md) | 30 | `result-track:e92e8b671c640f73822b5dbea5335ee1df49c0f79528487e75b2d53aa04f7965` |
| 3 | `def` | [ZeroTransport](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/zerotransport.md) | 40 | `declaration-track:597be3e05a8c025ebaf79933d6c336198cf595178870e05a7bba5756c651317f` |
| 4 | `def` | [RealAxisReflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/realaxisreflection.md) | 44 | `declaration-track:1a7423aea972cda0d32d66425832edddcfbc87c14eb4faeb93237f2f058e8841` |
| 5 | `structure` | [Recognition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/recognition.md) | 48 | `declaration-track:ace671776546c12b87e5ae645c0b8b58a648f7ff02b2ab14cab1a609d99c865a` |
| 6 | `theorem` | [recognition_transfers_real_zeros](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/recognition-transfers-real-zeros.md) | 53 | `result-track:2bb6ccd03b766a4e3e6fc615b671343e405c19b119efb99278c402c70b8d8d11` |
| 7 | `theorem` | [exact_comparison_zero_transport](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/exact-comparison-zero-transport.md) | 61 | `result-track:c5cfec5fa40726b228995518e974584e3303dfea901547a75344cb33335aa5ab` |
| 8 | `theorem` | [recognition_of_exact_comparison](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/recognition-of-exact-comparison.md) | 70 | `result-track:5c0499edc6151f36b1aa17e6a7a247f92b698c1c7ff5a7f8cd80c8171537c795` |
| 9 | `theorem` | [real_affine_reflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/real-affine-reflection.md) | 77 | `result-track:85371954a46751e80128d9b76ed3e8047a7061a7035b57b3459805c16a3c7128` |
| 10 | `theorem` | [same_point_comparison_real_zeros](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/same-point-comparison-real-zeros.md) | 84 | `result-track:67f1f86ee1928aded128a900fa6c06e3ae76714e1addfe895f0e6781e18a092f` |
| 11 | `theorem` | [hermitian_real_affine_comparison_real_zeros](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/hermitian-real-affine-comparison-real-zeros.md) | 93 | `result-track:cdfdeddbb2ed827fe43b6bfb59e28d60771deec768af3973a539e70bec56b9fe` |
| 12 | `def` | [zeroMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/zeromatrix.md) | 106 | `declaration-track:4c48d4543d35d135d6dd16b49fb63804b350d42aa1bea34303642179a64dccbd` |
| 13 | `def` | [hostileSource](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/hostilesource.md) | 108 | `declaration-track:b3be9bb44956c428558e9a974fb90782cb57cbdf30f045130a8950797582f67a` |
| 14 | `theorem` | [zeroMatrix_hermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/zeromatrix-hermitian.md) | 110 | `result-track:6d5f2aa6c434a0968cc7a0cff33f3b4607ce8454c219a236257053dcffb1286f` |
| 15 | `theorem` | [zeroMatrix_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/zeromatrix-charpoly.md) | 113 | `result-track:30b0726f9da10ab5c2631de3663d0ac95eea17002e3cd3e5e83e071acc1e6ea8` |
| 16 | `theorem` | [zeroMatrix_charpoly_zeros_real](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/zeromatrix-charpoly-zeros-real.md) | 116 | `result-track:2dafeef402dfd245dd5ba4d8dc9add6366cbf1a11489ea682410f44df2f52639` |
| 17 | `theorem` | [hostileSource_nonreal_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/hostilesource-nonreal-zero.md) | 122 | `result-track:19917012c37e90fe93d3d3a4bae2a5d4bef2604aa800a55443b6cfea27fdcaae` |
| 18 | `theorem` | [finite_boundary_reality_does_not_identify_source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/finite-boundary-reality-does-not-identify-source.md) | 127 | `result-track:0f26fcbde6f2cd792f503d7fe34e272371604753d022e8ab91a75d3eb67c5774` |
| 19 | `def` | [shiftedBoundary](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/shiftedboundary.md) | 136 | `declaration-track:a25300b2ce34673f58de86b53f8fbac9aa4f6f314c80120d56b5e2a1bcc65137` |
| 20 | `def` | [squareMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/squaremap.md) | 138 | `declaration-track:a5418a09acf04a29be90e7ff6992e80d16410a3fdf9135e039a2329aff968cf1` |
| 21 | `def` | [negativeUnitMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/negativeunitmatrix.md) | 140 | `declaration-track:fc0fe0d6ff4c52ed8d55519df42d35de93660d56112b423550755d630421bb15` |
| 22 | `theorem` | [negativeUnitMatrix_hermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/negativeunitmatrix-hermitian.md) | 142 | `result-track:da823c8c1771a75165d280c99bccc1bbf8412deb9a3f748183964a586157a610` |
| 23 | `theorem` | [negativeUnitMatrix_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/negativeunitmatrix-charpoly.md) | 145 | `result-track:6ff94e00ee7bed9b19f7c873dac9186ce8693ccf0a0d590aceb68f391a141f46` |
| 24 | `theorem` | [negativeUnitMatrix_characteristic_function](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/negativeunitmatrix-characteristic-function.md) | 153 | `result-track:234d63b4d20c3cd1c8f5d3d660e325919bd3a129f695d3eed150ffe0500be66e` |
| 25 | `theorem` | [shiftedBoundary_real_zeros](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/shiftedboundary-real-zeros.md) | 158 | `result-track:93852c1341c64c1b2a12270e18bbe234f22dc006817ea9f5e60c89bb5e430c89` |
| 26 | `theorem` | [square_comparison_exact](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/square-comparison-exact.md) | 163 | `result-track:4135ad72a8db59991dd0e8bbe8695915ef6830e3d0a2ea0cb874034ddda8bb87` |
| 27 | `theorem` | [square_zero_transport](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/square-zero-transport.md) | 168 | `result-track:71a182f3270ca7cb40d8024b6bdc59c0bcead5f755552fa98ac1a32840898032` |
| 28 | `theorem` | [square_map_not_real_axis_reflecting](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttemptpeer01Namespaced.lean/declarations/square-map-not-real-axis-reflecting.md) | 172 | `result-track:4717d1fba263f3326d5e2e1d4bd79734fd8d613e56925aa17b9795971c462605` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=07ef105e5cf1a8d3eb0a1c7b30e688b2ba99a30436d4863b967ef0308fda77be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variantdc9b6d84a06bf97c975434ced2e69e972dbcf2580685c4d0f3760d5ecb1b1188.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variantdc9b6d84a06bf97c975434ced2e69e972dbcf2580685c4d0f3760d5ecb1b1188.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
