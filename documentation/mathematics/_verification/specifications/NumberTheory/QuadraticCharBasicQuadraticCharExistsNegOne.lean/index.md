# Verification target: Quadratic Char Basic Quadratic Char Exists Neg One

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3db8b666d77153bf7fc137251adccd59989a8755",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/index.md) · [Full source](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3db8b666d77153bf7fc137251adccd59989a8755`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Parity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.ZModChar` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadraticCharFun](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticcharfun.md) | 41 | `declaration-track:09c3fc112bad4dda4f82153f13cf566e842a1e48efb0c6c83f3682a9667cea03` |
| 2 | `theorem` | [quadraticCharFun_eq_zero_iff](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticcharfun-eq-zero-iff.md) | 63 | `result-track:59e44ac54767acc3594b0ace3cf805c1b775f81cbf8e086646242f4433167575` |
| 3 | `theorem` | [quadraticCharFun_zero](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticcharfun-zero.md) | 71 | `result-track:0d022ea14fbfba639078c0330f8f2a606beda88ebe12039c082ad165ef2f1b8a` |
| 4 | `theorem` | [quadraticCharFun_one](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticcharfun-one.md) | 75 | `result-track:d41f5157c4b27a808331013babba970ee813e60bc5b2ae6adc1adc203423942f` |
| 5 | `theorem` | [quadraticCharFun_eq_one_of_char_two](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticcharfun-eq-one-of-char-two.md) | 79 | `result-track:dafff2d509711ccad0b1d67c03eeee728575a1be4adbe41643348ed78f189aed` |
| 6 | `theorem` | [quadraticCharFun_eq_pow_of_char_ne_two](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticcharfun-eq-pow-of-char-ne-two.md) | 86 | `result-track:35b8fd884478232b23ece6b68723d35f568e3bee920dbf15dad3bd021f05bd0b` |
| 7 | `theorem` | [quadraticCharFun_mul](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticcharfun-mul.md) | 92 | `result-track:d998abb447f2d660c96ce65b7a2f39ac77d217e5e572cc0cae6d9f6fe853adff` |
| 8 | `def` | [quadraticChar](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticchar.md) | 119 | `declaration-track:85407ee601b63ec3bf4c5c9d33a518a1632ed2cbe6b8a04a8246b950f26cce7d` |
| 9 | `theorem` | [quadraticChar_eq_zero_iff](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticchar-eq-zero-iff.md) | 126 | `result-track:820104716114dd94149e895eb48c9d5bc6a44803188979af4add327bd42fffed` |
| 10 | `theorem` | [quadraticChar_zero](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticchar-zero.md) | 129 | `result-track:e4e965ad096b82422c02bf92015275366e63d5de685cf87d3bce445f8e324808` |
| 11 | `theorem` | [quadraticChar_one_iff_isSquare](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticchar-one-iff-issquare.md) | 133 | `result-track:5de693555d55ba97c44e14c34f83bb904881dc10cc2665ef4aa152e7e4df0630` |
| 12 | `theorem` | [quadraticChar_sq_one'](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticchar-sq-one.md) | 139 | `result-track:1c54bace28c8c0e461b1f43e81acb481714c975b84dd6962b39f3ab914b0a84e` |
| 13 | `theorem` | [quadraticChar_sq_one](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticchar-sq-one-source-edition-2.md) | 144 | `result-track:525c115dab71f1c7ecfd4e84393b5aead336118f67dab9e168ffcaf38ca6dc1c` |
| 14 | `theorem` | [quadraticChar_dichotomy](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticchar-dichotomy.md) | 148 | `result-track:be669b8b5f47f53390fb8ac1a8d89db78211b8e525c16c6d4ff5a128dd1f7207` |
| 15 | `theorem` | [quadraticChar_eq_neg_one_iff_not_one](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticchar-eq-neg-one-iff-not-one.md) | 153 | `result-track:82ae8c0ba27f3d60fbef5a98efa512a93abc7efa062ba64e41f2b3dbbae20289` |
| 16 | `theorem` | [quadraticChar_neg_one_iff_not_isSquare](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticchar-neg-one-iff-not-issquare.md) | 158 | `result-track:b70ecb097bb8efa19109fa15bc353f2a7ab8fb964e74dcb5ee3dc9b88e7fc444` |
| 17 | `theorem` | [quadraticChar_exists_neg_one](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticchar-exists-neg-one.md) | 164 | `result-track:702b95097505ebc7daca77e21866c972cf3792b7faf4d7cab5f9c032d55af8fb` |
| 18 | `lemma` | [quadraticChar_exists_neg_one'](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticchar-exists-neg-one-source-edition-2.md) | 168 | `result-track:f5745deb49befa35eee650629fb1ad7741e0baec748b0c812df0f87b3b300deb` |
| 19 | `theorem` | [quadraticChar_eq_one_of_char_two](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticchar-eq-one-of-char-two.md) | 174 | `result-track:06cc8ad45a664e6375e7d5dabf77c724cc659da7048bdecc8afbcba843df41d1` |
| 20 | `theorem` | [quadraticChar_eq_pow_of_char_ne_two](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticchar-eq-pow-of-char-ne-two-source-edition-2.md) | 180 | `result-track:ce34867a224ecd7435d43f6b5112ec7430d361df5563df3d58dba41d22e06bfe` |
| 21 | `theorem` | [quadraticChar_eq_pow_of_char_ne_two'](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticchar-eq-pow-of-char-ne-two.md) | 184 | `result-track:24e9eb7fcdd2eb52e596ef5a653fb1c90b7aa6e3b0f20b29e1d493714c9846fe` |
| 22 | `theorem` | [quadraticChar_isQuadratic](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticchar-isquadratic.md) | 198 | `result-track:ef7becadd7b9f12c4058e55462dd6bc6076fd90e7bc6fe579a02c17ef6a8f105` |
| 23 | `theorem` | [quadraticChar_ne_one](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticchar-ne-one.md) | 206 | `result-track:29fc9746cb1045d659f8b87e637e0d593a57445fb1fa87a61a1982c112a00905` |
| 24 | `theorem` | [quadraticChar_card_sqrts](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticchar-card-sqrts.md) | 213 | `result-track:5812dfaa5b883eb4d8d85b6d9f9e9bab6931b25d3b105d8d43510f686743d0b9` |
| 25 | `theorem` | [quadraticChar_sum_zero](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticchar-sum-zero.md) | 238 | `result-track:fc9080c1e8e9566708fae1a0f89560661a33d2ef56d9c6ab98023ff66344eaaa` |
| 26 | `theorem` | [quadraticChar_neg_one](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/quadraticchar-neg-one.md) | 257 | `result-track:1e50744610841b0a006573ee35a807810e2574f192f15c221eac6dc586ae16ad` |
| 27 | `theorem` | [FiniteField.isSquare_neg_one_iff](../../../../NumberTheory/QuadraticCharBasicQuadraticCharExistsNegOne.lean/declarations/finitefield-issquare-neg-one-iff.md) | 267 | `result-track:37a3737220aba53e4cb9811ea9e8a9693c52a6b7285ee45d1e34d8e191bad701` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af9b41fae2bef77d9aec6b6c72b64585fedbe8a2806ddfcbeee4705603eea02e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
