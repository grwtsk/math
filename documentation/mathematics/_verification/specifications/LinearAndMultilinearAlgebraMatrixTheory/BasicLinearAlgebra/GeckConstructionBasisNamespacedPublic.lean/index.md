# Verification target: Geck Construction Basis Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af5d91abc11e881f0d8e90a2190b7f4e71492dba",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variantc2ec7a98b49a4df47761a866c1f514e1e4f019de3e940362f8cf67343752ceea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeckConstructionBasisNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeckConstructionBasisNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af5d91abc11e881f0d8e90a2190b7f4e71492dba`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variantc2ec7a98b49a4df47761a866c1f514e1e4f019de3e940362f8cf67343752ceea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variantc2ec7a98b49a4df47761a866c1f514e1e4f019de3e940362f8cf67343752ceea.lean.json)

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
| 1 | `def` | [basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeckConstructionBasisNamespacedPublic.lean/declarations/basis.md) | 60 | `declaration-track:d54c2bb8f3cfa51607e2220e6f5b493ff9ac8b0944997c9b43ae41166c12fe8a` |
| 2 | `lemma` | [basis_A_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeckConstructionBasisNamespacedPublic.lean/declarations/basis-a-eq.md) | 104 | `result-track:90efa5aab6f366dcb38ae15acce95d6ba2cd33768f4bf7ba1d66792329c59790` |
| 3 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeckConstructionBasisNamespacedPublic.lean/declarations/instance.md) | 106 | `declaration-track:033d50394989f925d59ab7ae01095a3191ebe651d7a2591a657b5a82676b543c` |
| 4 | `def` | [equivRootSystem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeckConstructionBasisNamespacedPublic.lean/declarations/equivrootsystem.md) | 114 | `declaration-track:acaf638957d72d34b5ef4b1e0023b8a8f1c924043ee331554d368716651595f1` |
| 5 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeckConstructionBasisNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 118 | `declaration-track:f0db8d8bbeff0627f9835cace51000b2a12d32525a2245966705fd7eb50426f4` |
| 6 | `def` | [equivLieAlgebra](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeckConstructionBasisNamespacedPublic.lean/declarations/equivliealgebra.md) | 134 | `declaration-track:a8ff750545b0531068550e07968fd1de94e59105bb5b641e208dcf157954a2c4` |
| 7 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeckConstructionBasisNamespacedPublic.lean/declarations/example.md) | 142 | `declaration-track:ac7a600363f9fc5711506c3e4734891176c561f50c8eaa2667375cfbd9227292` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf0ef10015b257d7f2cdce2f8d5bd9333e11affada94162944e056acd1499673 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basis/Variantc2ec7a98b49a4df47761a866c1f514e1e4f019de3e940362f8cf67343752ceea.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basis/Variantc2ec7a98b49a4df47761a866c1f514e1e4f019de3e940362f8cf67343752ceea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
