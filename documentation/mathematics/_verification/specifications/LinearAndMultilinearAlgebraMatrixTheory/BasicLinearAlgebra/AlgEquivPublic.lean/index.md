# Verification target: Alg Equiv Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa47df6f0fe93a7df76bc8f85fbcbbee6761bd82",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AlgEquiv/Variant1995057d0512f53990c50e8d62ff3bac4416eb5dc8dcf49fe0f75c2e004f6cc2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlgEquivPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlgEquivPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa47df6f0fe93a7df76bc8f85fbcbbee6761bd82`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AlgEquiv/Variant1995057d0512f53990c50e8d62ff3bac4416eb5dc8dcf49fe0f75c2e004f6cc2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AlgEquiv/Variant1995057d0512f53990c50e8d62ff3bac4416eb5dc8dcf49fe0f75c2e004f6cc2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AlgEquiv.eq_linearEquivConjAlgEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlgEquivPublic.lean/declarations/algequiv-eq-linearequivconjalgequiv.md) | 33 | `result-track:7b5ceda8cee67e535389261bdbb4e169aee51a887df57a5bc137d80e7a110cec` |
| 2 | `theorem` | [LinearEquiv.conjAlgEquiv_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlgEquivPublic.lean/declarations/linearequiv-conjalgequiv-surjective.md) | 61 | `result-track:1b0e6e7471cb2fafe3864f4733a51193f259ad683afac2ecf15dc839311735e4` |
| 3 | `theorem` | [Module.End.mulSemiringActionToAlgEquiv_conjAct_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlgEquivPublic.lean/declarations/module-end-mulsemiringactiontoalgequiv-conjact-surjective.md) | 66 | `result-track:cf0ca21cfac34adc48f90f9f7ce7b583193e55cd3cdc9105fdbc2b2f1f8d8df9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9fcec6e6f39420f804614f7cddeaea6ddeb55ec4bd43eed049f337a2ed75f5f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AlgEquiv/Variant1995057d0512f53990c50e8d62ff3bac4416eb5dc8dcf49fe0f75c2e004f6cc2.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/AlgEquiv/Variant1995057d0512f53990c50e8d62ff3bac4416eb5dc8dcf49fe0f75c2e004f6cc2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
