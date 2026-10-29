# Verification target: Circulant Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd6bb07cb218eaffea7a9b3d20191a8e841a113e",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Circulant/Varianta606d44f9f1640c0dc24e02e4b853984e12d2f683c3be2ed60d043cfefbca238.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd6bb07cb218eaffea7a9b3d20191a8e841a113e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Circulant/Varianta606d44f9f1640c0dc24e02e4b853984e12d2f683c3be2ed60d043cfefbca238.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Circulant/Varianta606d44f9f1640c0dc24e02e4b853984e12d2f683c3be2ed60d043cfefbca238.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [circulant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/circulant.md) | 46 | `declaration-track:4bf58a5c386e720d8f03fb20c151bbf2d18cc80a8c2faacc66d1c6f1c8043e72` |
| 2 | `theorem` | [circulant_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/circulant-apply.md) | 52 | `result-track:8e47ee4a316abbb7a602f4802260275f4934ac0308b05de3599898d4ddbe1b6a` |
| 3 | `theorem` | [circulant_col_zero_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/circulant-col-zero-eq.md) | 55 | `result-track:cf8d2e9fc2aa7009fbae0dac22967c8255775eea70e2c27db642da776bb6f24b` |
| 4 | `theorem` | [circulant_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/circulant-injective.md) | 59 | `result-track:fd74023f035f897ce32c600a4c2ae393d094b6e747e61ac3bab5f9f75084d236` |
| 5 | `theorem` | [Fin.circulant_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/fin-circulant-injective.md) | 65 | `result-track:e8287991d0e24a1ca626587f49be617ecda613b890d2e21e08e836c9685e12fe` |
| 6 | `theorem` | [circulant_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/circulant-inj.md) | 71 | `result-track:caaec60ef596592154393cb0ca738e9e8a1abccf5ed57c48dd6afc066f115b66` |
| 7 | `theorem` | [Fin.circulant_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/fin-circulant-inj.md) | 76 | `result-track:b6329a1e9e9fdb4cbf0d37d1686b19a31e21d85cf64ce40a3dd7d38e5b54732f` |
| 8 | `theorem` | [transpose_circulant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/transpose-circulant.md) | 80 | `result-track:eb1d4e5ce401bbcfc62968e1515ffd1788de911fbbe98bd300dde46998f7416b` |
| 9 | `theorem` | [conjTranspose_circulant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/conjtranspose-circulant.md) | 84 | `result-track:13bce535083eded395eaadd01ed4de19b08ee33ec0a5e6918e22043029964f54` |
| 10 | `theorem` | [Fin.transpose_circulant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/fin-transpose-circulant.md) | 88 | `result-track:0bf044a8dac3ac8a9f272355d6bb9f2a47c97d2c34356bddf3a9cbb33be4de13` |
| 11 | `theorem` | [Fin.conjTranspose_circulant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/fin-conjtranspose-circulant.md) | 93 | `result-track:6a409d75f4299c7b748961051ac7df28328f9fa05c9bb7b2f4f0e062f58af0aa` |
| 12 | `theorem` | [map_circulant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/map-circulant.md) | 99 | `result-track:baccd93cf5c90d86ebac6aabc34c8425283035f3f8e7a859d8ba8f77eaf52eca` |
| 13 | `theorem` | [circulant_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/circulant-neg.md) | 104 | `result-track:fbef63b7893513bd90d2e7ee8d375ed39708f1b535dd79453220daad555c0d53` |
| 14 | `theorem` | [circulant_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/circulant-zero.md) | 109 | `result-track:5732cfa0d33a7140c03286201ae6e0ed8c41938fb57062b1231582d8ff23374c` |
| 15 | `theorem` | [circulant_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/circulant-add.md) | 113 | `result-track:e5da62d3e053d5371ce3ac99d40655e1c90840a3af0e8d220116eb92e38ca466` |
| 16 | `theorem` | [circulant_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/circulant-sub.md) | 118 | `result-track:85a501a800343a762842de8c2367d0d8d40e01b7b1bf02ca0489a8725b183f8b` |
| 17 | `theorem` | [circulant_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/circulant-mul.md) | 125 | `result-track:a0606d02e5db541835524b83ee75338c25fe27f6529f5afb3cfa09185e37ea3f` |
| 18 | `theorem` | [Fin.circulant_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/fin-circulant-mul.md) | 134 | `result-track:4b21af3a87d6a09094c2a989466c4a4d1bc8f4fd1f9c4524ed3aafd34759cd93` |
| 19 | `theorem` | [circulant_mul_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/circulant-mul-comm.md) | 141 | `result-track:ad4fbf3bf6447cdedb02875dbe6fd2155b8650abe236bbf68316f9a0188eb15c` |
| 20 | `theorem` | [Fin.circulant_mul_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/fin-circulant-mul-comm.md) | 152 | `result-track:e93ff8811d50db212796705763c2742cfe74a8ff0aafc77ce20f676bb32efa43` |
| 21 | `theorem` | [circulant_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/circulant-smul.md) | 159 | `result-track:aa3e6647d0de89acf383ecf11dc2529bf1a27edc2265631478027d6c4e02f808` |
| 22 | `theorem` | [circulant_single_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/circulant-single-one.md) | 164 | `result-track:4f6efe627bb0a9d4c6f75cf6a74d5e29dbd0a4ff92af68babf5c0f3d7899c9cc` |
| 23 | `theorem` | [circulant_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/circulant-single.md) | 171 | `result-track:1270dcce02cfbd2d75cb08b2b9e5552c18795c3df7319c3c4d1d4c87f90d4d95` |
| 24 | `theorem` | [Fin.circulant_ite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/fin-circulant-ite.md) | 179 | `result-track:59ac4ac9a54ef098a42f58ba4da2a4aa1e383c5d48a0104b9f738af7cfbe94e7` |
| 25 | `theorem` | [circulant_isSymm_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/circulant-issymm-iff.md) | 189 | `result-track:d293cf757394656e66638ed48d45cc4604453ce64cea3024d2c0ca742f6edef8` |
| 26 | `theorem` | [Fin.circulant_isSymm_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/fin-circulant-issymm-iff.md) | 194 | `result-track:8b44f58ca5ab6c116e53a37389c8cc9f60bf8c15322f7302c994b65a3f6e5c6d` |
| 27 | `theorem` | [circulant_isSymm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/circulant-issymm-apply.md) | 200 | `result-track:ef65e549fd1bd3963c99bce9a4329ab6629728576a8c0e7ec974804b2ca54ad1` |
| 28 | `theorem` | [Fin.circulant_isSymm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CirculantAligned.lean/declarations/fin-circulant-issymm-apply.md) | 205 | `result-track:a0081b7da3928eef52f4a1c50a66add8e9a6655084c9376e3dba398fe58caf40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=283a59af594a7c2e744f09e49101b201635b850e6e996390877cd1d0f7a2cadc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Circulant/Varianta606d44f9f1640c0dc24e02e4b853984e12d2f683c3be2ed60d043cfefbca238.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Circulant/Varianta606d44f9f1640c0dc24e02e4b853984e12d2f683c3be2ed60d043cfefbca238.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
