# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Groupoid.Variant0a79cc155d22b2e52e928026ca539584ee9903258edd78e2d44ad8115b1f49f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27be9c0173970e5a8e8e2e1a25107cbb02553938",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant0a79cc155d22b2e52e928026ca539584ee9903258edd78e2d44ad8115b1f49f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant0a79cc155d22b2e52e928026ca539584ee9903258edd78e2d44ad8115b1f49f6.lean/index.md) · [Full source](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant0a79cc155d22b2e52e928026ca539584ee9903258edd78e2d44ad8115b1f49f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27be9c0173970e5a8e8e2e1a25107cbb02553938`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant0a79cc155d22b2e52e928026ca539584ee9903258edd78e2d44ad8115b1f49f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant0a79cc155d22b2e52e928026ca539584ee9903258edd78e2d44ad8115b1f49f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Currying` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.FunctorCategory` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closedIhom](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant0a79cc155d22b2e52e928026ca539584ee9903258edd78e2d44ad8115b1f49f6.lean/declarations/closedihom--49ec06e679290f11797e132c.md) | 36 | `declaration-track:49ec06e679290f11797e132ce59bedc2b5a313d4823f177d2a08a4701347b5ce` |
| 2 | `def` | [closedUnit](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant0a79cc155d22b2e52e928026ca539584ee9903258edd78e2d44ad8115b1f49f6.lean/declarations/closedunit--45890ab2436b599d9a9c0924.md) | 42 | `declaration-track:45890ab2436b599d9a9c092416bceef49a489c33a4705360fb2faf049ffce959` |
| 3 | `def` | [closedCounit](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant0a79cc155d22b2e52e928026ca539584ee9903258edd78e2d44ad8115b1f49f6.lean/declarations/closedcounit--aead5cf0c87e232964e508e5.md) | 56 | `declaration-track:aead5cf0c87e232964e508e521b5fd8d27f2891718089aa92bdff43e2fc8141c` |
| 4 | `instance` | [closed](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant0a79cc155d22b2e52e928026ca539584ee9903258edd78e2d44ad8115b1f49f6.lean/declarations/closed--f6dbab67441fdb0770ece926.md) | 68 | `declaration-track:f6dbab67441fdb0770ece926500e3516cde8ca5fbd664a4d164d5f557a8db8a4` |
| 5 | `instance` | [monoidalClosed](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant0a79cc155d22b2e52e928026ca539584ee9903258edd78e2d44ad8115b1f49f6.lean/declarations/monoidalclosed--14deeb270b2e898a89468592.md) | 77 | `declaration-track:14deeb270b2e898a89468592cf17a7bddb41be5df9f18e1e14969c3342c855e6` |
| 6 | `theorem` | [ihom_map](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant0a79cc155d22b2e52e928026ca539584ee9903258edd78e2d44ad8115b1f49f6.lean/declarations/ihom-map--a59d6ef8e89c63f7db39ce24.md) | 79 | `result-track:a59d6ef8e89c63f7db39ce24332c9413c0b19c7ff66e7e5fb4cd3f57bf464cd5` |
| 7 | `theorem` | [ihom_ev_app](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant0a79cc155d22b2e52e928026ca539584ee9903258edd78e2d44ad8115b1f49f6.lean/declarations/ihom-ev-app--fcaddb0e74674cc004481794.md) | 82 | `result-track:fcaddb0e74674cc004481794f51fe8ffb0d19da9276a9ca40dd9a709225bd84c` |
| 8 | `theorem` | [ihom_coev_app](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant0a79cc155d22b2e52e928026ca539584ee9903258edd78e2d44ad8115b1f49f6.lean/declarations/ihom-coev-app--71f1e0daad91db8735369754.md) | 85 | `result-track:71f1e0daad91db8735369754cc34e482ee708b68dcd367488050f4ef534dfe9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48f831ce67a87f8cdd00150571ab7d7c867821b5d824c0a7eb3d905cad3bfd74 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant0a79cc155d22b2e52e928026ca539584ee9903258edd78e2d44ad8115b1f49f6.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant0a79cc155d22b2e52e928026ca539584ee9903258edd78e2d44ad8115b1f49f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
