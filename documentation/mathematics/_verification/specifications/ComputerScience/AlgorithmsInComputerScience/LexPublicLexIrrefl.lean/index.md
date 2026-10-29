# Verification target: Lex Public Lex Irrefl

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea3b93b183826fc3bdee6dbbc7d2fab42d61f344",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant9bd8d2e8010248069e55b8dfc8a6cfd09bf262d3068379ea8b8e443e2e8209e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea3b93b183826fc3bdee6dbbc7d2fab42d61f344`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant9bd8d2e8010248069e55b8dfc8a6cfd09bf262d3068379ea8b8e443e2e8209e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant9bd8d2e8010248069e55b8dfc8a6cfd09bf262d3068379ea8b8e443e2e8209e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Order.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.TakeDrop` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.TacticsExtra` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/instance-source-edition-6.md) | 32 | `declaration-track:a3882ab94992c85df1a6a5e35e80f7e6ebf43f2dff389723304ff931bed34112` |
| 2 | `theorem` | [lex_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/lex-lt.md) | 37 | `result-track:a2d5f692171b5658468a3ec9e2c5baa567a02c68fd42bf0bd0858f753d3009f0` |
| 3 | `theorem` | [not_lex_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/not-lex-lt.md) | 38 | `result-track:a89132496bb28076ad44e4f14b51f346e518471fde7c8a93012f1ce08c574eec` |
| 4 | `theorem` | [not_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/not-lt.md) | 41 | `result-track:b613535f69c0a92b58a3647482f7bf8b483beebe8b8e177b9fc43c9e69770345` |
| 5 | `theorem` | [not_lt_iff_ge](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/not-lt-iff-ge.md) | 44 | `result-track:df37a7f105970d6ea3c2efd59c0de3907db1c8712241ed4613d6224c316cfa11` |
| 6 | `theorem` | [not_le](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/not-le.md) | 47 | `result-track:95a86caaadefd7a154950a129bcd7cb76967842acc4b714b6b1c05cbf94ead44` |
| 7 | `theorem` | [not_le_iff_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/not-le-iff-gt.md) | 52 | `result-track:f942ac4f71dc11bf80027021c1266fc91ab5dfd0eb5a229aee3e901ffca77929` |
| 8 | `theorem` | [lex_irrefl](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/lex-irrefl.md) | 56 | `result-track:429262ec9a4ab0c08882c821c2796b4e98fd1221cfae8aab4071530236d75838` |
| 9 | `theorem` | [lt_irrefl](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/lt-irrefl.md) | 63 | `result-track:5107b582c780ab1d7b23028e97ecb7d9aa9dc1b2c1e50dbdc9f16f8e05c6f918` |
| 10 | `instance` | [ltIrrefl](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/ltirrefl.md) | 66 | `declaration-track:6a60bcfe9dbf8412747e703906af3fc14462eb59680393b5775daa6ec1174564` |
| 11 | `theorem` | [not_lex_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/not-lex-nil.md) | 69 | `result-track:c390d10801165cafcf2e68b495251d25aa5b50191fca6cc51ccb18898430f04b` |
| 12 | `theorem` | [not_lt_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/not-lt-nil.md) | 71 | `result-track:f082ea76b464620215cc91d41462094b481411ab62ed72e2e4320c5462cac3de` |
| 13 | `theorem` | [nil_le](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/nil-le.md) | 72 | `result-track:48e1bc0f80587fd960cd5d44d73c1d5919df9c453f44191025236dc614002b11` |
| 14 | `theorem` | [not_nil_lex_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/not-nil-lex-iff.md) | 74 | `result-track:e88e6504e0df771cce8db92fa7ebc9aa1c6bf403db6dddefb4676fb6fa31c2b4` |
| 15 | `theorem` | [le_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/le-nil.md) | 83 | `result-track:a1989fc8ca195eb067ba24db111798291c886ea9bbfec523171f60159636fa43` |
| 16 | `theorem` | [nil_lex_cons'](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/nil-lex-cons.md) | 87 | `result-track:3279630fa0618421135533d3b7ceab80cf9ea98058510bf1421df2f1abc07871` |
| 17 | `theorem` | [nil_lt_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/nil-lt-cons.md) | 89 | `result-track:a1a01ae141e0cb42ad1afa2691e439d01785a71ce29e48e9c3e66f2cd83a1155` |
| 18 | `theorem` | [cons_lex_cons_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/cons-lex-cons-iff.md) | 91 | `result-track:763a4c5591d2218ccf7d534624328c3fa9611fdffdf49c18c49010605ea84e4b` |
| 19 | `theorem` | [cons_lt_cons_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/cons-lt-cons-iff.md) | 95 | `result-track:b2c2890a7ae7c923228569e9d67e77866b9db72579080399e4081e2c718b2e9c` |
| 20 | `theorem` | [cons_lt_cons_self](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/cons-lt-cons-self.md) | 100 | `result-track:56d8721c7c8ebacf226bece3964b0a4cef28e1937923bc63db7f660a00552248` |
| 21 | `theorem` | [not_cons_lex_cons_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/not-cons-lex-cons-iff.md) | 104 | `result-track:241e4ed0cdd10c6e4b708357d8d69494b5aecd0c08685f81aefd5eff7abae2e1` |
| 22 | `theorem` | [cons_le_cons_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/cons-le-cons-iff.md) | 108 | `result-track:383d9cb9ed9fbddf1d33809749fa27d1a422716b081b61f8db9a6540f8dc6f6d` |
| 23 | `theorem` | [not_lt_of_cons_le_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/not-lt-of-cons-le-cons.md) | 134 | `result-track:ceb0c3018667a9bba6dd5522828c0de7a5a442be849f6c2c311fca11aa88d0df` |
| 24 | `theorem` | [left_le_left_of_cons_le_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/left-le-left-of-cons-le-cons.md) | 143 | `result-track:5b86e7209f6be869f3164490ee2c270018839f1f6d181e0669d531a8ac6650d8` |
| 25 | `theorem` | [le_of_cons_le_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/le-of-cons-le-cons.md) | 147 | `result-track:035007cd46ed962fcb85267b75a9a72cfdb759b83ddd736c225a38c9f9160337` |
| 26 | `theorem` | [le_refl](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/le-refl.md) | 157 | `result-track:2b52e789c42bcce98bf46a2bc955be6d12d78ba070d2c39f6818c24066047d90` |
| 27 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/instance-source-edition-4.md) | 165 | `declaration-track:944c2c66cc8054b17c00dec8065006d69b30502029e39614c4130423f8ed00cc` |
| 28 | `theorem` | [lex_trans](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/lex-trans.md) | 168 | `result-track:76dd50e9c5bf1d2f978cf059b539250cfa7b3aa8aadec0156e225f3bc8357f1f` |
| 29 | `theorem` | [lt_trans](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/lt-trans.md) | 185 | `result-track:57b2bf018eef825a13921aed3600b99e6fa3f3e60d2b3d5e69761dfb74649025` |
| 30 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/instance-source-edition-5.md) | 191 | `declaration-track:989e98dc7ea3e74beb4d183bb6f8e5a5b95babbc973b593d0638770600eae781` |
| 31 | `theorem` | [lt_of_le_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/lt-of-le-of-lt.md) | 197 | `result-track:17272bbb997c66eec76a4791bccb927de692a6a392b0c77e2f5b1a571e8c0443` |
| 32 | `theorem` | [lt_of_le_of_lt'](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/lt-of-le-of-lt-source-edition-2.md) | 222 | `result-track:3eb0d9805691f5e609c6a833dcb3690f6cb37041769afa9aef8fd0b90c060f45` |
| 33 | `theorem` | [le_trans](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/le-trans.md) | 231 | `result-track:071c2a53050a9473314305ca3ecf72de81d93ea130ec560ad5e64da50dacc767` |
| 34 | `theorem` | [le_trans'](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/le-trans-source-edition-2.md) | 236 | `result-track:52cc86d4869208987a7976ee5c98d79cae1eb8135d79f5bb228164a9820a113b` |
| 35 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/instance-source-edition-3.md) | 245 | `declaration-track:71ad5d9ce32a70a4e00c8d90cce1dcec3a2cb92b954bb0931886362844d69427` |
| 36 | `theorem` | [lex_asymm](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/lex-asymm.md) | 249 | `result-track:5e529a959f749af162041b54b447ca9e29c39572dcb57748153245a5d1070662` |
| 37 | `theorem` | [lt_asymm](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/lt-asymm.md) | 261 | `result-track:5a691e5e52df307d32ca609e9a1b20cee1a58472924a21c9aa1b915ad934f2ca` |
| 38 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/instance-source-edition-2.md) | 265 | `declaration-track:67b81f9d9c9f07bd698a1b9e5fa6f928b9d9c5f630bbdbbaf538806bdaddc5f4` |
| 39 | `theorem` | [not_lex_total](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/not-lex-total.md) | 269 | `result-track:2eda33f914a5f62786a8f57aa433cdc21a7c3c77dd13450ec4651a308cb66fa7` |
| 40 | `theorem` | [le_total](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/le-total.md) | 284 | `result-track:d53646e9377ea879f819ec3bff4a4c441e6c516cb4bd73c889946e10107c3ea0` |
| 41 | `theorem` | [le_total_of_asymm](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/le-total-of-asymm.md) | 288 | `result-track:ad79d99c3827690fa0fb762e73171b1f34dc97e6025917fc57757f9f88a0bb97` |
| 42 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/instance.md) | 292 | `declaration-track:1cf831165c28ade134a4dcf9598ccea06dfcc18d4a5fbb59979f8ba8de199141` |
| 43 | `instance` | [instIsLinearOrder](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/instislinearorder.md) | 296 | `declaration-track:3752cabdc0e6bf21ae186c4475d055002b60b9b224fa983f1e0f20fc30250e6c` |
| 44 | `theorem` | [le_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/le-of-lt.md) | 299 | `result-track:2ab717198708ec54011fd9a65e047aede5687b26c108db52340eb63e0b79f241` |
| 45 | `theorem` | [le_iff_lt_or_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/le-iff-lt-or-eq.md) | 307 | `result-track:5d8a5c2bd8df678645f24400cbf760fa174975397eb5abccce1b7e0ea7c806c6` |
| 46 | `theorem` | [lex_eq_decide_lex](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/lex-eq-decide-lex.md) | 323 | `result-track:b435e86d08563a49490a299aad78a6554095485b22fa3cafb377dfe6818240b5` |
| 47 | `theorem` | [lex_eq_true_iff_lex](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/lex-eq-true-iff-lex.md) | 337 | `result-track:6bb1eff44e2b081061d61a61b6d8d36cdb73c24f31f90f0fcd11572aaed315d5` |
| 48 | `theorem` | [lex_eq_false_iff_not_lex](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/lex-eq-false-iff-not-lex.md) | 343 | `result-track:ef5bd435599d9333bf91f4953945a0c111424625bfe9b02a8f8fe1ff951b1a36` |
| 49 | `theorem` | [lex_eq_true_iff_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/lex-eq-true-iff-lt.md) | 347 | `result-track:06674c95da1cb999a1295bfbb34e269b218e8f9f1c925ab35e120088141f24ed` |
| 50 | `theorem` | [lex_eq_false_iff_ge](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/lex-eq-false-iff-ge.md) | 352 | `result-track:11d5da7c96d53e5cbefc82d4587e4d9a3f0700ecc27a70736148318cf7b2c7f1` |
| 51 | `theorem` | [lex_eq_true_iff_exists](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/lex-eq-true-iff-exists.md) | 366 | `result-track:aa04be36827e73bd996980c861a3dbbd9b0b148a620e2930f78b20c729db544f` |
| 52 | `theorem` | [lex_eq_false_iff_exists](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/lex-eq-false-iff-exists.md) | 427 | `result-track:477939d79cb078dcd40748d23ff934e4ce30c1f77a9c55712f8176952856d9fc` |
| 53 | `theorem` | [lt_iff_exists](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/lt-iff-exists.md) | 483 | `result-track:ca2a9e194100000ad62e62a74838799f5529c8cf7a298e47d785ce6b6119f932` |
| 54 | `theorem` | [le_iff_exists](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/le-iff-exists.md) | 493 | `result-track:7fc00c9dc18d581e0b3f4827939f5a77e77fb65b9549d01f54736be66cce665c` |
| 55 | `theorem` | [append_left_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/append-left-lt.md) | 510 | `result-track:7a61e22cb83adbe23448a28ad9afbde7e314683cea42b02487a647dadbdfbd77` |
| 56 | `theorem` | [append_left_le](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/append-left-le.md) | 516 | `result-track:3adad7f7d03bdba6c47f3d0c1b9c639174150df21e0c64ad5417de941e6df667` |
| 57 | `theorem` | [le_append_left](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/le-append-left.md) | 525 | `result-track:d331f633501a1572130445a5d5d6074d4178486365e57d21590222a1c2d2c65f` |
| 58 | `theorem` | [IsPrefix.le](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/isprefix-le.md) | 532 | `result-track:4da3cda324280bf6ebe416c6ba220672cecb1727c0bb1a98bd067bdc2b686b8f` |
| 59 | `theorem` | [map_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/map-lt.md) | 537 | `result-track:8f0fcabcee860fd154414a73db7147ee0d74e816b70077b874baa56c146a912a` |
| 60 | `theorem` | [map_le](../../../../../ComputerScience/AlgorithmsInComputerScience/LexPublicLexIrrefl.lean/declarations/map-le.md) | 549 | `result-track:e256c303d2ed6eba661af283fa93a32b9ef35f4c0f81811bff8fe2676ed1a4a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fcfde02e75722f9fe55ab77a58785102003a71d036a62aea97029685dc70ee48 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant9bd8d2e8010248069e55b8dfc8a6cfd09bf262d3068379ea8b8e443e2e8209e0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant9bd8d2e8010248069e55b8dfc8a6cfd09bf262d3068379ea8b8e443e2e8209e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
