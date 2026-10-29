# Verification target: Clifford Algebra Star

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5985054502116d861f472e0913980aba8a748dd",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Star/Variant4f3a431cbd8c61d0d2de09dc17b6fcfa29aec94b062c12644c6e897f01073a5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraStar.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraStar.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5985054502116d861f472e0913980aba8a748dd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Star/Variant4f3a431cbd8c61d0d2de09dc17b6fcfa29aec94b062c12644c6e897f01073a5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Star/Variant4f3a431cbd8c61d0d2de09dc17b6fcfa29aec94b062c12644c6e897f01073a5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Conjugation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instStarRing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraStar.lean/declarations/inststarring.md) | 32 | `declaration-track:0868dfb90fb192e68b3a48f2d65c26483160bb9e58b7f9d9f1775b38915f8853` |
| 2 | `theorem` | [star_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraStar.lean/declarations/star-def-source-edition-2.md) | 39 | `result-track:cf4683df9561377757ca403f6fde87e2b166d23e3745707b734fcdeb1e6f709e` |
| 3 | `theorem` | [star_def'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraStar.lean/declarations/star-def.md) | 42 | `result-track:8ca721c37e1204f25660f1fbe162e3f418f515bd3570a8ffcead8ada626c2f1a` |
| 4 | `theorem` | [star_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraStar.lean/declarations/star.md) | 46 | `result-track:21cdc203cdae46c1651a40cbd5590234053ab214643e378aaf8671d8dab3a71b` |
| 5 | `theorem` | [star_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraStar.lean/declarations/star-smul.md) | 52 | `result-track:1a8b74529623c051c2ae70407f1b96235b9bb84d295f753785dafed8178a4e27` |
| 6 | `theorem` | [star_algebraMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraStar.lean/declarations/star-algebramap.md) | 56 | `result-track:9ab0c1971fa0155a88bef18121ab6b9438ab466cb4afe0cddbf22715be16471b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ec2c5f69f20cd76fd5f09d549affe04e5ad40c8b6c9b09b60189c54e4dbf8fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Star/Variant4f3a431cbd8c61d0d2de09dc17b6fcfa29aec94b062c12644c6e897f01073a5b.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Star/Variant4f3a431cbd8c61d0d2de09dc17b6fcfa29aec94b062c12644c6e897f01073a5b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
