# Verification target: Representation Theory Character Char Tensor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b29acb87cc96612c40e9e65699808420212ad41",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Character/Variant38359e7896e7b65ea74b9fadfff8897b0bd43f3463d3961c9d732d83020e1de1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterCharTensor.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterCharTensor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b29acb87cc96612c40e9e65699808420212ad41`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Character/Variant38359e7896e7b65ea74b9fadfff8897b0bd43f3463d3961c9d732d83020e1de1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Character/Variant38359e7896e7b65ea74b9fadfff8897b0bd43f3463d3961c9d732d83020e1de1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RepresentationTheory.FdRep` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Trace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.Invariants` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [character](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterCharTensor.lean/declarations/character.md) | 43 | `declaration-track:b3a3eda3f954c1ab033c0d07c3d4a20b37a985a2ee87cbd75e8248c99f4f992d` |
| 2 | `theorem` | [char_mul_comm](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterCharTensor.lean/declarations/char-mul-comm.md) | 47 | `result-track:d564763db5699089918624400e1ba68dd047f297bacda58383ba4f4a83ff2e16` |
| 3 | `theorem` | [char_one](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterCharTensor.lean/declarations/char-one.md) | 52 | `result-track:95c633e5f7ce65608c2930a41a3c8b4693fe853192700c027f062cab303c6c5e` |
| 4 | `theorem` | [char_tensor](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterCharTensor.lean/declarations/char-tensor-source-edition-2.md) | 57 | `result-track:e990c38d0c27259347694ad0bc698345d026775ad69e6da6c143510ac03bf26f` |
| 5 | `theorem` | [char_tensor'](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterCharTensor.lean/declarations/char-tensor.md) | 63 | `result-track:01f28c5606cbedd64cdc9d6e77e6c425d21971ecc5260a108d33c743f9ddcbbf` |
| 6 | `theorem` | [char_iso](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterCharTensor.lean/declarations/char-iso.md) | 70 | `result-track:d6448365701b062c6233da9f0e273fea34516e16bfad21ad9bd60c97022d8503` |
| 7 | `theorem` | [char_conj](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterCharTensor.lean/declarations/char-conj.md) | 82 | `result-track:aea85787c48d4941a39423d592153afc7f62129474b5440cab3a9dc096ccc13b` |
| 8 | `theorem` | [char_dual](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterCharTensor.lean/declarations/char-dual.md) | 87 | `result-track:4148f8c856e350936d96aa8d9150baefe76ab9ec00f210cc39327f6b31c534dd` |
| 9 | `theorem` | [char_linHom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterCharTensor.lean/declarations/char-linhom.md) | 92 | `result-track:5b76b342e8267de397f247d2a8e017859590b69a0fc04bf8dabefff9596eec27` |
| 10 | `theorem` | [average_char_eq_finrank_invariants](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterCharTensor.lean/declarations/average-char-eq-finrank-invariants.md) | 99 | `result-track:419bb32b524f031ae586120912aab72941871a633555a6943d2e3350d504eb70` |
| 11 | `theorem` | [char_orthonormal](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterCharTensor.lean/declarations/char-orthonormal.md) | 117 | `result-track:5f2b4325d3d4ffbae8dd6fa3d0ea564b930c0cf8d76347c34488cb807f93e32a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b28dc0f3724a4d1b209a4fb910e894e5f3fed701925b8914c49e081c77bcf756 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Character/Variant38359e7896e7b65ea74b9fadfff8897b0bd43f3463d3961c9d732d83020e1de1.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Character/Variant38359e7896e7b65ea74b9fadfff8897b0bd43f3463d3961c9d732d83020e1de1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
