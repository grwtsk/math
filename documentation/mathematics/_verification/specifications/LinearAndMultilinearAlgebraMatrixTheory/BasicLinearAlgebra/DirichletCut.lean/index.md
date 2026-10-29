# Verification target: GRWTSK.Spectral.DirichletCut

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34190c193433b7b9fa7cd8c46beade45352fcd18",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Spectral/DirichletCut.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirichletCut.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirichletCut.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34190c193433b7b9fa7cd8c46beade45352fcd18`.

Source path: `GRWTSK/Spectral/DirichletCut.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Spectral/DirichletCut.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Spectral.SturmianFiniteVolume`](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SturmianFiniteVolume.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [joiningEdge](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirichletCut.lean/declarations/joiningedge.md) | 15 | `declaration-track:dabdecd3f53d4ade6fcf0921d1c3a9f3da4c7b2de80af0c5ed2301857d13c2d1` |
| 2 | `def` | [boundaryFunctional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirichletCut.lean/declarations/boundaryfunctional.md) | 19 | `declaration-track:d64666fb078d332799359f4fff251a9a8abae03cbdd7d5fd96aac3228266324f` |
| 3 | `def` | [boundaryCoordinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirichletCut.lean/declarations/boundarycoordinates.md) | 35 | `declaration-track:300832fb3f69522c617d8bce16265dfd201e2ddab36d07b4b82847255c07ca99` |
| 4 | `def` | [boundarySynthesis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirichletCut.lean/declarations/boundarysynthesis.md) | 38 | `declaration-track:58afa9a184bbc61c0f8092c6ddf4f99c164fb6c08e5fafc3427ed7422728d916` |
| 5 | `theorem` | [joiningEdge_isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirichletCut.lean/declarations/joiningedge-ishermitian.md) | 53 | `result-track:19cf4ccf76264e7fea4bb034f446f338094e16c366f2572a0d435c938a3b0303` |
| 6 | `theorem` | [joiningEdge_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirichletCut.lean/declarations/joiningedge-mulvec.md) | 57 | `result-track:8e9b0cb9de97715dfbb1df8fcb99ac576c5b6766990b0dac33514a5fd3688b0d` |
| 7 | `theorem` | [joiningEdge_factor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirichletCut.lean/declarations/joiningedge-factor.md) | 65 | `result-track:ca84b5d9d9e463d598e5feab0a2f5296509f141cc21e876099f209540b8465ca` |
| 8 | `theorem` | [joiningEdge_rank_le_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirichletCut.lean/declarations/joiningedge-rank-le-two.md) | 72 | `result-track:5de12a73a3a39c12d3184919909dda5fb3e432fd058c565e903b8d242dbcd263` |
| 9 | `def` | [cutHamiltonian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirichletCut.lean/declarations/cuthamiltonian.md) | 80 | `declaration-track:328e7a19f2e0142245a9586f6f60c40a6dd10d70b57af8fc3e94dac4de00c305` |
| 10 | `theorem` | [cutHamiltonian_isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirichletCut.lean/declarations/cuthamiltonian-ishermitian.md) | 83 | `result-track:1560879d4dc09e19b927ba62d0a7ea8b0ce43cb8dea5e54c6d0b88c8a8d51317` |
| 11 | `def` | [cutCount](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirichletCut.lean/declarations/cutcount.md) | 87 | `declaration-track:29452b568e08565552821c572f76d1a88cd246f859f391e0d9983b9d075516c3` |
| 12 | `theorem` | [cut_count_error](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirichletCut.lean/declarations/cut-count-error.md) | 90 | `result-track:c10f29843deb320917f723098a49a3f02982f20c270c1001c6940c3c8da90165` |
| 13 | `theorem` | [cutHamiltonian_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirichletCut.lean/declarations/cuthamiltonian-reindex.md) | 108 | `result-track:c18e9339ec24110b1cab229835ba080ed429e4948c2f939a4001b9519693a7e1` |
| 14 | `theorem` | [cut_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirichletCut.lean/declarations/cut-charpoly.md) | 157 | `result-track:4cf72d4277fe8e20d02082f2412c1590a277d7d8977bb66413ef2c97bee0d58c` |
| 15 | `theorem` | [cutCount_eq_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirichletCut.lean/declarations/cutcount-eq-sum.md) | 165 | `result-track:b015752465ea4706dddc92f2303c8ade48ed466d55d86c98ff492e7eebfaf586` |
| 16 | `theorem` | [adjacent_count_error](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirichletCut.lean/declarations/adjacent-count-error.md) | 176 | `result-track:a551662ea66d5428ef41dca1da88bc1cb0982e6f5d8ba8ffccc90201de96d282` |
| 17 | `theorem` | [adjacent_normalized_count_error](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirichletCut.lean/declarations/adjacent-normalized-count-error.md) | 185 | `result-track:ddc5fa0c9608856c732c81b2ede3ce1b942d84c2b936d8102394a82bf8e5f292` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ceba66cc145dd5a7956532dbcd7581d7f40c236ee4d3b2e2a9b80e52228ebe5f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Spectral/DirichletCut.lean","GRWTSK/_verification/specifications/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence8498a42b8c0488b69906dcd2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
