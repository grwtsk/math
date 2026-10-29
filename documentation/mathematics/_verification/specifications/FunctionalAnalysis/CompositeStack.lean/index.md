# Verification target: Composite Stack

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8acfffd913e7ec015a988dca1e50d03f65d6a9ec",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/CompositeStack/Variant810eda481e2bf198d17c82171e2668bfc72a88b04e7c08a24233eb44b0faa8fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/CompositeStack.lean/index.md) · [Full source](../../../../FunctionalAnalysis/CompositeStack.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8acfffd913e7ec015a988dca1e50d03f65d6a9ec`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/CompositeStack/Variant810eda481e2bf198d17c82171e2668bfc72a88b04e7c08a24233eb44b0faa8fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/CompositeStack/Variant810eda481e2bf198d17c82171e2668bfc72a88b04e7c08a24233eb44b0faa8fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Core.DualPivot` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Tensor` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Residual` — import line 3; external provider; requires a separately pinned dependency.
- `Folder.Cellular.HeatQuantizedTorsion` — import line 4; external provider; requires a separately pinned dependency.
- `Folder.Monodromy.EllipticShellBridge` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompositeStack](../../../../FunctionalAnalysis/CompositeStack.lean/declarations/compositestack.md) | 22 | `declaration-track:857be398e37516c1e15991fecc15af3c449a56bfa736548d51a829ba8f426d4e` |
| 2 | `def` | [CompositeStack.hasArithmeticPivot](../../../../FunctionalAnalysis/CompositeStack.lean/declarations/compositestack-hasarithmeticpivot.md) | 39 | `declaration-track:525f072a2d62c5043989955844550a7ed2424738556cf9004ce8b14054b3c25b` |
| 3 | `def` | [CompositeStack.hasSpectralPivot](../../../../FunctionalAnalysis/CompositeStack.lean/declarations/compositestack-hasspectralpivot.md) | 43 | `declaration-track:7d2ed14b27bd64567ae2957ff3714375eed1cf4c2d860ef4aef20f49967ad151` |
| 4 | `theorem` | [default_stack_pivots](../../../../FunctionalAnalysis/CompositeStack.lean/declarations/default-stack-pivots.md) | 47 | `result-track:ddf37d832309a720177067236fc13e3a76d6ec9db1b22992c99170655b224bd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=322e7ee3328227b72464e880f98785a3099fde3cc3895478841c43f5e14633fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/CompositeStack/Variant810eda481e2bf198d17c82171e2668bfc72a88b04e7c08a24233eb44b0faa8fc.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/CompositeStack/Variant810eda481e2bf198d17c82171e2668bfc72a88b04e7c08a24233eb44b0faa8fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
