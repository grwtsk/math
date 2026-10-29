# Verification target: Null Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d977b5e233c534f03298d9f35327f8a20d5ab4b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Null/Variantc2fcecab4672f79715c6138e1981a1301a0accc2bfffb3fc38298358a1a0e66a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NullNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NullNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d977b5e233c534f03298d9f35327f8a20d5ab4b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Null/Variantc2fcecab4672f79715c6138e1981a1301a0accc2bfffb3fc38298358a1a0e66a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Null/Variantc2fcecab4672f79715c6138e1981a1301a0accc2bfffb3fc38298358a1a0e66a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Rhetorical.Hilbert.Raw` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rawEnergyZero_orthogonal_all](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NullNamespaced.lean/declarations/rawenergyzero-orthogonal-all.md) | 29 | `result-track:0210dda79c3d5dab67a8d25406de08b5e6199dc0675d9c4c2b2896a82411c2ec` |
| 2 | `def` | [kernelNullSubmodule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NullNamespaced.lean/declarations/kernelnullsubmodule.md) | 40 | `declaration-track:57a2087b7f1747bae70a2841e40c5d8c47f8cbcedfef49e9e435e2c77d995de7` |
| 3 | `theorem` | [mem_kernelNullSubmodule_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NullNamespaced.lean/declarations/mem-kernelnullsubmodule-iff.md) | 56 | `result-track:fcc0173ac1d6f826af676952a7dee906280738294eef55d8f10fa2c2efa78e51` |
| 4 | `theorem` | [null_orthogonal_all](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NullNamespaced.lean/declarations/null-orthogonal-all.md) | 61 | `result-track:ac079317e6ff54b3aaad03e677edc5874996fd36f92b5519cd795987b096de39` |
| 5 | `theorem` | [inner_self_eq_zero_iff_mem_kernelNullSubmodule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NullNamespaced.lean/declarations/inner-self-eq-zero-iff-mem-kernelnullsubmodule.md) | 69 | `result-track:6bbfc5dddb0c16166b3b7a8603f8a62d0344fb07c30b67942158a163101e2a4f` |
| 6 | `theorem` | [rawInner_eq_of_sub_mem_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NullNamespaced.lean/declarations/rawinner-eq-of-sub-mem-left.md) | 76 | `result-track:66a8cde9e480e82dd056298919bea45754f6f26127f5cce10ab0a0db37e9eec2` |
| 7 | `theorem` | [rawInner_eq_of_sub_mem_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NullNamespaced.lean/declarations/rawinner-eq-of-sub-mem-right.md) | 89 | `result-track:685a3f8828577e4aec181b87464f8439c4337a5069e0fd3a82456a1fafe9d3aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5188de60c103990132c5152abe9107fbb467362bbafae0b36b6bd0223dfe5ac1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Null/Variantc2fcecab4672f79715c6138e1981a1301a0accc2bfffb3fc38298358a1a0e66a.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Null/Variantc2fcecab4672f79715c6138e1981a1301a0accc2bfffb3fc38298358a1a0e66a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
