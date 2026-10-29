# Verification target: Finsupp Multiset Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9504a1b9adf64ccf0e78fe92668aa57d1752001d",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9504a1b9adf64ccf0e78fe92668aa57d1752001d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean.json)

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
| 1 | `def` | [toMultiset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/tomultiset.md) | 44 | `declaration-track:251cdd3eca56edabdbf68216ed9b16537abb3c0d2d42c6856962e4b045fbad7b` |
| 2 | `theorem` | [toMultiset_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/tomultiset-zero.md) | 52 | `result-track:541127e84320f9fffc710d6de16c3c19a14a5bafac8ca53f4d9836d1c0482efc` |
| 3 | `theorem` | [toMultiset_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/tomultiset-add.md) | 55 | `result-track:e41e682f2e1ab4bf1798df87bf81fb97af2f49396234f3e86ef91ab21af90ed4` |
| 4 | `theorem` | [toMultiset_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/tomultiset-apply.md) | 58 | `result-track:60a2dee50b40107ea92a6e789be86f51d520f3452460751ff591c968e1a4eb88` |
| 5 | `theorem` | [toMultiset_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/tomultiset-single.md) | 62 | `result-track:f1249e003a76fb6128a26d4344c954d7a6af0ac8555da09c93def4665161235b` |
| 6 | `theorem` | [toMultiset_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/tomultiset-sum.md) | 65 | `result-track:ec932d95e9e2fd521f763ff80a18aa4bc77ef44419843c4e2c7a800d181d9de2` |
| 7 | `theorem` | [toMultiset_sum_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/tomultiset-sum-single.md) | 69 | `result-track:c1650684b192c55c9b25e5b38e16c53ad13093230e18438eee49e14ff53c96a3` |
| 8 | `theorem` | [card_toMultiset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/card-tomultiset.md) | 74 | `result-track:ebc1c00741ecf0a9c5f7286a6f0de6948e167b56c3f8e7d7355e1b91702ce903` |
| 9 | `theorem` | [toMultiset_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/tomultiset-map.md) | 77 | `result-track:11765876c5ad04d33fb1f77faa921addff006961716834ac333462ad63273ee0` |
| 10 | `theorem` | [prod_toMultiset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/prod-tomultiset.md) | 88 | `result-track:323f91db402b54467039874d456bc8a7f0bd16087921488fee6e2b97a5150204` |
| 11 | `theorem` | [toFinset_toMultiset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/tofinset-tomultiset.md) | 98 | `result-track:6e6766b036f9f62e37fe42948f0407260a3c28572ad126b095bf53c00de6f1c9` |
| 12 | `theorem` | [count_toMultiset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/count-tomultiset.md) | 108 | `result-track:403accfd5ec1cb58a624899963833a255edeb8730a7b70b4e61d771b490689c5` |
| 13 | `theorem` | [toMultiset_sup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/tomultiset-sup.md) | 119 | `result-track:5a6618e6f41544fa6513a4d2bba796d600a6a23394f162c07c6ff27000da7169` |
| 14 | `theorem` | [toMultiset_inf](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/tomultiset-inf.md) | 124 | `result-track:f20d7a33b124b676ae3011538b0be36f14fc05ec4f87f0751537eb70b78acde3` |
| 15 | `theorem` | [mem_toMultiset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/mem-tomultiset.md) | 130 | `result-track:f2657a7f400b0501e2e2d4f1b4bae61804a92eaf8504b509378ce4d39c8ec085` |
| 16 | `def` | [toFinsupp](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/tofinsupp.md) | 143 | `declaration-track:ce7dd771a408b3af8cb719f4cba4a77889b02fe09868bcb553b27ccd2efc87cb` |
| 17 | `theorem` | [toFinsupp_support](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/tofinsupp-support.md) | 157 | `result-track:3e412a98c2da03fde028ccfac6e4466508bf09d244dbe67edf2e758afda85d22` |
| 18 | `theorem` | [toFinsupp_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/tofinsupp-apply.md) | 160 | `result-track:8d7f86a545e3ee188849b68b094a83c6277c8f31abdeebc2313f5dcaaabed686` |
| 19 | `theorem` | [toFinsupp_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/tofinsupp-zero.md) | 162 | `result-track:8044d4c323896a26a15a3b23bf9a6a0ad0fa0a270bf5ef11dd3a83cbdd366034` |
| 20 | `theorem` | [toFinsupp_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/tofinsupp-add.md) | 164 | `result-track:7c5c98327b4675f03a13e826bdbd60414bf100c7f83fe8864eead9f24c0e0ae5` |
| 21 | `theorem` | [toFinsupp_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/tofinsupp-singleton.md) | 168 | `result-track:70ab60cd6ee51923dbbabae1b289fb9e8b9d96fec5cdada30e2f96532522e5ce` |
| 22 | `theorem` | [toFinsupp_toMultiset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/tofinsupp-tomultiset.md) | 172 | `result-track:290f7ab975b2b2e06c3513d1f154ae161a127ea6938de248da43e413a951baa2` |
| 23 | `theorem` | [toFinsupp_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/tofinsupp-eq-iff.md) | 175 | `result-track:561dd025a20b5d217c8d169deafe09918a311efa05f3c2cb808b6c3360758f94` |
| 24 | `theorem` | [toFinsupp_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/tofinsupp-union.md) | 179 | `result-track:4afde1324ac95e3306c872e234539b375932025f54046be1320c40c4a51145dc` |
| 25 | `theorem` | [toFinsupp_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/tofinsupp-inter.md) | 183 | `result-track:9cbbdd2496915b1c281847f091b07d3a9e8f958d071e4af8cec6ff423998e254` |
| 26 | `theorem` | [toFinsupp_sum_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/tofinsupp-sum-eq.md) | 188 | `result-track:d60b8bce6bdc0f4a6cd3b17770c375535393d40067fab26e7301c90eba159871` |
| 27 | `theorem` | [Finsupp.toMultiset_toFinsupp](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/finsupp-tomultiset-tofinsupp.md) | 194 | `result-track:c6ec830c239134f366f5a6ace327fca54833f42540867eef24e40df5dfdb23f7` |
| 28 | `theorem` | [Finsupp.toMultiset_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/finsupp-tomultiset-eq-iff.md) | 198 | `result-track:23e1cb613816abebd51d099e71bee697210567614d525d97616be13d4b0dd1bf` |
| 29 | `def` | [orderIsoMultiset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/orderisomultiset.md) | 206 | `declaration-track:c46d25e5a4bdfcd3c4bb7443333589f444d9904e9a61541fe659e482ff7b1c4e` |
| 30 | `theorem` | [coe_orderIsoMultiset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/coe-orderisomultiset.md) | 211 | `result-track:79ce40fb1faf861eb713f5a9bd15796a496fa7d4f2c87c37d1c468f84fbe5a3a` |
| 31 | `theorem` | [coe_orderIsoMultiset_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/coe-orderisomultiset-symm.md) | 215 | `result-track:bfb37937c0d648d3efa52d6e174a03b9cfd6cd4782436c6e6341f197ed990f7e` |
| 32 | `theorem` | [toMultiset_strictMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/tomultiset-strictmono.md) | 219 | `result-track:d88e88c6eec519f392197a10837e510bf6a879681f4f13c7bc4e1acc4b789a62` |
| 33 | `theorem` | [sum_id_lt_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/sum-id-lt-of-lt.md) | 222 | `result-track:036d180309577f4948383f00316b06223c7e4f5a21ab256f26bfda913d32c34a` |
| 34 | `theorem` | [lt_wf](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/lt-wf.md) | 230 | `result-track:b4527f8541d97184dbf37120c800edf5992fbc1d13b5980eb95232030c40f791` |
| 35 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/instance.md) | 234 | `declaration-track:9c77825872c35d53684023262aef3220af48fbb466d6e87f6604e85d295abe8b` |
| 36 | `theorem` | [Multiset.toFinsupp_strictMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/multiset-tofinsupp-strictmono.md) | 240 | `result-track:614d05960be9104299e7cb4ec3ba5eb193fe03b3301be7ae5152acdb4802decd` |
| 37 | `def` | [equivNatSum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/equivnatsum.md) | 252 | `declaration-track:a087cda7aaae24217c32225a6ea7ce79b1fb859fcb327250df7dbeee97976d1a` |
| 38 | `lemma` | [coe_equivNatSum_apply_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/coe-equivnatsum-apply-apply.md) | 256 | `result-track:a73b4687a5ed4c25791c96efaa9cd9c9e8ce45bd9febe188bed8bd70560bc89e` |
| 39 | `lemma` | [coe_equivNatSum_symm_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/coe-equivnatsum-symm-apply.md) | 260 | `result-track:b6375c97f595e485cf40c492556164df15508907930a73da9828dbf83bf8bb3a` |
| 40 | `def` | [equivNatSumOfFintype](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/equivnatsumoffintype.md) | 268 | `declaration-track:ae60fdbfdff21cd3e3d618b67a1faea0a9e3de3a38082728f632b87d8302e156` |
| 41 | `lemma` | [coe_equivNatSumOfFintype_apply_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/coe-equivnatsumoffintype-apply-apply.md) | 272 | `result-track:3906cec3ace2f5f592d6303920c23c6dc47d98aea9a5d32d42d8cab5d046b7ef` |
| 42 | `lemma` | [coe_equivNatSumOfFintype_symm_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespacedPublic.lean/declarations/coe-equivnatsumoffintype-symm-apply.md) | 276 | `result-track:bcbbd4beeea1114cdda097b34427420c21525a59f4dc03fc139f37a58036a43b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cca053597d02d44a899a6832764c48537105ba77b7f835ad3bce6756cdc0bfd6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Multiset/Variantcba34741f75025a301d3d58d746de74e98d9fcc332a8131312d0fd35ed4a7894.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
