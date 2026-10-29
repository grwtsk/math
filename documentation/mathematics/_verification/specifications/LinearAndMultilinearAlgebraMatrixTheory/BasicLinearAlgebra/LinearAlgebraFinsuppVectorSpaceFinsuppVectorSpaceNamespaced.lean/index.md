# Verification target: Linear Algebra Finsupp Vector Space Finsupp Vector Space Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ae8a9c68f41e609ea25f2b13be8e82eb8c619c0",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FinsuppVectorSpace/Variantf4061b56796d3d0738a026a764fc7ca766bf6b339ec170f5b54a8acba53c01c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraFinsuppVectorSpaceFinsuppVectorSpaceNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraFinsuppVectorSpaceFinsuppVectorSpaceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ae8a9c68f41e609ea25f2b13be8e82eb8c619c0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FinsuppVectorSpace/Variantf4061b56796d3d0738a026a764fc7ca766bf6b339ec170f5b54a8acba53c01c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FinsuppVectorSpace/Variantf4061b56796d3d0738a026a764fc7ca766bf6b339ec170f5b54a8acba53c01c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.StdBasis` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [linearIndependent_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraFinsuppVectorSpaceFinsuppVectorSpaceNamespaced.lean/declarations/linearindependent-single.md) | 43 | `result-track:91a8933a30e60911e7ad15014e19bfc2310cffa63f6c7e144f157c006dd1f33a` |
| 2 | `def` | [basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraFinsuppVectorSpaceFinsuppVectorSpaceNamespaced.lean/declarations/basis.md) | 75 | `declaration-track:012a892c5abea6a0ad8f07349598f2cb8f42a966a31f0789c71bcd61c46a873a` |
| 3 | `theorem` | [basis_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraFinsuppVectorSpaceFinsuppVectorSpaceNamespaced.lean/declarations/basis-repr.md) | 110 | `result-track:33d218f51e3bd469208dbe44f7fc13d33e1530dd4e72a187be9ef331d0ef3b61` |
| 4 | `theorem` | [coe_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraFinsuppVectorSpaceFinsuppVectorSpaceNamespaced.lean/declarations/coe-basis.md) | 116 | `result-track:30b929074144d7a6efde38892732a398f2a3a2f2312e234d7f750a3283661b6f` |
| 5 | `def` | [basisSingleOne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraFinsuppVectorSpaceFinsuppVectorSpaceNamespaced.lean/declarations/basissingleone.md) | 134 | `declaration-track:17de1794787acdd55a5bf8f0cc130539144625e4540e115735432fc03cdcbd69` |
| 6 | `theorem` | [coe_basisSingleOne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraFinsuppVectorSpaceFinsuppVectorSpaceNamespaced.lean/declarations/coe-basissingleone.md) | 139 | `result-track:63c9e5ec38736e922ad6a53e45ef37c0b077e84425ee0d215a3c760eefef9f22` |
| 7 | `theorem` | [Linear Algebra Finsupp Vector Space Finsupp Vector Space Namespaced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraFinsuppVectorSpaceFinsuppVectorSpaceNamespaced.lean/declarations/sum-single-ite.md) | 160 | `result-track:3cb44959c7571df8039afebc467ef75c3cd41f43c5855bd94217b6ae811f30fd` |
| 8 | `theorem` | [Linear Algebra Finsupp Vector Space Finsupp Vector Space Namespaced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraFinsuppVectorSpaceFinsuppVectorSpaceNamespaced.lean/declarations/sum-univ-ite.md) | 177 | `result-track:95d819654dcce9bd7a74f698c69b523afb79c721317bb5d46fec66170af04ccb` |
| 9 | `theorem` | [equivFun_symm_stdBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraFinsuppVectorSpaceFinsuppVectorSpaceNamespaced.lean/declarations/equivfun-symm-stdbasis.md) | 181 | `result-track:c8debda030d3fa402cca80bb4e2ae42bdb5cfb6fb154e70a0ffc8112acdba542` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5dcbbe90d4e0039203a28bdfb4ef5549eca6ec3638231d29afc67c9f6d20c20a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/FinsuppVectorSpace/Variantf4061b56796d3d0738a026a764fc7ca766bf6b339ec170f5b54a8acba53c01c2.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/FinsuppVectorSpace/Variantf4061b56796d3d0738a026a764fc7ca766bf6b339ec170f5b54a8acba53c01c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
