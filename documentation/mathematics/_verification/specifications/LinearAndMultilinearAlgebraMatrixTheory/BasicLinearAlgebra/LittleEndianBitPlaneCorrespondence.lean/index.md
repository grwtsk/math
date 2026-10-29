# Verification target: Little Endian Bit Plane Correspondence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "faebb625c94eeebc422a3c41d6b9eaa931d22365",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteSimplexGammaAndObservation/Variantd3ce1df042ea2552/LittleEndianBitPlaneCorrespondence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LittleEndianBitPlaneCorrespondence.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LittleEndianBitPlaneCorrespondence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `faebb625c94eeebc422a3c41d6b9eaa931d22365`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteSimplexGammaAndObservation/Variantd3ce1df042ea2552/LittleEndianBitPlaneCorrespondence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteSimplexGammaAndObservation/Variantd3ce1df042ea2552/LittleEndianBitPlaneCorrespondence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Core.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Quantization.Resolution` — import line 20; external provider; requires a separately pinned dependency.
- `Batteries.Data.Nat.Lemmas` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 23; external provider; requires a separately pinned dependency.
- [Finite Bit Plane Space](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteBitPlaneSpace.lean/index.md) — import line 25; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [decodeBitPlanes](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LittleEndianBitPlaneCorrespondence.lean/declarations/decodebitplanes.md) | 55 | `declaration-track:b172d99653d44f2f7ad274ed8982959e0f67d39cd8d5a709b72e3be3ce99642d` |
| 2 | `def` | [encodeBitPlanes](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LittleEndianBitPlaneCorrespondence.lean/declarations/encodebitplanes.md) | 67 | `declaration-track:f9556ab173b035bcada8839678bc2711e736c2c3c52245908536560231ea1859` |
| 3 | `theorem` | [decodeBitPlanes_nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LittleEndianBitPlaneCorrespondence.lean/declarations/decodebitplanes-nonnegative.md) | 73 | `result-track:6a9442e7d5700acd2f8dc80925ea0c88ac9c3d1b5e7883b234c896f8816e4eb4` |
| 4 | `theorem` | [decodeBitPlanes_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LittleEndianBitPlaneCorrespondence.lean/declarations/decodebitplanes-succ.md) | 81 | `result-track:aa1c37e38d05135de343daa67c11b2f2cfc737495ebb3f27aea6696e1a45f765` |
| 5 | `theorem` | [decodeBitPlanes_eq_ofBits](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LittleEndianBitPlaneCorrespondence.lean/declarations/decodebitplanes-eq-ofbits.md) | 97 | `result-track:f2b551b76bf42e93f1cec1afe911c42555f34309d96d44645dd1e1ef9f12ab16` |
| 6 | `theorem` | [decodeBitPlanes_lt_pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LittleEndianBitPlaneCorrespondence.lean/declarations/decodebitplanes-lt-pow.md) | 112 | `result-track:fba539f020b241774df373c2928a777dd4901fbe85bb87af26075c04e98e638d` |
| 7 | `def` | [decodedFiniteMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LittleEndianBitPlaneCorrespondence.lean/declarations/decodedfinitematrix.md) | 138 | `declaration-track:b1d6b8a14623633069da1f556a07640cd80d8684599959a3bf969a4a90bab557` |
| 8 | `theorem` | [decodeBitPlanes_encodeBitPlanes](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LittleEndianBitPlaneCorrespondence.lean/declarations/decodebitplanes-encodebitplanes.md) | 149 | `result-track:df73c89e04acff33713691d7f7b1ecb556b3f46c64acd27dc6405888838517ed` |
| 9 | `theorem` | [decode_encodeBitPlanes_lt_pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LittleEndianBitPlaneCorrespondence.lean/declarations/decode-encodebitplanes-lt-pow.md) | 162 | `result-track:1b1769bead8cf6913357777eae2d4ca7ec99ec20a67d7231895701dd7f86e4ab` |
| 10 | `theorem` | [encodeBitPlanes_decodedFiniteMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LittleEndianBitPlaneCorrespondence.lean/declarations/encodebitplanes-decodedfinitematrix.md) | 175 | `result-track:03b0db37cf52bee1fbac81992c2bca35169d8ea1713c75aa1ce14e6d95299f6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ad9d12a42d4b318d81a740b48210448dd54e3aea73a49087d33a66bdd63cde7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteSimplexGammaAndObservation/Variantd3ce1df042ea2552/LittleEndianBitPlaneCorrespondence.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteSimplexGammaAndObservation/Variantd3ce1df042ea2552/LittleEndianBitPlaneCorrespondence.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
