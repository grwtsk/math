# Verification target: Ring Subsemiring Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0da62737498d431ea724e10c0f0e15eb12e1ac7a",
  "lexical_observation_count": 190,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb5991a6f5e5b583c03dbd685449f12e4a09e4c4887696849643715b8ea613e40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0da62737498d431ea724e10c0f0e15eb12e1ac7a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb5991a6f5e5b583c03dbd685449f12e4a09e4c4887696849643715b8ea613e40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb5991a6f5e5b583c03dbd685449f12e4a09e4c4887696849643715b8ea613e40.lean.json)

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
| 1 | `instance` | [instCharZero](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/instcharzero.md) | 37 | `declaration-track:cb5bd93b6bfe97965c41fec80656c3b0e5058345f8ae7919712c3d8958eb8909` |
| 2 | `theorem` | [toSubmonoid_strictMono](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/tosubmonoid-strictmono.md) | 51 | `result-track:262320b7c0c8c8d0330f0cc9c9bf28500f16fb1f305b8186257fbe38f2d3896f` |
| 3 | `theorem` | [toSubmonoid_mono](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/tosubmonoid-mono.md) | 55 | `result-track:97524abf867c6b75c5da00d32ddb7c6938e5229bd8aa6e6fa11e1d2b47763047` |
| 4 | `theorem` | [toAddSubmonoid_strictMono](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/toaddsubmonoid-strictmono.md) | 59 | `result-track:74058aae7c6aef3ad032af6e976869439ada6013a2bc01acd0cb59e7bf65265b` |
| 5 | `theorem` | [toAddSubmonoid_mono](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/toaddsubmonoid-mono.md) | 63 | `result-track:7aa92172032fd128f19b1772384ef12ccec0e954f715354bf8cf100be29c5a26` |
| 6 | `theorem` | [list_prod_mem](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/list-prod-mem.md) | 67 | `result-track:a858ff8936b48d0c2707b3d04ab7a8e775f1c9f3b254e45eec23105e15fd0f60` |
| 7 | `theorem` | [list_sum_mem](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/list-sum-mem.md) | 72 | `result-track:2bd6b3cf75d140385c64d7705e271ac4ce6cdb8e9403c75fdf2ddd5d0e05d1cf` |
| 8 | `theorem` | [multiset_prod_mem](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/multiset-prod-mem.md) | 77 | `result-track:e46d51971aedf02bdad3b6b626b1f384ba754cbfa7857de9b3bdf6503d6525c0` |
| 9 | `theorem` | [multiset_sum_mem](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/multiset-sum-mem.md) | 83 | `result-track:0c4f8dbf73f9f76b443a07bf2989d0a2e0ec4c1ffd34b72b80c92d8b84ab8165` |
| 10 | `theorem` | [prod_mem](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/prod-mem.md) | 88 | `result-track:a97ff1e5d434ff122eca7ee081c9d035308edf87becaa6710a103e085b7b440d` |
| 11 | `theorem` | [sum_mem](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/sum-mem.md) | 94 | `result-track:b9ad525a996376b611dc0f0af94fcadd856d9963ef9b6607cc185362698d3050` |
| 12 | `def` | [topEquiv](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/topequiv.md) | 100 | `declaration-track:c0a90290f2e94aa46b021dd0cda74e0b1053044b502e0e03b2cdaf950721fb17` |
| 13 | `def` | [comap](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/comap.md) | 108 | `declaration-track:06ff079c8425fb187bb9d67cb5897a7abe67878eb24d72f27b41fc69c4c47cc1` |
| 14 | `theorem` | [mem_comap](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/mem-comap.md) | 112 | `result-track:dcf0f930ec3027e806ea33e3e4c1034bc931c4e4404d6c1b6953ceca6e91dc3a` |
| 15 | `theorem` | [comap_comap](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/comap-comap.md) | 115 | `result-track:c8e4cd914f37df1ee2cc796743ffb2ba493467885893ea512711f1fdff50d114` |
| 16 | `def` | [map](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/map.md) | 121 | `declaration-track:ae4149cbea509c6c1f40e02188bd764941b7e26097461a8e4266abe048b0763e` |
| 17 | `lemma` | [mem_map](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/mem-map.md) | 125 | `result-track:e0f8fc126a29edf3cf4cee87a8ca8ed21c330d2bc92b16c48e79d3dfd0d637b6` |
| 18 | `theorem` | [map_id](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/map-id.md) | 128 | `result-track:b764f5aa74c8c92e15eb713169be5293e0d85c90385b90445d379acc7167dccf` |
| 19 | `theorem` | [map_map](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/map-map.md) | 131 | `result-track:0288521e350aecebb4c754b781b4dff75cda183fc11e62a9072621b9c45bc887` |
| 20 | `theorem` | [map_le_iff_le_comap](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/map-le-iff-le-comap.md) | 134 | `result-track:58c9afe1b268b0c063e55f072e56acba902185bc4d77ba225df92abb6f90cc52` |
| 21 | `theorem` | [gc_map_comap](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/gc-map-comap.md) | 138 | `result-track:0c7a16df48f160b2580459253dd37f7a755ce042cf5427a22d87c16f068eac1c` |
| 22 | `def` | [equivMapOfInjective](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/equivmapofinjective.md) | 142 | `declaration-track:82458e8daf23e9cd1f373be8b0b09b50e32be7cc98d8659b19bde90bb78e2044` |
| 23 | `theorem` | [coe_equivMapOfInjective_apply](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/coe-equivmapofinjective-apply.md) | 148 | `result-track:db7dac642db0ca8165286d21e18b4527630d479d3119559cfe5da039b1c73164` |
| 24 | `def` | [rangeS](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/ranges.md) | 160 | `declaration-track:27a6c7dd967132a129af041227c18ff6ef633a64c5ae615daa4b630e38debe7a` |
| 25 | `theorem` | [mem_rangeS](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/mem-ranges.md) | 164 | `result-track:c744be3996103ff1d2c91342aef1507f20a8a8b1ab0a934a912c3ea66c0f9d30` |
| 26 | `theorem` | [rangeS_eq_map](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/ranges-eq-map.md) | 167 | `result-track:3cc18f5b3779ad008a8ff5dae5bf17c13c08fc0674c13c0a9d5d7c748c2a14c6` |
| 27 | `theorem` | [mem_rangeS_self](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/mem-ranges-self.md) | 171 | `result-track:855c901afbe6f461068ee655fb9916cc2b9877a6ece13db8e32f428911355268` |
| 28 | `theorem` | [map_rangeS](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/map-ranges.md) | 174 | `result-track:098b87545cc2e02b4a4f5a6383848f92bc8bc6b8214fa17574e9cad934943eb9` |
| 29 | `theorem` | [rangeS_eq_top](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/ranges-eq-top.md) | 178 | `result-track:0c8883e90d500bba04fdbb3749545d033a78e15b8e99cc07da32555898700b5f` |
| 30 | `instance` | [fintypeRangeS](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/fintyperanges.md) | 184 | `declaration-track:493531beb3bebb09bd9af7e1890f4f3f378e15f296ed4db0c6ecdcb6b2f865da` |
| 31 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/instance-source-edition-3.md) | 191 | `declaration-track:562736ced166314a691eb7aedf722f9c08adc6fa690bff21ebdd213993876b30` |
| 32 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/instance-source-edition-5.md) | 194 | `declaration-track:6f02b14af6dd57dee7d8155ed4c240351a03fade2614490d97eaccaa27a10010` |
| 33 | `theorem` | [coe_bot](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/coe-bot.md) | 198 | `result-track:197c1748fe19622d2de069055781da21aed89759070bdde62a44391f3c5bdf74` |
| 34 | `theorem` | [mem_bot](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/mem-bot.md) | 201 | `result-track:bc0da8a1462cf71af184ebdf942b886dd935e391c82a37323337a3e9f030780f` |
| 35 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/instance-source-edition-10.md) | 204 | `declaration-track:c8b52218a56257457a97213a35d3cea1004f89651f02ff3669dbe6c9b577a890` |
| 36 | `theorem` | [coe_sInf](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/coe-sinf.md) | 211 | `result-track:4d62e1e9d30db037ca9d0521545e5d51b2677699445fe85d56c608e50595f0c3` |
| 37 | `theorem` | [mem_sInf](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/mem-sinf.md) | 215 | `result-track:8968412e509c3146a91f1524c81f703ef6dc651d141438066118bf71296179bd` |
| 38 | `theorem` | [coe_iInf](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/coe-iinf.md) | 219 | `result-track:95542b9099162efed762906429fd2498e16be07826857cc15f243d03dad48dde` |
| 39 | `theorem` | [mem_iInf](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/mem-iinf.md) | 223 | `result-track:67cdeb318e7bc3ae1c1e98384d1ca10d18cb57b169a71fdb1562761edc6ed768` |
| 40 | `theorem` | [sInf_toSubmonoid](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/sinf-tosubmonoid.md) | 227 | `result-track:f3bf081f1a322a1fda827eea4105fb9addbd75483dc97453251ccb00f61cd89e` |
| 41 | `theorem` | [sInf_toAddSubmonoid](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/sinf-toaddsubmonoid.md) | 232 | `result-track:c35953f290713ca21e53a8541dc5dc4a0dad6ef76fb91929e0a73709858b203c` |
| 42 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/instance-source-edition-2.md) | 237 | `declaration-track:408219588723140872da46988dfa6c8b4ece16ef388591ab07500fb451d5af73` |
| 43 | `theorem` | [eq_top_iff'](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/eq-top-iff.md) | 253 | `result-track:449fe3208fda7a1d0c1be47122308a420e22e3d9219f3f6471ce8cc9c4cc34e4` |
| 44 | `def` | [center](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/center.md) | 263 | `declaration-track:944e9702bd0f3b8d607ef63cdfa18d908c350f4b487cad197208d1eacae62b16` |
| 45 | `abbrev` | [center.commSemiring'](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/center-commsemiring-source-edition-2.md) | 271 | `declaration-track:99305f9dd18a06490e3a047fb251ed2dd0e0f1b061aa5314764ef7ba7fba190b` |
| 46 | `def` | [centerCongr](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/centercongr.md) | 277 | `declaration-track:1b9158ab5df84aa885a7a1df554b03d36d84bceb0028577364f2777385b57bdc` |
| 47 | `def` | [centerToMulOpposite](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/centertomulopposite.md) | 282 | `declaration-track:b6c029bc315cfb15f0830735b62d93574386484a673bf7f4d9973f9f2c6557e0` |
| 48 | `instance` | [center.commSemiring](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/center-commsemiring.md) | 290 | `declaration-track:80d5c145353a7c06fca958fcdadbfd27ab6e94068aa65217e47be60f5d39850f` |
| 49 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/example.md) | 295 | `declaration-track:88e43dc0952dbfe45b4942523c6c79bff6faec468e00c4699aa205d795f2e99e` |
| 50 | `theorem` | [mem_center_iff](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/mem-center-iff.md) | 299 | `result-track:9640781200ec3d8f23780ee036fcb7696aab662e81fa03eb05d7161a0e7cdfbe` |
| 51 | `instance` | [decidableMemCenter](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/decidablememcenter.md) | 302 | `declaration-track:246681738f55c2c9d27a33b9c2839e928839afe1e856681699486ec5c91df582` |
| 52 | `theorem` | [map_center_le_center](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/map-center-le-center.md) | 305 | `result-track:5512a35509a055ef36c4c9d876eca22e28ad3505727ffd4df5e393427c38034f` |
| 53 | `theorem` | [comap_center_le_center](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/comap-center-le-center.md) | 309 | `result-track:8208d6cd33ac357170dead6339c6eca4eeab8116476199acf56787f7dd80fe90` |
| 54 | `theorem` | [map_center_eq](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/map-center-eq.md) | 314 | `result-track:4ae42b7df2b94e24815a425d5d7d42cd9cecfd7b7b7bd182062368c966c2da0b` |
| 55 | `theorem` | [center_eq_top](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/center-eq-top.md) | 319 | `result-track:5ebfccaf121a821930aaa2fa68f909d3d655ff2f4788d430ab57cf427d337cef` |
| 56 | `def` | [centralizer](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/centralizer.md) | 327 | `declaration-track:ab2e89347b191dff15c04e78b829a4f4928efad1e2dc077d9a8dbe256a4a7d99` |
| 57 | `theorem` | [coe_centralizer](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/coe-centralizer.md) | 334 | `result-track:3fa67ca168168fbdac86ec3cb9b8d65e48eafcdb597a78da143341f90fb5f055` |
| 58 | `theorem` | [centralizer_toSubmonoid](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/centralizer-tosubmonoid.md) | 337 | `result-track:716774f24c150a97b9ed25fefda87349014c7536a41e0724cac7679aff42cecb` |
| 59 | `theorem` | [mem_centralizer_iff](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/mem-centralizer-iff.md) | 341 | `result-track:750bc0c9a2c04fa441695084b14d1664919f4fdb2f996142e6791298c3f0331a` |
| 60 | `theorem` | [center_le_centralizer](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/center-le-centralizer.md) | 345 | `result-track:b2c8307ee7794326052a41aa9493b3721e2f8437ec57bcda27e608940c1dc2c4` |
| 61 | `theorem` | [centralizer_le](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/centralizer-le.md) | 348 | `result-track:796bc01ba37585da6bd1014b021f950bdb59b3ee918b5d097553538dd2601a0e` |
| 62 | `theorem` | [centralizer_eq_top_iff_subset](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/centralizer-eq-top-iff-subset.md) | 352 | `result-track:5418940b5f742fb29e67a90180ccb43921329cb3241f28942c6b6bd015843c38` |
| 63 | `theorem` | [centralizer_univ](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/centralizer-univ.md) | 357 | `result-track:c6f5228a69f5ed4f7a256cec56e1f7b4f15f09fd800830a9803bb43761d6ee6b` |
| 64 | `lemma` | [le_centralizer_centralizer](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/le-centralizer-centralizer.md) | 360 | `result-track:92f042025c635cc32948792246faec01ea34c6ef67be023d2dff715831b4d812` |
| 65 | `lemma` | [centralizer_centralizer_centralizer](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/centralizer-centralizer-centralizer.md) | 365 | `result-track:9776eac57ad559b2f1c43b6ab76245dc1cce9bc8fab94f9ac758e3e5a64a00a5` |
| 66 | `def` | [closure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/closure.md) | 373 | `declaration-track:dcc4251a51917b9467b006952022b004292804910441205e3cbe7773b35b5840` |
| 67 | `theorem` | [mem_closure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/mem-closure.md) | 376 | `result-track:b4ae5126e2273f7a909e2f4443eb9fc98b77830f9dd4dc2f8ce29afeb4f7d2ec` |
| 68 | `theorem` | [subset_closure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/subset-closure.md) | 381 | `result-track:3883f364252520851fafc3da06ab8de306e4dcacbd4a8c4638b737446afe9dd2` |
| 69 | `theorem` | [mem_closure_of_mem](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/mem-closure-of-mem.md) | 384 | `result-track:ce970281f54d79c5c0ae7de2522efeba33995a2cd09b822fe99e71ca0c3c5764` |
| 70 | `theorem` | [notMem_of_notMem_closure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/notmem-of-notmem-closure.md) | 386 | `result-track:53eaaa77c230ae7ec7b783e501df6ddd6790b3761243e2af8dc24736a2c542bd` |
| 71 | `theorem` | [closure_le](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/closure-le.md) | 391 | `result-track:b368a64b1ae0df695eb8b95b338530ba196564ec3246dd389d2eb61849d35a68` |
| 72 | `theorem` | [closure_mono](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/closure-mono.md) | 397 | `result-track:d98276e348c49f6118d370686ee3dc94dbe2d0e6403df1b34eb3c9be887cca5f` |
| 73 | `theorem` | [closure_eq_of_le](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/closure-eq-of-le.md) | 400 | `result-track:b82bb427720a2a5f9b7b23f2514cf68fd1993f124bbaa9b95b28bb5ff96f8dcd` |
| 74 | `theorem` | [mem_map_equiv](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/mem-map-equiv.md) | 404 | `result-track:8857d808dbc1198a3d8fe0355c6d657c9519b95659ace9885ebd730e343d979b` |
| 75 | `theorem` | [map_equiv_eq_comap_symm](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/map-equiv-eq-comap-symm.md) | 408 | `result-track:7a3f7641c78c352cea17b73046cc31bc51265a810829cd95cac737fcf3c7776a` |
| 76 | `theorem` | [comap_equiv_eq_map_symm](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/comap-equiv-eq-map-symm.md) | 412 | `result-track:2bc40fbf9ca0ba7b1b16c4adf295a24701e7e434b4bead28e4525272921e8b71` |
| 77 | `def` | [subsemiringClosure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/subsemiringclosure.md) | 421 | `declaration-track:719ab7a8651089d5dbeed00ce598deb39cfcaf32636c31868342e2ff60fa7985` |
| 78 | `theorem` | [subsemiringClosure_coe](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/subsemiringclosure-coe.md) | 426 | `result-track:32cee33b4d03103ca5a40542f16eb041ab8d23f4ec0708e4b9be3e05158f3409` |
| 79 | `theorem` | [subsemiringClosure_mem](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/subsemiringclosure-mem.md) | 430 | `result-track:4e06cf38d7c48cbfe048fcb4d1bede170126cba0971d0fbc31b346570027fdf6` |
| 80 | `theorem` | [subsemiringClosure_toAddSubmonoid](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/subsemiringclosure-toaddsubmonoid.md) | 434 | `result-track:92346935d8d633905ce297eaa7c95dda439c45e909eb40043a7074640f483f14` |
| 81 | `lemma` | [subsemiringClosure_toNonUnitalSubsemiring](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/subsemiringclosure-tononunitalsubsemiring.md) | 438 | `result-track:53f5b85ca4f0d6b3a3f73d9cf226ea49264ea966425854eaf4ecdbc23247a931` |
| 82 | `theorem` | [subsemiringClosure_eq_closure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/subsemiringclosure-eq-closure.md) | 447 | `result-track:d2aa725c70ad220bbb515c464ab04bd34470e60bf9433d5317dd7b1ecbe47c3a` |
| 83 | `theorem` | [closure_submonoid_closure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/closure-submonoid-closure.md) | 462 | `result-track:c078395d512816c28985629bfc75f95ff63d286a9cd803c15c6014312b584fb2` |
| 84 | `theorem` | [coe_closure_eq](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/coe-closure-eq.md) | 470 | `result-track:08ff0f4986829d6c36e46331349034e44b318834fbd4a1bd7e3b00cfcb049cfb` |
| 85 | `theorem` | [mem_closure_iff](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/mem-closure-iff.md) | 474 | `result-track:ec01eba77ce1c376fa711fbc826583532a3df07348118e9c50e07c23e26b4961` |
| 86 | `theorem` | [closure_addSubmonoid_closure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/closure-addsubmonoid-closure.md) | 479 | `result-track:67b322411e19be8785c7da9c19f0bc676045ae2388556513401bf34ae3f714d8` |
| 87 | `theorem` | [closure_induction](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/closure-induction.md) | 493 | `result-track:63d2abeb33e0f19b7260fb2ed73331862fb8866d408662c2dcad4ef281e7db4c` |
| 88 | `theorem` | [closure_induction₂](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/closure-induction-source-edition-2.md) | 509 | `result-track:ea8fd3d6b30e0c5709c66a62265caab5064c0a5cec731e5cd88feb438612e237` |
| 89 | `theorem` | [mem_closure_iff_exists_list](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/mem-closure-iff-exists-list.md) | 531 | `result-track:f525182c50c339c093f57b2f8d71c0bfffa140390be72370050d42856aeb360c` |
| 90 | `def` | [gi](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/gi.md) | 561 | `declaration-track:e589dbb240b616929d3493db5357342e901f11b8098a89eac95501dae06c2b6c` |
| 91 | `theorem` | [closure_eq](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/closure-eq.md) | 569 | `result-track:970089790f6dc4a3cc94297a865db9229ad113b09c784d979376fb8008615174` |
| 92 | `theorem` | [closure_empty](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/closure-empty.md) | 573 | `result-track:d39f88d5a734eab17bc3c2bc84f579658b4af23527fab668e237297d50ea1371` |
| 93 | `theorem` | [closure_univ](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/closure-univ.md) | 577 | `result-track:047b32a90126745e6bd92d1c0f4e90d66230b2a7fa14c5e0edd7add91bc923b6` |
| 94 | `theorem` | [closure_union](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/closure-union.md) | 580 | `result-track:e3bcfbdb1124b9e7b5a1edf9bcb49601f679b3a758dc832727da537078ecd79f` |
| 95 | `theorem` | [closure_iUnion](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/closure-iunion.md) | 583 | `result-track:ae11412e53d71b9aaaa2b7e967da21d2b64819d8966aab48cfd4f043f245b5e6` |
| 96 | `theorem` | [closure_sUnion](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/closure-sunion.md) | 586 | `result-track:a603924e7478f1d982ade5444b1c1ddaae7ffab02dfba37dc0efeed8c0f567e4` |
| 97 | `theorem` | [closure_singleton_natCast](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/closure-singleton-natcast.md) | 590 | `result-track:11c093831fa604d0e5ac3fcb0be00abf8b393feb77dabdb02d3efabcc98b7025` |
| 98 | `theorem` | [closure_singleton_zero](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/closure-singleton-zero.md) | 594 | `result-track:550e6c718e4bec844bdb70c3e432e36b4a7e994de21961672c974c7f8eb84dd4` |
| 99 | `theorem` | [closure_singleton_one](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/closure-singleton-one.md) | 597 | `result-track:782a9224b8b86b40e289b2029c9522e7f527e8abbe703ba5fbaadce0c4e1e0cc` |
| 100 | `theorem` | [closure_insert_natCast](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/closure-insert-natcast.md) | 600 | `result-track:fe6e95c640794f0b72ebdb8b7b2d005b8f2eee0663016e6e5c02f2b2b952d8b4` |
| 101 | `theorem` | [closure_insert_zero](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/closure-insert-zero.md) | 605 | `result-track:ce2d5a84456c4236d7a0ae680f5b0f71b671bf2889149af8ff0a89b7efbce7ad` |
| 102 | `theorem` | [closure_insert_one](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/closure-insert-one.md) | 609 | `result-track:c10a241f60566d9746d527ba49106c60bc4e13dcd46ccf5d38c1caf42125f34c` |
| 103 | `theorem` | [map_sup](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/map-sup.md) | 612 | `result-track:6b52cfca3dcaff86d8a85b6e0249d679d9848700c88e658694bc8da3f3da77db` |
| 104 | `theorem` | [map_iSup](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/map-isup.md) | 615 | `result-track:de99c43abe8aa240905d87259163c466a1b478f8702f413336ff3fd0f527647d` |
| 105 | `theorem` | [map_inf](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/map-inf.md) | 619 | `result-track:03ee7c1af96a999c0c91a28157524a6c7212f9b5f830e30422924988d7bfa13e` |
| 106 | `theorem` | [map_iInf](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/map-iinf.md) | 622 | `result-track:2a95485defc0d336d95edf3feb70946310806942c54593fb2491b45e8222bbb7` |
| 107 | `theorem` | [comap_inf](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/comap-inf.md) | 627 | `result-track:770915505849e7859ac258f0adeaba1bb2a7f755ecdfe5e5e9016b223f16a902` |
| 108 | `theorem` | [comap_iInf](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/comap-iinf.md) | 630 | `result-track:5d41c983baf60b7221112949cfe16dfd504900be3250169fc007110ab06f4287` |
| 109 | `theorem` | [map_bot](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/map-bot.md) | 635 | `result-track:d13e39a302b9db3e976a4bae084ca4ec81d7972073fb1b3fd139efb98bcfa37e` |
| 110 | `theorem` | [comap_top](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/comap-top.md) | 639 | `result-track:bdd06c892990aff9eddeb81516319c6eabd4d9562e5cfcd57746459a99553af3` |
| 111 | `def` | [prod](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/prod.md) | 644 | `declaration-track:e2ff24b0fb9b9d38adba1a07e60292da41675fd1d93995fb66c3a2429c0c37f9` |
| 112 | `theorem` | [coe_prod](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/coe-prod.md) | 649 | `result-track:cb694f9f42d92fb61ec9cf3c9b27a78af3845269f82ec32e10f17d846a6e619b` |
| 113 | `theorem` | [mem_prod](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/mem-prod.md) | 653 | `result-track:cd462e33a71121fe59e55e4dee1c3527fdcf8bf3e000ac784d146ca59bbe1d84` |
| 114 | `theorem` | [prod_mono](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/prod-mono.md) | 658 | `result-track:74818a17b6a6815ae644b6970df4c0d62945af4a6167acdf5ffc4ee5debf4440` |
| 115 | `theorem` | [prod_mono_right](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/prod-mono-right.md) | 662 | `result-track:03c6a35cd96edc0be026f3fb2f06d3af2b24028e78e9ab70c4f5284e2ccf51c7` |
| 116 | `theorem` | [prod_mono_left](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/prod-mono-left.md) | 665 | `result-track:5dda10e1a7f9a05b3a95a85bd43618bef31ae5e86f551559285d618ece50654a` |
| 117 | `theorem` | [prod_top](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/prod-top.md) | 668 | `result-track:a2eea06d285852f0542a30b33db3fe5d2e0e5731443b162baf0e177ecc1c858c` |
| 118 | `theorem` | [top_prod](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/top-prod.md) | 671 | `result-track:769a86f1d40a37df911aecfc5c54dd0f10fa76b3ddc41b5b561c853f08e7c807` |
| 119 | `theorem` | [top_prod_top](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/top-prod-top.md) | 675 | `result-track:6c3b9164611c102cc4acfe3eb0245dd33213630649947772212802fe1272780a` |
| 120 | `theorem` | [_root_.RingHom.rangeS_prodMap](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/root-ringhom-ranges-prodmap.md) | 679 | `result-track:8e54f3b14d4a2e9c8e90d11ba750bfa1813980058f8590ca9e4df609f9cb8a2a` |
| 121 | `theorem` | [center_prod](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/center-prod.md) | 683 | `result-track:5245994c3beeb710a9713fa787c613adacf74a4b8920f10113c26c5fd8dcbf9a` |
| 122 | `def` | [prodEquiv](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/prodequiv.md) | 687 | `declaration-track:535438147a8c4cebc5f5219571994d33dd10f57b4d8c7ed10086cc56c8097911` |
| 123 | `theorem` | [mem_iSup_of_directed](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/mem-isup-of-directed.md) | 692 | `result-track:8f1d6a5a7d8278814fc6d39bf3af8c9cd2829635b8a35e63a6476e97b16f3cf0` |
| 124 | `theorem` | [coe_iSup_of_directed](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/coe-isup-of-directed.md) | 702 | `result-track:db216024d2a9e6e1a9e2e971e61e55e1d38bccc255bd75d8a2cd964032c0f074` |
| 125 | `theorem` | [mem_sSup_of_directedOn](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/mem-ssup-of-directedon.md) | 706 | `result-track:b49c319557c5e8c8a27a0ac3303b654976c81ef928d5e401f9702d093c47a260` |
| 126 | `theorem` | [coe_sSup_of_directedOn](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/coe-ssup-of-directedon.md) | 711 | `result-track:e02aee52e8e0add473cdf20ab602d06cfa3327f0ee187dd7a269420367f383bc` |
| 127 | `theorem` | [isMulCommutative_iSup](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/ismulcommutative-isup.md) | 715 | `result-track:3653b94d947994a0e98f6d1bf29736db290e9a7f248a6135e6c54e13509b0db0` |
| 128 | `instance` | [instIsMulCommutative_iSup](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/instismulcommutative-isup.md) | 721 | `declaration-track:a7ec356b57e5e508927d51a494e3f5b652cd628bb96740d12cb3cce662b725e3` |
| 129 | `def` | [codRestrict](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/codrestrict.md) | 738 | `declaration-track:d0ba27c119e74117dd52f91493450160e592258af86a26710f14a7e3357a79b3` |
| 130 | `theorem` | [codRestrict_apply](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/codrestrict-apply.md) | 742 | `result-track:ef3cdcb13e49ca49a44523380057e96b796100bd0197d1a5422929cb98edcb53` |
| 131 | `theorem` | [injective_codRestrict](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/injective-codrestrict.md) | 746 | `result-track:d7c8af96d8d16d422f85cf436cc3e317a15835efa957083f170a1d1c6b5f310e` |
| 132 | `theorem` | [rangeS_codRestrict](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/ranges-codrestrict.md) | 750 | `result-track:4627851a207c57b20c3288757fd8a26bff39539a0349cab76397faf72bdf8e64` |
| 133 | `theorem` | [surjective_codRestrict](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/surjective-codrestrict.md) | 754 | `result-track:c217edba72af61e191d7bad3b718ec77ca46720297882f6e976bfb54d29e1d5e` |
| 134 | `def` | [restrict](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/restrict.md) | 759 | `declaration-track:2220152d0b13efdbaa08698e4107185930a9a3620daaf97b9991cb70391e8734` |
| 135 | `theorem` | [coe_restrict_apply](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/coe-restrict-apply.md) | 763 | `result-track:add082ae38871987fe76290ebae2f45033a1fd2d12f96f4fca7a0daa2c287318` |
| 136 | `theorem` | [comp_restrict](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/comp-restrict.md) | 768 | `result-track:7aa3d50d0b9e3ca20b992f8e9a85590c617be154cd287a727c31c7b2fbe021a3` |
| 137 | `theorem` | [domRestrict_comp_codRestrict](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/domrestrict-comp-codrestrict.md) | 773 | `result-track:7b3a77bd2eb2c17a1746b044503cd974b3f023da1a4c6ae6b628f9784f4b65ad` |
| 138 | `def` | [rangeSRestrict](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/rangesrestrict.md) | 781 | `declaration-track:89e2f5374f4585153372cfe01ee1672853b43f4aa57e446fdf550f0a585a6928` |
| 139 | `theorem` | [coe_rangeSRestrict](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/coe-rangesrestrict.md) | 785 | `result-track:1e6f26480981570ce940c6bebe420c60862e5f5de99500b485de2b7cf6f19955` |
| 140 | `theorem` | [rangeSRestrict_surjective](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/rangesrestrict-surjective.md) | 788 | `result-track:a4e4492f946ea06c132a7dbc9545c8b072d536fc01cd64665a007451c9ea0f66` |
| 141 | `theorem` | [rangeS_top_iff_surjective](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/ranges-top-iff-surjective.md) | 793 | `result-track:eaba1fd948c90242150c64f7f72d1a804bf06366fbb0d61ba7ea83c94d957c55` |
| 142 | `theorem` | [rangeS_top_of_surjective](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/ranges-top-of-surjective.md) | 799 | `result-track:104381a87a0f103072f75248541a024f5bd770be2c4f5fc0f15af7651875e072` |
| 143 | `theorem` | [eqOn_sclosure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/eqon-sclosure.md) | 804 | `result-track:6dbb12a05366fa9eac55ab84dce16f967e98f7a1dabe3e9a9707f51b5efd1ac7` |
| 144 | `theorem` | [eq_of_eqOn_stop](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/eq-of-eqon-stop.md) | 807 | `result-track:52a50d269b4f13a77df34d50a542d224b7f88e9db7971eb372c01c6f9e776ef7` |
| 145 | `theorem` | [eq_of_eqOn_sdense](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/eq-of-eqon-sdense.md) | 810 | `result-track:ce129c8dc8548fbb448b802fdb086eedb74161581650d9e66175a35c797d4bc2` |
| 146 | `theorem` | [sclosure_preimage_le](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/sclosure-preimage-le.md) | 814 | `result-track:8f15a7a8e5073370164fd6a31298e4390f06e54d78cf490c72d69386c22f9857` |
| 147 | `theorem` | [map_closureS](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/map-closures.md) | 819 | `result-track:b61270424ae44f826ef81d7c08e627635820649049a8d6799c26357cf26fc7b6` |
| 148 | `theorem` | [domRestrict_comp_rangeSRestrict](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/domrestrict-comp-rangesrestrict.md) | 824 | `result-track:3eccb36caebd67c46bde81364abd74b38c7a607f69b1b58527bc92d60f568bc8` |
| 149 | `def` | [inclusion](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/inclusion.md) | 835 | `declaration-track:08518dabe3542cca843fcae96e5b1ec54c6df353e4e8a44c21a246317bbbe252` |
| 150 | `theorem` | [inclusion_injective](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/inclusion-injective.md) | 838 | `result-track:1bfaece130f64a823b4fd1318cfd96d4fca8b12ff0d8d199482deb56f11a126c` |
| 151 | `theorem` | [rangeS_subtype](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/ranges-subtype.md) | 842 | `result-track:727c9cd35babbde1462d3e3d893a0e5629b1fae5cfb66927212ccb81218e1d91` |
| 152 | `theorem` | [range_fst](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/range-fst.md) | 846 | `result-track:722d4b43b79fa102e280c295ad6a4612a2683033d0f285c3032043c21a9a0334` |
| 153 | `theorem` | [range_snd](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/range-snd.md) | 850 | `result-track:759bc73e2b7e6a4571044e9286101614e83aab1ca8ffc9ef58f788b3cbbc56e6` |
| 154 | `theorem` | [prod_bot_sup_bot_prod](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/prod-bot-sup-bot-prod.md) | 854 | `result-track:328f9512bc028cf985c38b520544c939e2403899ddb4acb787c6f0947f72819b` |
| 155 | `def` | [subsemiringCongr](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/subsemiringcongr.md) | 870 | `declaration-track:46f1c9a637b561fc36ee5643e614d818198343f385a2f2dbc9c313a8b6d42cc2` |
| 156 | `def` | [ofLeftInverseS](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/ofleftinverses.md) | 877 | `declaration-track:d77989922d3749b17c3e365f5f31823d63fbc5fc993de4383aeb3e0a853ebba0` |
| 157 | `theorem` | [ofLeftInverseS_apply](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/ofleftinverses-apply.md) | 888 | `result-track:3923a701f893aa94d57aaa4086160e98479a405be4c9c44831cef8f4ff6f426d` |
| 158 | `theorem` | [ofLeftInverseS_symm_apply](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/ofleftinverses-symm-apply.md) | 893 | `result-track:c91bb801921aeac601b261237efba36f949645ff8a4744669f2a0307dca934b5` |
| 159 | `def` | [subsemiringMap](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/subsemiringmap.md) | 899 | `declaration-track:f283248b348f85228f7756dd91fc020af5a7cae6eac09855515565fab2bd0ce7` |
| 160 | `theorem` | [subsemiringMap_apply_coe](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/subsemiringmap-apply-coe.md) | 903 | `result-track:a8ae860ca64bc9913d6dd1b999ee8ef0c84eef2425ab6739f5ba052004508219` |
| 161 | `theorem` | [subsemiringMap_symm_apply_coe](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/subsemiringmap-symm-apply-coe.md) | 908 | `result-track:3baeda02c851982426400aa2c728a31d407ee99d89d462b32956b747ce8826fc` |
| 162 | `instance` | [smul](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/smul.md) | 937 | `declaration-track:1b65b2fc4ecfd100a969819d92cc2812a450b4795e2c7972e3cd19606ca9487c` |
| 163 | `theorem` | [smul_def](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/smul-def.md) | 940 | `result-track:87553f3a9fe476d60c69ded7a504eb7bde79d89dd0154b15d313f1dbce4ae500` |
| 164 | `instance` | [smulCommClass_left](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/smulcommclass-left.md) | 943 | `declaration-track:b48bc56d33ff3edc1747e9b403e1954cfdd16b96a78ebfd6a771744d17f2d512` |
| 165 | `instance` | [smulCommClass_right](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/smulcommclass-right.md) | 947 | `declaration-track:f2edfed2693e9750b316c258c427f51abfbcaa804cabc512d118b19671b78f9b` |
| 166 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/instance-source-edition-6.md) | 951 | `declaration-track:77fc03b85b132ddf2f399451390302d3250e753aa0fecaddf5f669bad5f64145` |
| 167 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/instance-source-edition-7.md) | 955 | `declaration-track:98f5ff791a8da4306e0cea44f65250733d20a56ce28abd41f34df85befe4ff65` |
| 168 | `instance` | [isScalarTower](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/isscalartower.md) | 960 | `declaration-track:fb83bc9fc55ac4efa1e3cfe23bdc7160ed66a0e0a2fee8e404fb328fd56acc72` |
| 169 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/instance-source-edition-8.md) | 965 | `declaration-track:a7994631290d57e2580f19d8d49cc8139d25439feb189f88492a25f145ade76b` |
| 170 | `instance` | [faithfulSMul](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/faithfulsmul.md) | 969 | `declaration-track:67fdb5f162cba4d827f28cc7afa1af13a895ce1daa0e26470036cd786f0e4084` |
| 171 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/instance-source-edition-9.md) | 972 | `declaration-track:bf006e2702286a0cd2e691d7138b6afb1ff6eb2a284646bc1bda97659205105f` |
| 172 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/instance.md) | 978 | `declaration-track:0cf0df495531f955535cb001ca124ea77fdcff662c05926ff824de7d14ca9d0a` |
| 173 | `instance` | [mulAction](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/mulaction.md) | 986 | `declaration-track:c9c1c77235b1b024b2dd21beb08eff1d86703db0ff98599ded550e5353481846` |
| 174 | `instance` | [distribMulAction](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/distribmulaction.md) | 990 | `declaration-track:aa96d2cfd86f1e7c2f0f214d67d8bbe0626546520db5c49a193020ce4e75be64` |
| 175 | `instance` | [mulDistribMulAction](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/muldistribmulaction.md) | 995 | `declaration-track:987aa7aa6f187bf5253093d0824b67763fa007f5610bdb2414f5fa21b9e27b3b` |
| 176 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/instance-source-edition-4.md) | 999 | `declaration-track:63c7304a202b6982f7c773bc2c7e5df9527e4f30036494d17539a579bed2d99b` |
| 177 | `instance` | [mulActionWithZero](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/mulactionwithzero.md) | 1005 | `declaration-track:5d40602eb3e0af4a734b297d811026f3b17be5ceb38e8df9de16dafe7f840b2e` |
| 178 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/instance-source-edition-12.md) | 1009 | `declaration-track:f546ecf15e9e2521fa8dddd5da4cc678c83a9ef6556269d6f15e31eee3359148` |
| 179 | `instance` | [module](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/module.md) | 1016 | `declaration-track:ec87458548c94c04e5c865b22db5425e20fbe98f5baa49893125347e88bc4ccd` |
| 180 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/instance-source-edition-11.md) | 1020 | `declaration-track:cd052e779375ae84af6698c4142cdf1f7d6c34dccd737048921385b988d56efc` |
| 181 | `instance` | [center.smulCommClass_left](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/center-smulcommclass-left.md) | 1024 | `declaration-track:ae568f67ef924771912308261cbd1fddb123596cfba7eaccd776860b6c7eaa47` |
| 182 | `instance` | [center.smulCommClass_right](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/center-smulcommclass-right.md) | 1028 | `declaration-track:cabf7af8cd0059bacd81347a40807306adc0b6a2e3ac74237ca7e4cb194540d2` |
| 183 | `lemma` | [closure_le_centralizer_centralizer](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/closure-le-centralizer-centralizer.md) | 1031 | `result-track:9ccc0b11fe473e859ff5524653e6b7080c345b16c6a82acf4c3fead5421b73e8` |
| 184 | `theorem` | [isMulCommutative_closure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/ismulcommutative-closure.md) | 1036 | `result-track:72a15b88793c4aad2d1f19fac4e633577ab06907793f4c06050db9dc5886bd10` |
| 185 | `abbrev` | [closureCommSemiringOfComm](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/closurecommsemiringofcomm.md) | 1045 | `declaration-track:9e2dc7423e58c9aff24ea71cbe936e67ae5f8b2e4f96c3d95b7775539db39bd7` |
| 186 | `instance` | [instIsMulCommutative_closure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/instismulcommutative-closure.md) | 1050 | `declaration-track:e3db7eb7effbfbf98e228baca6c3e6c4cced949860461ad17f41b78b4999a1fc` |
| 187 | `theorem` | [map_comap_eq](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/map-comap-eq.md) | 1060 | `result-track:1a46e0639bde1904efa04d64a18507a822ba9a589a8011feff5567746f9c3961` |
| 188 | `theorem` | [map_comap_eq_self](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/map-comap-eq-self.md) | 1063 | `result-track:ea30f9b64b1c3593902695660e6fab69830374cc4187366fe96379e0aa46d28a` |
| 189 | `theorem` | [map_comap_eq_self_of_surjective](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/map-comap-eq-self-of-surjective.md) | 1067 | `result-track:c485cf4e53b7cb4cfd2f74a506ea3168a29dfbf6023d277d024ed3cf2c612d43` |
| 190 | `theorem` | [comap_map_eq_self_of_injective](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicPublic.lean/declarations/comap-map-eq-self-of-injective.md) | 1071 | `result-track:f69e2c89f9b033b28adb564cae0a70c9cfdb1ef204565e04f66baaae189e7ae7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90dfe71c09fb83493f14e85e574e243d6135f21d7fa5da18dc58050e4b403b9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb5991a6f5e5b583c03dbd685449f12e4a09e4c4887696849643715b8ea613e40.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb5991a6f5e5b583c03dbd685449f12e4a09e4c4887696849643715b8ea613e40.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
