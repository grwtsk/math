# Verification target: Range Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1f43031a2d0784942c694504af1a832e0c61be3",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Range/Variant620df07f9aa7783a9e98fa3aa5378cca5866f0661dd074963fa33daceeb55456.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1f43031a2d0784942c694504af1a832e0c61be3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Range/Variant620df07f9aa7783a9e98fa3aa5378cca5866f0661dd074963fa33daceeb55456.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Range/Variant620df07f9aa7783a9e98fa3aa5378cca5866f0661dd074963fa33daceeb55456.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Ker` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.RestrictScalars` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Range` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [range](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range.md) | 64 | `declaration-track:6af0b135d218301dc7c4ff0b081976ccf84aba7dceff6264087810c078872238` |
| 2 | `theorem` | [range_coe](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range-coe.md) | 67 | `result-track:7aabf6a8f911a85b157df59224be0bf7ffa2ee754ae1dad94a7d9bc346be8498` |
| 3 | `theorem` | [range_toAddSubmonoid](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range-toaddsubmonoid.md) | 70 | `result-track:6f9d64396f9a129954d0eb59793f9c7ed78e748c19e8a211e066d0abc10b4fb2` |
| 4 | `theorem` | [mem_range](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/mem-range.md) | 75 | `result-track:636389fd471b60329a76ed5d8e0a51ce691e7fbaabc0bd0e2e84cf64bef36258` |
| 5 | `theorem` | [range_eq_map](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range-eq-map.md) | 78 | `result-track:0045e7c047998d9c42e809adde899d1ae3ac88659f15ec91fb609c01176d94e9` |
| 6 | `theorem` | [mem_range_self](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/mem-range-self.md) | 82 | `result-track:1884eb0c2c2a37f8b7e817fbaa9239837e8612bd18d42532fc627f1cb658b0ab` |
| 7 | `theorem` | [range_id](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range-id.md) | 86 | `result-track:e661f28c2d3085780ef027fc8b54e1013ed27e3c5a2734402728de9b1ae8e0b7` |
| 8 | `theorem` | [range_comp](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range-comp.md) | 89 | `result-track:52c3295c939ad7df7fd51de56462924915013b13850bdbe3186700b9b2288119` |
| 9 | `theorem` | [range_comp_le_range](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range-comp-le-range.md) | 93 | `result-track:884b8543f4acbe9f2e81e466bdf3dd1d05665fe4804f5323bf8566cc422f4824` |
| 10 | `theorem` | [range_eq_top](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range-eq-top.md) | 97 | `result-track:3033063514a852aa152b205bba9a371d707499d366ca7396a9fb147451513624` |
| 11 | `theorem` | [range_eq_top_of_surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range-eq-top-of-surjective.md) | 101 | `result-track:2b7925285f30656fb0381741ddbd179298104a401d9d49f977ae6efbcdfa5b02` |
| 12 | `theorem` | [range_le_iff_comap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range-le-iff-comap.md) | 104 | `result-track:ef1c8bc58f9830482c0a75226123360e079f51e58b75f9b6ce0d05e4b12adff5` |
| 13 | `theorem` | [map_le_range](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/map-le-range.md) | 107 | `result-track:8bd6bb9e025f1d9a938009ccf2a1b21f38fbf0c47a1a632fae8af2a4b59bbb5f` |
| 14 | `theorem` | [range_neg](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range-neg.md) | 111 | `result-track:5dc3d6026d60647cbfb1ad2926ed2bafdafceadd42cc4890ec0730472cc1fb46` |
| 15 | `lemma` | [range_domRestrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range-domrestrict.md) | 117 | `result-track:117bbb717754a412449e8f0b71cdccd30575b49b49c4ee4e68b38c8aa3ef759b` |
| 16 | `lemma` | [range_domRestrict_le_range](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range-domrestrict-le-range.md) | 120 | `result-track:e1f16d540cd82ee0ee29f01895b4f24c691fdaab1219c342cd6d75f8449577db` |
| 17 | `theorem` | [Range Namespaced](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/coe-tointlinearmap-range.md) | 126 | `result-track:adb98efdb245996c7a8bea3dd46f0223c637ab7850735b4774a52beec7c12d46` |
| 18 | `lemma` | [Range Namespaced](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/map-comap-eq-of-le.md) | 130 | `result-track:b555389a7679400b414f0bcd7dbf7ef245e4edb62196a2535ef39a693eea32c1` |
| 19 | `lemma` | [range_restrictScalars](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range-restrictscalars.md) | 134 | `result-track:fcffd19aa210f0ec758724b36316a8c3cbc201815f2b4d930f2b002b8d4e01c9` |
| 20 | `def` | [iterateRange](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/iteraterange.md) | 143 | `declaration-track:b506dc4ace1859910b7ec1d33c0e8504b89e56858f0183036828b5352f43739e` |
| 21 | `abbrev` | [rangeRestrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/rangerestrict.md) | 156 | `declaration-track:06fdf8a8553265a7c9197ad3f3304ff81849932496467c93e1d8380e92eed407` |
| 22 | `instance` | [fintypeRange](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/fintyperange.md) | 162 | `declaration-track:ede8308a125904f27f60396163d84dd920c7936dc2944cb8b8853c4cec6a2ec8` |
| 23 | `theorem` | [range_codRestrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range-codrestrict.md) | 168 | `result-track:b7efb994b06cfb8cc0ebac90146fa1aa713feba3536c5720085fba42181fd4c1` |
| 24 | `theorem` | [Range Namespaced](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/map-comap-eq.md) | 173 | `result-track:9283c3f92171ffa4ca71ca147346e2bf14e68e11c5a6e73932d2a16c0d034a99` |
| 25 | `theorem` | [Range Namespaced](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/map-comap-eq-self.md) | 178 | `result-track:e5d704904f97e0b9a5c4c12863b2a43b682dd9b634a2320ae1fe6975028e0396` |
| 26 | `theorem` | [range_zero](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range-zero.md) | 182 | `result-track:8d89f89a53a74f5d9712aae6f4c061bec6982cfac3e440f7bd55b73eec23eb8f` |
| 27 | `theorem` | [range_le_bot_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range-le-bot-iff.md) | 189 | `result-track:2e9eb7b371271887f905684d8eed3fe6319ae6d0073646e31aa97175c953ff06` |
| 28 | `theorem` | [range_eq_bot](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range-eq-bot.md) | 192 | `result-track:a1dc6d0545835aae4498a685841ad42adca473e9896b44197f8f1f9798456861` |
| 29 | `theorem` | [range_le_ker_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range-le-ker-iff.md) | 195 | `result-track:11858adee26e5df723f10e94d613f04048e7ddd54c901bb027c94880d986143a` |
| 30 | `theorem` | [comap_le_comap_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/comap-le-comap-iff.md) | 200 | `result-track:7e9ff3fbbd34b5bed35141a29445f3384150b3e951230580e5f0cb99594fa417` |
| 31 | `theorem` | [comap_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/comap-injective.md) | 203 | `result-track:154bea8465c2d580d086a2adb6a58f0077a50157536dd43ebf13b37d017e288b` |
| 32 | `theorem` | [ker_eq_range_of_comp_eq_id](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/ker-eq-range-of-comp-eq-id.md) | 207 | `result-track:0bd64a429302cb981fab2ddcdd603177fbe81327b0a6e08f9ebd076a9c756bd1` |
| 33 | `theorem` | [range_toAddSubgroup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range-toaddsubgroup.md) | 228 | `result-track:794d52853ac87e232cae0a89e60f3ff7a2a26a438834934e7640c397735cc4e5` |
| 34 | `theorem` | [ker_le_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/ker-le-iff.md) | 232 | `result-track:85b46d692e1b6bdf5d63dc13cb518e28ed512dc12860536b8c558a2d9cf8a526` |
| 35 | `theorem` | [range_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range-smul-source-edition-2.md) | 260 | `result-track:da8c8e1bb266684374d448afd3528d45b23d85568d5ca7ef711aed60a7eb400f` |
| 36 | `theorem` | [range_smul'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range-smul.md) | 263 | `result-track:a535c5a227ef8b592187ff918e21dac3ecc8630520491ce862917dd7a281a72b` |
| 37 | `theorem` | [map_top](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/map-top.md) | 284 | `result-track:1e7b56a3bd08a7d76cb897429df22b8aca0e4228d841bd067f97b67073da6ed6` |
| 38 | `theorem` | [range_subtype](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range-subtype.md) | 287 | `result-track:b10c8e715d46fbd10427d321439088437bb4dfed24163fa90d63767bf013b462` |
| 39 | `theorem` | [map_subtype_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/map-subtype-le.md) | 289 | `result-track:721140346b58344b74e5b9804befe84e3d84832d9fe456b6d7759d44558d550a` |
| 40 | `theorem` | [map_subtype_top](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/map-subtype-top.md) | 294 | `result-track:abe9cefbad68cdd619775a876977f1bed91db570c0ecaad8851fe16b9ac061be` |
| 41 | `theorem` | [comap_subtype_eq_top](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/comap-subtype-eq-top.md) | 297 | `result-track:4b1752c18fe6e508b6d62d24d7b5f10324a8c2c5ba0bfa6967400f7a461435e8` |
| 42 | `theorem` | [comap_subtype_self](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/comap-subtype-self.md) | 301 | `result-track:b690042d99b9c5880b67d80a594aa269259d151d6aec88aff4e50ded239b922d` |
| 43 | `theorem` | [submoduleOf_self](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/submoduleof-self.md) | 304 | `result-track:e9c99351cbc1859f248a30c07015fdba70228c11021183a60e5f9ab369805d58` |
| 44 | `theorem` | [submoduleOf_sup_of_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/submoduleof-sup-of-le.md) | 306 | `result-track:28dd68f445383397da34eb1650f65fee790691d716d286f28aab31df91ddb500` |
| 45 | `lemma` | [comap_subtype_le_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/comap-subtype-le-iff.md) | 313 | `result-track:aa98161c5014e395e329dd8f5d7483b9e591be77bf57dc7ad1c52e02bad0375d` |
| 46 | `theorem` | [range_inclusion](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range-inclusion.md) | 318 | `result-track:3269a113b7136eb3637087f7e2bada9060adb0c527cf961684cef7cc83c50cc5` |
| 47 | `theorem` | [map_subtype_range_inclusion](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/map-subtype-range-inclusion.md) | 323 | `result-track:a52d223edf6b06fc0c861afb6e0b75e0dd6033ddc28345b475ef1c2e1452a0b4` |
| 48 | `lemma` | [restrictScalars_map](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/restrictscalars-map.md) | 326 | `result-track:87c7522f841d3d6014d78486406e8142a6caa23f8a6b66a51dd666ec59c4e9d0` |
| 49 | `def` | [MapSubtype.relIso](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/mapsubtype-reliso.md) | 333 | `declaration-track:15dd872a39c633f0464709918bdedbd47d16b6f51e52bfbb02ee7f9d41dacc29` |
| 50 | `def` | [MapSubtype.orderEmbedding](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/mapsubtype-orderembedding.md) | 345 | `declaration-track:1766fb1a5e1f8d1e629049d1a5aa3dbae4c0c765c40d5d2ae3e9021ea34a92d0` |
| 51 | `theorem` | [map_subtype_embedding_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/map-subtype-embedding-eq.md) | 350 | `result-track:adfd08e8061359c678f49bee7299a55f0eb3adc6124ee54ac968c46d24a0ad76` |
| 52 | `def` | [mapIic](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/mapiic.md) | 355 | `declaration-track:83837120ff58ed6c86e18d95597a7e92b075eb4cc1878381a3c447e7b1f87c90` |
| 53 | `lemma` | [coe_mapIic_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/coe-mapiic-apply.md) | 359 | `result-track:79420edf92955be1ead137784298f2f8323f7eb220d3cbc31639c1413bca21d9` |
| 54 | `theorem` | [ker_eq_bot_of_cancel](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/ker-eq-bot-of-cancel.md) | 379 | `result-track:a498e1238c56b025721e2c0dbc3a4f66dfbbd272812aab0ea73c19a42a9a1fd6` |
| 55 | `theorem` | [range_comp_of_range_eq_top](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range-comp-of-range-eq-top.md) | 386 | `result-track:bb9e6dd12da0488f59fcd95c7d2d84867d7d32afc7e218905a542d4bb2ee475c` |
| 56 | `def` | [submoduleImage](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/submoduleimage.md) | 394 | `declaration-track:2f06c223ab0c452e74c95c963f0384d9974c76329ddcd6a3f5ea8e02ebacf19f` |
| 57 | `theorem` | [mem_submoduleImage](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/mem-submoduleimage.md) | 399 | `result-track:533020ca55195630827e883e8ff43f8aa77fa2eb0a59bce91d2c8b10fd9fc14c` |
| 58 | `theorem` | [mem_submoduleImage_of_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/mem-submoduleimage-of-le.md) | 408 | `result-track:1a2e05566bdc71500e82da1828f60f7dc411b537965d071b5ab610ddc52692d5` |
| 59 | `theorem` | [submoduleImage_apply_of_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/submoduleimage-apply-of-le.md) | 417 | `result-track:486d993b4fa1a3879bee3af8c05b57b97ca84cc38fe2f09014a68d38ba02c8bd` |
| 60 | `theorem` | [range_rangeRestrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/range-rangerestrict.md) | 428 | `result-track:d9896301e1b10586145071ea0a42ade7ad6187b6696cff0610237e53907840e5` |
| 61 | `theorem` | [surjective_rangeRestrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/surjective-rangerestrict.md) | 430 | `result-track:68dc3723b07cc748cb848bd9ed932e58805cc5c26b93da9d153435c9fe60d458` |
| 62 | `theorem` | [ker_rangeRestrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/ker-rangerestrict.md) | 433 | `result-track:261e9f3b468e152c0bba9d8d83822d95adbf4eef7a4c72149fdf1b6037f917a6` |
| 63 | `theorem` | [injective_rangeRestrict_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespaced.lean/declarations/injective-rangerestrict-iff.md) | 435 | `result-track:32c9957d9f99537c82934dd1e3fdd0150ca26c485144478a0c8e6b632f1de735` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=16ec6b0a56cd75cea4cb4ee30d728be21982466c298dc5d2a470706592fec97d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Range/Variant620df07f9aa7783a9e98fa3aa5378cca5866f0661dd074963fa33daceeb55456.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Range/Variant620df07f9aa7783a9e98fa3aa5378cca5866f0661dd074963fa33daceeb55456.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
