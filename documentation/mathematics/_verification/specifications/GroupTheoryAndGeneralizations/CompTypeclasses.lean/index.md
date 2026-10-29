# Verification target: Comp Typeclasses

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13da32cc7b5a5662e3cc0659c013d3ee7e55f031",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CompTypeclasses/Variantd6ba683d6c150b59d1eb3383421f64320d63c1e3d3b6eac6a2258ae6eb4b39d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/CompTypeclasses.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/CompTypeclasses.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13da32cc7b5a5662e3cc0659c013d3ee7e55f031`.

Source path: `GRWTSK/Algebra/GroupTheory/CompTypeclasses/Variantd6ba683d6c150b59d1eb3383421f64320d63c1e3d3b6eac6a2258ae6eb4b39d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CompTypeclasses/Variantd6ba683d6c150b59d1eb3383421f64320d63c1e3d3b6eac6a2258ae6eb4b39d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.CompTypeclasses` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CompTriple](../../../../GroupTheoryAndGeneralizations/CompTypeclasses.lean/declarations/comptriple.md) | 42 | `declaration-track:8e927719d4a2522c9c8897d52477f5fa9d68d8018b1ccffe65d583a79d21f484` |
| 2 | `class` | [IsId](../../../../GroupTheoryAndGeneralizations/CompTypeclasses.lean/declarations/isid.md) | 54 | `declaration-track:be0b14644464d72674055f6024eafc3ad57ef6165334427d7e3ce08a15bb4ee5` |
| 3 | `instance` | [instIsId](../../../../GroupTheoryAndGeneralizations/CompTypeclasses.lean/declarations/instisid.md) | 57 | `declaration-track:60227def59077af995bc2e394085a354497f24e242b6e12242385d77949bd5fe` |
| 4 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CompTypeclasses.lean/declarations/instance.md) | 60 | `declaration-track:992e2d5f5d38cda81d6b6007f02a8e4e9463222aa56a150eb1eb718a2ffa481f` |
| 5 | `instance` | [instComp_id](../../../../GroupTheoryAndGeneralizations/CompTypeclasses.lean/declarations/instcomp-id.md) | 63 | `declaration-track:1e16c831fa7e5ec0a1eb2dd73e941324c50c245e00a003f4a92a3e0eefcea5d9` |
| 6 | `instance` | [instId_comp](../../../../GroupTheoryAndGeneralizations/CompTypeclasses.lean/declarations/instid-comp.md) | 68 | `declaration-track:e65476525bb922319dd586d58befc29bcd8421701de70dc44315b293e25c8376` |
| 7 | `lemma` | [comp_inv](../../../../GroupTheoryAndGeneralizations/CompTypeclasses.lean/declarations/comp-inv.md) | 73 | `result-track:080f598619e920e723915881f4fd8dcbd889d226c06693c603619af96ea31d76` |
| 8 | `instance` | [instRootCompTriple](../../../../GroupTheoryAndGeneralizations/CompTypeclasses.lean/declarations/instrootcomptriple.md) | 78 | `declaration-track:e6dae55cc69c7ec0ea330e017377ddf625ac8a314457d4a5039ed447f8e7c62e` |
| 9 | `theorem` | [comp](../../../../GroupTheoryAndGeneralizations/CompTypeclasses.lean/declarations/comp.md) | 85 | `result-track:5e34ded848161513a45d60911eb13af540c60c72d624a3014a516031c3ab149d` |
| 10 | `lemma` | [comp_apply](../../../../GroupTheoryAndGeneralizations/CompTypeclasses.lean/declarations/comp-apply.md) | 89 | `result-track:4a3e3022aea152f98132d10efc0af101e6b80e4b387661db7def31828261b77e` |
| 11 | `theorem` | [comp_assoc](../../../../GroupTheoryAndGeneralizations/CompTypeclasses.lean/declarations/comp-assoc.md) | 94 | `result-track:464b70277963879ab07a911ca3ea55adcbccfbcf9e97085d5dea2d26dc4d92a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d09031ca7884ba79e9c08c179c7c80d6c992b6cf59c498e06c10845ece1a6cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/CompTypeclasses/Variantd6ba683d6c150b59d1eb3383421f64320d63c1e3d3b6eac6a2258ae6eb4b39d7.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/CompTypeclasses/Variantd6ba683d6c150b59d1eb3383421f64320d63c1e3d3b6eac6a2258ae6eb4b39d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
