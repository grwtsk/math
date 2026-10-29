# Verification target: Sylvester Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7ecf0e44a0da217c6168ba13eb381cd20b74dba",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Sylvester/Variant2aa520bf586d06265e74b3e86967cf36f7e68e87457c1777fdb58da3d324c510.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SylvesterEdition1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SylvesterEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7ecf0e44a0da217c6168ba13eb381cd20b74dba`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Sylvester/Variant2aa520bf586d06265e74b3e86967cf36f7e68e87457c1777fdb58da3d324c510.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Sylvester/Variant2aa520bf586d06265e74b3e86967cf36f7e68e87457c1777fdb58da3d324c510.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.LinAlg.HermitianPosPart` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hermForm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SylvesterEdition1.lean/declarations/hermform.md) | 43 | `declaration-track:d857ebf396519b971e3ecc2df4f0b5ee4c11ec349c8c2e06bf70867a47c68bd3` |
| 2 | `def` | [PosDefOn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SylvesterEdition1.lean/declarations/posdefon.md) | 47 | `declaration-track:0ad749512c35c78087d6e8ecd2005c71f32dfd4192a03b67d293d615daecc9a6` |
| 3 | `lemma` | [hermForm_conj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SylvesterEdition1.lean/declarations/hermform-conj.md) | 51 | `result-track:f9a6af67d97b0b90b5971908ae23feb9c03a5c55d1b372420ebd6f9ed9d0d08f` |
| 4 | `lemma` | [hermForm_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SylvesterEdition1.lean/declarations/hermform-add.md) | 60 | `result-track:6a68dc877b8191f4f372bae68a1bcfb7cd243454e555ff7efc6e73f804187a19` |
| 5 | `lemma` | [hermForm_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SylvesterEdition1.lean/declarations/hermform-sub.md) | 66 | `result-track:b8d72bf6d75ff685d61dff1ff65a87d3f932b112921ebc1f7dfc105659fb9cc8` |
| 6 | `lemma` | [hermForm_nonneg_of_posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SylvesterEdition1.lean/declarations/hermform-nonneg-of-possemidef.md) | 73 | `result-track:a73f66352beff8d08883aef43b9ea3994636892e22a3f288d04f73af43d4062c` |
| 7 | `theorem` | [finrank_le_posIndex_of_posDefOn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SylvesterEdition1.lean/declarations/finrank-le-posindex-of-posdefon.md) | 82 | `result-track:050d1bd06eced97f85c364b2937777271ded462e15e804f3b695e42855f30860` |
| 8 | `theorem` | [posDefOn_range_hermPosPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SylvesterEdition1.lean/declarations/posdefon-range-hermpospart.md) | 123 | `result-track:662dec01fc65a3753fd7e022966a3b42ccad9db1577d601db67923e2caea509f` |
| 9 | `lemma` | [hermForm_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SylvesterEdition1.lean/declarations/hermform-one.md) | 181 | `result-track:fbe879f047bafeeb7eaa90ae53ef1510426051ae6fe098329a63eca4b9591e9c` |
| 10 | `lemma` | [sum_normSq_unitary_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SylvesterEdition1.lean/declarations/sum-normsq-unitary-mulvec.md) | 188 | `result-track:bd775372f4ddff9cf720dc22ca1c62bdbde608213b6a2e6b937ae4514fb93234` |
| 11 | `lemma` | [hermForm_le_of_eigenvalues_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SylvesterEdition1.lean/declarations/hermform-le-of-eigenvalues-le.md) | 200 | `result-track:9da9dfbc76ceb39420b9d049372f36bbc0a1221e2e38fa3752c26aa741512a75` |
| 12 | `theorem` | [hermForm_gt_on_range_truncPos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SylvesterEdition1.lean/declarations/hermform-gt-on-range-truncpos.md) | 215 | `result-track:9bf8e34a177a7e7c9822d07f87b564a5b12523580c58ea1ffcc844c9bcafac69` |
| 13 | `lemma` | [finrank_range_truncPos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SylvesterEdition1.lean/declarations/finrank-range-truncpos.md) | 289 | `result-track:e08b9b73a6bf16b239826a3fa6a9245b0b882067607dd9d8f680c374bceba5dd` |
| 14 | `lemma` | [finrank_range_hermPosPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SylvesterEdition1.lean/declarations/finrank-range-hermpospart.md) | 299 | `result-track:3734e248494ee6015712e5b5f2d1df41dbf6989a254ba96cdfc048d5bf21390d` |
| 15 | `theorem` | [posIndex_eq_max_finrank_posDefOn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SylvesterEdition1.lean/declarations/posindex-eq-max-finrank-posdefon.md) | 304 | `result-track:ce5b943beb163cdfb99e08a0a3e63b4b8f4a069bd92ee4980f2931d87af73020` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e05cf9d0bd292e022511965a45d2a71b20ada166843ab656e90e41f9699c7231 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Sylvester/Variant2aa520bf586d06265e74b3e86967cf36f7e68e87457c1777fdb58da3d324c510.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Sylvester/Variant2aa520bf586d06265e74b3e86967cf36f7e68e87457c1777fdb58da3d324c510.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
