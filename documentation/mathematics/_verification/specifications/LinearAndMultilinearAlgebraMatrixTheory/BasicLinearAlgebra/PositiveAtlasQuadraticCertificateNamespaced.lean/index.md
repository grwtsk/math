# Verification target: Positive Atlas Quadratic Certificate Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "851cef2501abe7f5d3b70ae4c938524188d7f67c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant8616527fd8b350e6f35a2005d46f540375b3c0f9de1d9c2c9075982097dbfb47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasQuadraticCertificateNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasQuadraticCertificateNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `851cef2501abe7f5d3b70ae4c938524188d7f67c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant8616527fd8b350e6f35a2005d46f540375b3c0f9de1d9c2c9075982097dbfb47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant8616527fd8b350e6f35a2005d46f540375b3c0f9de1d9c2c9075982097dbfb47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteQuadraticCertificate` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gramProblem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasQuadraticCertificateNamespaced.lean/declarations/gramproblem.md) | 24 | `declaration-track:c6643daef58f287268af52ab77c9ca5e8adbd42adddd831f3d98dc6da4d79a14` |
| 2 | `def` | [gramCertificate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasQuadraticCertificateNamespaced.lean/declarations/gramcertificate.md) | 29 | `declaration-track:416cc3babfbf252b9281767339b84b88fdc806bb4624cc21ad645557cca0b5eb` |
| 3 | `theorem` | [accepts_gram](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasQuadraticCertificateNamespaced.lean/declarations/accepts-gram.md) | 35 | `result-track:0cf160b4ae7a2c48a9892537d5c25c1aee5ed88bb1edc3db93f81f1ff8aa8b5c` |
| 4 | `def` | [negativeProblem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasQuadraticCertificateNamespaced.lean/declarations/negativeproblem.md) | 46 | `declaration-track:0394b6e95b8a1b1238993595b5ac9c85e7c8ecceff2df050f22edbe5d39b24a4` |
| 5 | `theorem` | [rejects_negative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasQuadraticCertificateNamespaced.lean/declarations/rejects-negative.md) | 52 | `result-track:9e047bcd59394c5be9065e3b8a7daaee99fab5fd795b7d66d77f7376c09a365a` |
| 6 | `def` | [constrainedProblem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasQuadraticCertificateNamespaced.lean/declarations/constrainedproblem.md) | 61 | `declaration-track:aa2fe7e98b50056fb55339c93d1771558b1e36280435b874eb2c7154f2c96798` |
| 7 | `def` | [constrainedCertificate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasQuadraticCertificateNamespaced.lean/declarations/constrainedcertificate.md) | 66 | `declaration-track:6ca68fa1741b44c6e2f7c4641a81139d3bf34aa35a6fefbeb2db9899fa7bf8ea` |
| 8 | `theorem` | [accepts_constrained](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasQuadraticCertificateNamespaced.lean/declarations/accepts-constrained.md) | 72 | `result-track:a4db4d236cc984a374f2799d27659d4cd0c8afbca19ccb675eec21eb7626f9d9` |
| 9 | `def` | [inequalityProblem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasQuadraticCertificateNamespaced.lean/declarations/inequalityproblem.md) | 83 | `declaration-track:be5d1208a92f8d50670bf301b9584e9e9449a635dc943aff678b88d532c843e8` |
| 10 | `def` | [inequalityCertificate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasQuadraticCertificateNamespaced.lean/declarations/inequalitycertificate.md) | 88 | `declaration-track:8066449d3af25e9d92cc0ef281cd05cd41f6f7bb8b52a571a7d7d25cf2be63c2` |
| 11 | `theorem` | [accepts_inequality](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasQuadraticCertificateNamespaced.lean/declarations/accepts-inequality.md) | 94 | `result-track:0c78bd342f18de2b2882f8438e396f92056f8705da14f46d6ea744b42d0b5bc5` |
| 12 | `def` | [negativeMultiplierProblem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasQuadraticCertificateNamespaced.lean/declarations/negativemultiplierproblem.md) | 105 | `declaration-track:b02cb709eca44709a5ddb9971ca6b7538174582199b20553ede5cb810a9d2829` |
| 13 | `def` | [negativeMultiplierCertificate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasQuadraticCertificateNamespaced.lean/declarations/negativemultipliercertificate.md) | 110 | `declaration-track:c6ce6284d6b8121cb80af27a68fa84c2a72c4b80f3232df141dfb842c95c7dc1` |
| 14 | `theorem` | [rejects_negative_multiplier](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasQuadraticCertificateNamespaced.lean/declarations/rejects-negative-multiplier.md) | 116 | `result-track:5c1f5f57889e51b6af67b265ce5b9b27f5d6625aa922f150e99a761b67afa01e` |
| 15 | `theorem` | [transports_inequality](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasQuadraticCertificateNamespaced.lean/declarations/transports-inequality.md) | 125 | `result-track:4c9c4379da1b56fde76f790bc9f0218c93132eeedf7c27a26a129a65a0be5051` |
| 16 | `theorem` | [constrained_target_negative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasQuadraticCertificateNamespaced.lean/declarations/constrained-target-negative.md) | 131 | `result-track:bc8d14fe7805ccfb96f0fd6148a75b7fb117f2e131c0b75e7d22acf4400b1492` |
| 17 | `theorem` | [hostile_vector_not_admissible](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasQuadraticCertificateNamespaced.lean/declarations/hostile-vector-not-admissible.md) | 135 | `result-track:0193c9534a0b3d51d01c1ef61bf81256072296768d6d1efcb5f0fd7eb8545394` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db8c3e4ac20147be0d87066c0d380840f63e07d0b057bc14670ccec65cbcb9c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant8616527fd8b350e6f35a2005d46f540375b3c0f9de1d9c2c9075982097dbfb47.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant8616527fd8b350e6f35a2005d46f540375b3c0f9de1d9c2c9075982097dbfb47.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
