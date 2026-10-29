# Verification target: Nodup Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09e4cfc6cb3bbf32e7adc01457da554a8e69a912",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Nodup/Variant21a4796b07978fa6fc3e103225181cc02b5794cb838fe5e3e2d598538d007b18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09e4cfc6cb3bbf32e7adc01457da554a8e69a912`.

Source path: `GRWTSK/Topology/GeneralTopology/Nodup/Variant21a4796b07978fa6fc3e103225181cc02b5794cb838fe5e3e2d598538d007b18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Nodup/Variant21a4796b07978fa6fc3e103225181cc02b5794cb838fe5e3e2d598538d007b18.lean.json)

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
| 1 | `theorem` | [Pairwise.nodup](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/pairwise-nodup.md) | 36 | `result-track:d78243e40df52887e450c8037a2a40c69863929958d3dd0df9253ea930913731` |
| 2 | `theorem` | [rel_nodup](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/rel-nodup.md) | 41 | `result-track:a1ef004e33eced1b0be2f8925ee13fd523de1e08e8bc557170b909f89f901629` |
| 3 | `theorem` | [Nodup.cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-cons.md) | 47 | `result-track:89f2df635331ba1934e47bf96bdf1b225e5946f5bb7d4691231622a39f0e333f` |
| 4 | `theorem` | [nodup_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-singleton.md) | 50 | `result-track:6cd617976edd0629b743fecc21d718ef2c15afb19553ff0c7e9f6c63617c3cef` |
| 5 | `theorem` | [Nodup.of_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-of-cons.md) | 53 | `result-track:401dd150103f0936a4693cf3d1fc7ae24e90d71c19eba470b8f02b616e6578ba` |
| 6 | `theorem` | [Nodup.notMem](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-notmem.md) | 56 | `result-track:06c6d4485c2192f9a141f3e127d4818296898a83000b1ee68cca4c988071ca2c` |
| 7 | `theorem` | [not_nodup_cons_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/not-nodup-cons-of-mem.md) | 59 | `result-track:65d705eff45607e69b2b3825f913d89c5dc059bfbb1a0d8cea5157f266c329ca` |
| 8 | `theorem` | [not_nodup_pair](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/not-nodup-pair.md) | 63 | `result-track:24c4f8fbd296480f785c766a4792023bd6be49fe5a059428528fd567c3f57417` |
| 9 | `theorem` | [nodup_iff_sublist](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-iff-sublist.md) | 66 | `result-track:679553a045764310f1fe1b9fb573580788596f52551847f98dec38b5a2d348af` |
| 10 | `theorem` | [nodup_mergeSort](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-mergesort.md) | 75 | `result-track:cb4369748c6ac573f9ec535a909957f078b10fac302830366bc3197c675d486b` |
| 11 | `theorem` | [nodup_iff_injective_getElem](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-iff-injective-getelem.md) | 80 | `result-track:6fbe65f91849234dc44857a4d6c9f5868b6a68c6e6058cb9275944555278b1c8` |
| 12 | `theorem` | [nodup_iff_injective_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-iff-injective-get.md) | 91 | `result-track:946b1d6873957a511744dd13312eb93205edc331c6cdbd6a28125c79d7d687b2` |
| 13 | `theorem` | [Nodup.injective_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-injective-get.md) | 94 | `result-track:59622e8131fa2b4c4fe2e8214ad95279dbeb47bf6fda61e2a83cf0c6651a6c3b` |
| 14 | `theorem` | [Nodup Namespaced Public](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup.md) | 97 | `result-track:c0cfa6e9e32819cfb53d3510a910aff4c7beaef9207fc68fc00296455e1d780f` |
| 15 | `theorem` | [Nodup.get_inj_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-get-inj-iff.md) | 100 | `result-track:53662aee3749614b489ae3ed41f98fb05889a10a17579d2cdbc67b72a4b41a79` |
| 16 | `theorem` | [Nodup.getElem_inj_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-getelem-inj-iff.md) | 104 | `result-track:3e231bf82b7b94f3d6ffe0e05a86917ff97e327733ce6bd09bb44e9af8fd3c97` |
| 17 | `theorem` | [nodup_iff_getElem?_ne_getElem?](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-iff-getelem-ne-getelem.md) | 110 | `result-track:cac3771613a4f9d26745b3a6fe98491f57ca216e291f64247241549df469f90e` |
| 18 | `theorem` | [Nodup.ne_singleton_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-ne-singleton-iff.md) | 114 | `result-track:987aafedae6e6b76aa4b979e1c2355479826d074a3d6c979ed9eef6a77e69c77` |
| 19 | `theorem` | [not_nodup_of_get_eq_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/not-nodup-of-get-eq-of-ne.md) | 128 | `result-track:7e8e3b434b0a12f0a19b6f3a7de4838c7afc84c42b0e9a3819be31eead8f4b53` |
| 20 | `lemma` | [Nodup.head_eq_getLast_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-head-eq-getlast-iff.md) | 133 | `result-track:127b10388ece388d749921225367727619d60be3d1595f2085487656c4d0a6ed` |
| 21 | `theorem` | [get_idxOf](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/get-idxof.md) | 139 | `result-track:d58aca39ae0c11f2224ad49119657aa45d7daf5b2d707876ffae98662ce77c55` |
| 22 | `theorem` | [nodup_iff_count_le_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-iff-count-le-one.md) | 143 | `result-track:038f75e426d5cd5e8cb4c295ef213f8bc0e2a51e427991a3af13e63afc9a52c2` |
| 23 | `theorem` | [nodup_iff_count_eq_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-iff-count-eq-one.md) | 149 | `result-track:0d8c0e74d0eb3f576abe2d52bcbd3318e4fbee794bc9ea8b20a9cef4a5a586a6` |
| 24 | `theorem` | [get_bijective_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/get-bijective-iff.md) | 152 | `result-track:eed100b7b0597eff8d0075c028364abe2b0446587d1aea077ef3b2b011551127` |
| 25 | `theorem` | [getElem_bijective_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/getelem-bijective-iff.md) | 158 | `result-track:3fd998d0214f54eaa23604bdc9e049cb549454c87df16d92e351ac0f794f957a` |
| 26 | `theorem` | [count_eq_one_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/count-eq-one-of-mem.md) | 163 | `result-track:81baf3ca6c2c7d592cbc8c84d5ee150b786a3506cd8bdf1404cc0fe37bfdc070` |
| 27 | `theorem` | [Nodup.of_append_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-of-append-left.md) | 167 | `result-track:40ef44a71f2d1d8c3fe9c24d4c782e16e291a4e8d72f88e80c26b232ed7ee514` |
| 28 | `theorem` | [Nodup.of_append_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-of-append-right.md) | 170 | `result-track:f48cd5069ca03adadc16d8fa504730bc057ea92bbe609ffc4afdfa5a1c548d22` |
| 29 | `theorem` | [nodup_append'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-append-source-edition-2.md) | 175 | `result-track:2a37d8411127ebd08d56512f2c5574ad16a737c184d70797ada0b1f81c8999f7` |
| 30 | `theorem` | [disjoint_of_nodup_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/disjoint-of-nodup-append.md) | 179 | `result-track:d3ec7465842499efbf7710979add49bc2ed1c9b1a4227f51876c658adbae7378` |
| 31 | `theorem` | [Nodup.append](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-append.md) | 184 | `result-track:048a67066731ae607289db4fecf98ea3d99bf9dd7b1b7284c5e56dea7a5959be` |
| 32 | `theorem` | [nodup_append_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-append-comm.md) | 187 | `result-track:2e55db56ec804408453a3f9bc9529392213b84e5b0f758121dcc75fb6ddc4fc0` |
| 33 | `theorem` | [nodup_middle](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-middle.md) | 190 | `result-track:99f32f9ed336fb7acec17444ef5a899aa635de39aa7f1c6dbd58062cfb43ad97` |
| 34 | `theorem` | [Nodup.of_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-of-map.md) | 195 | `result-track:05112625abb605338897689ca3ea9f28580cf0d76995b1e2970be9ba0fe8c1d9` |
| 35 | `theorem` | [Nodup.map_on](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-map-on.md) | 198 | `result-track:979181b2d632f2be8ca87521364af6c245ae72c13b519dc81fa2f6c24ed1e950` |
| 36 | `theorem` | [inj_on_of_nodup_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/inj-on-of-nodup-map.md) | 202 | `result-track:6d06b526fdf8975abc200732efaaa5bb8b1b6658108871801a9dc0de8a196a1c` |
| 37 | `theorem` | [nodup_map_iff_inj_on](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-map-iff-inj-on.md) | 215 | `result-track:663221ff9b001eefc4841df3d66f10eb81be19a470079736b8926910407334ef` |
| 38 | `theorem` | [Nodup.map](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-map.md) | 219 | `result-track:0bdcb28d0f00b57ee8a3e000600d0bd4d3488075db0968af340744a78b2eb9d3` |
| 39 | `theorem` | [nodup_map_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-map-iff.md) | 222 | `result-track:32772bca325e291fd1ab873b6410a46a950f669c27cbcd80523836ce6641ef4e` |
| 40 | `theorem` | [nodup_attach](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-attach.md) | 226 | `result-track:bacc93bd5220cc30e380666b20d436f41862271d2f722b258d018e6305140e2d` |
| 41 | `theorem` | [Nodup.pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-pmap.md) | 232 | `result-track:a9e74d21cd2b840d9dbfcfdf0b7c6399a02992d71e541f8e96e224e7f3ca3ad7` |
| 42 | `theorem` | [Nodup.filter](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-filter.md) | 236 | `result-track:f480be8d3f0500a137d849416233f801cd2e0b2673343b28eb441bddefe0690d` |
| 43 | `theorem` | [nodup_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-reverse.md) | 240 | `result-track:374689de4c7c7f5331782aa529a3eae7269e77f29fc110a377bf52960b5bd12f` |
| 44 | `theorem` | [nodup_concat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-concat-source-edition-2.md) | 243 | `result-track:e1247bd226e952fcc89cc2a7e81070b8ebd9c4a5feb9ec7ba60414e88b08e9a2` |
| 45 | `lemma` | [Nodup.tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-tail.md) | 247 | `result-track:d5f9e185c190577e8aade7fee77fbb107fcbf9e46d0bd438715bcbb8f60a1a80` |
| 46 | `lemma` | [nodup_tail_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-tail-reverse.md) | 250 | `result-track:31367d0e3d2d31fcfacd61471bb6a4835c035f6d457b068b5dd36169751e032d` |
| 47 | `lemma` | [Nodup.eq_of_head_mem_of_suffix](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-eq-of-head-mem-of-suffix.md) | 268 | `result-track:7a62df434885c690b64a375bd985f44cfb3772b7218e18baa3a933495deda8b4` |
| 48 | `lemma` | [Nodup.eq_of_getLast_mem_of_prefix](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-eq-of-getlast-mem-of-prefix.md) | 272 | `result-track:a7cd9f2c3bd9e58c49e0dd48ae442571008b0aa3946fcf454be760b2b748ca4d` |
| 49 | `lemma` | [Nodup.prefix_of_head_mem_of_infix](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-prefix-of-head-mem-of-infix.md) | 276 | `result-track:e8bbdc171f3171a6e8ac2379cf8a24dc29655b41384b0c2e2a2862090c8a316b` |
| 50 | `lemma` | [Nodup.suffix_of_getLast_mem_of_infix](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-suffix-of-getlast-mem-of-infix.md) | 280 | `result-track:1dc326b624ec0ff65de32c1bd619ad600aab2e892d56ff44a76db63575ceb5e6` |
| 51 | `lemma` | [Nodup.eq_of_head_mem_of_getLast_mem_of_infix](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-eq-of-head-mem-of-getlast-mem-of-infix.md) | 284 | `result-track:f2297c3e6d598bed972e52f91028d0ebc87d656b239b208ee8051f2c513febdf` |
| 52 | `theorem` | [Nodup.erase_getElem](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-erase-getelem.md) | 288 | `result-track:559e6efed968a5a37f4f01610fe1f723168da07064befef6892454c3b2c90555` |
| 53 | `theorem` | [Nodup.erase_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-erase-get.md) | 297 | `result-track:81968df721d7ac96fa22c7b70a50e062b9e15fba36fc0540dcc0beca2590f2d5` |
| 54 | `theorem` | [Nodup.diff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-diff.md) | 301 | `result-track:cedbde56ca3883369ce4ef2b8adfe8ee2a057525177c67d014181dd31b6e3260` |
| 55 | `theorem` | [nodup_flatten](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-flatten.md) | 304 | `result-track:1c81b4d3730d3834bf803d9daed200ca2f82124c31a7e7ebeb4ce7824b6c165a` |
| 56 | `theorem` | [nodup_flatMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-flatmap.md) | 308 | `result-track:e2dc292fdf55a44a7d88ea355aa4ba3790bd10c5bb644accbdf42f033da43502` |
| 57 | `theorem` | [Nodup.product](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-product.md) | 316 | `result-track:e6624f400c645441eb5d70918dbefd7619973dc53c4edc50ebc75561a221ea88` |
| 58 | `theorem` | [Nodup.sigma](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-sigma.md) | 325 | `result-track:5005794323129e084cda9a6ffecb7c7428e4d28a446c56d50026de5babd529f6` |
| 59 | `theorem` | [Nodup.filterMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-filtermap.md) | 334 | `result-track:857728869e42c49e88d0148a40c79f4cef463ce36efdae978c051889f2b84ff6` |
| 60 | `theorem` | [Nodup.concat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-concat.md) | 338 | `result-track:91bf671d81c7a4789c9c724982c45f2f5728b0f4a4ee7d73732dd19db184bb9a` |
| 61 | `theorem` | [Nodup.insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-insert.md) | 341 | `result-track:d52ee1199dc7f3e3924ad3fdb0adf113ee13a14107eca1087c49800bdc9eca05` |
| 62 | `theorem` | [Nodup.union](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-union.md) | 345 | `result-track:b88970253581efe0df748503c3ae69893fc8fce4e9a56fe1da3efa94bd912f58` |
| 63 | `theorem` | [Nodup.inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-inter.md) | 350 | `result-track:d72a7c815c8d9ee27f55bfa48c6b96c610d7d9c77cf60da74d1e43767364a213` |
| 64 | `theorem` | [Nodup.sdiff_eq_filter](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-sdiff-eq-filter.md) | 353 | `result-track:a74636b7f0800ac079800883cfd4fb7ca74fe60015b01dc3cd72315ad24e2853` |
| 65 | `theorem` | [Nodup.mem_sdiff_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-mem-sdiff-iff.md) | 362 | `result-track:1bf01c773f4d4c45fbb530606e752ad18fe0d1efe02b98265e4af95dbad2244e` |
| 66 | `theorem` | [Nodup.set](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-set.md) | 368 | `result-track:f766e2cbd446d21ed0bf7458e50aff23fc17d0a278338bb64896fc10dc7e1435` |
| 67 | `theorem` | [Nodup.map_update](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-map-update.md) | 378 | `result-track:c94d56630718c39310df96a05404f3c446a42ebbe62b48480a5cf3d00f49a08a` |
| 68 | `theorem` | [Nodup.pairwise_of_forall_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-pairwise-of-forall-ne.md) | 389 | `result-track:9230a9fed42e4d33471869a8d8bad5b7cd8b3c1a48f37f632d111f7d4e8ae4b3` |
| 69 | `theorem` | [Nodup.take_eq_filter_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/nodup-take-eq-filter-mem.md) | 393 | `result-track:6f66807512b27225d273d372703134b1583169a10c8d4ef8cb313480e2f6b538` |
| 70 | `theorem` | [Option.toList_nodup](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupNamespacedPublic.lean/declarations/option-tolist-nodup.md) | 406 | `result-track:00809c4510419408533e90c59898cf44a62f66d0d2d0bb69f544e872d0affc10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=91238b8422e5c0f41c9d01574829e66be0fa70e1732cfbc94f641476e43a86fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Nodup/Variant21a4796b07978fa6fc3e103225181cc02b5794cb838fe5e3e2d598538d007b18.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Nodup/Variant21a4796b07978fa6fc3e103225181cc02b5794cb838fe5e3e2d598538d007b18.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
