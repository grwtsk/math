# Verification target: To Matrix Charpoly Prod Map

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "712406dae7adcf7fb87066e6487cd79b710f6063",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ToMatrix/Variant46ef0c79878ba50bf4d0110380361393ed3459f118ca07d0ca324ad3ef5fdcd1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToMatrixCharpolyProdMap.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToMatrixCharpolyProdMap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `712406dae7adcf7fb87066e6487cd79b710f6063`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ToMatrix/Variant46ef0c79878ba50bf4d0110380361393ed3459f118ca07d0ca324ad3ef5fdcd1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ToMatrix/Variant46ef0c79878ba50bf4d0110380361393ed3459f118ca07d0ca324ad3ef5fdcd1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Charpoly.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Basis` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [charpoly_toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToMatrixCharpolyProdMap.lean/declarations/charpoly-tomatrix.md) | 47 | `result-track:cae0bf8c58bfe1d60a3ee4f9be9925b72eb76343d454df0d82fbb8174e57b461` |
| 2 | `lemma` | [charpoly_prodMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToMatrixCharpolyProdMap.lean/declarations/charpoly-prodmap.md) | 89 | `result-track:5e56c51d17e45a4e3b29f8f79090e2e2887b26e38a387e61e1a90b8086a18c7b` |
| 3 | `lemma` | [LinearEquiv.charpoly_conj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToMatrixCharpolyProdMap.lean/declarations/linearequiv-charpoly-conj.md) | 102 | `result-track:62be868ccfb2bd255cea18665f38e944ff16bc8fdac101964460bbd2a0b48443` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5167bcb73250102d4339286b8e0d3fd1a7fb7cd754b53ae5a6040da21c5eb266 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ToMatrix/Variant46ef0c79878ba50bf4d0110380361393ed3459f118ca07d0ca324ad3ef5fdcd1.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ToMatrix/Variant46ef0c79878ba50bf4d0110380361393ed3459f118ca07d0ca324ad3ef5fdcd1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
