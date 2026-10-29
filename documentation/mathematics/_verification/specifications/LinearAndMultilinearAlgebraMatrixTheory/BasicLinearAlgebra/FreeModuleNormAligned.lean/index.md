# Verification target: Free Module Norm Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91cf700c8dd8a402ef7f1b371e5e62888a1e57d2",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Norm/Varianta2f4fb0bb901d581e746e410d4b3f7d8959eefc6ec992feb944a8cc6708cb3ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModuleNormAligned.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModuleNormAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91cf700c8dd8a402ef7f1b371e5e62888a1e57d2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Norm/Varianta2f4fb0bb901d581e746e410d4b3f7d8959eefc6ec992feb944a8cc6708cb3ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Norm/Varianta2f4fb0bb901d581e746e410d4b3f7d8959eefc6ec992feb944a8cc6708cb3ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.IdealQuotient` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [associated_norm_prod_smith](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModuleNormAligned.lean/declarations/associated-norm-prod-smith.md) | 30 | `result-track:d80ca891c7a7a818903aedf6aea8f7fb591c108f75d867d60ff31557518401dc` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModuleNormAligned.lean/declarations/instance.md) | 59 | `declaration-track:a8918c2c50e45c6e506cbdfc7ead56f37324722deeceb375caa76bb0dcda1e10` |
| 3 | `theorem` | [finrank_quotient_span_eq_natDegree_norm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModuleNormAligned.lean/declarations/finrank-quotient-span-eq-natdegree-norm.md) | 77 | `result-track:c8844c679fb190ed1deaffe7f3b89a72b21545f125436182323d4b3f58b0ef51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26ff750cbe42fdcf2ea9d1cdd13a2fb8026fd1042290d537b002ba2e4add1b16 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Norm/Varianta2f4fb0bb901d581e746e410d4b3f7d8959eefc6ec992feb944a8cc6708cb3ed.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Norm/Varianta2f4fb0bb901d581e746e410d4b3f7d8959eefc6ec992feb944a8cc6708cb3ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
