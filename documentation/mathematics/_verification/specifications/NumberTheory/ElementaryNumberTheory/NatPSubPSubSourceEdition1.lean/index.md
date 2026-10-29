# Verification target: Nat PSub PSub Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be3766bfadf780ab23f0f49b9668ed2936b72c24",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/PSub/Variant82bb7700b374573fb3a84f7c8a4518f39474530a095f47a961165a2314e0cfb9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/NatPSubPSubSourceEdition1.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/NatPSubPSubSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be3766bfadf780ab23f0f49b9668ed2936b72c24`.

Source path: `GRWTSK/Algebra/GroupTheory/PSub/Variant82bb7700b374573fb3a84f7c8a4518f39474530a095f47a961165a2314e0cfb9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/PSub/Variant82bb7700b374573fb3a84f7c8a4518f39474530a095f47a961165a2314e0cfb9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ppred](../../../../../NumberTheory/ElementaryNumberTheory/NatPSubPSubSourceEdition1.lean/declarations/ppred.md) | 28 | `declaration-track:1a971a45ece3728008a4adac1fcc9c977ae8c852466fc145da3bda6cbf1259b0` |
| 2 | `theorem` | [ppred_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatPSubPSubSourceEdition1.lean/declarations/ppred-zero.md) | 33 | `result-track:f6b117d880bde3ee7964d0378bc3e53da7c7850cbf0afb497d704074c355eb45` |
| 3 | `theorem` | [ppred_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatPSubPSubSourceEdition1.lean/declarations/ppred-succ.md) | 36 | `result-track:4f84e495d65af11005233bfe6ddbdf9a30298652c16635b9013282a2788a3b15` |
| 4 | `def` | [psub](../../../../../NumberTheory/ElementaryNumberTheory/NatPSubPSubSourceEdition1.lean/declarations/psub.md) | 40 | `declaration-track:6d0b44915f29b958ea736cbf8278f03a1093034778ab301f96c2519c5f411ef4` |
| 5 | `theorem` | [psub_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatPSubPSubSourceEdition1.lean/declarations/psub-zero.md) | 45 | `result-track:f678c41c2ffdcba20ea35b79c5cd4d190cf74ecfc628a6c44416d35cc95b1d53` |
| 6 | `theorem` | [psub_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatPSubPSubSourceEdition1.lean/declarations/psub-succ.md) | 48 | `result-track:9ccbf42957a8b3153ea1b2c2d5f79c0255303b5c7b97df7ec806355f1f59d85b` |
| 7 | `theorem` | [pred_eq_ppred](../../../../../NumberTheory/ElementaryNumberTheory/NatPSubPSubSourceEdition1.lean/declarations/pred-eq-ppred.md) | 50 | `result-track:da3801b896be714a264ff81547578522ac1f356d534c0d3174a7f065d4d1dd3f` |
| 8 | `theorem` | [sub_eq_psub](../../../../../NumberTheory/ElementaryNumberTheory/NatPSubPSubSourceEdition1.lean/declarations/sub-eq-psub.md) | 52 | `result-track:ec1f3d09d8dce5cc8831b62f44e4f3422e187add924e12166bb8e33552ddefb7` |
| 9 | `theorem` | [ppred_eq_some](../../../../../NumberTheory/ElementaryNumberTheory/NatPSubPSubSourceEdition1.lean/declarations/ppred-eq-some.md) | 57 | `result-track:d7538084541554b980a2bb2a30860c27db93c2b27a6dee0ca643635f8049d29a` |
| 10 | `theorem` | [ppred_eq_none](../../../../../NumberTheory/ElementaryNumberTheory/NatPSubPSubSourceEdition1.lean/declarations/ppred-eq-none.md) | 62 | `result-track:e9d220ad0aa0b162377d00a640d3d7df4de650ed91f77e62f3807748fb7230b9` |
| 11 | `theorem` | [psub_eq_some](../../../../../NumberTheory/ElementaryNumberTheory/NatPSubPSubSourceEdition1.lean/declarations/psub-eq-some.md) | 66 | `result-track:afeec32880c8287f9d159216ff03987f78e9f8e7bfbb5244c230debc56d6ad4c` |
| 12 | `theorem` | [psub_eq_none](../../../../../NumberTheory/ElementaryNumberTheory/NatPSubPSubSourceEdition1.lean/declarations/psub-eq-none.md) | 73 | `result-track:49ae7ecdd40ef38b1c24b789ca1a93c4fab99d9e6f30d2aa898f529b08c606e9` |
| 13 | `theorem` | [ppred_eq_pred](../../../../../NumberTheory/ElementaryNumberTheory/NatPSubPSubSourceEdition1.lean/declarations/ppred-eq-pred.md) | 81 | `result-track:c6097e7609f60d3a00a1661a7b579aec2c410edf0ba3badd60de459520f65a6a` |
| 14 | `theorem` | [psub_eq_sub](../../../../../NumberTheory/ElementaryNumberTheory/NatPSubPSubSourceEdition1.lean/declarations/psub-eq-sub.md) | 84 | `result-track:8d7ba02707ba33cd0b4ab8cc51093a47e7dac229094100f45c43fccbab9b6b83` |
| 15 | `theorem` | [psub_add](../../../../../NumberTheory/ElementaryNumberTheory/NatPSubPSubSourceEdition1.lean/declarations/psub-add.md) | 87 | `result-track:505ba1a627d23cbd68e2db6a47baf5e8b0cac5ba24dcfab5abed5a0634e0ebc5` |
| 16 | `def` | [psub'](../../../../../NumberTheory/ElementaryNumberTheory/NatPSubPSubSourceEdition1.lean/declarations/psub-source-edition-2.md) | 95 | `declaration-track:9e6888308edc08fbb61de27d54bdd5413777b7708e02d752291342db7528c01c` |
| 17 | `theorem` | [psub'_eq_psub](../../../../../NumberTheory/ElementaryNumberTheory/NatPSubPSubSourceEdition1.lean/declarations/psub-eq-psub.md) | 98 | `result-track:92799f25c26fec41c1b1eb1f268716da7e4fc62a259f2ec940944e9875a3577d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e0a4f1447f54304fda24e63ac2720510d2eeee1fcd44c81934169897b03f1c6d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/PSub/Variant82bb7700b374573fb3a84f7c8a4518f39474530a095f47a961165a2314e0cfb9.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/PSub/Variant82bb7700b374573fb3a84f7c8a4518f39474530a095f47a961165a2314e0cfb9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
