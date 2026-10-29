# Verification target: Ring Theory Tensor Product Pi

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1322c04464c7aa6510b22306589427a089480072",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant7e543d8411ffc3867dedde54e554da6e7024a5537db09ebfe2b3b96a2aea6ea2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryTensorProductPi.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryTensorProductPi.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1322c04464c7aa6510b22306589427a089480072`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pi/Variant7e543d8411ffc3867dedde54e554da6e7024a5537db09ebfe2b3b96a2aea6ea2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pi/Variant7e543d8411ffc3867dedde54e554da6e7024a5537db09ebfe2b3b96a2aea6ea2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [piRightHom_one](../../../../CommutativeAlgebra/RingTheoryTensorProductPi.lean/declarations/pirighthom-one.md) | 27 | `result-track:b2a8a9cafb2cb743d7e0676e3b3361fb1154d0b7ae47fb6797a06aa561b9acb6` |
| 2 | `lemma` | [piRightHom_mul](../../../../CommutativeAlgebra/RingTheoryTensorProductPi.lean/declarations/pirighthom-mul.md) | 31 | `result-track:d8c76f863a482f4193aebeae1c921306b2996a92dc607dc46a30e8611240d8cc` |
| 3 | `def` | [piRightHom](../../../../CommutativeAlgebra/RingTheoryTensorProductPi.lean/declarations/pirighthom.md) | 44 | `declaration-track:def1060d8f02ac8712bddf1704105e85fffab7d6f37c8a7b0d19f9ecebb77b42` |
| 4 | `def` | [Algebra.TensorProduct.piRight](../../../../CommutativeAlgebra/RingTheoryTensorProductPi.lean/declarations/algebra-tensorproduct-piright.md) | 50 | `declaration-track:be00cde9dcf77eee2afa3b15db7d34bac93151983605d4a3f755c35e6bc65b72` |
| 5 | `lemma` | [Algebra.TensorProduct.piRight_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductPi.lean/declarations/algebra-tensorproduct-piright-tmul.md) | 55 | `result-track:4272742ed61b569ac234050fb8bb0ce78b7110094617198e11fe8b985c31b91d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ea7e8cc2a4718b80e3a8192001ba4740352f4873c16a60a162d924e7dcf2109 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Pi/Variant7e543d8411ffc3867dedde54e554da6e7024a5537db09ebfe2b3b96a2aea6ea2.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Pi/Variant7e543d8411ffc3867dedde54e554da6e7024a5537db09ebfe2b3b96a2aea6ea2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
