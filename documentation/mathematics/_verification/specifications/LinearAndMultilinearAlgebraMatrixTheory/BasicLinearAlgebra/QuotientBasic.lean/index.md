# Verification target: Quotient Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c2c4f0c1592c418dafa3faf8fcdddb5f5350c70",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c2c4f0c1592c418dafa3faf8fcdddb5f5350c70`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Equiv.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [restrictScalarsEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/restrictscalarsequiv.md) | 48 | `declaration-track:9e9637a8a92bb601f09ceacd4d0b94ecdfd142664856205ac58a3e661d2b86b0` |
| 2 | `theorem` | [restrictScalarsEquiv_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/restrictscalarsequiv-mk.md) | 55 | `result-track:5b76e358b239c575698451d243772a6c0542506eaef310fc0baf250f510da590` |
| 3 | `theorem` | [restrictScalarsEquiv_symm_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/restrictscalarsequiv-symm-mk.md) | 61 | `result-track:c066fd981ddeedfb20979b94d91d5bfc5f911fefc10cca4630f3842696ffed18` |
| 4 | `theorem` | [nontrivial_of_lt_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/nontrivial-of-lt-top.md) | 68 | `result-track:4a74a2a55ca0043d216d4ba060aeb30b794767e151aa0724aceb02ef0c5d670a` |
| 5 | `instance` | [QuotientBot.infinite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/quotientbot-infinite.md) | 75 | `declaration-track:afa347a07594465fb55b07fd9482c7541b45be481563e49181d75fcb65ccf738` |
| 6 | `instance` | [QuotientTop.unique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/quotienttop-unique.md) | 79 | `declaration-track:f317814d41e8e215040b01f1730b66765bfac3598135640d791cca5b2f9b9c8a` |
| 7 | `instance` | [QuotientTop.fintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/quotienttop-fintype.md) | 84 | `declaration-track:9c983317ae15a5de05d3b77472be63ad357d30e4458ba24db0a819f618f13d98` |
| 8 | `theorem` | [subsingleton_quotient_iff_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/subsingleton-quotient-iff-eq-top.md) | 89 | `result-track:3181c90ee67f68791195dc291cfcd5fe897a820593fe451b5c6d1ae3a1d39300` |
| 9 | `theorem` | [unique_quotient_iff_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/unique-quotient-iff-eq-top.md) | 98 | `result-track:af3fd7870c3182cea9bf5717a057afca59c8333304bf312df69bd4f375a88ded` |
| 10 | `instance` | [Quotient.fintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/quotient-fintype.md) | 104 | `declaration-track:44e6ccce94c79738996b33dc85c9536229694464018d316f73f088f0b5cfdfc0` |
| 11 | `theorem` | [card_eq_card_quotient_mul_card](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/card-eq-card-quotient-mul-card.md) | 107 | `result-track:775f30e45a4be2603077de31ab0392ce2b512253051efbd11c9157dcd8ae2e2c` |
| 12 | `theorem` | [strictMono_comap_prod_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/strictmono-comap-prod-map.md) | 116 | `result-track:3e57b61179922407a6385d95bc5212381266b94cb4e723284cb311ee0d05d1e7` |
| 13 | `def` | [liftQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/liftq.md) | 127 | `declaration-track:69f07f892b7e9cf2f597c59ef67d09ccc275861585cc2feda7f45fbf6183f9da` |
| 14 | `theorem` | [liftQ_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/liftq-apply.md) | 132 | `result-track:37eb99034fc1a1dd6d4cdb0fa1343b41a6906cf56f0c69ba27f43cc22799a602` |
| 15 | `theorem` | [liftQ_mkQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/liftq-mkq.md) | 136 | `result-track:380d7d82e54c5bfca170dbac01faf4b75b9a15ea97dd19cd707527912855bc84` |
| 16 | `theorem` | [pi_liftQ_eq_liftQ_pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/pi-liftq-eq-liftq-pi.md) | 138 | `result-track:efdb47c167bdecef33beff2790af91434dd9e29d3cd1d816bd832efdcff8734b` |
| 17 | `def` | [liftQSpanSingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/liftqspansingleton.md) | 148 | `declaration-track:be561c37b7b04829d699db080cf79e9d335010c7e53fcec14aa888fd43c127a1` |
| 18 | `theorem` | [liftQSpanSingleton_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/liftqspansingleton-apply.md) | 152 | `result-track:b14df1dc15b7d183b8fb35ac7bf6c87430105fa950cdea4195b9d726d1519de4` |
| 19 | `theorem` | [range_mkQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/range-mkq.md) | 157 | `result-track:c517f82573c7c7a95e4528444b550a104f59e91500bcc9a1d7e7d590b11ec3ec` |
| 20 | `theorem` | [ker_mkQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/ker-mkq.md) | 161 | `result-track:108860bb572887679d307c5f200cc28cf1649af8e92593e6764453cbbb80d565` |
| 21 | `theorem` | [le_comap_mkQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/le-comap-mkq.md) | 163 | `result-track:fd5f3f02e94fe9c3fc464f46662a1f074ed4c94561d51d4343f9deeaeb6ddef9` |
| 22 | `theorem` | [mkQ_map_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/mkq-map-self.md) | 167 | `result-track:de668b13fb58ed964097bdfe1b1ca9926ce5ffa11a83e27ecd369b526ccd06af` |
| 23 | `theorem` | [comap_map_mkQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/comap-map-mkq.md) | 171 | `result-track:2d69d4ae9576ba5ef27ce514d79d55decaa054ead6a4f859f86c53b2e187e116` |
| 24 | `theorem` | [map_mkQ_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/map-mkq-eq-top.md) | 174 | `result-track:c5c1d92d3d560726339b0bf6ed0a3cd71f742cb4bfa61b021b9eccfb12af0315` |
| 25 | `def` | [mapQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/mapq.md) | 181 | `declaration-track:359e7acd0cc3b0840b758d7f378693fb58387500681b61a1016efc18ceb6be98` |
| 26 | `theorem` | [mapQ_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/mapq-apply.md) | 185 | `result-track:cb4567aa96b0efb8b38310334a7dfb0dde0b63d8df18274d6028d0ee67788e13` |
| 27 | `theorem` | [mapQ_mkQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/mapq-mkq.md) | 189 | `result-track:d0a7511f16f2e48f74321ab79a186358bd64f059113c403657f2936172cac8ea` |
| 28 | `theorem` | [mapQ_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/mapq-zero.md) | 193 | `result-track:99eba11f2060d4dea0a090f5b39a608aad157a7f4ba70bc6e945118a31d73401` |
| 29 | `theorem` | [mapQ_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/mapq-comp.md) | 201 | `result-track:b9c4a810f9d6e798075450497d8c10cdbfb06d3043cc993dfbeeeb6b2f55c19c` |
| 30 | `theorem` | [mapQ_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/mapq-id.md) | 210 | `result-track:df96683a2139a1e0347fb33037d7eb5ccfb37f078b3594cd7e0712d0ef5c24ac` |
| 31 | `theorem` | [mapQ_pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/mapq-pow.md) | 215 | `result-track:ee9745b847b7bc24c2a4e8249477ddbb9af55e05ffdee841ee92ff521689389f` |
| 32 | `theorem` | [comap_liftQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/comap-liftq.md) | 224 | `result-track:9e6bc3322aafacdd26b6407589198cc27875c594b52d49773ba1a452041962a6` |
| 33 | `theorem` | [map_liftQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/map-liftq.md) | 228 | `result-track:4495e74624717688c488fb129db47dd9de88438cdb23f20d18e31ca0caa1dc90` |
| 34 | `theorem` | [ker_liftQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/ker-liftq.md) | 233 | `result-track:a1099b94455df45c7c1d670daa968e2a3e35ee8c202132b22558ababe6e5d739` |
| 35 | `theorem` | [range_liftQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/range-liftq.md) | 236 | `result-track:138b9752f28c746338533dcec31e1bfbeeb33a313cb2694b85a3bc46719eadce` |
| 36 | `theorem` | [ker_liftQ_eq_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/ker-liftq-eq-bot-source-edition-2.md) | 239 | `result-track:df289e05b74ba43b21a2e53ca2a0e3f4f3a29b6b5291bcebd081c8c1105cd042` |
| 37 | `theorem` | [ker_liftQ_eq_bot'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/ker-liftq-eq-bot.md) | 242 | `result-track:3be0945405c1b332108166cc4462d9a75a850e941266e2ea83438348a4219b7d` |
| 38 | `abbrev` | [factor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/factor.md) | 256 | `declaration-track:54afc9a65faa795df45002b924627829be2a90b85ce9498961fa5e0f24fac575` |
| 39 | `theorem` | [factor_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/factor-mk.md) | 260 | `result-track:fcb09684b9c8b87d45674028b48dee115c5d5d35bec59719b1d62eb8c7535d48` |
| 40 | `theorem` | [factor_comp_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/factor-comp-mk.md) | 264 | `result-track:7420aa0667b37806077a1b6d2cbfe7c2cc7cf949a580ec719c20a8d479a143fa` |
| 41 | `theorem` | [factor_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/factor-comp.md) | 269 | `result-track:f6b9b1ef0f2b613dcdaa19cf26f81586089d65d7d798551b8d81d990d8457d53` |
| 42 | `theorem` | [factor_comp_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/factor-comp-apply.md) | 275 | `result-track:2ef16457013f0735fe37e9623b2cb1059f82796e7f15405f5fe54f573c044d27` |
| 43 | `lemma` | [factor_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/factor-surjective.md) | 280 | `result-track:0971f67c536a33d9dba3d55e75f5fa1edf549650148c1db36343e9bedb43d989` |
| 44 | `def` | [comapMkQRelIso](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/comapmkqreliso.md) | 289 | `declaration-track:799674025b21448ba1b886515d725c366d3374213db7a2868685eae6e75635fc` |
| 45 | `def` | [comapMkQOrderEmbedding](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/comapmkqorderembedding.md) | 298 | `declaration-track:b57e21ea8f1037baecba43ff0303085426d189de626fe35ae0fd1706a7e90598` |
| 46 | `theorem` | [comapMkQOrderEmbedding_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/comapmkqorderembedding-eq.md) | 302 | `result-track:fd2db0b079702e994eb5a8ecbbcc86c69a20a8b0fcc90de4f05fc0b03bfbbf9d` |
| 47 | `theorem` | [span_preimage_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/span-preimage-eq.md) | 306 | `result-track:76019909cf4124be5326f4a06dbcacdf483502cae3ac2ee69e3c6035c8a48d3b` |
| 48 | `def` | [Quotient.equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/quotient-equiv.md) | 324 | `declaration-track:897a4cdd52c5bfa7f871e2c5dadff6bac2317794c2fcb09deb7428af58419444` |
| 49 | `theorem` | [Quotient.equiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/quotient-equiv-symm.md) | 337 | `result-track:153e77d5eefdcf7dd3b6e1e250d90181394716780b400478b3209952f184849d` |
| 50 | `theorem` | [Quotient.equiv_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/quotient-equiv-trans.md) | 345 | `result-track:cbfae19733e91962d1a607378bad8e11608518ef2690f0eb75e099b35df003bc` |
| 51 | `theorem` | [range_mkQ_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/range-mkq-comp.md) | 371 | `result-track:c00064db778250272b8d45a3c45c9688b8de8f4a7c1a9447ce62ffb0398d6b6c` |
| 52 | `theorem` | [ker_le_range_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/ker-le-range-iff.md) | 374 | `result-track:ff8bfb7347c129a6bb0f7a42f60f0b752eb64b0ccd53350b0e4bb3cf34198c08` |
| 53 | `theorem` | [range_eq_top_of_cancel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/range-eq-top-of-cancel.md) | 379 | `result-track:bfeca3b17c872074de1228dd73f186ca411bd62bb053e73abbd54d916a7cf2c3` |
| 54 | `def` | [quotEquivOfEqBot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/quotequivofeqbot.md) | 397 | `declaration-track:05b86950d40341023f789291ecefa42807c9e0969318916e254598c1d238711c` |
| 55 | `theorem` | [quotEquivOfEqBot_apply_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/quotequivofeqbot-apply-mk.md) | 402 | `result-track:f4bbe389e846ac34aefe4495612b8e13db20dc1024bc5bf5ff49722e383d1934` |
| 56 | `theorem` | [quotEquivOfEqBot_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/quotequivofeqbot-symm-apply.md) | 407 | `result-track:deceecc7098b3360b1f7628e38f9971b98ebc70443647c6aae53b0996734afba` |
| 57 | `theorem` | [coe_quotEquivOfEqBot_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/coe-quotequivofeqbot-symm.md) | 412 | `result-track:ff60b8c7ad3c47b7566ac3db121f42c5b7e9054d6d5657ddf66369fefbb2ab1d` |
| 58 | `theorem` | [Quotient.equiv_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/quotient-equiv-refl.md) | 417 | `result-track:2524807de02177e014a269d07bb87cab472d21fd328fdf943aa3ae9615087229` |
| 59 | `def` | [mapQLinear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/declarations/mapqlinear.md) | 435 | `declaration-track:45e0cbeebd1afc563870de4eaf5052ee022e002face7d23c7792f58494231adf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb5eb8859fe628d45662518e0424740cd477fd1b4281d56267b104dd1ad900e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
