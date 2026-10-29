# Verification target: Relations Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f17079d67583cd28e41ff91910667fe311e5932f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Relations/Variant6d900bad7d9bdc767df944feaf57ecd5da487ee032b9d4b88501843ca1e251f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RelationsNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RelationsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f17079d67583cd28e41ff91910667fe311e5932f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Relations/Variant6d900bad7d9bdc767df944feaf57ecd5da487ee032b9d4b88501843ca1e251f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Relations/Variant6d900bad7d9bdc767df944feaf57ecd5da487ee032b9d4b88501843ca1e251f1.lean.json)

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
| 1 | `lemma` | [lie_h_e](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RelationsNamespacedPublic.lean/declarations/lie-h-e.md) | 53 | `result-track:431f3f273553caba4af16a491ac0ee23b06574db9c16ddc75b9b505067638055` |
| 2 | `lemma` | [lie_h_f](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RelationsNamespacedPublic.lean/declarations/lie-h-f.md) | 80 | `result-track:a2a8f86f51707a7006b324df442380078703eafe7137f0dee27dd22dc7c6be6b` |
| 3 | `lemma` | [lie_e_f_same_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RelationsNamespacedPublic.lean/declarations/lie-e-f-same-aux.md) | 100 | `result-track:ccd48c95d9faa5c8b8d0054114debd697d3901312c40ec44f342107eb233e4f0` |
| 4 | `lemma` | [lie_e_f_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RelationsNamespacedPublic.lean/declarations/lie-e-f-same.md) | 148 | `result-track:de1e0cd36c07509ed85d5e86e248cd82808be4fb8fc41071ac26edd0fecba717` |
| 5 | `lemma` | [isSl2Triple](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RelationsNamespacedPublic.lean/declarations/issl2triple.md) | 197 | `result-track:087cbf46f5f3063355b4ced9c850b6ced85a9cfbc9ce72108b267c9f1b654949` |
| 6 | `lemma` | [lie_e_f_ne_aux₀](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RelationsNamespacedPublic.lean/declarations/lie-e-f-ne-aux-source-edition-3.md) | 213 | `result-track:ecae2d2e92b42188203483bc56772176e20eeef7ea752d9adedba208288dc5ae` |
| 7 | `lemma` | [lie_e_f_ne_aux₁](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RelationsNamespacedPublic.lean/declarations/lie-e-f-ne-aux.md) | 229 | `result-track:6a56ef280a150aea2723cc80ef6d516ac39a9388e259273409a18e5c8d1bf4d1` |
| 8 | `lemma` | [lie_e_f_ne_aux₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RelationsNamespacedPublic.lean/declarations/lie-e-f-ne-aux-source-edition-2.md) | 260 | `result-track:a0aa2decd4f0605791e92a9939004af5651863e490f467ed7aa1139fb3fc0d08` |
| 9 | `lemma` | [lie_e_f_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RelationsNamespacedPublic.lean/declarations/lie-e-f-ne.md) | 273 | `result-track:e01759ec59735aa98a7a392db18b1500eeec8fb691b9cb5966eff2551b16c05a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f0e1abc47d2c17afd628e504bf546b25726c4fe62f3ff3d10ef569fe9bf99f1a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Relations/Variant6d900bad7d9bdc767df944feaf57ecd5da487ee032b9d4b88501843ca1e251f1.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Relations/Variant6d900bad7d9bdc767df944feaf57ecd5da487ee032b9d4b88501843ca1e251f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
