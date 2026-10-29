# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comp.Variant0b9a6317aee28291f1e558c3ba2172be806f936e58cb8353a004c2f47694919d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0726629da36eac89ef9db0659ed4bd22c21b81f3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b9a6317aee28291f1e558c3ba2172be806f936e58cb8353a004c2f47694919d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b9a6317aee28291f1e558c3ba2172be806f936e58cb8353a004c2f47694919d.lean/index.md) · [Full source](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b9a6317aee28291f1e558c3ba2172be806f936e58cb8353a004c2f47694919d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0726629da36eac89ef9db0659ed4bd22c21b81f3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b9a6317aee28291f1e558c3ba2172be806f936e58cb8353a004c2f47694919d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b9a6317aee28291f1e558c3ba2172be806f936e58cb8353a004c2f47694919d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Multivariate.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.QPF.Multivariate.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Comp](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b9a6317aee28291f1e558c3ba2172be806f936e58cb8353a004c2f47694919d.lean/declarations/comp--c0e16f6dae664e65d6f08cd7.md) | 35 | `declaration-track:c0e16f6dae664e65d6f08cd75bc118bc1788deb4c081d8f7e09309bd053a573a` |
| 2 | `instance` | [(anonymous)](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b9a6317aee28291f1e558c3ba2172be806f936e58cb8353a004c2f47694919d.lean/declarations/instance--d3747c88b2790b9822040fb0.md) | 44 | `declaration-track:d3747c88b2790b9822040fb0ed19926e93806475abd77253621eeb79e3f68ec1` |
| 3 | `def` | [mk](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b9a6317aee28291f1e558c3ba2172be806f936e58cb8353a004c2f47694919d.lean/declarations/mk--17a67c69ec365eba055be6cb.md) | 47 | `declaration-track:17a67c69ec365eba055be6cb744911321407ae482de37da941e92b23c7469e7d` |
| 4 | `def` | [get](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b9a6317aee28291f1e558c3ba2172be806f936e58cb8353a004c2f47694919d.lean/declarations/get--93c8fb53b518a408860e32ef.md) | 50 | `declaration-track:93c8fb53b518a408860e32efd0db8a0fe4572b811465aa7058c10226075005cd` |
| 5 | `theorem` | [mk_get](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b9a6317aee28291f1e558c3ba2172be806f936e58cb8353a004c2f47694919d.lean/declarations/mk-get--9d90824706459687e97a9525.md) | 53 | `result-track:9d90824706459687e97a9525c2216ecbe0a39b3f6cc440501517724f02c4601f` |
| 6 | `theorem` | [get_mk](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b9a6317aee28291f1e558c3ba2172be806f936e58cb8353a004c2f47694919d.lean/declarations/get-mk--8795f6f1ea57c2596d654a0c.md) | 56 | `result-track:8795f6f1ea57c2596d654a0c9f7458c73393d2d0dd854d0211553145b5304920` |
| 7 | `def` | [map'](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b9a6317aee28291f1e558c3ba2172be806f936e58cb8353a004c2f47694919d.lean/declarations/map--10f82ec8514c1581ef661199.md) | 62 | `declaration-track:10f82ec8514c1581ef6611999d373d5f86c4c9ddbf987e773eca792138e8657f` |
| 8 | `def` | [map](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b9a6317aee28291f1e558c3ba2172be806f936e58cb8353a004c2f47694919d.lean/declarations/map--bd9b6b8bb2ed6f1dcaa1bb96.md) | 65 | `declaration-track:bd9b6b8bb2ed6f1dcaa1bb96762c3ab4a3c3e642105c243ff5d09ff958644cf2` |
| 9 | `instance` | [(anonymous)](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b9a6317aee28291f1e558c3ba2172be806f936e58cb8353a004c2f47694919d.lean/declarations/instance--b278cf6c0dd5b5446c0209ae.md) | 68 | `declaration-track:b278cf6c0dd5b5446c0209ae65139642878c904d2fa4319e5a4899fcc2b638c2` |
| 10 | `theorem` | [map_mk](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b9a6317aee28291f1e558c3ba2172be806f936e58cb8353a004c2f47694919d.lean/declarations/map-mk--d8c1fe8dc7407b8dd0e6ca6e.md) | 70 | `result-track:d8c1fe8dc7407b8dd0e6ca6e60faaa8beff5e9343638903e06e82272a3f53b5f` |
| 11 | `theorem` | [get_map](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b9a6317aee28291f1e558c3ba2172be806f936e58cb8353a004c2f47694919d.lean/declarations/get-map--730356bb8a03a9365a6078dc.md) | 73 | `result-track:730356bb8a03a9365a6078dc7b10e74bd701895eb30d30d05eae54a4fba113c2` |
| 12 | `instance` | [(anonymous)](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b9a6317aee28291f1e558c3ba2172be806f936e58cb8353a004c2f47694919d.lean/declarations/instance--23cb22d1930645a9742e3bc6.md) | 78 | `declaration-track:23cb22d1930645a9742e3bc645b3c0d2d7ae984f424fd3918a193f58b343cea1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=082c32f740ba8c9aca0621f2dd93c2507e4f790a2b91fc7a16ab732531db7d50 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b9a6317aee28291f1e558c3ba2172be806f936e58cb8353a004c2f47694919d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b9a6317aee28291f1e558c3ba2172be806f936e58cb8353a004c2f47694919d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
