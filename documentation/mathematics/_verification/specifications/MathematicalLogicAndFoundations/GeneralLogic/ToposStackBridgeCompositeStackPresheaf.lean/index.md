# Verification target: Topos Stack Bridge Composite Stack Presheaf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "176a4b9ec0cfea02fbedc434fd4ee8dfefa7323a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ToposStackBridge/Variant0917ec89c978165c05ff9817da594d302716d3c8672b1e3792c3c0df79bd64be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ToposStackBridgeCompositeStackPresheaf.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ToposStackBridgeCompositeStackPresheaf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `176a4b9ec0cfea02fbedc434fd4ee8dfefa7323a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ToposStackBridge/Variant0917ec89c978165c05ff9817da594d302716d3c8672b1e3792c3c0df79bd64be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ToposStackBridge/Variant0917ec89c978165c05ff9817da594d302716d3c8672b1e3792c3c0df79bd64be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Core.CompositeStack` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Stack.Composite` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.ResearchTopos.SheafGluing` — import line 3; external provider; requires a separately pinned dependency.
- `Folder.ResearchTopos.StableSphereSite` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompositeStackPresheaf](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ToposStackBridgeCompositeStackPresheaf.lean/declarations/compositestackpresheaf.md) | 21 | `declaration-track:29577efe915e0a0b551816d30bee18e45fd826c2222082a1a55fb4deda1cade1` |
| 2 | `structure` | [ToposStackBridge](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ToposStackBridgeCompositeStackPresheaf.lean/declarations/toposstackbridge.md) | 27 | `declaration-track:415aa2335d5b13cb83de5e231216b5a6fb571d7bc5d665a9a50daf1aa7ee2cea` |
| 3 | `theorem` | [topos_stack_global_section](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ToposStackBridgeCompositeStackPresheaf.lean/declarations/topos-stack-global-section.md) | 36 | `result-track:fea3644f5d10b95e4de0b8b2fb15d4fce10e847627b90b1f1592b3b674eedde4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d20c8cad52c8ffabed16569c2970f04f141d11fab1a53caf10daddf4363bc391 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ToposStackBridge/Variant0917ec89c978165c05ff9817da594d302716d3c8672b1e3792c3c0df79bd64be.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ToposStackBridge/Variant0917ec89c978165c05ff9817da594d302716d3c8672b1e3792c3c0df79bd64be.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
