# Verification target: Quasicategory Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2064bbaca0b5d3ee2fa9916594c98a4a516d39fd",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7040d0d8a6361204c3bea5de78fb928b3601708ac3bec689d2b9b51e23b423ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/QuasicategoryBasic.lean/index.md) · [Full source](../../../../AlgebraicTopology/QuasicategoryBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2064bbaca0b5d3ee2fa9916594c98a4a516d39fd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7040d0d8a6361204c3bea5de78fb928b3601708ac3bec689d2b9b51e23b423ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7040d0d8a6361204c3bea5de78fb928b3601708ac3bec689d2b9b51e23b423ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialSet.KanComplex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Quasicategory](../../../../AlgebraicTopology/QuasicategoryBasic.lean/declarations/quasicategory.md) | 36 | `declaration-track:680646a708453086daeb8cd12d57d9975cf94b8d574c6c6bac74944456a28bd2` |
| 2 | `lemma` | [Quasicategory.hornFilling](../../../../AlgebraicTopology/QuasicategoryBasic.lean/declarations/quasicategory-hornfilling.md) | 41 | `result-track:0cd2a52fb36cb50929217e19317aa75a3243d4b5ab2945c57132657f059df111` |
| 3 | `instance` | [(anonymous)](../../../../AlgebraicTopology/QuasicategoryBasic.lean/declarations/instance.md) | 55 | `declaration-track:e9197fb8114b757dc7f635857b2a76e56417b2b832d44327b3b9adbed62865b5` |
| 4 | `lemma` | [quasicategory_of_filler](../../../../AlgebraicTopology/QuasicategoryBasic.lean/declarations/quasicategory-of-filler.md) | 58 | `result-track:b335b849778c9e653ae1534092efda1226f6563388f25398ee0d616aa6e2722f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d1266ad03e8d77089bd02e2c164169b395395f6c4edb4fc916911dce4f416d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7040d0d8a6361204c3bea5de78fb928b3601708ac3bec689d2b9b51e23b423ab.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7040d0d8a6361204c3bea5de78fb928b3601708ac3bec689d2b9b51e23b423ab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
