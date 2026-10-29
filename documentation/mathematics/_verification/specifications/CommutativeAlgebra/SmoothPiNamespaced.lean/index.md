# Verification target: Smooth Pi Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c754da3ab5716c420f4d60e426174c76af9816a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pi/Variantbc25635a865c53d1a304b9825376f386366eb816595eb7ad90b7e5605092a2d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/SmoothPiNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/SmoothPiNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c754da3ab5716c420f4d60e426174c76af9816a`.

Source path: `GRWTSK/Algebra/Pi/Variantbc25635a865c53d1a304b9825376f386366eb816595eb7ad90b7e5605092a2d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pi/Variantbc25635a865c53d1a304b9825376f386366eb816595eb7ad90b7e5605092a2d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Idempotents` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Smooth.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [of_pi](../../../../CommutativeAlgebra/SmoothPiNamespaced.lean/declarations/of-pi.md) | 35 | `result-track:54e0bb4c7a48b8ac065902681a5d67c75887d84d27af2afcdd99299052758094` |
| 2 | `theorem` | [pi_iff](../../../../CommutativeAlgebra/SmoothPiNamespaced.lean/declarations/pi-iff.md) | 55 | `result-track:4d9f6756e0873db9c15b29bbcda8a0daec753c35712c5f01f0a2208fea6e5db4` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/SmoothPiNamespaced.lean/declarations/instance.md) | 129 | `declaration-track:588b95ce3ccc6482d2177343c912532a52d32a02ae8bc2dbd747bf3ec0fa8128` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f7aeefbb766265e119e816b38c0e94a7a413d5235934aa1922f84a676a075a66 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Pi/Variantbc25635a865c53d1a304b9825376f386366eb816595eb7ad90b7e5605092a2d0.lean","GRWTSK/_verification/specifications/Algebra/Pi/Variantbc25635a865c53d1a304b9825376f386366eb816595eb7ad90b7e5605092a2d0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
