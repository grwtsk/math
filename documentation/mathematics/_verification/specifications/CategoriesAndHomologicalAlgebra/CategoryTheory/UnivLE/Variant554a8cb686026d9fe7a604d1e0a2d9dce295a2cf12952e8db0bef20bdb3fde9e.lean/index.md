# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UnivLE.Variant554a8cb686026d9fe7a604d1e0a2d9dce295a2cf12952e8db0bef20bdb3fde9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5502b14a38da63e29f92aef74da48dbd42c8b628",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant554a8cb686026d9fe7a604d1e0a2d9dce295a2cf12952e8db0bef20bdb3fde9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant554a8cb686026d9fe7a604d1e0a2d9dce295a2cf12952e8db0bef20bdb3fde9e.lean/index.md) · [Full source](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant554a8cb686026d9fe7a604d1e0a2d9dce295a2cf12952e8db0bef20bdb3fde9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5502b14a38da63e29f92aef74da48dbd42c8b628`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant554a8cb686026d9fe7a604d1e0a2d9dce295a2cf12952e8db0bef20bdb3fde9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant554a8cb686026d9fe7a604d1e0a2d9dce295a2cf12952e8db0bef20bdb3fde9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.UnivLE` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EssentialImage` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Types` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [UnivLE.ofEssSurj.](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant554a8cb686026d9fe7a604d1e0a2d9dce295a2cf12952e8db0bef20bdb3fde9e.lean/declarations/univle-ofesssurj--2307bd654fba1fc4aa41dfaf.md) | 30 | `result-track:2307bd654fba1fc4aa41dfafdb2a23d9c55252a8e6dcfe6a681a24e55ce2ccb4` |
| 2 | `instance` | [(anonymous)](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant554a8cb686026d9fe7a604d1e0a2d9dce295a2cf12952e8db0bef20bdb3fde9e.lean/declarations/instance--71fa81475905b075253b3f2e.md) | 36 | `declaration-track:71fa81475905b075253b3f2e667f8132d5ae23180e42423196d4e41478223b20` |
| 3 | `theorem` | [UnivLE_iff_essSurj.](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant554a8cb686026d9fe7a604d1e0a2d9dce295a2cf12952e8db0bef20bdb3fde9e.lean/declarations/univle-iff-esssurj--6e998bf31f1458f878e8f942.md) | 40 | `result-track:6e998bf31f1458f878e8f94233ddfbd221745cf01309b288dd5f63d511402385` |
| 4 | `instance` | [(anonymous)](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant554a8cb686026d9fe7a604d1e0a2d9dce295a2cf12952e8db0bef20bdb3fde9e.lean/declarations/instance--6c341bd1ca7cacf2095726c6.md) | 44 | `declaration-track:6c341bd1ca7cacf2095726c69b64a6c394df6cc64c68bc5d936fe5af3a3fccb0` |
| 5 | `def` | [UnivLE.witness.](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant554a8cb686026d9fe7a604d1e0a2d9dce295a2cf12952e8db0bef20bdb3fde9e.lean/declarations/univle-witness--14c9bbf15964bc25888f3f3c.md) | 47 | `declaration-track:14c9bbf15964bc25888f3f3ce33f87d39cd38a5b226cb306a3645fa4c089388e` |
| 6 | `instance` | [(anonymous)](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant554a8cb686026d9fe7a604d1e0a2d9dce295a2cf12952e8db0bef20bdb3fde9e.lean/declarations/instance--e2e96e219b426324c85833ec.md) | 50 | `declaration-track:e2e96e219b426324c85833ec36c5ccac32f8906696211d1d0a6d53816f5dfa0b` |
| 7 | `instance` | [(anonymous)](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant554a8cb686026d9fe7a604d1e0a2d9dce295a2cf12952e8db0bef20bdb3fde9e.lean/declarations/instance--eff9ac92c183ce38e111bba0.md) | 53 | `declaration-track:eff9ac92c183ce38e111bba035126237e6818d5c601d9590e3cbe542e6faa4a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=39fcf49e2ae1d5029c8c9d6b2933c61d4b406c58007349e3c8fb0cf7ee62cb24 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant554a8cb686026d9fe7a604d1e0a2d9dce295a2cf12952e8db0bef20bdb3fde9e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant554a8cb686026d9fe7a604d1e0a2d9dce295a2cf12952e8db0bef20bdb3fde9e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
