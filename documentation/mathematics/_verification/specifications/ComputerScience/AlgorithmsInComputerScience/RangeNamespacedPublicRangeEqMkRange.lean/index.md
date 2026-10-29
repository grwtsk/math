# Verification target: Range Namespaced Public Range Eq Mk Range

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20193feaa79860530d756cbfaadc7a9b3bc5b59e",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant17cfa232e53dae3b8d4e95f6963e1c95075237234b2aacb96ddd90ab585d5d86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20193feaa79860530d756cbfaadc7a9b3bc5b59e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant17cfa232e53dae3b8d4e95f6963e1c95075237234b2aacb96ddd90ab585d5d86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant17cfa232e53dae3b8d4e95f6963e1c95075237234b2aacb96ddd90ab585d5d86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Find` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Range` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.MapIdx` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Zip` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toArray_range'](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/toarray-range.md) | 45 | `result-track:751bef64b8736e4e65db9a8adbcb22e697201d3d1f3d61520a24fc3a329d84ca` |
| 2 | `theorem` | [range'_eq_mk_range'](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/range-eq-mk-range.md) | 49 | `result-track:2092c0d6ea2e7f5521b064e20109ab2744829fa722c1de625841677a146997de` |
| 3 | `theorem` | [getElem_range'](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/getelem-range-source-edition-3.md) | 53 | `result-track:e4b30b2dc63f0414f1a4696ee61c5b4df814e72b1aa64e1e66c146081d49cc77` |
| 4 | `theorem` | [getElem?_range'](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/getelem-range-source-edition-2.md) | 57 | `result-track:d7a8e7ce86c7ff8dd93d1fa0bfbcd221b9bb13981b1991b7d7a6068ccd8d1395` |
| 5 | `theorem` | [range'_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/range-succ.md) | 61 | `result-track:0c440bb919f106852309a065d86dec9973b06af3c00b6ccdd691fbb06ac67dd3` |
| 6 | `theorem` | [range'_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/range-zero.md) | 67 | `result-track:0475cee7f798ef45593154a21d8dfb1b9e94704d6463964f19b007775d525aa5` |
| 7 | `theorem` | [range'_one](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/range-one.md) | 70 | `result-track:e384dfd66937852797a6a259630f5fa6d97a5da84ae5fc827240141519b7397d` |
| 8 | `theorem` | [range'_inj](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/range-inj.md) | 72 | `result-track:7d87b9b552047c12c31363c631ece73b5678152a5402381756f40154cb95a899` |
| 9 | `theorem` | [mem_range'](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/mem-range-source-edition-2.md) | 77 | `result-track:f9e8828265a1a0f0a5b3e62a901da4be4cfffa8e4006162455348c157efab583` |
| 10 | `theorem` | [pop_range'](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/pop-range.md) | 81 | `result-track:1d4417ab73f16115f91ea99450efaf1660d945f2dd40e3db5db1c6ed09ca1538` |
| 11 | `theorem` | [map_add_range'](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/map-add-range.md) | 84 | `result-track:2f66e0b3cb6161b4c31cc697768117f0d9f72be8bfb8f5087e4a5455b0e0e164` |
| 12 | `theorem` | [range'_succ_left](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/range-succ-left.md) | 87 | `result-track:15d31ddcbfbca77b24f8b1bd1a35cee73401b5216f0b5d409b41e44c3af171d5` |
| 13 | `theorem` | [range'_append](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/range-append.md) | 90 | `result-track:adc64fba1c3fde9237d4177a1f940af5d0edbe8f126ad9a15b2f8b0ab8a860b9` |
| 14 | `theorem` | [range'_append_1](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/range-append-1.md) | 100 | `result-track:51c07eeb9f7b2b3fc897e3a6ba605c4ab07a9bcba07839ca502c6b644c7a6f76` |
| 15 | `theorem` | [range'_concat](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/range-concat.md) | 103 | `result-track:35c6b843de94bc34ab909b465f5e867af22d23afbd394729cbd11ffcb3a4ae08` |
| 16 | `theorem` | [range'_1_concat](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/range-1-concat.md) | 106 | `result-track:0e290284fa8fe986c87a9b0a9e3551dc3eff4fad48b034d3effd9d5a80f2ead1` |
| 17 | `theorem` | [mem_range'_1](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/mem-range-1.md) | 109 | `result-track:7f96a3c4682f6920079aec88d43a21e53230af644ba8273000d9cc51687b26fb` |
| 18 | `theorem` | [map_sub_range'](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/map-sub-range.md) | 114 | `result-track:bcd6ee57543abd32cca3132fe7e49f2277e54be101b99116d8b47de95356e291` |
| 19 | `theorem` | [range'_eq_append_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/range-eq-append-iff.md) | 120 | `result-track:4b098e0d9d30e8add84853fa42b1c5e4306c37c60d01842940a5cf090b8f01e6` |
| 20 | `theorem` | [find?_range'_eq_some](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/find-range-eq-some.md) | 132 | `result-track:3ed58d7dfa3c18a277efc7aa6593e0ce944ac8ddacf960a7bd0169b10f2546e8` |
| 21 | `theorem` | [find?_range'_eq_none](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/find-range-eq-none-source-edition-2.md) | 136 | `result-track:ebc696a927e399e97b088e517ee87b16b5c9ab124d8fbcf58b421e7b3ee71924` |
| 22 | `theorem` | [count_range'](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/count-range.md) | 141 | `result-track:b4ebb904e30137991c9c8a7a216d05c156469fc9deaf78eff3b0ebdd8b4c4f55` |
| 23 | `theorem` | [count_range_1'](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/count-range-1.md) | 146 | `result-track:77815ea8ddcae2eb7338eae8d3423ce39381ae842eb83cac9110340b3f639a10` |
| 24 | `theorem` | [getElem_range](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/getelem-range.md) | 153 | `result-track:30f3f4529fa9428a264dc85348fc0deeaabdc616c01e9f8cb41f533843a1348f` |
| 25 | `theorem` | [range_eq_range'](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/range-eq-range.md) | 157 | `result-track:5a44c6e89fd01f504521b14111bdc71f77fa17f4c25ba590f4192a1f8d13419a` |
| 26 | `theorem` | [range_succ_eq_map](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/range-succ-eq-map.md) | 160 | `result-track:f9f06a0a22e56a3f065b95c44c248a46217da4dddf5b52aef42a9a295083b73c` |
| 27 | `theorem` | [range'_eq_map_range](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/range-eq-map-range.md) | 166 | `result-track:e8e339d07a1093eb19031acb37403d350848772adaffb2861acc059ce6edd6ca` |
| 28 | `theorem` | [range_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/range-succ-source-edition-2.md) | 170 | `result-track:738521df3d96cc8dc39f3f33a16ea22f6dd0ed9405703a8283fa9629f690b4c5` |
| 29 | `theorem` | [range_add](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/range-add.md) | 174 | `result-track:a4bab45e91d1e22fc57ee099e02f2f45a8d76e9a27656b4d5f60ff163d45cc09` |
| 30 | `theorem` | [reverse_range'](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/reverse-range.md) | 178 | `result-track:7185fa48f62878f66e8561a1ef2fd0b86d37bbfe5a705ab93de1b181a5a2f95f` |
| 31 | `theorem` | [mem_range](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/mem-range.md) | 182 | `result-track:6da2ec9fa29d504a265697a67150c3442e6c8866cd48a97ffba3eff8c501910f` |
| 32 | `theorem` | [not_mem_range_self](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/not-mem-range-self.md) | 185 | `result-track:166e203aa02fe251780afc9929b738dfaf0036c244dfb1743cdc79cf8dc802fe` |
| 33 | `theorem` | [self_mem_range_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/self-mem-range-succ.md) | 187 | `result-track:a295b5babaf94c8385ebf8b6366eb2a76d3dc35fbd5f38e624611b00c62935b1` |
| 34 | `theorem` | [take_range](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/take-range.md) | 189 | `result-track:0768d1444101cee2dd7e4e5572c4560e6c9f8f4930b4f89de0ef0f8bd4c96d78` |
| 35 | `theorem` | [find?_range_eq_some](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/find-range-eq-some-source-edition-2.md) | 194 | `result-track:5f330d3e46f7f43bb2aef19d07c481ddd8753dafa9a8c4ee6d8ee6b04c5a29b8` |
| 36 | `theorem` | [find?_range_eq_none](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/find-range-eq-none.md) | 198 | `result-track:7d9966dfd917cd0fd219c78c2b76d4150a6a78f220538ccd7be5753e0e7a0917` |
| 37 | `theorem` | [count_range](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/count-range-source-edition-2.md) | 203 | `result-track:f8ed024e339971de44b1294de737dcc11725276ad9e2c281d8f10a2568909871` |
| 38 | `theorem` | [getElem?_zipIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/getelem-zipidx.md) | 211 | `result-track:39408609b05d0069743837665e36127c18c564af37701f1ab13ea51f6cad2a4c` |
| 39 | `theorem` | [map_snd_add_zipIdx_eq_zipIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/map-snd-add-zipidx-eq-zipidx.md) | 214 | `result-track:6dcbd8fa61a65db8ff58a7694bbbea55a5c4067e4aa097e8f6e8256bd5ae40f2` |
| 40 | `theorem` | [zipIdx_map_snd](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/zipidx-map-snd.md) | 220 | `result-track:079601ca406b0d9b65d00b552092f0dad69682d671a6e1db57e0185322c086b9` |
| 41 | `theorem` | [zipIdx_map_fst](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/zipidx-map-fst.md) | 226 | `result-track:a1a0496c8a8c6f59c22a44b7f1da1210e8f89de99d0cdaefed311a988472cc3f` |
| 42 | `theorem` | [zipIdx_eq_zip_range'](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/zipidx-eq-zip-range.md) | 230 | `result-track:78084ee9fea26a2c8a743452424ff07efbaceca3df79637b7ffab11554d489fb` |
| 43 | `theorem` | [unzip_zipIdx_eq_prod](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/unzip-zipidx-eq-prod.md) | 234 | `result-track:b8e18e2d529d0f4852285b921fb32ae7555f96ec7df1dbedd23c34bb926d5056` |
| 44 | `theorem` | [zipIdx_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/zipidx-succ.md) | 240 | `result-track:3ad9bf25ea07dd75f5101d1f3bbf6721b47db899e0f7493e5f98af94cbb54649` |
| 45 | `theorem` | [zipIdx_eq_map_add](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/zipidx-eq-map-add.md) | 247 | `result-track:b1614aae9f62e8013507d9242563343d903033491f1962fd6a8acf95b3277db2` |
| 46 | `theorem` | [zipIdx_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/zipidx-singleton.md) | 254 | `result-track:042b85f6a0c46120a135e706b3a0f6997bc428fff4a4d4d2b9090e2dbdf2450d` |
| 47 | `theorem` | [mk_add_mem_zipIdx_iff_getElem?](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/mk-add-mem-zipidx-iff-getelem.md) | 257 | `result-track:9ab573b633bb028ffc0782b7ae25078b24ab2ebb2205a61e71c645fbc19dceb9` |
| 48 | `theorem` | [le_snd_of_mem_zipIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/le-snd-of-mem-zipidx.md) | 261 | `result-track:2408564d45fa57d8f0f1785ab66164b978ac3bc9ecbeed998e966212cefc875f` |
| 49 | `theorem` | [snd_lt_add_of_mem_zipIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/snd-lt-add-of-mem-zipidx.md) | 265 | `result-track:85c9e0b4978bc8e7a26043f68c698d7748c69daaf98d2775c5a5079cdf47c773` |
| 50 | `theorem` | [snd_lt_of_mem_zipIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/snd-lt-of-mem-zipidx.md) | 270 | `result-track:15448c11323160466072b895934252cc5adcb15ad21c21c28db19b054f2a442d` |
| 51 | `theorem` | [map_zipIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/map-zipidx.md) | 274 | `result-track:be1732487981ce5e1b789bb17bb0402297220ecb74810b1f99b63616ad48a879` |
| 52 | `theorem` | [fst_mem_of_mem_zipIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/fst-mem-of-mem-zipidx.md) | 279 | `result-track:5968d2e4793f56ff5152e831f2a2ff6e81a5e225f9b563eac06ebbf635d5a3de` |
| 53 | `theorem` | [fst_eq_of_mem_zipIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/fst-eq-of-mem-zipidx.md) | 282 | `result-track:54a44a288798947d9d927e1a8ad4a30d14bb81f473343646c2b8ef0412a54a13` |
| 54 | `theorem` | [mem_zipIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/mem-zipidx-source-edition-2.md) | 287 | `result-track:931b0503f527c5cda3f24590db55aa9d24853a8060a1ed0e8e30214cf0a4094a` |
| 55 | `theorem` | [mem_zipIdx'](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/mem-zipidx.md) | 293 | `result-track:4b89ef0956cdc5fc21239db59bbb9fa9b902771c1c1bf03bae7c9356dd4337c4` |
| 56 | `theorem` | [zipIdx_map](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/zipidx-map.md) | 297 | `result-track:efce0b66c737aa003b76909bae539de4f342faca2b0f2cde73d2b6d591c0998a` |
| 57 | `theorem` | [zipIdx_append](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/zipidx-append.md) | 303 | `result-track:36a866160ba3eb69df3c3debaba355d2a57ef016bf517baad7723b6db6aa612c` |
| 58 | `theorem` | [zipIdx_eq_append_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/RangeNamespacedPublicRangeEqMkRange.lean/declarations/zipidx-eq-append-iff.md) | 309 | `result-track:b16e297628ca69e1aa3a1ce49703b46fa370a01ebed76b32ced73de9943af181` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2cc5e9b52b27399d7d48a1db0ef50a1d69cd15b240f268821d0a40da00edf418 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant17cfa232e53dae3b8d4e95f6963e1c95075237234b2aacb96ddd90ab585d5d86.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant17cfa232e53dae3b8d4e95f6963e1c95075237234b2aacb96ddd90ab585d5d86.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
