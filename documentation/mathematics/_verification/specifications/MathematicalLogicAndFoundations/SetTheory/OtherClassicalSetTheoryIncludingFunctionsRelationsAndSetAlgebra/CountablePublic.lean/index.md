# Verification target: Countable Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5ffd2035308f61e38f10aad4df99b2405ec519a",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant047d0f370cc830214b8dba702ec49434af0072523561404e40a314d2a5f24b98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5ffd2035308f61e38f10aad4df99b2405ec519a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant047d0f370cc830214b8dba702ec49434af0072523561404e40a314d2a5f24b98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant047d0f370cc830214b8dba702ec49434af0072523561404e40a314d2a5f24b98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable.md) | 49 | `declaration-track:f5c0cd50229117c629f57de3d9d8e250a3d158acf01a903d23e124630168df8d` |
| 2 | `theorem` | [countable_coe_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-coe-iff.md) | 52 | `result-track:039fd03c4bce235201e308f5f482191b416f3100024fcaea1bd5a213ddb3d642` |
| 3 | `theorem` | [to_countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/to-countable.md) | 55 | `result-track:3428b7a850d496bceaca152059460f0885c266ab012231fdfda35a1cca94db55` |
| 4 | `theorem` | [countable_iff_exists_injective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-iff-exists-injective.md) | 60 | `result-track:45f144b8659595e1e25cb8b32c1363dae332fc895cde81be401d379e1d489be4` |
| 5 | `theorem` | [countable_iff_exists_injOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-iff-exists-injon.md) | 66 | `result-track:22896f59da1d82fa7a0c905c4b32bed38329deee321a0e7b50f772d13634d1a1` |
| 6 | `theorem` | [countable_iff_nonempty_encodable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-iff-nonempty-encodable.md) | 69 | `result-track:6839fa8fc17060ea5c85952858de11a68814b0ffe54b897c6af9ab6d7564eb8b` |
| 7 | `def` | [Countable.toEncodable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-toencodable.md) | 76 | `declaration-track:14c23a31946fa317d692949e413fe6735eb6f2522cb08ddbe909b26dc5fdd4ef` |
| 8 | `def` | [enumerateCountable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/enumeratecountable.md) | 83 | `declaration-track:f098a497fe64b8030cfd0910a4aaac56b95a0ee3c28cc84ad074f391b9efbe30` |
| 9 | `theorem` | [subset_range_enumerate](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/subset-range-enumerate.md) | 88 | `result-track:b12648c9cd276a539856375f43fe2174f068fffd88c461b2f00bfd8b74278fef` |
| 10 | `lemma` | [range_enumerateCountable_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/range-enumeratecountable-subset.md) | 93 | `result-track:9060a5bd23f505c294754008d17b1735d2b7f07f32628f598de654a49af11ce7` |
| 11 | `lemma` | [range_enumerateCountable_of_mem](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/range-enumeratecountable-of-mem.md) | 101 | `result-track:2361bcde22921548726f091274e1baa243aeb4f5e4d9d95ed8aff17a2c786467` |
| 12 | `lemma` | [enumerateCountable_mem](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/enumeratecountable-mem.md) | 107 | `result-track:fdb9f6e347c15fa858880d634871d4bcc1257b2491e61a46163d5c4b5f8ca0a5` |
| 13 | `theorem` | [Countable.mono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-mono.md) | 115 | `result-track:754184f3dea7897f58e1bf28aee41146d930acf300eb4e94d0249e9532accc0b` |
| 14 | `theorem` | [countable_range](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-range.md) | 118 | `result-track:402abc98ab4eedbd500fbd861635d77145c3b720fc5e44188cee770afa213dd2` |
| 15 | `theorem` | [countable_iff_exists_subset_range](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-iff-exists-subset-range.md) | 121 | `result-track:33f12a951d186a9a68316262fe2b519d1fa2b4e6ba96e6ad998be838556fa8f5` |
| 16 | `theorem` | [countable_iff_exists_surjective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-iff-exists-surjective.md) | 131 | `result-track:962f38aa6519f16be893963aca7e98069b195b363cb59ed6f8f8b6c12bf01488` |
| 17 | `theorem` | [countable_univ_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-univ-iff.md) | 137 | `result-track:ca5601fff5c3e8686a9e1f334a8451319d908236e2702b7de9368c853ad7d60b` |
| 18 | `theorem` | [countable_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-univ.md) | 140 | `result-track:c42c0f61709f503e9829f42f01ee2cefe63cfd7f74106d46eebcd3a3b2ec8d40` |
| 19 | `theorem` | [not_countable_univ_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/not-countable-univ-iff.md) | 143 | `result-track:241e6f24ae895667da361ed593992fe3cdf10009a00956dd592c274011c2118a` |
| 20 | `theorem` | [not_countable_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/not-countable-univ.md) | 146 | `result-track:dbc6d18348df58b385a796080508647d1737e6d24c53996c885eed15bf1d5d5d` |
| 21 | `theorem` | [Countable.exists_eq_range](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-exists-eq-range.md) | 151 | `result-track:452e4edfac0c5999acb06b513b5e982ef5d29c1cd45b60d123c73804f11ffaba` |
| 22 | `theorem` | [countable_empty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-empty.md) | 157 | `result-track:84f1ff8533e23c159bc3ff642245acfd18070f35700d0a179bb7354bea1e6ba0` |
| 23 | `theorem` | [countable_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-singleton.md) | 159 | `result-track:dfd431060e461b9dbe23320f966f6115631c6384f75df7e5bd82a912b946918d` |
| 24 | `theorem` | [Countable.image](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-image.md) | 161 | `result-track:cf8a003385c4a1c7206dd2dbd9127892103954d30ddad19fb8cdbd39ef4b06cd` |
| 25 | `theorem` | [Infinite.exists_subset_countable_infinite](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/infinite-exists-subset-countable-infinite.md) | 166 | `result-track:71d303b278e6533e7805da283df76d1dc692769918e344806c5fde090597305c` |
| 26 | `theorem` | [MapsTo.countable_of_injOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/mapsto-countable-of-injon.md) | 174 | `result-track:87e278198c53b9e745fa63f8c4231844cba25b30c991dac4a756aaa79467a9f8` |
| 27 | `theorem` | [Countable.preimage_of_injOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-preimage-of-injon.md) | 180 | `result-track:d26d242225644175cb9922f56be776a51b9d27dccd8ccb7f044d5cf5d71af6f9` |
| 28 | `theorem` | [Countable.preimage](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-preimage.md) | 184 | `result-track:d0fda1d229159eb218cd0a14217ba65efd89e34604ec7097c9bd8cbd24fb56ca` |
| 29 | `theorem` | [exists_seq_iSup_eq_top_iff_countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/exists-seq-isup-eq-top-iff-countable.md) | 188 | `result-track:f04e329b1113bfc4899dfc891d381d7c40851f85930125d28bf609bc24c88585` |
| 30 | `theorem` | [exists_seq_cover_iff_countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/exists-seq-cover-iff-countable.md) | 205 | `result-track:2b1dfaad9e2029a7f3f1e7a9f915f66171cb3ae3cc78b1f9282822f12cef3308` |
| 31 | `theorem` | [countable_of_injective_of_countable_image](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-of-injective-of-countable-image.md) | 210 | `result-track:145ddb1e0220531363d0fb0ead316a08ec72d68ccf911dea67b57cc5f42a668b` |
| 32 | `theorem` | [countable_iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-iunion.md) | 214 | `result-track:e1d982596b867cbebe6bb4cd6f2601b8805a7500832955a7a9ef7b7616b8bb35` |
| 33 | `theorem` | [countable_iUnion_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-iunion-iff.md) | 221 | `result-track:fc86128ed584b8c6d675e78ee0b0a8db1a1f9ddfa0d5dfb495afa09d5badfae6` |
| 34 | `theorem` | [Countable.biUnion_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-biunion-iff.md) | 225 | `result-track:39d73c60cb45a6cc36f4f0e35e1b13e746cc0c02c4aea9105d511b5dbba2bd17` |
| 35 | `theorem` | [Countable.sUnion_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-sunion-iff.md) | 230 | `result-track:149c4afb98f4852c8ba36e4f74c8aef0a72cf7986d6337b1d887d271d591f535` |
| 36 | `theorem` | [countable_union](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-union.md) | 238 | `result-track:2d9e6d80b28ee2cba6ab99736ebb308bd1c4dbb836b745ff61ba65c9188ef37a` |
| 37 | `theorem` | [Countable.union](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-union-source-edition-2.md) | 241 | `result-track:51c4d76e7418531d9bc95901f55522c3beaa3499ce7a5542976e2a9f9a12cba0` |
| 38 | `theorem` | [Countable.of_sdiff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-of-sdiff.md) | 244 | `result-track:b2f4054599a89f10d75818b51a0433008fb2b64ad96741604433a4b886fcf7a2` |
| 39 | `theorem` | [countable_insert](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-insert.md) | 250 | `result-track:3cc2564a7843b84db0e93d96f95c63d2409df9782da3bafe3383313ac00a71a0` |
| 40 | `theorem` | [Countable.insert](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-insert-source-edition-2.md) | 253 | `result-track:69af9c63dd063a9dc169b3ddaf87a684c9c5104e3e36149c54fd6c6411ca0d15` |
| 41 | `theorem` | [Finite.countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/finite-countable.md) | 256 | `result-track:296c48e10d4c5842746ddbea3724df69ccb6282389061cc5ba91babd4143d42d` |
| 42 | `theorem` | [Countable.of_subsingleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-of-subsingleton.md) | 260 | `result-track:a7ecb597e82895c183e89873d57d69ef73e0b571ca584f5ada93f5c90fc7e265` |
| 43 | `theorem` | [Subsingleton.countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/subsingleton-countable.md) | 263 | `result-track:6ee272ef6c9342e3819128146f5b48555e63ac64c62d37b5153fad50fa750248` |
| 44 | `theorem` | [countable_isTop](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-istop.md) | 266 | `result-track:fea0017ca12890e69ed2504ff50e0835f20aeb41b1bdaa6c3d001697faf93411` |
| 45 | `theorem` | [countable_isBot](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-isbot.md) | 269 | `result-track:bc9f6781444a8b688e75a292800771b86d70ec42f6da7a1a0e29dec8a7d5bd59` |
| 46 | `theorem` | [countable_ofPred_finite_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-ofpred-finite-subset.md) | 273 | `result-track:ceafaea65b157d8f8bd4df9721caf68a545120b2105b3a57e23de0d08b9ea793` |
| 47 | `theorem` | [Countable.ofPred_finite](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-ofpred-finite.md) | 286 | `result-track:11174e6e33b8cf06eaf7914c6e62fe6f58b2104ba82a001c5f1b077e675dedf8` |
| 48 | `theorem` | [Countable.of_preimage_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-of-preimage-singleton.md) | 293 | `result-track:719da0fdf0bc327d8867ebf0291beedba13a87ab5600ea3e9a9b35290a9741d0` |
| 49 | `theorem` | [countable_univ_pi](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-univ-pi.md) | 298 | `result-track:ef0fce04c1ce8ef5b9459682c33fdbb4258d9a9f2c6fe3dbf16ed5f718cdb452` |
| 50 | `theorem` | [countable_pi](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-pi.md) | 302 | `result-track:e067856793e89aa8dbd38ab849fc6e18d5572b8d55cdf78851ed9917da080de9` |
| 51 | `theorem` | [Countable.prod](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-prod.md) | 306 | `result-track:1e15a31d9f9d5c74b7b391d2adf4debf459ac4db19d50dfc46103a20b82bd4a0` |
| 52 | `theorem` | [Countable.image2](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-image2.md) | 310 | `result-track:c6d14d2c65c5f098fe2d4730365036f7766713d8bcab56192a92a03d07c9b37d` |
| 53 | `theorem` | [countable_ofPred_nonempty_of_disjoint](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/countable-ofpred-nonempty-of-disjoint.md) | 317 | `result-track:f0dadf3351fcf27116e24a4ae15089fc1c93e19ef637fd1723723082776a5864` |
| 54 | `theorem` | [Finset.countable_toSet](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountablePublic.lean/declarations/finset-countable-toset.md) | 341 | `result-track:f93f85afcc1129f08aa07fc0f72919ac5454f2f25d791f6c2a9acaa61ce48d4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=267dd41c7d9ad52eeea7ca71d6e09b4c96d897c534600cd41294cac5e1d9f237 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant047d0f370cc830214b8dba702ec49434af0072523561404e40a314d2a5f24b98.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant047d0f370cc830214b8dba702ec49434af0072523561404e40a314d2a5f24b98.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
