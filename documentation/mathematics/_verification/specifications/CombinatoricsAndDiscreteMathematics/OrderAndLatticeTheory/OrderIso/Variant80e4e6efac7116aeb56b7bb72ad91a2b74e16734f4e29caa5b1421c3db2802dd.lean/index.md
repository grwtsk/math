# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIso.Variant80e4e6efac7116aeb56b7bb72ad91a2b74e16734f4e29caa5b1421c3db2802dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83de544edfa5d52f8e0ef1897996af7ddb8f4cb3",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant80e4e6efac7116aeb56b7bb72ad91a2b74e16734f4e29caa5b1421c3db2802dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant80e4e6efac7116aeb56b7bb72ad91a2b74e16734f4e29caa5b1421c3db2802dd.lean/index.md) · [Full source](../../../../../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant80e4e6efac7116aeb56b7bb72ad91a2b74e16734f4e29caa5b1421c3db2802dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83de544edfa5d52f8e0ef1897996af7ddb8f4cb3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant80e4e6efac7116aeb56b7bb72ad91a2b74e16734f4e29caa5b1421c3db2802dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant80e4e6efac7116aeb56b7bb72ad91a2b74e16734f4e29caa5b1421c3db2802dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Equiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulLeft₀](../../../../../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant80e4e6efac7116aeb56b7bb72ad91a2b74e16734f4e29caa5b1421c3db2802dd.lean/declarations/mulleft--9b3f50c5a3d92649898a0e82.md) | 24 | `declaration-track:9b3f50c5a3d92649898a0e822dce00f1d66dac8a64b9c99ad45fab04302b763c` |
| 2 | `lemma` | [mulLeft₀_symm](../../../../../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant80e4e6efac7116aeb56b7bb72ad91a2b74e16734f4e29caa5b1421c3db2802dd.lean/declarations/mulleft-symm--971e77c69d451132f123fe38.md) | 28 | `result-track:971e77c69d451132f123fe3846ccb7b8ef6443328973be00697e1bd26310f1c7` |
| 3 | `def` | [mulRight₀](../../../../../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant80e4e6efac7116aeb56b7bb72ad91a2b74e16734f4e29caa5b1421c3db2802dd.lean/declarations/mulright--2d1fbce388b308e3602c19c9.md) | 40 | `declaration-track:2d1fbce388b308e3602c19c99a798b4f2c99395cc30f250112cd6620a0e57275` |
| 4 | `lemma` | [mulRight₀_symm](../../../../../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant80e4e6efac7116aeb56b7bb72ad91a2b74e16734f4e29caa5b1421c3db2802dd.lean/declarations/mulright-symm--cfa75390b84741c2d1475cbb.md) | 44 | `result-track:cfa75390b84741c2d1475cbbfcbdd83dfc06d2024243024d6b46eb81a59126d7` |
| 5 | `def` | [divRight₀](../../../../../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant80e4e6efac7116aeb56b7bb72ad91a2b74e16734f4e29caa5b1421c3db2802dd.lean/declarations/divright--484d2efc6fcebc0c31d0fccc.md) | 49 | `declaration-track:484d2efc6fcebc0c31d0fcccf1542d8898ab9b492e77744949fb8413df037649` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1322a290dabdd2251c894cd9b865d179990890e8c21e3d1f0e5479fa3290c38 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant80e4e6efac7116aeb56b7bb72ad91a2b74e16734f4e29caa5b1421c3db2802dd.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant80e4e6efac7116aeb56b7bb72ad91a2b74e16734f4e29caa5b1421c3db2802dd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
