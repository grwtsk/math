# Verification target: Finset Fold Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "272201a1901445d7d1c66986fba78a1072eca78d",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variant4060d87970abb10d0972c576d4cfdb57ca0aaae12bf307ed100bf50fbae9f10e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `272201a1901445d7d1c66986fba78a1072eca78d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variant4060d87970abb10d0972c576d4cfdb57ca0aaae12bf307ed100bf50fbae9f10e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Fold/Variant4060d87970abb10d0972c576d4cfdb57ca0aaae12bf307ed100bf50fbae9f10e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Image` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Fold` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fold](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/fold.md) | 41 | `declaration-track:b181162442d0a9225d97033a437a28016b6f59cf35e685af0aa1e4ecb95f9c1e` |
| 2 | `theorem` | [fold_empty](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/fold-empty.md) | 47 | `result-track:2d63d6988b7f5bbc8f372f7ec23f4a5ec0a0524a61d6f70cb748f1c2fd29eb07` |
| 3 | `theorem` | [fold_cons](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/fold-cons.md) | 51 | `result-track:6c4c51cb8db761ffee6a9c89a1dfb36f1550a8775db2922af7f373bed7d3913b` |
| 4 | `theorem` | [fold_insert](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/fold-insert.md) | 56 | `result-track:6e804d4325189c91490e2c6c13e12164710a82a60dbf2a0a8150f39a5d7131dd` |
| 5 | `theorem` | [fold_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/fold-singleton.md) | 62 | `result-track:2dcf90ecbfd5c9caaebf8854a38b186a69f28a422805c6bcb1e59a06904b2ecc` |
| 6 | `theorem` | [fold_map](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/fold-map.md) | 66 | `result-track:3b25d5a0736632c9c1d16b43efe252246b34a854a9a473869b48501d96b74caf` |
| 7 | `theorem` | [fold_image](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/fold-image.md) | 70 | `result-track:82e2470906f01aec79cc274f24d0aabae573d08836208b98068c89c89025d716` |
| 8 | `theorem` | [fold_congr](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/fold-congr.md) | 75 | `result-track:06f40d62b049acffa065b5994528c1a660bd2f9ef7544613ef80649344d446ad` |
| 9 | `theorem` | [fold_op_distrib](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/fold-op-distrib.md) | 78 | `result-track:76ba9c0c9cf4ca7f804a61cdd4b742ad9429d2231c7695ee1fbe6eb431b68265` |
| 10 | `theorem` | [fold_const](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/fold-const.md) | 82 | `result-track:b282f2d68569adda84f7618b1c92677f4df77f7ab98cf3cc4c13460ab5e6e825` |
| 11 | `theorem` | [fold_hom](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/fold-hom.md) | 92 | `result-track:da6614a4c001083ef22c4124578dcf2f2899cd72d040693f78de6ed2be785999` |
| 12 | `theorem` | [fold_disjUnion](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/fold-disjunion.md) | 98 | `result-track:0d4140c8f50d510347901efcadc529b7e5c3e2e0174e280c5f37014f1e72a15c` |
| 13 | `theorem` | [fold_union_inter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/fold-union-inter.md) | 102 | `result-track:bed9a1448fb174397c849b4b0a98296bfab81d0bac673b9ab57d16ad16c559d5` |
| 14 | `theorem` | [fold_insert_idem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/fold-insert-idem.md) | 109 | `result-track:109aab3bbe868f25bdd0e5f7d6f60b718504b3631a7942f55e8334d6b8355ea4` |
| 15 | `theorem` | [fold_image_idem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/fold-image-idem.md) | 116 | `result-track:83d435607ebb967a8b17c122242ba2c94db18c7907f0c45be34a81b813dd9403` |
| 16 | `theorem` | [fold_ite'](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/fold-ite.md) | 127 | `result-track:39d404811e3288f785e35e401c90b0e2603492dca149c82584d48c5f8b89cce9` |
| 17 | `theorem` | [fold_ite](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/fold-ite-source-edition-2.md) | 144 | `result-track:67e6449c89d954896b9701011e07bb0fc8c67047e85a2e1dcc88741817cf076a` |
| 18 | `theorem` | [fold_op_rel_iff_and](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/fold-op-rel-iff-and.md) | 149 | `result-track:f9faf1b33abc5045edfce33fa7350f5a9e61ca8dcf0ad486c66e1ef7eb90954a` |
| 19 | `theorem` | [fold_op_rel_iff_or](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/fold-op-rel-iff-or.md) | 166 | `result-track:48074abee4aac4f85a1bfc22c267f4af3241a15500b9f2bacc94dd758ecec132` |
| 20 | `theorem` | [fold_union_empty_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/fold-union-empty-singleton.md) | 182 | `result-track:43525568435ca4c14c3b925111d2e3cbf053af0ae5e3432af04573eceee76433` |
| 21 | `theorem` | [fold_sup_bot_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/fold-sup-bot-singleton.md) | 188 | `result-track:e11413acc429dafefa9851e39c304d56299229cc78ce547f780e6433beacad73` |
| 22 | `theorem` | [le_fold_min](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/le-fold-min.md) | 196 | `result-track:fd321fb121524a7f745dd0fe83021071362d0f0e573238d665c4c73c1cc4902b` |
| 23 | `theorem` | [fold_min_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/fold-min-le.md) | 199 | `result-track:1cfa49f3095fa96602a6dbd5c613f733ebefe79678f49f350fc4313370e8cb2b` |
| 24 | `theorem` | [lt_fold_min](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/lt-fold-min.md) | 206 | `result-track:b1f7cca353ac88f668553cc584668931bbdf134454f554391231f2cf9cc7bc48` |
| 25 | `theorem` | [fold_min_lt](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/fold-min-lt.md) | 209 | `result-track:59cfcd6f198bdd8b06e243f146102dc0253666c4449675633859faa5599c0c71` |
| 26 | `theorem` | [fold_max_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/fold-max-le.md) | 216 | `result-track:fbf41aeebb7bd2741846bf848e103dab4a305d1a5bbc3f0c66e1c54436e905cd` |
| 27 | `theorem` | [le_fold_max](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/le-fold-max.md) | 223 | `result-track:f2c37859e0fb22c582c5bfd7ecea5d878bebd92f335352a61f0e69af2575251c` |
| 28 | `theorem` | [fold_max_lt](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/fold-max-lt.md) | 226 | `result-track:084b375810f299de5d6f9717a7c6e2fb796bdfb89f05dd219fb690d4219b8376` |
| 29 | `theorem` | [lt_fold_max](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFoldNamespaced.lean/declarations/lt-fold-max.md) | 233 | `result-track:23ec90d4dc6780c90ec717bb608d90b218c9998eca4ab1987a10471b4900b403` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7be94e564d1227049c5bfac00c55f00b6224301670fac0a03c5df1744caafe66 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variant4060d87970abb10d0972c576d4cfdb57ca0aaae12bf307ed100bf50fbae9f10e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Fold/Variant4060d87970abb10d0972c576d4cfdb57ca0aaae12bf307ed100bf50fbae9f10e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
