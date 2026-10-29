# Verification target: Topos Stack Bridge Namespaced Composite Stack Presheaf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd1a4e82c3242f141cdc42d6e526c01f36b1182b",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ToposStackBridge/Variantc676c92f12b81e5c5fe3f93ebfa169387deb33bdefe9f9a4035d3c62b55eb962.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ToposStackBridgeNamespacedCompositeStackPresheaf.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ToposStackBridgeNamespacedCompositeStackPresheaf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd1a4e82c3242f141cdc42d6e526c01f36b1182b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ToposStackBridge/Variantc676c92f12b81e5c5fe3f93ebfa169387deb33bdefe9f9a4035d3c62b55eb962.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ToposStackBridge/Variantc676c92f12b81e5c5fe3f93ebfa169387deb33bdefe9f9a4035d3c62b55eb962.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Core.CompositeStack` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Stack.Composite` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.ResearchTopos.SheafGluing` — import line 8; external provider; requires a separately pinned dependency.
- `Folder.ResearchTopos.StableSphereSite` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompositeStackPresheaf](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ToposStackBridgeNamespacedCompositeStackPresheaf.lean/declarations/compositestackpresheaf.md) | 29 | `declaration-track:3441dc634d7ad146d7024eb52d2c4531b3ed420a8094fe5d5a9d1b262f6d8dda` |
| 2 | `structure` | [ToposStackBridge](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ToposStackBridgeNamespacedCompositeStackPresheaf.lean/declarations/toposstackbridge.md) | 35 | `declaration-track:7edb59ab0e0c02525e9c7b24979ce6303cdd76102edb25b622668c23ed4264dd` |
| 3 | `theorem` | [topos_stack_global_section](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ToposStackBridgeNamespacedCompositeStackPresheaf.lean/declarations/topos-stack-global-section.md) | 44 | `result-track:2e11f6703c52c1826addc95080069caf46e7aec8b36d79cfe41121aff214fae2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8078560fd128c4b76213e8fed52e0f8a10a225ada75fa8ba1934e6bbcdd3bad4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ToposStackBridge/Variantc676c92f12b81e5c5fe3f93ebfa169387deb33bdefe9f9a4035d3c62b55eb962.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ToposStackBridge/Variantc676c92f12b81e5c5fe3f93ebfa169387deb33bdefe9f9a4035d3c62b55eb962.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
