# Verification target: Bell

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba9a97116a36946aeedae98f5c65aff0c234bd0a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Bell/Variant612b283055706c745c80bd8b147c5e9fc6c4881639d4e8471fa055f21f62b8b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/Bell.lean/index.md) · [Full source](../../../../Combinatorics/Bell.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba9a97116a36946aeedae98f5c65aff0c234bd0a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Bell/Variant612b283055706c745c80bd8b147c5e9fc6c4881639d4e8471fa055f21f62b8b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Bell/Variant612b283055706c745c80bd8b147c5e9fc6c4881639d4e8471fa055f21f62b8b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Multinomial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Mul` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bell](../../../../Combinatorics/Bell.lean/declarations/bell.md) | 45 | `declaration-track:4cfa7cae8315cc23d3826e1054243743ebd4426c772cb2e59350139bfb187b92` |
| 2 | `theorem` | [bell_zero](../../../../Combinatorics/Bell.lean/declarations/bell-zero.md) | 50 | `result-track:d43fa00f23a671d4956e1cd76e3f6e85046386f97771e297f8203dace1ad8029` |
| 3 | `theorem` | [bell_mul_eq_lemma](../../../../Combinatorics/Bell.lean/declarations/bell-mul-eq-lemma.md) | 52 | `result-track:99fa2cd887275d38ac5aa155ec95fbe60827cad258540f335a0cb855ccbd5407` |
| 4 | `theorem` | [bell_mul_eq](../../../../Combinatorics/Bell.lean/declarations/bell-mul-eq.md) | 69 | `result-track:781f56a2194683bb53489ede494c65e877111b5ef9130f0071efb7c02842e141` |
| 5 | `theorem` | [bell_eq](../../../../Combinatorics/Bell.lean/declarations/bell-eq.md) | 99 | `result-track:76f9665e2e479ec4ca6860829169720d0b0afe9261cd54a8776027f3d478c767` |
| 6 | `def` | [uniformBell](../../../../Combinatorics/Bell.lean/declarations/uniformbell.md) | 121 | `declaration-track:e6a349370a9d922d6352396d9af7941c4984e151405b7e93b3d86ec4411fc1a3` |
| 7 | `theorem` | [uniformBell_eq](../../../../Combinatorics/Bell.lean/declarations/uniformbell-eq.md) | 123 | `result-track:ef788db20194c44857b76370eec9ab67aebbf62b17cf738fd2cccac2b944008a` |
| 8 | `theorem` | [uniformBell_zero_left](../../../../Combinatorics/Bell.lean/declarations/uniformbell-zero-left.md) | 134 | `result-track:6b46fedd624cf9615c59537a2d9ac790f6c08c985242cacbb430061d63f45b65` |
| 9 | `theorem` | [uniformBell_zero_right](../../../../Combinatorics/Bell.lean/declarations/uniformbell-zero-right.md) | 137 | `result-track:4cd8d598a35af48391f83d3c6329d35155000babec81bc848b08017c6928eb99` |
| 10 | `theorem` | [uniformBell_succ_left](../../../../Combinatorics/Bell.lean/declarations/uniformbell-succ-left.md) | 140 | `result-track:6e038306b20b9d613d2aa9420f97f1b13d6006f10c2f5c7d69c5a8be1c5545cf` |
| 11 | `theorem` | [uniformBell_one_left](../../../../Combinatorics/Bell.lean/declarations/uniformbell-one-left.md) | 144 | `result-track:58de9d894603db6b8bcf00dc85d11d7e1b9a01d0eb1ed5c23ec1240bef44c276` |
| 12 | `theorem` | [uniformBell_one_right](../../../../Combinatorics/Bell.lean/declarations/uniformbell-one-right.md) | 148 | `result-track:0abe966eb8380c2c44a5515c86e0b1f26f334cd29f3275ae1bf8530f87eec4fe` |
| 13 | `theorem` | [uniformBell_mul_eq](../../../../Combinatorics/Bell.lean/declarations/uniformbell-mul-eq.md) | 152 | `result-track:475ce89a261c3e412902bee9f5b4f1a378478a59e33f891b9acb5ff01f0d3fc7` |
| 14 | `theorem` | [uniformBell_eq_div](../../../../Combinatorics/Bell.lean/declarations/uniformbell-eq-div.md) | 164 | `result-track:76fb9ac30e153726271ee5348bf609db9204718dd383b1b318eecf4be910ab36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4529f2640e96cb0c097bb892b056044013c48f5834717e1421b8ec0c4e94d356 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Bell/Variant612b283055706c745c80bd8b147c5e9fc6c4881639d4e8471fa055f21f62b8b8.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Bell/Variant612b283055706c745c80bd8b147c5e9fc6c4881639d4e8471fa055f21f62b8b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
