# Verification target: Explicit Schur Matrix Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8aeab03b1fddb41dc33ccd7e8207dc53d0008ed0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant256f534f8b394e0b7b3264e6824a3f7b92bd9c47a6fb28711f7e375d7d04de78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExplicitSchurMatrixNamespacedEdition1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExplicitSchurMatrixNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8aeab03b1fddb41dc33ccd7e8207dc53d0008ed0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant256f534f8b394e0b7b3264e6824a3f7b92bd9c47a6fb28711f7e375d7d04de78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant256f534f8b394e0b7b3264e6824a3f7b92bd9c47a6fb28711f7e375d7d04de78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.MatrixBlockSchur` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [provenanceMatrix_isSymm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExplicitSchurMatrixNamespacedEdition1.lean/declarations/provenancematrix-issymm.md) | 40 | `result-track:dfbe0a2a9c1356faabcb965c322d295958749b611f7705993854307de0c702b9` |
| 2 | `theorem` | [inverseProvenanceMatrix_isSymm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExplicitSchurMatrixNamespacedEdition1.lean/declarations/inverseprovenancematrix-issymm.md) | 53 | `result-track:b745d1d045634a1a0ed8404dab79baabc39785f442bd58429e649f3c01bd4967` |
| 3 | `def` | [schurMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExplicitSchurMatrixNamespacedEdition1.lean/declarations/schurmatrix.md) | 83 | `declaration-track:e08edf62ce33f90c8c23529ee5d7760492e5752bd56bc190ce895c93b4e87cee` |
| 4 | `theorem` | [schurCorrection_pairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExplicitSchurMatrixNamespacedEdition1.lean/declarations/schurcorrection-pairing.md) | 89 | `result-track:9addacc742245f035f98b76acc077c51f32c9f5aef7f0635eaadc5e01684dbac` |
| 5 | `theorem` | [schurForm_eq_schurMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExplicitSchurMatrixNamespacedEdition1.lean/declarations/schurform-eq-schurmatrix.md) | 104 | `result-track:4dfbe2129d77dbb48c3d3d809416efa834cf50b9e5734334c001d625413a0167` |
| 6 | `theorem` | [schurMatrix_nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExplicitSchurMatrixNamespacedEdition1.lean/declarations/schurmatrix-nonnegative.md) | 113 | `result-track:7fac12ac4ba24ab8c6f8109907dee1e2547d369d7c60153ae2642ca5251d1021` |
| 7 | `theorem` | [autonomous_energy_eq_explained_add_schurMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExplicitSchurMatrixNamespacedEdition1.lean/declarations/autonomous-energy-eq-explained-add-schurmatrix.md) | 121 | `result-track:f150dba127805e9c42345a0a7431885753892442204531d92094d8a475925d1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a54fd4786b8158c434f391a487dd8ae350a1cd585e33cdac7de8122ea96ea341 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant256f534f8b394e0b7b3264e6824a3f7b92bd9c47a6fb28711f7e375d7d04de78.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant256f534f8b394e0b7b3264e6824a3f7b92bd9c47a6fb28711f7e375d7d04de78.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
