# Verification target: Reflective Sum

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32a93c4758653263ab33bb578af15e9a25a3426f",
  "lexical_observation_count": 91,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ReflectiveSum.lean/index.md) · [Full source](../../../../Combinatorics/ReflectiveSum.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32a93c4758653263ab33bb578af15e9a25a3426f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.IntervalEvalDyadic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BKLNWSumConfig](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwsumconfig.md) | 60 | `declaration-track:904b7cdbe58b05babacff2ba6904e686e3d009f9e01c5f75e9023a27bf2db836` |
| 2 | `def` | [BKLNWSumConfig.default](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwsumconfig-default.md) | 68 | `declaration-track:fd7bd4ef6a14fab269b6660c8f687c0a4aec4804b648ae601c01d62dd6c19bb2` |
| 3 | `def` | [BKLNWSumConfig.fast](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwsumconfig-fast.md) | 71 | `declaration-track:aa24e47363b12e74034db6c33ad5ca57dbe782223fe1e895c87247d4c6f1b0a8` |
| 4 | `def` | [BKLNWSumConfig.highPrecision](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwsumconfig-highprecision.md) | 74 | `declaration-track:c3a35a9bf2e2dd487e71aaaefcbea1525d5f2994cddebcff55e636fa6b7437ba` |
| 5 | `def` | [BKLNWSumConfig.toDyadicConfig](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwsumconfig-todyadicconfig.md) | 77 | `declaration-track:d79337aa8b5d3f58204c36a0af4388eb3491a1dd469bf03837b2c96582edf1df` |
| 6 | `def` | [bklnwTermDyadic](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwtermdyadic.md) | 89 | `declaration-track:b110be154b8bb7530771ff89b2a5585a257d2022386b71d11e30d162d4858b33` |
| 7 | `def` | [zeroDyadic](../../../../Combinatorics/ReflectiveSum.lean/declarations/zerodyadic.md) | 96 | `declaration-track:f94cc0eb69d5d0a62a2d680261d548e4293918ae48406aa26a096f89533cb5d3` |
| 8 | `def` | [bklnwSumAux](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwsumaux.md) | 104 | `declaration-track:0bb937a56583e188b931b1f65bc70d07861579b1a22287a8bdfc66250bcf2576` |
| 9 | `def` | [bklnwSumDyadic](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwsumdyadic.md) | 123 | `declaration-track:01028f61656c74fdefb9b25c50669622d3c762eed3d7d4849f68f954c2ec6002` |
| 10 | `def` | [oneDyadic](../../../../Combinatorics/ReflectiveSum.lean/declarations/onedyadic.md) | 136 | `declaration-track:da73265129f4813e001f07bda59c13ee55fec11175e5d6691cbba38172c23161` |
| 11 | `def` | [bklnwTermFromLog](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwtermfromlog.md) | 140 | `declaration-track:fb727e6bb7a3bf87891772cd7fc175e63279f919e72ff2ac731cf8767109d6f4` |
| 12 | `def` | [bklnwSumAuxOpt](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwsumauxopt.md) | 149 | `declaration-track:1eab140dcedf8bc45de8f2c8bc6f8165f9baf0b9bb226aa4839efc194fc8545b` |
| 13 | `def` | [bklnwSumDyadicOpt](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwsumdyadicopt.md) | 165 | `declaration-track:b08fdf64c6c145524137ccdd8b1b54df49877804a777c3bc753a4cc1cdbdac2b` |
| 14 | `def` | [bklnwSumAuxCached](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwsumauxcached.md) | 184 | `declaration-track:ee0c9c77f31f8f0945dfa3c59ea616abfc83993144f37446bbd20f1c6e1a3c18` |
| 15 | `def` | [bklnwSumDyadicCached](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwsumdyadiccached.md) | 195 | `declaration-track:138bc3f75155e524b51a8a82d9c522226e369d4a7ab1f312123c7e73866365e6` |
| 16 | `def` | [checkBKLNWSumUpperBound](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwsumupperbound.md) | 212 | `declaration-track:711e1e16d1f327d776f656d66f1d6bf6c6e4a67b6120692434244fdd7fce8bf9` |
| 17 | `def` | [checkBKLNWSumLowerBound](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwsumlowerbound.md) | 219 | `declaration-track:c7b96f89a6899909014f8bd0f33e4345d9f866b7db1dad3a37135801f19071f2` |
| 18 | `def` | [checkBKLNWSumBounds](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwsumbounds.md) | 226 | `declaration-track:cda12739bcd9699716990b534155298136edf5fb099e7c0195a76e9e0b1d5565` |
| 19 | `def` | [bklnwSumExpDyadic](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwsumexpdyadic.md) | 241 | `declaration-track:101b1ddb533b069060cc1d240210b6a090616dad5f4caa727218098f91fdb2b8` |
| 20 | `def` | [bklnwSumExpDyadicOpt](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwsumexpdyadicopt.md) | 250 | `declaration-track:8bcc2249e4db1e34306fb5560306867489f289ccddd6383eb2488ecd12505f84` |
| 21 | `def` | [checkBKLNWExpUpperBound](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwexpupperbound.md) | 257 | `declaration-track:aae7c4ab64fdf95f806189d19338a1d4e05666e3ce8c725cbb0735d85f3f4df9` |
| 22 | `def` | [checkBKLNWExpLowerBound](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwexplowerbound.md) | 263 | `declaration-track:33292f7afb32c64f6da2ea7f6c5a60c9b1bf476cdccc2ae0ee3bf4a2ecfb14e0` |
| 23 | `def` | [checkBKLNWExpUpperBoundOpt](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwexpupperboundopt.md) | 269 | `declaration-track:d5f72a9e8282bcd43793dc27ed14638cef420d12ea7839e6f285cb4045772509` |
| 24 | `def` | [checkBKLNWExpLowerBoundOpt](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwexplowerboundopt.md) | 275 | `declaration-track:4e547d0b47ac1b3cea5f38fb148c94dafae2930e00c5a9e4b9c5338060e7a769` |
| 25 | `theorem` | [mem_zeroDyadic](../../../../Combinatorics/ReflectiveSum.lean/declarations/mem-zerodyadic.md) | 285 | `result-track:8c8e39da72fcdc27a75683b7cf0a7f81633419ba485cdcbf3aced9aa72231e81` |
| 26 | `theorem` | [IntervalDyadic.le_hi_of_mem](../../../../Combinatorics/ReflectiveSum.lean/declarations/intervaldyadic-le-hi-of-mem.md) | 291 | `result-track:41a169fdf4e0c307d1baaa676e5cec7ffcc658b30ae2bb964a4c767a0763f70f` |
| 27 | `theorem` | [IntervalDyadic.lo_le_of_mem](../../../../Combinatorics/ReflectiveSum.lean/declarations/intervaldyadic-lo-le-of-mem.md) | 295 | `result-track:f5c143e029c6772f8ab1b07505919bf53f8e6ab82f3170171fff8e295ea56b43` |
| 28 | `theorem` | [IntervalDyadic.upperBoundedBy_spec](../../../../Combinatorics/ReflectiveSum.lean/declarations/intervaldyadic-upperboundedby-spec.md) | 299 | `result-track:d82234f6b1636a946e8e4fd19484714938adf1e5510e0bf63d709913f30d64cb` |
| 29 | `theorem` | [IntervalDyadic.lowerBoundedBy_spec](../../../../Combinatorics/ReflectiveSum.lean/declarations/intervaldyadic-lowerboundedby-spec.md) | 305 | `result-track:d1d5bd5c21ac432d058e7d0680d10a466b1fcfa6898aa7aa06267cca488a3e3a` |
| 30 | `theorem` | [IntervalDyadic.mem_ofIntervalRat_of_Icc](../../../../Combinatorics/ReflectiveSum.lean/declarations/intervaldyadic-mem-ofintervalrat-of-icc.md) | 311 | `result-track:a9ee70f595bf689c313a079eef4d9290d05bc3d54ce59481c5d2e083b8733567` |
| 31 | `theorem` | [Finset.sum_Icc_eq_add_sum_Ioc](../../../../Combinatorics/ReflectiveSum.lean/declarations/finset-sum-icc-eq-add-sum-ioc.md) | 320 | `result-track:7782f2dd0e81768bcce3a6e317c00f80410be00d305dac7c9f401b6323272414` |
| 32 | `theorem` | [Finset.Ioc_eq_Icc_succ](../../../../Combinatorics/ReflectiveSum.lean/declarations/finset-ioc-eq-icc-succ.md) | 331 | `result-track:f230c90416c7294712a16f438aed4bce5126c1a22dfef6651d1a12a3d85594be` |
| 33 | `def` | [bklnwF](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwf.md) | 337 | `declaration-track:7691ea34d18322a5dd36fcc0d157ac431d40d083990a21e281e18960348eb7bc` |
| 34 | `def` | [bklnwExpTerm](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwexpterm.md) | 343 | `declaration-track:11072b261667fc99fccad0c071e7bc4ff22443cd3b6918d75da67f6cf4c8be93` |
| 35 | `lemma` | [bklnwExpTerm_antitone](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwexpterm-antitone.md) | 347 | `result-track:117f54e8b0a1cbdd2114bc267ffaac598b1b9fa42a9a171fb07246a17040f1c7` |
| 36 | `theorem` | [bklnwF_exp_tail_sum_le_card_mul_head](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwf-exp-tail-sum-le-card-mul-head.md) | 365 | `result-track:6e2b5f4737d0da381cb9fa08892650ee5bb6a6bcbdb423b9d4319faa8ba16745` |
| 37 | `theorem` | [bklnwF_exp_split](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwf-exp-split.md) | 391 | `result-track:bfcf587192a35a345a25a4b5b3d74ce406b3d272200dfaa3c46e19e28ea81c15` |
| 38 | `theorem` | [bklnwF_exp_tail_upper](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwf-exp-tail-upper.md) | 423 | `result-track:21400fba3b86676fd43f03a3e01ad007ac4f45cdb63184807669586b63fe92b7` |
| 39 | `theorem` | [bklnwF_exp_head_lower](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwf-exp-head-lower.md) | 442 | `result-track:9f4944539b53b68860c97b829f3ffb347e241c6dd3aa071437cadf0b471d834c` |
| 40 | `theorem` | [mem_bklnwTermDyadic](../../../../Combinatorics/ReflectiveSum.lean/declarations/mem-bklnwtermdyadic.md) | 456 | `result-track:ee266ed71ef3a90eeff41c82abb3d1c80f5de86dca40c45800aca1ffaf0fa25c` |
| 41 | `theorem` | [mem_bklnwSumAux](../../../../Combinatorics/ReflectiveSum.lean/declarations/mem-bklnwsumaux.md) | 473 | `result-track:39782cf20b2dee6a1d2241c4cd628acf7ebe94c7d909996d5d44ba2ef75663de` |
| 42 | `theorem` | [mem_bklnwSumDyadic](../../../../Combinatorics/ReflectiveSum.lean/declarations/mem-bklnwsumdyadic.md) | 517 | `result-track:06ca89735189a73ae59bfec34308fa363ee469c201741510f10a1cb2d3a1a8d4` |
| 43 | `theorem` | [IntervalDyadic.ofIntervalRat_lo_pos](../../../../Combinatorics/ReflectiveSum.lean/declarations/intervaldyadic-ofintervalrat-lo-pos.md) | 537 | `result-track:556713185c6b0aceccf0592a6273122ea32b0f1aa3152b4f3c7fecf1563a23c2` |
| 44 | `theorem` | [checkBKLNWSumUpperBound_correct](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwsumupperbound-correct.md) | 572 | `result-track:2216666855f0ac195ada0743625c7dcd5b76f4de7693086eb37daabbf8e861b1` |
| 45 | `theorem` | [checkBKLNWSumLowerBound_correct](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwsumlowerbound-correct.md) | 596 | `result-track:fb16d44d4295edbfb7eabf4b67e7289fcc8b9d4350e0d23bff7886723fcad2fb` |
| 46 | `theorem` | [IntervalRat.mem_singleton_nat](../../../../Combinatorics/ReflectiveSum.lean/declarations/intervalrat-mem-singleton-nat.md) | 621 | `result-track:462235077ad0608f8a5593bfcf7be320796615a384d62d5dc836514dd9b0a05b` |
| 47 | `theorem` | [mem_expIntervalDyadic](../../../../Combinatorics/ReflectiveSum.lean/declarations/mem-expintervaldyadic.md) | 626 | `result-track:16e7dc6cd59cb3243fcdb170b075a876c1c7b4245fe2158a153ffea100cfa9d3` |
| 48 | `theorem` | [mem_bInterval_nat](../../../../Combinatorics/ReflectiveSum.lean/declarations/mem-binterval-nat.md) | 636 | `result-track:fac5279b74efc2a360873ffed5fe0602f5696baae4f41dc03cd07432f33b3b74` |
| 49 | `theorem` | [mem_expB_of_nat](../../../../Combinatorics/ReflectiveSum.lean/declarations/mem-expb-of-nat.md) | 642 | `result-track:2e4185655d0b87bc65fd7de26ecb5fdfb3871498a01eacb474392bcc9137d3cd` |
| 50 | `def` | [checkExpComputableLoPos](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkexpcomputablelopos.md) | 653 | `declaration-track:0bc779e4cfa93307f5b4d33fa8efa0a57df784b0b921edc79e8bc708c09b0cca` |
| 51 | `theorem` | [checkExpComputableLoPos_spec](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkexpcomputablelopos-spec.md) | 657 | `result-track:8ed4d55a6fb8369005733129a6f148793583abf5623e82eb91964a71cc767824` |
| 52 | `def` | [checkExpBLoGe1](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkexpbloge1.md) | 665 | `declaration-track:fc176d8152f8186e0c91033a834ddab4e8076e2b748448b59a068e1b3ed8d56f` |
| 53 | `theorem` | [checkExpBLoGe1_spec](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkexpbloge1-spec.md) | 671 | `result-track:91c8f0de928de017d050a85bf99481b1b66316ba929874a8229ce09d4fab5d8f` |
| 54 | `theorem` | [expB_lo_pos](../../../../Combinatorics/ReflectiveSum.lean/declarations/expb-lo-pos.md) | 686 | `result-track:6a146401e101cabe0c2e0d2be3216ff2510d07c372a9b609092dfc5363959efa` |
| 55 | `theorem` | [verify_bklnwF_exp_upper](../../../../Combinatorics/ReflectiveSum.lean/declarations/verify-bklnwf-exp-upper.md) | 718 | `result-track:079eceaf5b1afde21efb454ba7c14559c1b96710dadce93d830074a03ebb0af2` |
| 56 | `theorem` | [verify_bklnwF_exp_lower](../../../../Combinatorics/ReflectiveSum.lean/declarations/verify-bklnwf-exp-lower.md) | 742 | `result-track:cbfb51beb32e6b783be16694625c8a075de1fbfdf0a5f18ec5044cf58ca9be73` |
| 57 | `theorem` | [mem_oneDyadic](../../../../Combinatorics/ReflectiveSum.lean/declarations/mem-onedyadic.md) | 771 | `result-track:11b16f25a379678f483b0fc3a08800dbece58f1c4a6e5b6464ba7da179747e11` |
| 58 | `theorem` | [bklnwTermFromLog_eq_bklnwTermDyadic](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwtermfromlog-eq-bklnwtermdyadic.md) | 778 | `result-track:36aebd1662d8635b3dd01a9294d58a2b9eebbf64204da9969d1630ad0be85021` |
| 59 | `theorem` | [bklnwSumAuxCached_eq_bklnwSumAux](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwsumauxcached-eq-bklnwsumaux.md) | 786 | `result-track:c6940dc05cad6df5c8239b6f1ba99a602adfe1c289090c4ee4c925df6d40baa1` |
| 60 | `theorem` | [bklnwSumDyadicCached_eq](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwsumdyadiccached-eq.md) | 803 | `result-track:26fce0b89f20f2771d98baed00f0d76bf55382264372486871f477cca7fe10e1` |
| 61 | `def` | [bklnwSumExpDyadicCached](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwsumexpdyadiccached.md) | 809 | `declaration-track:adf66cd4e382d52cb9ad67753546512fd1ef5c1b5f2267a423eec9d4e01fe85e` |
| 62 | `theorem` | [bklnwSumExpDyadicCached_eq](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwsumexpdyadiccached-eq.md) | 815 | `result-track:53a82ab2a2ad3aeda5283dfb64bbf24948fd61c9cf3f7e8d04c3eee1f8c67b16` |
| 63 | `def` | [bklnwAlpha](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwalpha.md) | 826 | `declaration-track:3785a806a0b7238b0bc8420213b1bc1b39352ef2fbba12b9eac2b90e4e1656d4` |
| 64 | `def` | [bklnwAlphaSumExpDyadic](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwalphasumexpdyadic.md) | 829 | `declaration-track:491e2f0107d326d36a29ff077044eda9cb833b446db50e438c23380212b1bbab` |
| 65 | `def` | [checkBKLNWAlphaExpUpperBound](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwalphaexpupperbound.md) | 836 | `declaration-track:84496e83893331d63a1f553774cd807414667594df45763426c6d98fa253feec` |
| 66 | `def` | [checkBKLNWAlphaExpLowerBound](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwalphaexplowerbound.md) | 841 | `declaration-track:ae0e3916b5296dd3087789973be1e8807530ff1779c35e6baddc765b37d938c5` |
| 67 | `def` | [bklnwAlphaSumExpDyadicCached](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwalphasumexpdyadiccached.md) | 846 | `declaration-track:e6be9fc846bb66773384b4bcbc3da5dd900345d4266677330eff95b82b3c9161` |
| 68 | `def` | [checkBKLNWAlphaExpUpperBoundCached](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwalphaexpupperboundcached.md) | 854 | `declaration-track:0ca5ad702f339668e28d2d630e3c25a0e860928fb55d67e10aee23f261506dc8` |
| 69 | `def` | [checkBKLNWAlphaExpLowerBoundCached](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwalphaexplowerboundcached.md) | 859 | `declaration-track:ef57c3f6828b73ae4e0c0d89d7d55c141d44e9a0c97354ac7a24e55a32e7f084` |
| 70 | `def` | [checkBKLNWAlphaExpBoundsCached](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwalphaexpboundscached.md) | 864 | `declaration-track:c84b920a010c0c2a613e33e9ff25a19a04ff7b79c483451f404710375ac821ab` |
| 71 | `theorem` | [bklnwAlphaSumExpDyadicCached_eq](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwalphasumexpdyadiccached-eq.md) | 870 | `result-track:d86c6e49156ebd85a2f0c1bd68a87e813ce0d0f55fd6bcf011f0a2dd3eb18b15` |
| 72 | `theorem` | [checkBKLNWAlphaExpUpperBoundCached_eq](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwalphaexpupperboundcached-eq.md) | 876 | `result-track:798ce7c386df26e5e07afbf0a3d46d69189ff47d14432bd4709d2ffb57e1cefa` |
| 73 | `theorem` | [checkBKLNWAlphaExpLowerBoundCached_eq](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwalphaexplowerboundcached-eq.md) | 884 | `result-track:0acc569e76dd4fd19da234da546008eb11c7e57a829fadafedfd4891543154ac` |
| 74 | `def` | [checkBKLNWAlphaExpBounds](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwalphaexpbounds.md) | 892 | `declaration-track:91cd998d2c2a78d633ebdb42c5a01d636fd72d10eba2de0b109aceda1b4f896c` |
| 75 | `theorem` | [checkBKLNWAlphaExpBounds_spec_lower](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwalphaexpbounds-spec-lower.md) | 898 | `result-track:b60ea7052c9fc72b662b2504eda19dc09048d617870cd51e32661dea2557524c` |
| 76 | `theorem` | [checkBKLNWAlphaExpBounds_spec_upper](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwalphaexpbounds-spec-upper.md) | 906 | `result-track:a49030179c7afd8bf436f8326523b97ea0009a40813000eb8137d1fc043dbb13` |
| 77 | `theorem` | [checkBKLNWAlphaExpBoundsCached_eq](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwalphaexpboundscached-eq.md) | 914 | `result-track:098adf01c647868104586823d4e62b1f20c893320db409cef41b4234c25e6e7c` |
| 78 | `def` | [expTermIntervalDyadic](../../../../Combinatorics/ReflectiveSum.lean/declarations/exptermintervaldyadic.md) | 928 | `declaration-track:0ed66b12f6ed3b7d61f341a5414faa21b6a7d40358aa115575d41926016df4df` |
| 79 | `theorem` | [mem_expTermIntervalDyadic](../../../../Combinatorics/ReflectiveSum.lean/declarations/mem-exptermintervaldyadic.md) | 934 | `result-track:04f20fe424b86cccba7bc35656107e92775f9b14e4724fcfda6423d7475496c0` |
| 80 | `def` | [checkBKLNWAlphaExpUpperBoundHeadTail](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwalphaexpupperboundheadtail.md) | 959 | `declaration-track:507af8e9658bddfb6a3a8fbaa2cea8d3d178ef85bc6e21e97f1b53011edcb8ee` |
| 81 | `def` | [checkBKLNWAlphaExpLowerBoundHeadTail](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwalphaexplowerboundheadtail.md) | 968 | `declaration-track:5241dea20489d6ba1d1044ab079a701564085d01b729304b2aa52c133db9b0d1` |
| 82 | `def` | [checkBKLNWAlphaExpBoundsHeadTail](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwalphaexpboundsheadtail.md) | 975 | `declaration-track:f34ead5fccf2685af7f494e13973fa9fb426f3ef774c5710597384647a2eaa72` |
| 83 | `theorem` | [checkBKLNWAlphaExpBoundsHeadTail_spec_lower](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwalphaexpboundsheadtail-spec-lower.md) | 981 | `result-track:5e6158b65860552403a3b34ca579812263fe0223c20ddf3c4b4b50dc6511e365` |
| 84 | `theorem` | [checkBKLNWAlphaExpBoundsHeadTail_spec_upper](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwalphaexpboundsheadtail-spec-upper.md) | 989 | `result-track:02c57661bb3eaf9eb4d32d998f10cffa5629a8ed42bf49b852fb29287b399c14` |
| 85 | `theorem` | [verify_bklnwAlpha_exp_upper_headTail](../../../../Combinatorics/ReflectiveSum.lean/declarations/verify-bklnwalpha-exp-upper-headtail.md) | 997 | `result-track:4a821eebeced23f9a5ba284dde17e37a14e8c6e2db1fd44506a7380352c70a83` |
| 86 | `theorem` | [verify_bklnwAlpha_exp_lower_headTail](../../../../Combinatorics/ReflectiveSum.lean/declarations/verify-bklnwalpha-exp-lower-headtail.md) | 1069 | `result-track:d96ee0a8de9ca61bc6d5e32497c0d82bbc18ce600109cbc603978388a6a325a1` |
| 87 | `theorem` | [verify_bklnwAlpha_exp_upper](../../../../Combinatorics/ReflectiveSum.lean/declarations/verify-bklnwalpha-exp-upper.md) | 1113 | `result-track:52ba1952dcf7f39b35334aa5b31e6f376acc403cca3bf375034edf66fd5536db` |
| 88 | `theorem` | [verify_bklnwAlpha_exp_lower](../../../../Combinatorics/ReflectiveSum.lean/declarations/verify-bklnwalpha-exp-lower.md) | 1143 | `result-track:e996542764fe96d876c79c9b2520c15c857743f38cd94a3fd44cd788244595f2` |
| 89 | `def` | [bklnwAlphaSumPowDyadic](../../../../Combinatorics/ReflectiveSum.lean/declarations/bklnwalphasumpowdyadic.md) | 1177 | `declaration-track:53ea19805fe98ba14a04ddb48d55c5556231c2a8dd6b83a92f9caba24be1a1de` |
| 90 | `def` | [checkBKLNWAlphaPowUpperBound](../../../../Combinatorics/ReflectiveSum.lean/declarations/checkbklnwalphapowupperbound.md) | 1185 | `declaration-track:d0edeb43609fb7a9d3945a4daea5f9eca65558df1bfd2a47afb3168d664dec26` |
| 91 | `theorem` | [verify_bklnwAlpha_pow_upper](../../../../Combinatorics/ReflectiveSum.lean/declarations/verify-bklnwalpha-pow-upper.md) | 1191 | `result-track:6d3c759e31624814b1101a9f3f63fba688cfd38f17fee698a6aa8ad71e565b5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc707763f5168b7cf83f9d39220f8f4afd925d5d7057319c0b21e63beb8d920c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
