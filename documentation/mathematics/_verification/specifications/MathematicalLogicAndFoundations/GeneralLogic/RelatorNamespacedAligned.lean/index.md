# Verification target: Relator Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcf52e3859c08f8dee3ffc8d743e257da7caa863",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Relator/Variantf69743cad3c79f636ffd62e639931c33df7947d7e200c5ce7fc77e6feb20e4f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcf52e3859c08f8dee3ffc8d743e257da7caa863`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Relator/Variantf69743cad3c79f636ffd62e639931c33df7947d7e200c5ce7fc77e6feb20e4f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Relator/Variantf69743cad3c79f636ffd62e639931c33df7947d7e200c5ce7fc77e6feb20e4f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LiftFun](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/liftfun.md) | 43 | `declaration-track:08da1cf6188fca8588ca2af633e31b8b9da76397017e50936aea5dff0d26f82e` |
| 2 | `def` | [RightTotal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/righttotal.md) | 57 | `declaration-track:ac352e7be5dde460c7938e8c0962ff635cd3e79900d2ec8a89ddf2c902ca4912` |
| 3 | `def` | [LeftTotal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/lefttotal.md) | 61 | `declaration-track:35d1143ab09c99419414f255b6eae056f93bfd71ee65896453271d253d123167` |
| 4 | `def` | [BiTotal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/bitotal.md) | 65 | `declaration-track:b11a365dd2c973fa95b979e847bf6c5a039264445ae5ecb334981cdad2e67588` |
| 5 | `def` | [LeftUnique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/leftunique.md) | 70 | `declaration-track:39649e5b95942eb2abd3541cfab2c94763330c24aaf38f37914c53eaa103782d` |
| 6 | `def` | [RightUnique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/rightunique.md) | 75 | `declaration-track:2d3f615d5aba6c19058e3851a428376c70bd2931837d26eabb8749bd4bdea4a1` |
| 7 | `def` | [BiUnique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/biunique.md) | 79 | `declaration-track:1a703b0ad346c546e61cd19074e04cfbfcc3a6c562cd66fc03d60c9da01ece70` |
| 8 | `lemma` | [RightTotal.rel_forall](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/righttotal-rel-forall.md) | 84 | `result-track:87c667db4b22c3b80916e303276084678aa7f715507964f6d5309d37dfb2f1aa` |
| 9 | `lemma` | [LeftTotal.rel_exists](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/lefttotal-rel-exists.md) | 89 | `result-track:932ef032712c6e621e37b30de2748eba312d0dbe2cda3f3c64e8c255c0d0ad45` |
| 10 | `lemma` | [BiTotal.rel_forall](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/bitotal-rel-forall.md) | 94 | `result-track:331a1c9193cd20b659c8394800fb39bccb85f5758bdd0c079cd2e2a9df4937b3` |
| 11 | `lemma` | [BiTotal.rel_exists](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/bitotal-rel-exists.md) | 101 | `result-track:1c5ef42bfb3cde1b412aa3ee4c71d4cf9194c82f12fbe900d52465fed18c77d3` |
| 12 | `lemma` | [left_unique_of_rel_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/left-unique-of-rel-eq.md) | 108 | `result-track:227bfb126801c53846602aad2db4f59637548bb18c4738732afe78e5f77bc36c` |
| 13 | `lemma` | [rel_imp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/rel-imp.md) | 115 | `result-track:0359476e641fa79b0f25ffc2928881b982eafc387f48d7e1ebea90d94bb1ce85` |
| 14 | `lemma` | [rel_not](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/rel-not.md) | 119 | `result-track:f319a7b8c482b20cb72c7adbc32ed0c4c81d87bd502d71793fb210f48020f213` |
| 15 | `lemma` | [bi_total_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/bi-total-eq.md) | 123 | `result-track:e207bace9908c8be2090116b81374fee0e57679963aad534bc57546cef17fa7a` |
| 16 | `lemma` | [LeftUnique.flip](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/leftunique-flip.md) | 130 | `result-track:ff797ead7f4ba3c4dfbdfe0ce928d9f08ee3bb8900dbf2c3067f49cb91b14f9f` |
| 17 | `lemma` | [rel_and](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/rel-and.md) | 134 | `result-track:01d2e1d891f952a4138838a63b45eaeeb6c51a9fa3a00bf3a469febe6cffbed8` |
| 18 | `lemma` | [rel_or](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/rel-or.md) | 138 | `result-track:32c6edf4aded0feec436218f2398481c377b4fe3be1c20f2065b361a0d6e4d3f` |
| 19 | `lemma` | [rel_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/rel-iff.md) | 142 | `result-track:5096d8d4c946da67ca5003008031e6642a45e21875381a2b216550860ea5001c` |
| 20 | `lemma` | [rel_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/rel-eq.md) | 146 | `result-track:a631b551c4255d39029df2bbd11f09fbc7df99bbd73d4dd0825cd7822900ea8e` |
| 21 | `lemma` | [refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/refl-source-edition-2.md) | 154 | `result-track:5b264e3c82dea507d9534a9a5fde8a04c347acb649fd1d4424b05d2a88977ebc` |
| 22 | `lemma` | [symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/symm-source-edition-3.md) | 158 | `result-track:fafa595a45d6fada7dab5d9ab7fa3c4cdd6eca30b6dedbf6a3cf8f13e1aac4ee` |
| 23 | `lemma` | [trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/trans-source-edition-3.md) | 162 | `result-track:5c6a17f3841791b749ba337ba55a0c60a6f1c4525487b1dcffa253a1fd1d0216` |
| 24 | `lemma` | [refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/refl-source-edition-3.md) | 170 | `result-track:bf56143f0a42ce1cc40082a6ff187e8a2e6201175d3eab6f4f58f0928d2aa7a4` |
| 25 | `lemma` | [symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/symm.md) | 174 | `result-track:28edf5f7ed8ed507a152636393b8d24e62dc774fcf7182fc6d56a5dc31fde471` |
| 26 | `lemma` | [trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/trans-source-edition-2.md) | 178 | `result-track:2326692d205c657ec4a361f8e9d9e5da97a0e2f7634c1184b68fdb52e8d753d4` |
| 27 | `lemma` | [refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/refl.md) | 186 | `result-track:2237bd5df5e4f4d7a69a1e65aeb1852a38557d68b7ca17651540a6085ee6c7af` |
| 28 | `lemma` | [symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/symm-source-edition-2.md) | 190 | `result-track:65509510b2150854eac0d01e129449ee41bc33962902afae0139b620d529e7af` |
| 29 | `lemma` | [trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RelatorNamespacedAligned.lean/declarations/trans.md) | 194 | `result-track:081fae47158d1b5e08ca01ae248fef9d67462344904312f9f0260d195d08e802` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81e8c3fa7880648c70d9f9bee1ed8446d5c5b3091d8b6371dfacb54b1c6c3662 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Relator/Variantf69743cad3c79f636ffd62e639931c33df7947d7e200c5ce7fc77e6feb20e4f3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Relator/Variantf69743cad3c79f636ffd62e639931c33df7947d7e200c5ce7fc77e6feb20e4f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
