# Verification target: Matrix Calculus Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ae0374ab0eb8bbcfc7f692d3be25e12254c82ea",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixCalculus/Variant4dfa05790358b1b5245f75757d28c6a27344eed2ff8fb1b810c1f4aec9bc9514.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCalculusNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCalculusNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ae0374ab0eb8bbcfc7f692d3be25e12254c82ea`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixCalculus/Variant4dfa05790358b1b5245f75757d28c6a27344eed2ff8fb1b810c1f4aec9bc9514.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixCalculus/Variant4dfa05790358b1b5245f75757d28c6a27344eed2ff8fb1b810c1f4aec9bc9514.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Calculus` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mutationMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCalculusNamespaced.lean/declarations/mutationmatrix.md) | 15 | `declaration-track:1ac6aba7de906137c510250c75cb0b85aa383b04d89dc4c591ea22c4c5bff2a8` |
| 2 | `theorem` | [mutationMatrix_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCalculusNamespaced.lean/declarations/mutationmatrix-mulvec.md) | 19 | `result-track:25596ce0cd71d6e6a8d0d7dbebb5d9a9df286d64f99735a40baf1e771be2ba21` |
| 3 | `theorem` | [mutationMatrix_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCalculusNamespaced.lean/declarations/mutationmatrix-sq.md) | 39 | `result-track:c83ed60409388af118eb7abedb33eee068229df24a3d4e6b5944531d4e1dc064` |
| 4 | `theorem` | [mutationMatrix_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCalculusNamespaced.lean/declarations/mutationmatrix-det.md) | 46 | `result-track:27111ea34777648f81febe7f102a058f6a8ce193606534ffeadacf4bb8eaf0cb` |
| 5 | `def` | [wordMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCalculusNamespaced.lean/declarations/wordmatrix.md) | 56 | `declaration-track:3e201e1ec75b2b3d685a6134c91692d688c3eaa85c25f0519ad282517cbc193a` |
| 6 | `theorem` | [wordMatrix_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCalculusNamespaced.lean/declarations/wordmatrix-mulvec.md) | 61 | `result-track:bd749b18ea649aa69ac9dfc2fd1ffc3b2982ec8498552ee7ef2ad27d15a48b24` |
| 7 | `theorem` | [wordMatrix_append](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCalculusNamespaced.lean/declarations/wordmatrix-append.md) | 68 | `result-track:feacefb52a1b5d3856b6f2b3fe34ca94e8fda41e6c46fd57403b1d7a53589634` |
| 8 | `theorem` | [wordMatrix_reverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCalculusNamespaced.lean/declarations/wordmatrix-reverse.md) | 75 | `result-track:3130d0621943fc6cc374f03c9aceafbac5905b1b1cffc71232679bdcea36cf68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c8ec19e20b2cbbcfdefa052bceecbd0f9349ee12989ddc194c558a51aeb7f0cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MatrixCalculus/Variant4dfa05790358b1b5245f75757d28c6a27344eed2ff8fb1b810c1f4aec9bc9514.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/MatrixCalculus/Variant4dfa05790358b1b5245f75757d28c6a27344eed2ff8fb1b810c1f4aec9bc9514.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
