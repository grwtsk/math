# Verification target: Field Rows Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac0738c6dfe5be2bd51af45358e9f3755ff81203",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FieldRows/Variant65eee59cba622294eda5ccf99444eac1bde4a49c52816be76d70dee01c283c8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/FieldRowsNamespacedEdition2.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/FieldRowsNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac0738c6dfe5be2bd51af45358e9f3755ff81203`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FieldRows/Variant65eee59cba622294eda5ccf99444eac1bde4a49c52816be76d70dee01c283c8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/FieldRows/Variant65eee59cba622294eda5ccf99444eac1bde4a49c52816be76d70dee01c283c8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FilesystemCodec.Blocks` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RowFieldEncoding](../../../../AssociativeRingsAndAlgebras/FieldRowsNamespacedEdition2.lean/declarations/rowfieldencoding.md) | 45 | `declaration-track:b58e5332d184fbccd825831dc80b584e8d9cf0cd33fa1fb82e3ec4b8f8e0ef0a` |
| 2 | `def` | [oneRowEquiv](../../../../AssociativeRingsAndAlgebras/FieldRowsNamespacedEdition2.lean/declarations/onerowequiv.md) | 54 | `declaration-track:b95f3848c7117bbc425e768305998856e910fcf188a7eda61affe4162caa1da7` |
| 3 | `def` | [code](../../../../AssociativeRingsAndAlgebras/FieldRowsNamespacedEdition2.lean/declarations/code.md) | 73 | `declaration-track:aab0057ad2d1b6054d0f3d6ba80000fc079a8372268c7380c6155c22dc478f89` |
| 4 | `theorem` | [code_add](../../../../AssociativeRingsAndAlgebras/FieldRowsNamespacedEdition2.lean/declarations/code-add.md) | 77 | `result-track:ad6ac226b384338052dc88452f5c62cddffe6e041c0aa53960d7c0cf8dac19a9` |
| 5 | `def` | [matrixRow](../../../../AssociativeRingsAndAlgebras/FieldRowsNamespacedEdition2.lean/declarations/matrixrow.md) | 98 | `declaration-track:40eae39c58809d02288965bda903757aafe63595dd282de75f525c14d89bb727` |
| 6 | `def` | [rowVectorEquiv](../../../../AssociativeRingsAndAlgebras/FieldRowsNamespacedEdition2.lean/declarations/rowvectorequiv.md) | 105 | `declaration-track:b1109ac49437a833a8d870d1a404e11c70b0d8b59a1c7067a73b57df21907ad1` |
| 7 | `theorem` | [rowVectorEquiv_apply](../../../../AssociativeRingsAndAlgebras/FieldRowsNamespacedEdition2.lean/declarations/rowvectorequiv-apply.md) | 122 | `result-track:f09064fa406701b8477a80aa05409d5928f976e8af7e75252aa803cf74223124` |
| 8 | `theorem` | [rowVectorEquiv_symm_apply](../../../../AssociativeRingsAndAlgebras/FieldRowsNamespacedEdition2.lean/declarations/rowvectorequiv-symm-apply.md) | 131 | `result-track:14656e1e5dd2cb9f4e01e91592b8fa2e1505f08a714d89629061f27212ac4926` |
| 9 | `theorem` | [rowVectorEquiv_xor](../../../../AssociativeRingsAndAlgebras/FieldRowsNamespacedEdition2.lean/declarations/rowvectorequiv-xor.md) | 141 | `result-track:4902aaa26211c8d0586f40672e40a22b6af1c0f2747211aafad0b8f53d5d52f7` |
| 10 | `abbrev` | [VariableFieldVector](../../../../AssociativeRingsAndAlgebras/FieldRowsNamespacedEdition2.lean/declarations/variablefieldvector.md) | 159 | `declaration-track:6feeb1236faa564d6351922a87902b5b341cae101df0cbf715cc5426149e5504` |
| 11 | `def` | [variableMatrixFieldEquiv](../../../../AssociativeRingsAndAlgebras/FieldRowsNamespacedEdition2.lean/declarations/variablematrixfieldequiv.md) | 166 | `declaration-track:d685d60612e91bbec0b1215eb47b88bcec008c220e31724cada2a6aad63eedde` |
| 12 | `theorem` | [variableMatrixFieldEquiv_rows](../../../../AssociativeRingsAndAlgebras/FieldRowsNamespacedEdition2.lean/declarations/variablematrixfieldequiv-rows.md) | 179 | `result-track:0d1028758006e0510abf8b6f55488c3afb0789b61eae718ee6d9e4ac14e84cf2` |
| 13 | `theorem` | [variableMatrixFieldEquiv_symm_rows](../../../../AssociativeRingsAndAlgebras/FieldRowsNamespacedEdition2.lean/declarations/variablematrixfieldequiv-symm-rows.md) | 186 | `result-track:7c69c9c6808a642b1bed8695e8041db79dd02b6e8c82c0fd2311cacccdcc083f` |
| 14 | `def` | [fieldRows](../../../../AssociativeRingsAndAlgebras/FieldRowsNamespacedEdition2.lean/declarations/fieldrows.md) | 197 | `declaration-track:f58e9f1694060253b3a138cd2ee1d9ca358bb09a8509275d835c4c54b0c223d5` |
| 15 | `def` | [matrixOfFieldRows](../../../../AssociativeRingsAndAlgebras/FieldRowsNamespacedEdition2.lean/declarations/matrixoffieldrows.md) | 204 | `declaration-track:f3243c515d2fb6dc92dec8f0d399e16dc8cc95f69b8e562c231464208ad8e087` |
| 16 | `theorem` | [matrixOfFieldRows_eq](../../../../AssociativeRingsAndAlgebras/FieldRowsNamespacedEdition2.lean/declarations/matrixoffieldrows-eq.md) | 211 | `result-track:7c3bd39be054fa348658422b40703244dc446521a8fbd3a92d0771924f676a96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6adc76ccd1962fe629c69b5cbc552d24b194b55972135552019fbfa43c9258a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FieldRows/Variant65eee59cba622294eda5ccf99444eac1bde4a49c52816be76d70dee01c283c8a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/FieldRows/Variant65eee59cba622294eda5ccf99444eac1bde4a49c52816be76d70dee01c283c8a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
