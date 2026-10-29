# Verification target: Basis Bilinear Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "becd3bbcc8bc9990c04ac5bb60fd681468aeacea",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Varianta922c0e4a1f2aff1837495703e29257050547b8fd3a56267ed4dca30c8b14cec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisBilinearPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisBilinearPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `becd3bbcc8bc9990c04ac5bb60fd681468aeacea`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bilinear/Varianta922c0e4a1f2aff1837495703e29257050547b8fd3a56267ed4dca30c8b14cec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bilinear/Varianta922c0e4a1f2aff1837495703e29257050547b8fd3a56267ed4dca30c8b14cec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ext_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisBilinearPublic.lean/declarations/ext-basis.md) | 39 | `result-track:26f5bfe60c233c1f9035dd9db4d3c7e5c42e8c4e7da95ea6b9de6b34c2417e40` |
| 2 | `lemma` | [ext_iff_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisBilinearPublic.lean/declarations/ext-iff-basis.md) | 43 | `result-track:cdaf7c38433af1514378748a1d2a008f49a4b2413c8f4242bd01e07b09f5a4a0` |
| 3 | `lemma` | [BilinForm.ext_iff_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisBilinearPublic.lean/declarations/bilinform-ext-iff-basis.md) | 47 | `result-track:4df011bcb581b5e7669fa8a13b46f323af30d08b79dd7c0f1e4574ce40e22a3c` |
| 4 | `theorem` | [sum_repr_mul_repr_mulₛₗ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisBilinearPublic.lean/declarations/sum-repr-mul-repr-mul-source-edition-2.md) | 54 | `result-track:604aabad64a298160cab3e39910a936211a3b9992a04466f401993fd030f4165` |
| 5 | `theorem` | [sum_repr_mul_repr_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisBilinearPublic.lean/declarations/sum-repr-mul-repr-mul.md) | 63 | `result-track:5a5bfb4d42cc6fa978507b3ce623ceadfa18df6f1de192c3702e5b31085ea9f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa5aa5b4923e1a7a1270b3368165d4ba67711e449ac726773a229660d73e22f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Bilinear/Varianta922c0e4a1f2aff1837495703e29257050547b8fd3a56267ed4dca30c8b14cec.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Bilinear/Varianta922c0e4a1f2aff1837495703e29257050547b8fd3a56267ed4dca30c8b14cec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
