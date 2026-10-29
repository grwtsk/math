# Verification target: Charpoly Basic Charmatrix Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ac9374c34f1fb613128eabc22520e3c6fa5221f",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant6af86e0d27b1807781af0b33ef9307d5423f6f1b2f19cbdc8b924ff7e4f07e53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ac9374c34f1fb613128eabc22520e3c6fa5221f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant6af86e0d27b1807781af0b33ef9307d5423f6f1b2f19cbdc8b924ff7e4f07e53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant6af86e0d27b1807781af0b33ef9307d5423f6f1b2f19cbdc8b924ff7e4f07e53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Adjugate` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Block` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MatrixPolynomialAlgebra` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [charmatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charmatrix.md) | 44 | `declaration-track:1911fd66ae858d62665b01c617de195b82b5e2fd438bdb73aa9a7cff84b5df8e` |
| 2 | `theorem` | [charmatrix_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charmatrix-apply.md) | 47 | `result-track:dd64348528b4797550ea2159ba986c19ce1490a026524f84ff18f9974bb4a5d9` |
| 3 | `theorem` | [charmatrix_apply_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charmatrix-apply-eq.md) | 52 | `result-track:5d83dfd06bff7c0ec3342d4f7612cd52a45bb94d77bc25bf1421e672746a2a22` |
| 4 | `theorem` | [charmatrix_apply_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charmatrix-apply-ne.md) | 57 | `result-track:e2b33fa8f246c498c0ad13d72f22887319a6fca6450bd0ee457ca674c5e4eac7` |
| 5 | `theorem` | [charmatrix_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charmatrix-zero.md) | 62 | `result-track:53bc7e2c909a94cd837cb830b4fd9cacaee3ce14a5698737ff783126d5b4ceeb` |
| 6 | `theorem` | [charmatrix_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charmatrix-diagonal.md) | 66 | `result-track:c15a6534d9fe8e973ab1c6c1c1b7d9c23b5bf3488107e4851d6961a18ad4487d` |
| 7 | `theorem` | [charmatrix_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charmatrix-one.md) | 71 | `result-track:056eec2d791a80d397f0a95c3b244c9ce5ea144eefefd2a1070e63ec9041e6f9` |
| 8 | `theorem` | [charmatrix_natCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charmatrix-natcast.md) | 75 | `result-track:ff90fb958d6e6cb20df3c24cf1a87d58e1369d9fe362b25d82264cf70d6026e5` |
| 9 | `theorem` | [charmatrix_ofNat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charmatrix-ofnat.md) | 80 | `result-track:7c2dc72bf5ee3d753d9a14801c610e382bf37e6056c166a4c3669838ff8be698` |
| 10 | `theorem` | [charmatrix_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charmatrix-transpose.md) | 85 | `result-track:a2575c9f602ebeb7764bed1ea2ff5ac849beed75a5fc32db0d98558aa4989bf6` |
| 11 | `theorem` | [matPolyEquiv_charmatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/matpolyequiv-charmatrix.md) | 88 | `result-track:838f2158c48538600a0b0a2bdc02af718f3257cd546c18899e9e4cb93c8c0a42` |
| 12 | `theorem` | [charmatrix_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charmatrix-reindex.md) | 99 | `result-track:0eb8a4ea060442182092b707782223a7e303e1794824824fe07a07096e8d55dc` |
| 13 | `lemma` | [charmatrix_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charmatrix-map.md) | 105 | `result-track:cfd4a3241aad5521ae3682bd90f43449e28a440f3244b4070d2a25fb2c7aa0f3` |
| 14 | `lemma` | [charmatrix_fromBlocks](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charmatrix-fromblocks.md) | 110 | `result-track:e4cac834693f4cba1126cfc20c449bb0507ed494a147557b29c6e4e46b9b804c` |
| 15 | `lemma` | [charmatrix_blockTriangular_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charmatrix-blocktriangular-iff.md) | 119 | `result-track:03ac3eb08227ed8e4587363f5a60b9228b012fccbb128c8a1e55001e4a9b3d73` |
| 16 | `def` | [charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charpoly.md) | 127 | `declaration-track:f51683778da45e299ff2f9d2ba1490d664e6c4e7d38983a2e0685b7334331112` |
| 17 | `theorem` | [eval_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/eval-charpoly.md) | 130 | `result-track:603155ec01864affb09816743fd5518bc5a0ffd801b0d373de30f0b05e72b314` |
| 18 | `theorem` | [charpoly_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charpoly-zero.md) | 138 | `result-track:4754f5c866011bb252641a2657a20bc8d4a2f696cfe278c44e7357b06676a0a8` |
| 19 | `theorem` | [charpoly_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charpoly-diagonal.md) | 141 | `result-track:42d587200e652dd849eeb8ebf87e037f1f0d28bd73b60eb337406379f8196b1a` |
| 20 | `theorem` | [charpoly_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charpoly-one.md) | 144 | `result-track:863f9cb65a63a0ad7a830ffab73f84e76e68530c58e92bd2f1aef4a722759607` |
| 21 | `theorem` | [charpoly_natCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charpoly-natcast.md) | 147 | `result-track:776ae479168d338baf3d9b63e942d4e8457d6e8ecf3412eef7902e712c5ebaa5` |
| 22 | `theorem` | [charpoly_ofNat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charpoly-ofnat.md) | 151 | `result-track:69e179e055b14464a894db6cb9f6cce90231df8f7144aea6475a55eb3f032967` |
| 23 | `theorem` | [charpoly_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charpoly-transpose.md) | 156 | `result-track:313710292068e12abcbdc2d9036f103519301819f8f69b570f26f3a46c1712c4` |
| 24 | `theorem` | [charpoly_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charpoly-reindex.md) | 159 | `result-track:ceca5aaaa9cfa8ae3aa0066bb50b6d4e1474aada97173caa27a8d25eac33cb07` |
| 25 | `lemma` | [charpoly_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charpoly-map.md) | 164 | `result-track:31e6f7bf1b1891a4044bcb40bcbf1eb5adc5c7f8318f513a113c639a28812cb4` |
| 26 | `lemma` | [charpoly_fromBlocks_zero₁₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charpoly-fromblocks-zero-source-edition-2.md) | 170 | `result-track:996634cd02e4d3f51b60ec3cfb614dca7959b86786954d7329c982740c0cf106` |
| 27 | `lemma` | [charpoly_fromBlocks_zero₂₁](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charpoly-fromblocks-zero.md) | 176 | `result-track:81cea40f730456eb1f72bfde410c183a3fe557c387856f0ae6c5249b98961938` |
| 28 | `lemma` | [charmatrix_toSquareBlock](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charmatrix-tosquareblock.md) | 181 | `result-track:76d1aa227b0c8d5812bbd27bd5c3dcb5a4739dd35144dfae033be1c6072090d5` |
| 29 | `lemma` | [BlockTriangular.charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/blocktriangular-charpoly.md) | 186 | `result-track:7ee612d38e1416e080fbf81af3b563826eb8a857811a41febad93b85b42dd25c` |
| 30 | `lemma` | [charpoly_of_upperTriangular](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/charpoly-of-uppertriangular.md) | 190 | `result-track:78da6d5e6e8024e60e654aba0ab618823b1b00ea3d2643ef1fc58886f34015b8` |
| 31 | `theorem` | [aeval_self_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyBasicCharmatrixZero.lean/declarations/aeval-self-charpoly.md) | 202 | `result-track:d4ab334ad0c16e62a8338ed3c874d58020097ca51e229d7c3b9395503bc4f39d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9351e916db95061fcf8fe75f4b211cfae0b568f3457cf3c8832d72af43ba8260 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant6af86e0d27b1807781af0b33ef9307d5423f6f1b2f19cbdc8b924ff7e4f07e53.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant6af86e0d27b1807781af0b33ef9307d5423f6f1b2f19cbdc8b924ff7e4f07e53.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
