# Verification target: Weak Dual

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c733b8ea57170067cc3a8a1bdf8834fbd5a65e81",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/WeakDual/Variant3aa58039251ec4402a21ab42cf620c27314813faaa69ae3298b88c42220748db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/WeakDual.lean/index.md) · [Full source](../../../../FunctionalAnalysis/WeakDual.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c733b8ea57170067cc3a8a1bdf8834fbd5a65e81`.

Source path: `GRWTSK/Algebra/LinearAlgebra/WeakDual/Variant3aa58039251ec4402a21ab42cf620c27314813faaa69ae3298b88c42220748db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/WeakDual/Variant3aa58039251ec4402a21ab42cf620c27314813faaa69ae3298b88c42220748db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.WithSeminorms` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.WeakBilin` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toSeminorm](../../../../FunctionalAnalysis/WeakDual.lean/declarations/toseminorm.md) | 53 | `declaration-track:2285104c8e66f004c6d9d901a8c36d3a26a6d579453c73f86260c208201fea52` |
| 2 | `theorem` | [coe_toSeminorm](../../../../FunctionalAnalysis/WeakDual.lean/declarations/coe-toseminorm.md) | 56 | `result-track:e432700496897002c69551230265e8e4a0ae486e8034a45e2f3494763ff049b5` |
| 3 | `theorem` | [toSeminorm_apply](../../../../FunctionalAnalysis/WeakDual.lean/declarations/toseminorm-apply.md) | 60 | `result-track:5b12ff54a262adc4d88e681f34d688c2e2eeb3bc8c9b92611b84652af987d912` |
| 4 | `theorem` | [toSeminorm_ball_zero](../../../../FunctionalAnalysis/WeakDual.lean/declarations/toseminorm-ball-zero.md) | 63 | `result-track:eec472723d1d53a122c769fb48343cd353f9d1f8fba0cb1cdfb087087b37c40f` |
| 5 | `theorem` | [toSeminorm_comp](../../../../FunctionalAnalysis/WeakDual.lean/declarations/toseminorm-comp.md) | 67 | `result-track:683fe5252adabca5ab042ad536b442def5cb66ce621b9047ea008c319b25c911` |
| 6 | `def` | [toSeminormFamily](../../../../FunctionalAnalysis/WeakDual.lean/declarations/toseminormfamily.md) | 73 | `declaration-track:c48a559e85fb02370b63fdeae8d418dbf9800815d09d437a1ed2fef0f430c017` |
| 7 | `theorem` | [toSeminormFamily_apply](../../../../FunctionalAnalysis/WeakDual.lean/declarations/toseminormfamily-apply.md) | 77 | `result-track:a4c9c849a42ccdf6010d2c4210c8ff7f9ef8b67285e4b8aacc34fb6abbeaf745` |
| 8 | `theorem` | [LinearMap.weakBilin_withSeminorms](../../../../FunctionalAnalysis/WeakDual.lean/declarations/linearmap-weakbilin-withseminorms.md) | 88 | `result-track:3e60ff7101a8c90f7dcaf3620db0c39daae0daff81f31b878b9fdbfd245d9601` |
| 9 | `theorem` | [LinearMap.hasBasis_weakBilin](../../../../FunctionalAnalysis/WeakDual.lean/declarations/linearmap-hasbasis-weakbilin.md) | 95 | `result-track:d956e3a62c97218c4cbbde5d089fe43bd40e2d4ba6a0ecd036e75c18cf2144d4` |
| 10 | `instance` | [WeakBilin.locallyConvexSpace](../../../../FunctionalAnalysis/WeakDual.lean/declarations/weakbilin-locallyconvexspace.md) | 106 | `declaration-track:7ed8a7b391c665e312c5709375fbb565d453d50483ec02398133702a25a57e8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0b532ce47becedd8408b43cd4aad168126f79b7884b45a56c51e23dd142a169 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/WeakDual/Variant3aa58039251ec4402a21ab42cf620c27314813faaa69ae3298b88c42220748db.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/WeakDual/Variant3aa58039251ec4402a21ab42cf620c27314813faaa69ae3298b88c42220748db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
