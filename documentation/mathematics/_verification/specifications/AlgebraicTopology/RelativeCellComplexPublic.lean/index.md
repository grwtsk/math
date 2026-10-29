# Verification target: Relative Cell Complex Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73179262d2625f5abf16a2c0f2bb57a46866097b",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variant144c0f122106acaff43a17cdd1898258cf9a91311cc0d2b581a1f23a19772b97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73179262d2625f5abf16a2c0f2bb57a46866097b`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variant144c0f122106acaff43a17cdd1898258cf9a91311cc0d2b581a1f23a19772b97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variant144c0f122106acaff43a17cdd1898258cf9a91311cc0d2b581a1f23a19772b97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Cell](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/cell.md) | 45 | `declaration-track:9e7767a6636f5a0b64942b1d66af8ac96e03ee97fff515f4eabf798a972da0b0` |
| 2 | `abbrev` | [dim](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/dim.md) | 59 | `declaration-track:4fcb83332589f02ee64923a55e44c2e01fce50d9140da9c3d37840159dbf4701` |
| 3 | `def` | [index](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/index.md) | 67 | `declaration-track:9fd741d949801e7e2e9ad09d09f700b47f8c1c279cce3939b464b1644b696f1f` |
| 4 | `abbrev` | [horn](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/horn.md) | 73 | `declaration-track:8948d48a996170829833fe58ecfaeb418355ca98a6a638d3de10a866d0cea650` |
| 5 | `abbrev` | [map](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/map.md) | 78 | `declaration-track:5c2b9d6e0336ce266c7a9308d9856125112f6211374c413f59894ac8f3f1db5a` |
| 6 | `lemma` | [range_map](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/range-map.md) | 83 | `result-track:7d8d8d5cfb5a248306a63e36f79148a68654608617321a1de0b16821a6e846d3` |
| 7 | `lemma` | [map_app_objEquiv_symm_δ_index](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/map-app-objequiv-symm-index.md) | 87 | `result-track:8af84114275b9623b441048c179fe2ab2652ae9413ae57f1b9d44e330d26488e` |
| 8 | `lemma` | [subcomplex_not_le_image_horn](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/subcomplex-not-le-image-horn.md) | 92 | `result-track:daabc57b9e39fc76c804204e96bb86a6e24901dfa78c839c988100092e937d02` |
| 9 | `lemma` | [image_horn_lt_subcomplex](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/image-horn-lt-subcomplex.md) | 103 | `result-track:4ebaef92da02e81e01aa87308ab32e1eb221cb67d3e9ab722d3ef47a844cede8` |
| 10 | `lemma` | [image_face_index_compl](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/image-face-index-compl.md) | 109 | `result-track:bfaec251392b4335e22b7c010661f00c91552fc53a8b87e285f6c23ac9804d8e` |
| 11 | `abbrev` | [basicCell](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/basiccell.md) | 120 | `declaration-track:5de330ca8e27c986a3d7c32c942d65a118e0b4ceac90a17afd06983a4d4e2754` |
| 12 | `def` | [filtration](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/filtration.md) | 126 | `declaration-track:ce00ef698b2af9ff1c77137a45088ec24224254da42c3462334394cd0614e213` |
| 13 | `lemma` | [filtration_def](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/filtration-def.md) | 129 | `result-track:0940007619f56cefe64c8de157cfb67321d9b41af30d5c5c45b19967028f2cba` |
| 14 | `lemma` | [subcomplex_le_filtration](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/subcomplex-le-filtration.md) | 133 | `result-track:57b5842a7da5a55848100fb9e24f0c1aed3bee086d485e7ab9e2bfeaf8524b3b` |
| 15 | `lemma` | [le_filtration](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/le-filtration.md) | 141 | `result-track:557362fba9e419ee1d9a21bc29ee3ff6d5240032200d2cfab2eafee7bc1a5163` |
| 16 | `lemma` | [filtration_bot](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/filtration-bot.md) | 144 | `result-track:938ef195146879a1f8ce9b863dc2f98cae996ab953561967c30291b0323a7741` |
| 17 | `lemma` | [filtration_monotone](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/filtration-monotone.md) | 147 | `result-track:ac6941f64b64017958110eeab72b7853baef66289d9fc0030f5bb809310be3e7` |
| 18 | `lemma` | [filtration_succ](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/filtration-succ.md) | 154 | `result-track:e8023cd0f5ff5cd87908282d3f149bc9b3592987284425ac63a90f28efe41eb6` |
| 19 | `lemma` | [filtration_of_isSuccLimit](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/filtration-of-issucclimit.md) | 169 | `result-track:9927c8638978100dfec69a6064290f5f4a195ea374763c1a501888f1a74a08aa` |
| 20 | `lemma` | [iSup_filtration_iio](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/isup-filtration-iio.md) | 185 | `result-track:59e1f62a2d99c45375794b6fcc0a935e56681df49d50647078df5c94607115f0` |
| 21 | `lemma` | [Cell.subcomplex_not_le_filtration](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/cell-subcomplex-not-le-filtration.md) | 198 | `result-track:37dda61b131c9ee2b68016b90d1226089d923668673066f72d83e21f898df020` |
| 22 | `lemma` | [iSup_filtration](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/isup-filtration.md) | 213 | `result-track:6ce30e12b574dc7aaa4a5115a6b0d6994baaac2495fd7c3414216181ee929898` |
| 23 | `def` | [Cell.mapToSucc](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/cell-maptosucc-source-edition-2.md) | 232 | `declaration-track:5e9bba6d7d427160985bad644aba3f36615ad37f87fd081704a65d5dbb37b547` |
| 24 | `lemma` | [Cell.mapToSucc_ι](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/cell-maptosucc.md) | 238 | `result-track:2c42a9a4289d0415c71427a4e6c39ebd89cd14ffff7e76151e3f013715f846c0` |
| 25 | `abbrev` | [sigmaHorn](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/sigmahorn.md) | 262 | `declaration-track:7a9e3785c403cfd55fe78e4cd989fdcfaaa16cd9f6af3ca73c3a879924684145` |
| 26 | `abbrev` | [Cell.ιSigmaHorn](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/cell-sigmahorn.md) | 269 | `declaration-track:c2ec2fa80bc3c9e30bd13b66f091f345d91b8299a49a40c7a22d23ef22928332` |
| 27 | `abbrev` | [sigmaStdSimplex](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/sigmastdsimplex.md) | 276 | `declaration-track:f3050bcfa55750932bcba113886533909fadf5a5003182940ec1275db2be60de` |
| 28 | `abbrev` | [Cell.ιSigmaStdSimplex](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/cell-sigmastdsimplex.md) | 283 | `declaration-track:da233a238041477197c3867b2fa7d31ff5b508e70baa37f164eb742009f0c204` |
| 29 | `lemma` | [ιSigmaHorn_jointly_surjective](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/sigmahorn-jointly-surjective.md) | 287 | `result-track:a2ae4b09510dba780b367d36c0a9731ad66bc037c9f3ac95be4521d1087761a5` |
| 30 | `lemma` | [ιSigmaStdSimplex_jointly_surjective](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/sigmastdsimplex-jointly-surjective.md) | 295 | `result-track:ae70c1f064dcbaf5d845b085917ff370491703ee449a03762517030e56d242f8` |
| 31 | `lemma` | [ιSigmaStdSimplex_eq_iff](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/sigmastdsimplex-eq-iff.md) | 303 | `result-track:a26e6cdb38deaba7067bcd47f2ac047ec784fec3fc74eb0387255e5213aa47e5` |
| 32 | `instance` | [(anonymous)](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/instance-source-edition-3.md) | 312 | `declaration-track:b1711409ffbd2e8201ffa994df514fdcb719b5530e24fea1ce9cde284ed590fa` |
| 33 | `def` | [m](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/m.md) | 322 | `declaration-track:34070f48d23099361a9c1aa95aa975766b2f27cc1d40e2462c9a5f6f6973349d` |
| 34 | `instance` | [(anonymous)](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/instance.md) | 325 | `declaration-track:43c60dddea64b2076dd0e42391abccb531ef0f9bc83637e20d89f78a2e55ede2` |
| 35 | `lemma` | [Cell.ι_m](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/cell-m.md) | 328 | `result-track:f322ae2d6a2b57ac9d917d842da5c6f7a32956b4bb33304fe8a728b52f515ea7` |
| 36 | `lemma` | [Cell.preimage_filtration_map](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/cell-preimage-filtration-map.md) | 333 | `result-track:fccfccb6952a503224415edc8bfb0ca3a99b4beba4dd8ed5eae36246ce3f4a1f` |
| 37 | `def` | [Cell.mapHorn](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/cell-maphorn-source-edition-2.md) | 364 | `declaration-track:b487e113482b8cdc9de650bcf5d21f4c95e5104202de1c8a8a8311c5d31d2b79` |
| 38 | `lemma` | [Cell.mapHorn_ι](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/cell-maphorn.md) | 369 | `result-track:57fe16fc9f90234027146b8fcc221a5aab1431309d5128466e532a6e69bc3ea8` |
| 39 | `def` | [t](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/t.md) | 375 | `declaration-track:75ab6dc7c6d542bf65a675bd916afdc22aafa67e971230da0d4fc0d204bd4958` |
| 40 | `lemma` | [Cell.ι_t](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/cell-t.md) | 380 | `result-track:0ebfdaadd2412b48e5a9e6031dafdfc8a961bc6357524b9c2dfa47238d0f1ca5` |
| 41 | `lemma` | [Cell.ι_t_app](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/cell-t-app.md) | 385 | `result-track:840b07d7ef37c41924b0d66466f8a0e85b70b8752f84962b42660642ffc297a2` |
| 42 | `def` | [Cell.type₁](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/cell-type.md) | 395 | `declaration-track:3c7d39784efa3a980699ada7001ac10fb4e9ea6b563c3560bde599feb75e26b3` |
| 43 | `def` | [Cell.type₂](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/cell-type-source-edition-2.md) | 414 | `declaration-track:5d194933e0feabe068840914b4dca0cccf5cd563617c2592867c64546c4da9bd` |
| 44 | `lemma` | [exists_or_of_range_m_N](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/exists-or-of-range-m-n.md) | 428 | `result-track:1fdb9795af87c90707c6f472965c7b978e2aaa654696cc74d2c8ad0730430f4d` |
| 45 | `def` | [b](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/b.md) | 452 | `declaration-track:7534818fb4891eaadc88b229ee574419a9cdf8696134fc3066a5ad5fb1a9215e` |
| 46 | `lemma` | [Cell.ι_b](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/cell-b.md) | 457 | `result-track:0345d1da4526630694567865c90f37d427f41dc2892c1bc217e066839393218f` |
| 47 | `lemma` | [Cell.ι_b_app](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/cell-b-app.md) | 462 | `result-track:67b3b2eec75ca65a5d06a8f788124412698c8161f8e6596ec0fc6432cf687a65` |
| 48 | `lemma` | [w](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/w.md) | 467 | `result-track:3529877b664649189b632ac99533a373bc9a898264668b2af0942546fbe67941` |
| 49 | `lemma` | [isPullback](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/ispullback.md) | 472 | `result-track:df71d467806481b33647dcbf1fc3016e4a5a999ebfbb11358bfc01ca40c9a725` |
| 50 | `lemma` | [range_homOfLE_app_union_range_b_app](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/range-homofle-app-union-range-b-app.md) | 497 | `result-track:8e0f05a69bec6b7ffaa8b5ca150705f64259154b8b1267540c457c358b18b9bf` |
| 51 | `def` | [mapN](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/mapn.md) | 517 | `declaration-track:e1f8c7eb37d4855010cc4b649da884e9764fedd69163d9635f5a359fef0880d6` |
| 52 | `lemma` | [mapN_type₁](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/mapn-type.md) | 521 | `result-track:5e2785389aacf8c77eb1d02f54b5ebf4912da7fc99d71962281e33d09fbb376a` |
| 53 | `lemma` | [mapN_type₂](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/mapn-type-source-edition-2.md) | 529 | `result-track:b4f600a9dfd594b0ab06ad5f9a47d8b7c9200b53da751289e01c60c838f4a022` |
| 54 | `lemma` | [isPushout_aux₁](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/ispushout-aux-source-edition-3.md) | 534 | `result-track:d89c7a185a62bc71ef4474f1103aa50d93c5bf5dc9cb534241a83e985930f3ad` |
| 55 | `lemma` | [isPushout_aux₂](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/ispushout-aux-source-edition-2.md) | 542 | `result-track:3bb7cc7e6790d225f9f677dca3217755ad3f9b6a0b6b2687067db90bbb5a3e56` |
| 56 | `lemma` | [isPushout_aux₃](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/ispushout-aux.md) | 554 | `result-track:29d551ca1c615bca74224a5bfeda915e21fede7352b833158e4c32e07a45eaf2` |
| 57 | `lemma` | [isPushout](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/ispushout.md) | 558 | `result-track:e12abe91aec21b7530ee99c3f69cf4eb12b78457888642898ccf010b68158401` |
| 58 | `instance` | [(anonymous)](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/instance-source-edition-2.md) | 588 | `declaration-track:6349b340f380c100c338965f958e4400d7e9006cfe4bb03a098c72387c9ac1d0` |
| 59 | `def` | [relativeCellComplex](../../../../AlgebraicTopology/RelativeCellComplexPublic.lean/declarations/relativecellcomplex.md) | 598 | `declaration-track:eca09d87bd1a4fb7bebab64abfbb36cf1f20191d63d7d875a8ece346d7d3af6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=43ebdfc02f02b19992fa069525f528d3f825162954b583c37688afe21eab8de0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variant144c0f122106acaff43a17cdd1898258cf9a91311cc0d2b581a1f23a19772b97.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variant144c0f122106acaff43a17cdd1898258cf9a91311cc0d2b581a1f23a19772b97.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
