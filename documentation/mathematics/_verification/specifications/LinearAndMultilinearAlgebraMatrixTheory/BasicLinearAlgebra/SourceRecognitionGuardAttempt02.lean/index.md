# Verification target: Source Recognition Guard Attempt02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40ab68cc26a03d30f2447de56913c162dfd82dcc",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant289d4640acbb563a1cfef35ed24f4789781935e26e9d93f8217fcb379ee58787.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40ab68cc26a03d30f2447de56913c162dfd82dcc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant289d4640acbb563a1cfef35ed24f4789781935e26e9d93f8217fcb379ee58787.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant289d4640acbb563a1cfef35ed24f4789781935e26e9d93f8217fcb379ee58787.lean.json)

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
| 1 | `theorem` | [symmetric_charpoly_zero_real](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/symmetric-charpoly-zero-real.md) | 13 | `result-track:cc168a62c0c98aa7411f72bb5f7926570b344d3c69df067540cef996b6237e05` |
| 2 | `theorem` | [hermitian_charpoly_zero_real](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/hermitian-charpoly-zero-real.md) | 22 | `result-track:ea4b81059c2060d8b5ae96e45dec073bdd459861cd6f0c542ce3d520fe3d9688` |
| 3 | `def` | [ZeroTransport](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/zerotransport.md) | 32 | `declaration-track:521e615a64e4cdcdce6d655c85308f34d5fa1991f36f14c27923c81903be9847` |
| 4 | `def` | [RealAxisReflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/realaxisreflection.md) | 36 | `declaration-track:281c351437b476cfb612d6df54fe07352fda7d71c5d4a98d7f6547c54ee4bca7` |
| 5 | `structure` | [Recognition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/recognition.md) | 40 | `declaration-track:69152af2e0de01d51002ee143de02f37431504cdf4e636b7f615bcacba3d0c47` |
| 6 | `theorem` | [recognition_transfers_real_zeros](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/recognition-transfers-real-zeros.md) | 45 | `result-track:470dae47750cfc684c7535c202b245c8ae37356b4c0a2609d28dc7076e3b34db` |
| 7 | `theorem` | [exact_comparison_zero_transport](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/exact-comparison-zero-transport.md) | 53 | `result-track:475cf435d6686cd620ca5cdb6dd8571b3580d0867d177df91ece8b149652575d` |
| 8 | `theorem` | [recognition_of_exact_comparison](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/recognition-of-exact-comparison.md) | 62 | `result-track:944a9f713ec1ab0170c03c160a867e6571e283bb7cce06a333585a402bd4a7fe` |
| 9 | `theorem` | [real_affine_reflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/real-affine-reflection.md) | 69 | `result-track:679c1a7348b9cbc81d0ab4b03293b6e0c4f1d0699ff4a390f1668185275e6ee6` |
| 10 | `theorem` | [same_point_comparison_real_zeros](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/same-point-comparison-real-zeros.md) | 76 | `result-track:bc78ab507d417b5357146b20205f8edbe9db5862cb9977a8caf2d62e0ee4f275` |
| 11 | `def` | [zeroMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/zeromatrix.md) | 85 | `declaration-track:5fe6e518cf721ec28d21447dea9f7712f1c763e90fd80cb024a5c4a288ac64dd` |
| 12 | `def` | [hostileSource](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/hostilesource.md) | 87 | `declaration-track:88e0355c12d05d267fd3437909f22ab4805eb0f790ecb60b32e3496ea63a92a2` |
| 13 | `theorem` | [zeroMatrix_hermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/zeromatrix-hermitian.md) | 89 | `result-track:8ce21fa71820d5210f132eb1bc1a2da9b4ffa2883fae3235ff447bc5ce56cbb6` |
| 14 | `theorem` | [zeroMatrix_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/zeromatrix-charpoly.md) | 92 | `result-track:51224b9087c991e5b05e92d1f5c9e3ec4b8534bcb4f6c2d46f63e2a40c76d975` |
| 15 | `theorem` | [zeroMatrix_charpoly_zeros_real](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/zeromatrix-charpoly-zeros-real.md) | 95 | `result-track:c0022ed1cb0e92d9e89c996a6f7bc982814db82f25df6b6b9c5a5754be7961d7` |
| 16 | `theorem` | [hostileSource_nonreal_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/hostilesource-nonreal-zero.md) | 101 | `result-track:355c1bde9303890c972cc69334e08eab62c5e355ffbe9d3880579034b5908202` |
| 17 | `theorem` | [finite_boundary_reality_does_not_identify_source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/finite-boundary-reality-does-not-identify-source.md) | 106 | `result-track:79c4e006ed645affe56f198237254e5faebd77db83c9f8405340e693b02b5e18` |
| 18 | `def` | [shiftedBoundary](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/shiftedboundary.md) | 115 | `declaration-track:37328d4b44e9d1062b2c37f87c8943d4207bda99b374bd138e7b6d8144350a3b` |
| 19 | `def` | [squareMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/squaremap.md) | 117 | `declaration-track:ce71d227b7577c19e3e62c542734b9b4567055302012eee42db2138cca26f5f2` |
| 20 | `def` | [negativeUnitMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/negativeunitmatrix.md) | 119 | `declaration-track:d4887f2044de41143321ed5f81b3f10930072d41ec5b0509eb0087e330559ee8` |
| 21 | `theorem` | [negativeUnitMatrix_hermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/negativeunitmatrix-hermitian.md) | 121 | `result-track:466c3f2268965d45cc09b1746cccd9548f3e489a6e2bf1672531f6774eca569f` |
| 22 | `theorem` | [negativeUnitMatrix_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/negativeunitmatrix-charpoly.md) | 124 | `result-track:275eda127ddf275acdfbcea3fcbfdc4ccc8299145a6c3c09a7ee5ba54e89fe52` |
| 23 | `theorem` | [negativeUnitMatrix_characteristic_function](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/negativeunitmatrix-characteristic-function.md) | 131 | `result-track:3b70530118b40855f1474ee6ad41462776db57fe67a5de3390ee1b55034b64d8` |
| 24 | `theorem` | [shiftedBoundary_real_zeros](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/shiftedboundary-real-zeros.md) | 136 | `result-track:bd97b4d9d0764d3f8b6a45a7bd40a4164e75f17b78f52e82539629dcbd48f272` |
| 25 | `theorem` | [square_comparison_exact](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/square-comparison-exact.md) | 141 | `result-track:5e2d0a65dfd6ce6cd8d1ea152c65ed1dd03d4458b63eba97baca2bf7de6d839c` |
| 26 | `theorem` | [square_zero_transport](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/square-zero-transport.md) | 146 | `result-track:cbcadb1cc323e0918949eedad9a426cabeccd69b1179e7529581c5bdc4a47d84` |
| 27 | `theorem` | [square_map_not_real_axis_reflecting](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SourceRecognitionGuardAttempt02.lean/declarations/square-map-not-real-axis-reflecting.md) | 150 | `result-track:c8c30ff454b82d9477f2c53301243fa6d48ec620a32b01897dadaa3748d6aacd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=27ca96861c27af9c155c0ce1bbde295b88752d224e2a9a0eb986d9f7a28f30cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant289d4640acbb563a1cfef35ed24f4789781935e26e9d93f8217fcb379ee58787.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt02/Variant289d4640acbb563a1cfef35ed24f4789781935e26e9d93f8217fcb379ee58787.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
