# Verification target: GRWTSK.Algebra.GroupTheory.Archimedean.Variantea2cf9da71f1ad373e6aeb459bcbc18eb1ccaae194e48530d9c9dcc04eb71a8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e90161bfe8c0c5c8bcd0483cda2fc0529fe7d09",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Archimedean/Variantea2cf9da71f1ad373e6aeb459bcbc18eb1ccaae194e48530d9c9dcc04eb71a8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/GroupTheory/Archimedean/Variantea2cf9da71f1ad373e6aeb459bcbc18eb1ccaae194e48530d9c9dcc04eb71a8b.lean/index.md) · [Full source](../../../../../../Algebra/GroupTheory/Archimedean/Variantea2cf9da71f1ad373e6aeb459bcbc18eb1ccaae194e48530d9c9dcc04eb71a8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e90161bfe8c0c5c8bcd0483cda2fc0529fe7d09`.

Source path: `GRWTSK/Algebra/GroupTheory/Archimedean/Variantea2cf9da71f1ad373e6aeb459bcbc18eb1ccaae194e48530d9c9dcc04eb71a8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Archimedean/Variantea2cf9da71f1ad373e6aeb459bcbc18eb1ccaae194e48530d9c9dcc04eb71a8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Subgroup.cyclic_of_min](../../../../../../Algebra/GroupTheory/Archimedean/Variantea2cf9da71f1ad373e6aeb459bcbc18eb1ccaae194e48530d9c9dcc04eb71a8b.lean/declarations/subgroup-cyclic-of-min--287dcb1976cf0dfea4b67b0e.md) | 44 | `result-track:287dcb1976cf0dfea4b67b0e251646df6df9192591a020478c4c60d5e4cd351e` |
| 2 | `theorem` | [Subgroup.exists_isLeast_one_lt](../../../../../../Algebra/GroupTheory/Archimedean/Variantea2cf9da71f1ad373e6aeb459bcbc18eb1ccaae194e48530d9c9dcc04eb71a8b.lean/declarations/subgroup-exists-isleast-one-lt--bea39af1b78f22897bcbd79a.md) | 66 | `result-track:bea39af1b78f22897bcbd79a4ef5603cd320f93af3811fa5fabf25a26cc4b2ac` |
| 3 | `theorem` | [Subgroup.cyclic_of_isolated_one](../../../../../../Algebra/GroupTheory/Archimedean/Variantea2cf9da71f1ad373e6aeb459bcbc18eb1ccaae194e48530d9c9dcc04eb71a8b.lean/declarations/subgroup-cyclic-of-isolated-one--bccc3800c35423dd5b43aa52.md) | 100 | `result-track:bccc3800c35423dd5b43aa52517f2dbe460515ecfbb1443a277e7349572522cd` |
| 4 | `theorem` | [Int.subgroup_cyclic](../../../../../../Algebra/GroupTheory/Archimedean/Variantea2cf9da71f1ad373e6aeb459bcbc18eb1ccaae194e48530d9c9dcc04eb71a8b.lean/declarations/int-subgroup-cyclic--35a9bc52cb20ccdebcf7a1ab.md) | 107 | `result-track:35a9bc52cb20ccdebcf7a1ab87893561a433fd006d7e1afa66f621815e284038` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=68584e74d0280a10f7fd18e2a763ca8d05992bbd2fd00dd0d712978f4a849e83 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Archimedean/Variantea2cf9da71f1ad373e6aeb459bcbc18eb1ccaae194e48530d9c9dcc04eb71a8b.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Archimedean/Variantea2cf9da71f1ad373e6aeb459bcbc18eb1ccaae194e48530d9c9dcc04eb71a8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
