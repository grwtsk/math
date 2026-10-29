# Verification target: Ring Aut Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2811ebadc2cd547fc8f097639ff2f99b12925d6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Aut/Variantd7316165b2b59d35c9198f8f79b31bf71a1b1c3638a8492a8773c4909e43807b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingAutSourceEdition1.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingAutSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2811ebadc2cd547fc8f097639ff2f99b12925d6`.

Source path: `GRWTSK/Algebra/Aut/Variantd7316165b2b59d35c9198f8f79b31bf71a1b1c3638a8492a8773c4909e43807b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Aut/Variantd7316165b2b59d35c9198f8f79b31bf71a1b1c3638a8492a8773c4909e43807b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupRingAction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Aut` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Equiv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RingAut](../../../../AssociativeRingsAndAlgebras/RingAutSourceEdition1.lean/declarations/ringaut.md) | 34 | `declaration-track:6f7dbef024be8eb624f14d9315aca9205ee104aeb91f44059ac9e8383147bd6c` |
| 2 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingAutSourceEdition1.lean/declarations/instance.md) | 48 | `declaration-track:3377c7a09633af309aa82a306eda754a7390bf3a98f94136eff1133b0e97e18a` |
| 3 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingAutSourceEdition1.lean/declarations/instance-source-edition-2.md) | 77 | `declaration-track:3df63cbda54b08f516e24becd09634f12d936e22780e392e786d5ceb8c7c85bf` |
| 4 | `def` | [toAddAut](../../../../AssociativeRingsAndAlgebras/RingAutSourceEdition1.lean/declarations/toaddaut.md) | 81 | `declaration-track:a845d76ba98b1f35bf4e775b61cf0d95d81d30ffce9a65b50c3bfef47ad3977d` |
| 5 | `def` | [toMulAut](../../../../AssociativeRingsAndAlgebras/RingAutSourceEdition1.lean/declarations/tomulaut.md) | 88 | `declaration-track:d35ec9c51668591866e11a82a79fae1739d7cc2f4223d1af265684133823515b` |
| 6 | `def` | [toPerm](../../../../AssociativeRingsAndAlgebras/RingAutSourceEdition1.lean/declarations/toperm.md) | 95 | `declaration-track:ee4c3443d716057b70eee4003b842f44a7e98fe270813cce92469cef9cb7363b` |
| 7 | `instance` | [applyMulSemiringAction](../../../../AssociativeRingsAndAlgebras/RingAutSourceEdition1.lean/declarations/applymulsemiringaction.md) | 108 | `declaration-track:7d0dcb91592f7524df8cdd3376b493600d8aebedbaacf194b0176f286dfaec51` |
| 8 | `theorem` | [smul_def](../../../../AssociativeRingsAndAlgebras/RingAutSourceEdition1.lean/declarations/smul-def.md) | 120 | `result-track:52e901fd2b19316e11dfc78c25a7895972a217b37d870875876fb155d4aa5793` |
| 9 | `instance` | [apply_faithfulSMul](../../../../AssociativeRingsAndAlgebras/RingAutSourceEdition1.lean/declarations/apply-faithfulsmul.md) | 124 | `declaration-track:fb42e3b7c8a7f86117e8e53d3acb1e6339bbeb133021c8dbd5ab8345386b6682` |
| 10 | `def` | [_root_.MulSemiringAction.toRingAut](../../../../AssociativeRingsAndAlgebras/RingAutSourceEdition1.lean/declarations/root-mulsemiringaction-toringaut.md) | 135 | `declaration-track:61e65ab7b61f8094ac46b64c26d7146b7ba397ffb87f0bf8c29865a6fd7180de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=436abbcda2596979f380ed105bd326a304b290f40dce2f34be9f9c142f5d5b15 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Aut/Variantd7316165b2b59d35c9198f8f79b31bf71a1b1c3638a8492a8773c4909e43807b.lean","GRWTSK/_verification/specifications/Algebra/Aut/Variantd7316165b2b59d35c9198f8f79b31bf71a1b1c3638a8492a8773c4909e43807b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
