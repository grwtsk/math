# Verification target: Data Multiset Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d0fe151e7b0321cae4626f575644f6bd8bbe1d7",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant418e9f8cfefe7e643c58737d3986e6910f0cb818640a3b10ff97fe9d27d56ed3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d0fe151e7b0321cae4626f575644f6bd8bbe1d7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant418e9f8cfefe7e643c58737d3986e6910f0cb818640a3b10ff97fe9d27d56ed3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Defs/Variant418e9f8cfefe7e643c58737d3986e6910f0cb818640a3b10ff97fe9d27d56ed3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Multiset.](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/multiset.md) | 71 | `declaration-track:0db8e164862ecdda6a35cca0f2a968069156fb3505cb35c96c47d130c90f14ea` |
| 2 | `def` | [ofList](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/oflist.md) | 78 | `declaration-track:60899fc40629b796b0431deeb6382afe4e22810640a78b8fbcd0054162eebbfd` |
| 3 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/instance-source-edition-5.md) | 81 | `declaration-track:490a0b1eb06a535c3380fd7da47f3c239c0c6d74019efc444b5bf75780d16e07` |
| 4 | `theorem` | [quot_mk_to_coe](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/quot-mk-to-coe-source-edition-3.md) | 85 | `result-track:cedafa301edaeee063b6b5a9b4cff6673e11ff8464546110e671d5e83851b737` |
| 5 | `theorem` | [quot_mk_to_coe'](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/quot-mk-to-coe.md) | 89 | `result-track:09a8dbd02f3f976527bb6f2e435ce599b2b04e52f05b85e96aa38837995fed36` |
| 6 | `theorem` | [quot_mk_to_coe''](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/quot-mk-to-coe-source-edition-2.md) | 93 | `result-track:9168d9709aa2101d126d81d9c6c9c4d72478c0cbcea5c34e66a44019a5aa3b7b` |
| 7 | `theorem` | [lift_coe](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/lift-coe.md) | 97 | `result-track:e60f2c41f820e40bfd5fc25b1c7a8b70f61f85bd1f9abd167ed881991493ffec` |
| 8 | `theorem` | [coe_eq_coe](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/coe-eq-coe.md) | 102 | `result-track:2010ff4f346211f128eb8a9cb702b46142d031b30878506e07a9e5445259e647` |
| 9 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/instance-source-edition-7.md) | 107 | `declaration-track:8a12b8208781e0594d6dec05bd7655310bdf89df9e47e7d76cf53c0fad4cab20` |
| 10 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/instance-source-edition-2.md) | 110 | `declaration-track:1919f90b7e324b71a21c25e53fc6447b717c97d0e78aa5750978e34f3722e46b` |
| 11 | `instance` | [decidableEq](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/decidableeq.md) | 113 | `declaration-track:d675f80ce786bbc7db89a2fc09e36d2ba792a734cf871cf1c8e0e76345e483d7` |
| 12 | `def` | [Mem](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/mem.md) | 119 | `declaration-track:565e1de100604c753ad50618a33cd4e35d9d7a3a754229bb41440b3a04860cd3` |
| 13 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/instance.md) | 122 | `declaration-track:10cb78f676fac9017203c2324e2ce56ce41f05fbb12933db09e6af354cfc2f7f` |
| 14 | `theorem` | [mem_coe](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/mem-coe.md) | 126 | `result-track:e502168e8625e8008af939538672ed56b79faf6bffd2871188ee2f7e71617a0d` |
| 15 | `instance` | [decidableMem](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/decidablemem.md) | 129 | `declaration-track:bf2eda8b39539f026a2a278c5a9d93a4da7ec7bbf960b70bce741ad2106e7e1e` |
| 16 | `def` | [Subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/subset.md) | 144 | `declaration-track:9779667d1a83d579e1da0a342b0b42e04d57f3613488dc283422823553c1d3f3` |
| 17 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/instance-source-edition-3.md) | 147 | `declaration-track:206e62a64e57510c32c0f21ee2aacc81adf6f2f77e98c1023ed1e5c90c7c8039` |
| 18 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/instance-source-edition-6.md) | 150 | `declaration-track:781530123a030449e0af806386e3513654e6d206e10ecca5926ee7bebbde7113` |
| 19 | `instance` | [instIsNonstrictStrictOrder](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/instisnonstrictstrictorder.md) | 153 | `declaration-track:8f822fa72a29522d8247fe1af4878dd4562c96a4477233f76340a3790a6010f6` |
| 20 | `theorem` | [coe_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/coe-subset.md) | 157 | `result-track:2fdef558ff0812b0c2877a7b478b4929bb279958fe3e2ed889d1f1c224c80ede` |
| 21 | `theorem` | [Subset.refl](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/subset-refl.md) | 161 | `result-track:893232d27327ba4fa424c4675399d124d383e3065876488ce66feec34846e18d` |
| 22 | `theorem` | [Subset.trans](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/subset-trans.md) | 163 | `result-track:05384a726dacf371df0a4bb59ee674291135e8fbae0ce401e02a6b9d427afe02` |
| 23 | `theorem` | [subset_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/subset-iff.md) | 165 | `result-track:811fe8f7d1e0363a313307f75209754690b7102c5f26e020335d2a35023b19ef` |
| 24 | `theorem` | [mem_of_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/mem-of-subset.md) | 169 | `result-track:4ad6ad72bf03afe04a0386cdc0b11cd67a3fc599778d41f8569ca1bf19fa719e` |
| 25 | `def` | [Le](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/le.md) | 179 | `declaration-track:e057400c371106dcd93f98cbf0b2617d516e959c076ce67170439d55df63f318` |
| 26 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/instance-source-edition-4.md) | 183 | `declaration-track:3f17852fd92695594542ef6d2bf6e95823572cf48f0544c083b59f4d83cb456b` |
| 27 | `instance` | [decidableLE](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/decidablele.md) | 189 | `declaration-track:40210d5f52106c0c8d4e7c73fa1794905abf283be49654160c24863a90b6767b` |
| 28 | `theorem` | [subset_of_le](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/subset-of-le.md) | 196 | `result-track:6ce932d7c57d562460873678451d1e56cef17e6c1f5faf675e415e618b0a111f` |
| 29 | `theorem` | [mem_of_le](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/mem-of-le.md) | 201 | `result-track:0236ed7142bb08a0cc224752a10e87440a5eba88523a9b24daefdc09e2d5c000` |
| 30 | `theorem` | [notMem_mono](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/notmem-mono.md) | 204 | `result-track:ccb33983a8ad9a7b2548f3084c10777ec028cfb5b00f9c084381cc507148403f` |
| 31 | `theorem` | [coe_le](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/coe-le.md) | 208 | `result-track:111ea1609266e1b7e422180276ab0687b260cffe9bd7858018c801aaf7d66e20` |
| 32 | `theorem` | [leInductionOn](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/leinductionon.md) | 212 | `result-track:c424cb25d832c35607dcb34d8c2c7924245b907c6c000f73419b0b45b805f0e9` |
| 33 | `def` | [card](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/card.md) | 223 | `declaration-track:dd054e3cd749f0a997e5e31326f473e00c7d2955178be8122b131ea99f1b3b81` |
| 34 | `theorem` | [coe_card](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/coe-card.md) | 226 | `result-track:a875e10ca1067aeb5d8febe336255268fbdc3257db05c061a4b0d224fdb45a1f` |
| 35 | `theorem` | [card_le_card](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/card-le-card.md) | 229 | `result-track:f90855f16c46f54daf40eda091a78e614ad94695ca4039f04331730a401d5041` |
| 36 | `theorem` | [eq_of_le_of_card_le](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/eq-of-le-of-card-le.md) | 232 | `result-track:2ea5da65d087a66417fd1b9c48ea19d9c96c13735a38fae872a5a60538d9c123` |
| 37 | `theorem` | [card_lt_card](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/card-lt-card.md) | 235 | `result-track:63dfde26a7574185aad2b13ccb82e1e2143cc2ef7e416544b7b902370e65c71f` |
| 38 | `theorem` | [card_mono](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/card-mono.md) | 239 | `result-track:b51b949aec22cf5e9f5dfd6b16c2304faebed3aed1b32db9e65ce0daf72ddb15` |
| 39 | `lemma` | [card_strictMono](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/card-strictmono.md) | 242 | `result-track:1500d20344007e6623e44911d6a26930f427f2913e96340d27f316d9e73ac147` |
| 40 | `instance` | [instWellFoundedLT](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/instwellfoundedlt.md) | 245 | `declaration-track:61c29f9020effcd45234ac0ccc5c8694ef8bc5a0b5a4a8a706d1051a02e83a0c` |
| 41 | `theorem` | [coe_reverse](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/coe-reverse.md) | 249 | `result-track:be34f78b80ed6279c762a5dc454d4808a624d0b697ec3f8d83819d60f5175469` |
| 42 | `def` | [pmap](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/pmap.md) | 256 | `declaration-track:5d3f141a2631e348eee10bbcb860cdae6988099d2a28677978806b94f2c4b6bb` |
| 43 | `theorem` | [coe_pmap](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/coe-pmap.md) | 266 | `result-track:f816423256a9d31333d4032c7e4f89f85b935f91213c3eb3301c4bbcd61f4b06` |
| 44 | `theorem` | [pmap_congr](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/pmap-congr.md) | 270 | `result-track:2e25128e61054a1aaeee195e94e390f5cb88067cb09169098d9fd9b13f2ad83c` |
| 45 | `theorem` | [mem_pmap](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/mem-pmap.md) | 275 | `result-track:92260ace7170a159749f14f25a851db0ffdb3c65cd75b9700cb209143be5c827` |
| 46 | `theorem` | [card_pmap](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/card-pmap.md) | 280 | `result-track:6a3d544e69a07de82ceaa16b8f811408409786d138daed823c8c7584cb2cde43` |
| 47 | `def` | [attach](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/attach.md) | 285 | `declaration-track:043fc26d13cc61c049a5b222943c62f4914ab897a60c8efcf72b244bfb8f0988` |
| 48 | `theorem` | [coe_attach](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/coe-attach.md) | 289 | `result-track:ac28fbfc6d24dab61b36732addc75b09d1fe09ff12a7d7c9c0c4bcbb3d5d1aff` |
| 49 | `theorem` | [mem_attach](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/mem-attach.md) | 293 | `result-track:89c9c7ea73c056aa32c1ad0c94d6279a7fd7c9629c16b2c0c1a776701c7008f8` |
| 50 | `theorem` | [card_attach](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/card-attach.md) | 297 | `result-track:ac0ed511ff1a66999cde048fcab8dd4eda5a247dface01a91a7603a782dfc93a` |
| 51 | `def` | [decidableForallMultiset](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/decidableforallmultiset.md) | 306 | `declaration-track:b759074b1d5b0c2729df7d28d5b9517ecfc952a28130877830454c5c9352d8b4` |
| 52 | `instance` | [decidableDforallMultiset](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/decidabledforallmultiset.md) | 310 | `declaration-track:d680f05fd8f373401b786b0df42f350d1fc796dc440ef3d443f810fa2c9e397a` |
| 53 | `instance` | [decidableEqPiMultiset](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/decidableeqpimultiset.md) | 317 | `declaration-track:07e3bda9480bc7c01770a517039342617d8081220edba2993275fc7f09abae78` |
| 54 | `def` | [decidableExistsMultiset](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/decidableexistsmultiset.md) | 323 | `declaration-track:da5b68031077e51900a71ecb77964cd134a57c4a6b69c1036bd7f5fa8a70c920` |
| 55 | `instance` | [decidableDexistsMultiset](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/decidabledexistsmultiset.md) | 326 | `declaration-track:ec801f7947220cf1e522784e0117b9b46c5d6c74a41142b70d18dbe430cbbec9` |
| 56 | `def` | [Pairwise](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/pairwise.md) | 337 | `declaration-track:3d95ce724fe0737014210705558ca2fa09b265553faa1e0b0b7e25c0e5ff8905` |
| 57 | `theorem` | [pairwise_coe_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/pairwise-coe-iff.md) | 340 | `result-track:323a2dc70b3f42717ba6cbc707daa98fd2a1b9e561fa3acaacd77c11117a5299` |
| 58 | `theorem` | [pairwise_coe_iff_pairwise](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/pairwise-coe-iff-pairwise.md) | 344 | `result-track:aa77dbd643c83e93aef50d247aa688c0929ba1eeec5b9c967b669c34c4ca5d43` |
| 59 | `def` | [Nodup](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/nodup.md) | 352 | `declaration-track:ce46f57cb7a49c2cf2f94fca07b3672f96d2bfb8cce00a6219b1eb3ad2994958` |
| 60 | `theorem` | [coe_nodup](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/coe-nodup.md) | 356 | `result-track:d37adc463faf2cf25200097ba79018aae6f1d56691a46711e5a261c813bcbe96` |
| 61 | `theorem` | [Nodup.ext](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/nodup-ext.md) | 359 | `result-track:752eed229f5068bd68a39355b6a10f69e9d3ebb1afb4db70603ecd46542d282d` |
| 62 | `theorem` | [le_iff_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/le-iff-subset.md) | 362 | `result-track:2479f038cee6226605184e2ccc8496df78f69c640a22782b5bc42991776acaca` |
| 63 | `theorem` | [nodup_of_le](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/nodup-of-le.md) | 365 | `result-track:58b486f7648f3071d9572ecf1ab3db8077e1b7ba0697889200bf78593228fc24` |
| 64 | `instance` | [nodupDecidable](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/nodupdecidable.md) | 368 | `declaration-track:475114bad09f0ecf3c9cde2f47bc3ff86080b730104d1721d0758a26e0df4e95` |
| 65 | `def` | [sizeOf](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/sizeof.md) | 381 | `declaration-track:f3606bd97ee5fff23361963b903d6c2983a31abbff4e33e44961128d13499529` |
| 66 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetDefsPublic.lean/declarations/instance-source-edition-8.md) | 384 | `declaration-track:925328f876674ebf14f01e3eecac984f781651e2023252e1f1d083bf122805da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf9182426817defdc9a027d0e028de82abba3a3dd9e091a41173050b0511161b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant418e9f8cfefe7e643c58737d3986e6910f0cb818640a3b10ff97fe9d27d56ed3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Defs/Variant418e9f8cfefe7e643c58737d3986e6910f0cb818640a3b10ff97fe9d27d56ed3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
