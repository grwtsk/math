# Verification target: Data Matrix Rank

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18d1c42d30c8cc81e072260f5d9af103521134d7",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant9830e0344c743483b3ce90fa1ed04a533f0cfae2c62cb82feba6bdfbbb3489d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18d1c42d30c8cc81e072260f5d9af103521134d7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Rank/Variant9830e0344c743483b3ce90fa1ed04a533f0cfae2c62cb82feba6bdfbbb3489d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Rank/Variant9830e0344c743483b3ce90fa1ed04a533f0cfae2c62cb82feba6bdfbbb3489d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.Finite.Rank` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.DotProduct` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Diagonal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Module` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank.md) | 48 | `declaration-track:c97740cb90e86d4cfd29e9214f3be6bd502fa1b18c99d369a827e644ee8e7829` |
| 2 | `theorem` | [rank_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-one.md) | 53 | `result-track:44eaf9aa58f096507c760308d16c0057e7b395ed83d459677f9bd5c6cc225d6e` |
| 3 | `theorem` | [rank_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-zero.md) | 59 | `result-track:9e28bcf140282dc1be3f9373a3430e4057a593c2a8bd6fc4128b7e03095c2e62` |
| 4 | `theorem` | [rank_le_card_width](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-le-card-width.md) | 63 | `result-track:142b162c6d52629cc57eda3c5462b60c34644b1eb6fbd35e1e36ddc4f27c742b` |
| 5 | `theorem` | [rank_le_width](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-le-width.md) | 70 | `result-track:ee0bce3d2c8add67aef9172ba72853cdeca35cd7d729ed8f90ac67afc2f2e671` |
| 6 | `theorem` | [rank_mul_le_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-mul-le-left.md) | 75 | `result-track:dfdbdfc1a4a0236444a7193e6457cded8608a504cae5b3d958947a29584499be` |
| 7 | `theorem` | [rank_mul_le_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-mul-le-right.md) | 81 | `result-track:43d899d32066435e0b773590c632001f44523c39985f54e59b7a1b98af4abe5b` |
| 8 | `theorem` | [rank_mul_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-mul-le.md) | 88 | `result-track:107f61504b1ef43218fa6a81e9681f5b520d9653494f2eee76833ec9edf7e8e4` |
| 9 | `theorem` | [rank_unit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-unit.md) | 93 | `result-track:d9e76e13c331d43f8de7f38f9ca6bcbc75735364ef987e89f272329f97fa8c7c` |
| 10 | `theorem` | [rank_of_isUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-of-isunit.md) | 100 | `result-track:55553a2a73d7c3630e898c200b364705c75713dfcccc76204df9abba558f68e6` |
| 11 | `lemma` | [rank_mul_eq_left_of_isUnit_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-mul-eq-left-of-isunit-det.md) | 107 | `result-track:50430860a7365bdb1a36e9e3b0ae8d0f81524db449457b8a29a124f2c19530df` |
| 12 | `lemma` | [rank_mul_eq_right_of_isUnit_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-mul-eq-right-of-isunit-det.md) | 117 | `result-track:48fda4d3c908f2b179959fa3e46803edde35e2d7c31850bfffae6f3b28d54c29` |
| 13 | `theorem` | [rank_submatrix_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-submatrix-le.md) | 127 | `result-track:df66855dbdb36a3bbfe995b0943baf2ed43ce6a3323f0bfce25c904c23292405` |
| 14 | `theorem` | [rank_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-reindex.md) | 135 | `result-track:e5d78591006d098b3180d2ac76e20e31e250b6c94a860a2dc84f3e82459708aa` |
| 15 | `theorem` | [rank_submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-submatrix.md) | 142 | `result-track:07ad24302cbcab4d7b944d4cf81cb36bcabc52e45678c50737762b25f9d5dde6` |
| 16 | `theorem` | [rank_eq_finrank_range_toLin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-eq-finrank-range-tolin.md) | 147 | `result-track:a7e290366a47dbbe3e2cd05958d92e4762eafb55ddaea4043f5cb56bdaa0c270` |
| 17 | `theorem` | [rank_le_card_height](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-le-card-height.md) | 169 | `result-track:041790c89d72de2d2544d65d96a514c88c3f1486c36134e9114628066b5d2d70` |
| 18 | `theorem` | [rank_le_height](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-le-height.md) | 176 | `result-track:469dac7a1dd23d940eea72f07d0f97d04040b7cb70d43f09bdb0ddec54962729` |
| 19 | `theorem` | [rank_eq_finrank_span_cols](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-eq-finrank-span-cols.md) | 182 | `result-track:6d1298bd55d54dcf5d920396dcc9d352c9133f6313d20d4130c58208d5bd8ca6` |
| 20 | `theorem` | [rank_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-diagonal.md) | 193 | `result-track:ca63360ad098b27b5ad8fa57236e36b3f0fc065f294653ea19095ca4c5446809` |
| 21 | `theorem` | [ker_mulVecLin_conjTranspose_mul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/ker-mulveclin-conjtranspose-mul-self.md) | 218 | `result-track:42aa3098232ff53bc6bd4b7b734aea800aca502962d7d5862a91550227d08e95` |
| 22 | `theorem` | [rank_conjTranspose_mul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-conjtranspose-mul-self.md) | 224 | `result-track:3b86050b26531fe1e200b0703148064ff58e9cb5b5689d2d34b9a8096dbe66f1` |
| 23 | `theorem` | [rank_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-conjtranspose.md) | 237 | `result-track:ea212900f18b950c3e532ef82906b05ec289dc95a352278701c27718af3fa16b` |
| 24 | `theorem` | [rank_self_mul_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-self-mul-conjtranspose.md) | 245 | `result-track:c581053141dc5555a1f7e03c6f49bad4509188d496a97040b6f706447b29f4bd` |
| 25 | `theorem` | [ker_mulVecLin_transpose_mul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/ker-mulveclin-transpose-mul-self.md) | 256 | `result-track:2f43809ab1d3e1e34900210e3140d97e40f3bb452b64cbac473d3f81395967bc` |
| 26 | `theorem` | [rank_transpose_mul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-transpose-mul-self.md) | 268 | `result-track:a523a264a9af029c402d04887f113a0232db07c8d1988cb35ed39c349f63e106` |
| 27 | `theorem` | [rank_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-transpose.md) | 280 | `result-track:c9855e8ec41dc86b6aac1e9bec1d4ada7da6d2d0956e1b2f7c6da8f06c7f108b` |
| 28 | `theorem` | [rank_self_mul_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-self-mul-transpose.md) | 286 | `result-track:bbb902f64beb0fe18db2feaa5b7e0dbf24dcc699e147bfbaa165f1f1c7785687` |
| 29 | `theorem` | [rank_eq_finrank_span_row](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/declarations/rank-eq-finrank-span-row.md) | 295 | `result-track:7a5fdcd699aee75736eb73a5a120cb4156fa583793cf4d4418c8793a24096430` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f41d0c2a579aefa43c095394a95f2c98e3280a636fb309b29fe0bc2ef48b6a08 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Rank/Variant9830e0344c743483b3ce90fa1ed04a533f0cfae2c62cb82feba6bdfbbb3489d5.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Rank/Variant9830e0344c743483b3ce90fa1ed04a533f0cfae2c62cb82feba6bdfbbb3489d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
