# Verification target: Zero Cons Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2920eb99908f320fbd338d5d5f2b39bf6faf4719",
  "lexical_observation_count": 109,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroCons/Variantb8fe2c8f7e3f6f9899c40a3667343bc6d25e9aea2f032a684e99c8d2e6d4921d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2920eb99908f320fbd338d5d5f2b39bf6faf4719`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroCons/Variantb8fe2c8f7e3f6f9899c40a3667343bc6d25e9aea2f032a684e99c8d2e6d4921d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ZeroCons/Variantb8fe2c8f7e3f6f9899c40a3667343bc6d25e9aea2f032a684e99c8d2e6d4921d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BoundedOrder.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zero](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/zero.md) | 57 | `declaration-track:ca561d3eccfd04b6a06b62e3c771e08764cfda5e3dcc150162dc77276b97755d` |
| 2 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/instance.md) | 60 | `declaration-track:04f8f2bf9107063104e97c08dfc44db63921bcf5c9e527bbd0a089291b00f165` |
| 3 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/instance-source-edition-2.md) | 63 | `declaration-track:3c2f5dd504a99449dc490a771646f4a963cfa3ef0161747f1cac19e58ad03fed` |
| 4 | `instance` | [inhabitedMultiset](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/inhabitedmultiset.md) | 66 | `declaration-track:2d44902220adef7a7ee5f3a602fe44d29e72dccfa2525cf212fe2d00a5096c70` |
| 5 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/instance-source-edition-6.md) | 69 | `declaration-track:dbdeea6a972bc03fd2ed36b3066e05c7954db30b3f4a45fe5000a1d8c7bde619` |
| 6 | `theorem` | [coe_nil](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/coe-nil.md) | 74 | `result-track:ec27b97f2ed8ff51f4fbd3f1bed394f4f0e3da796fa758778d5ca0a06e645d0a` |
| 7 | `theorem` | [empty_eq_zero](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/empty-eq-zero.md) | 78 | `result-track:af9af02cbb7737513026bc9958048c57f5e72f736e9d9a80b23b8ca541cac55b` |
| 8 | `theorem` | [coe_eq_zero](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/coe-eq-zero.md) | 82 | `result-track:c5fc33ec205f7cb03bf5fa2be07076feabd705952cd4d28223eabb042d8c072b` |
| 9 | `theorem` | [coe_eq_zero_iff_isEmpty](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/coe-eq-zero-iff-isempty.md) | 85 | `result-track:f6cca65f529ce5fcee07da829e0746d5b7376a0f565524a9cdbff201e51d2c7c` |
| 10 | `def` | [cons](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/cons.md) | 91 | `declaration-track:091dbe99bdef1d6395240e28e683e2da6721a695415352473d7ae97334c965c4` |
| 11 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/instance-source-edition-7.md) | 97 | `declaration-track:e58b6ff5877a50af8f8cc0b30f775018c804aaefb33e8ae9517f7c1af0786d3f` |
| 12 | `theorem` | [insert_eq_cons](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/insert-eq-cons.md) | 101 | `result-track:93b1047642f07eed0050f01bf5a1266d0614b658de45eb30c8368a8591e455c3` |
| 13 | `theorem` | [cons_coe](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/cons-coe.md) | 105 | `result-track:0370e1f103b333de11b7bd1c57771d0f7deb79065234df98a0cb9982eb4bcac0` |
| 14 | `theorem` | [cons_inj_left](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/cons-inj-left.md) | 109 | `result-track:56db62ee69aee31331c569cdb9a2adb51d882d88fd4045c9c60fd0a6eec4fc02` |
| 15 | `theorem` | [cons_inj_right](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/cons-inj-right.md) | 116 | `result-track:8395cbafed5b2a37b6c3c45a58f206dc53d161eba05d064e90a148cac07ae4e0` |
| 16 | `theorem` | [induction](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/induction.md) | 120 | `result-track:5e8aea1a4c95232ed634d7f3f7f4335a818607c7cddb1bdd03f6647f316ec00f` |
| 17 | `theorem` | [induction_on](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/induction-on.md) | 125 | `result-track:38d1c2860d5134e66f4bf58a2b8c43b3d31aaaa0ad1836a7ef517ea88560d04b` |
| 18 | `theorem` | [cons_swap](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/cons-swap.md) | 129 | `result-track:4dfe30576c855017943d7a3560bad9a6b21725836947d4c05592465c9e6a61f7` |
| 19 | `def` | [rec](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/rec.md) | 141 | `declaration-track:88616ccfa6a8a2c1ed8e168a7cc666570da64a17ef5e5b395721cd5019e144ce` |
| 20 | `def` | [recOn](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/recon.md) | 153 | `declaration-track:93ea3bd85a2c824d702246757127bb1d7ef7ee6d70d7dbed775af351776d3927` |
| 21 | `theorem` | [recOn_0](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/recon-0.md) | 164 | `result-track:6af0662d01da9fa86b1da87adca55eb22fca4fcc4db15b88ea9509ce283a021a` |
| 22 | `theorem` | [recOn_cons](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/recon-cons.md) | 168 | `result-track:b6359a945d9ed5cdd28937073c90b4887a0614871ca01b91060e48b91a898f69` |
| 23 | `theorem` | [mem_cons](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/mem-cons.md) | 177 | `result-track:4f2a15f15b53a12e7b1efcdbaf9663e6f97669b94f9e5c8444420f044e422a78` |
| 24 | `theorem` | [mem_cons_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/mem-cons-of-mem.md) | 180 | `result-track:1e7b3328cc6d8806e5dc7058bc05d9131f2119d1ebf3629b3ba0acc096d98723` |
| 25 | `theorem` | [mem_cons_self](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/mem-cons-self.md) | 183 | `result-track:9ce1f75b9a412d4085302ebd39614a15c5217c42a3e3abfcfe117aec1737c40a` |
| 26 | `theorem` | [forall_mem_cons](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/forall-mem-cons.md) | 186 | `result-track:db1dbb78c7f2b9c1686c0722e045f15fca74bb7aef99012d9e2a53b5f368b480` |
| 27 | `theorem` | [exists_cons_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/exists-cons-of-mem.md) | 190 | `result-track:ca1d4b74a335bf4c87f3c749dcc15d19da575ad733e5d0d5fcd86b2839f17050` |
| 28 | `theorem` | [notMem_zero](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/notmem-zero.md) | 196 | `result-track:349cf450ccd6148b434a71700895aa7fb180a4443952a6c4997a565d45847d32` |
| 29 | `theorem` | [eq_zero_of_forall_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/eq-zero-of-forall-notmem.md) | 201 | `result-track:ff3f87f0a473a603158a9e41b436a08c125f61c8ea2ff112831cbbeb2a76d64f` |
| 30 | `theorem` | [eq_zero_iff_forall_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/eq-zero-iff-forall-notmem.md) | 206 | `result-track:0eeaa9115289a63b37cf8d5506cec5d63e6b92959e100b11f4f37e23976b7106` |
| 31 | `theorem` | [exists_mem_of_ne_zero](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/exists-mem-of-ne-zero.md) | 211 | `result-track:ad650b8694abceb7aef391cda7361c36111e3c7ba946a3f821bd6bb9c20bdebe` |
| 32 | `theorem` | [empty_or_exists_mem](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/empty-or-exists-mem.md) | 217 | `result-track:546412c8803f08b8f9e05a62e5f00779ec60b482e7f4c1d785312c85ecfe61db` |
| 33 | `theorem` | [zero_ne_cons](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/zero-ne-cons.md) | 221 | `result-track:1a77083352f8f90add41b89d4290f7dc4a3341a78f4b9f187d75f5319a72dfce` |
| 34 | `theorem` | [cons_ne_zero](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/cons-ne-zero.md) | 226 | `result-track:003daa4f0227db67d955591cb13e6eb3521d459b6dc1bf0e17b60078f4afb139` |
| 35 | `theorem` | [cons_eq_cons](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/cons-eq-cons.md) | 229 | `result-track:141193141abf9d0915f93762acf9cfb5ade098ce9ce5c0d6e8fd061eaa75946c` |
| 36 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/instance-source-edition-3.md) | 255 | `declaration-track:5ca6eeb43a10d282c5290ef1ee6d5b9065a677563469f9cbaf2da376f664570f` |
| 37 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/instance-source-edition-4.md) | 258 | `declaration-track:83255b011325b1280e2ed3786503637d6af6fdb1761dfcb67b677cdcd8441e6e` |
| 38 | `theorem` | [cons_zero](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/cons-zero.md) | 262 | `result-track:0ba88c846236e69c262a5f3594f122dc91d0098ce408391cefb1bb7c9acccaa9` |
| 39 | `theorem` | [coe_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/coe-singleton.md) | 266 | `result-track:d584db064bdf8b28da6002d1ae227d066737fd29ba695d14a682cacd7eb84014` |
| 40 | `theorem` | [mem_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/mem-singleton.md) | 270 | `result-track:9ba33edf70c5adcc89e0c5e6a93041facfc6bd6879b6c3b11b628ab83c267615` |
| 41 | `theorem` | [mem_singleton_self](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/mem-singleton-self.md) | 273 | `result-track:da0492a698337466bc2d73117fd4563bac5424b843f108fe9849d202f2d4b1f8` |
| 42 | `theorem` | [singleton_inj](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/singleton-inj.md) | 278 | `result-track:8e23ede50743b2f548e0c2c770c54ff1984713c523871a5979edc00ba8661034` |
| 43 | `theorem` | [coe_eq_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/coe-eq-singleton.md) | 283 | `result-track:df5865d3398ecf1c1849ac90b763ccae971b1b492113cd2b39ba8c620124cda5` |
| 44 | `theorem` | [singleton_eq_cons_iff](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/singleton-eq-cons-iff.md) | 287 | `result-track:6c639c18974b57040a0f8606211f3b2e1683c15651702a94151673f962e54526` |
| 45 | `theorem` | [pair_comm](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/pair-comm.md) | 291 | `result-track:4988392e600c97dce2836707eacf4ad2e18af452a22b85fc2a35a068e9650b9a` |
| 46 | `theorem` | [zero_subset](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/zero-subset.md) | 301 | `result-track:12f8c8cf0d1030dbd29976dbb15fd79fc310ec1d132a54948a74b9f3851e4ec2` |
| 47 | `theorem` | [subset_cons](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/subset-cons.md) | 303 | `result-track:7b7b0744f511a553c7112b0b7334f41c99670d50a412f99c6c06d8742ae5faaa` |
| 48 | `theorem` | [ssubset_cons](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/ssubset-cons.md) | 305 | `result-track:093ce5115ee4801992fd562a1e4c7f7a6efa5e4340b40a54b422c9b9fa1c10aa` |
| 49 | `theorem` | [cons_subset](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/cons-subset.md) | 309 | `result-track:51c9846612b580b0788b80ac5e7dccea38c2cf798bb1fcc3a93e5d0964e71997` |
| 50 | `theorem` | [cons_subset_cons](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/cons-subset-cons.md) | 312 | `result-track:ce643eb98c8dc95ad921a1c18ccfdbaf14e6b2f07cd462877ebeec02a4a7a202` |
| 51 | `theorem` | [eq_zero_of_subset_zero](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/eq-zero-of-subset-zero.md) | 315 | `result-track:e6604d91f69055ab518f5ec0aba9faff08eceedd859f6007800411f287a6ad73` |
| 52 | `lemma` | [subset_zero](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/subset-zero.md) | 318 | `result-track:d233dbc3f575772594afab5ea62fbb1371ca84f45a08152c7e9460d66d25786b` |
| 53 | `lemma` | [zero_ssubset](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/zero-ssubset.md) | 321 | `result-track:bea530307c8908aad68b128d91217b72fc4690e1aeb076743f494ca40bade413` |
| 54 | `lemma` | [singleton_subset](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/singleton-subset.md) | 323 | `result-track:3ab0ce4ca3cb5274a8294893e3d8d22bb4f2d274b9888021b439e7d5f899a874` |
| 55 | `theorem` | [induction_on'](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/induction-on-source-edition-2.md) | 325 | `result-track:7cf9dad760145140036b9c0f7f1ed8dcb8a4f357fbce7b15bc7851bcfcd93cd3` |
| 56 | `theorem` | [zero_le](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/zero-le.md) | 341 | `result-track:5f1fa180988fdfb76f290f00bf74fa620ef6b429367acf97709b91e7ab8f8b3d` |
| 57 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/instance-source-edition-5.md) | 344 | `declaration-track:af085561f08bcc0b856ba9ace145552aefe7ec74ed1791094e5300013922475f` |
| 58 | `theorem` | [bot_eq_zero](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/bot-eq-zero.md) | 350 | `result-track:6cbd671386bc84ed654f7bfbf83a9622c5d331449270b93af414b488c98ca479` |
| 59 | `theorem` | [le_zero](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/le-zero.md) | 353 | `result-track:e033aa6ac1b15e2246ee9bf5a2fc04dcf88c4c844bf90c396bfd07e53b5f4efb` |
| 60 | `theorem` | [lt_cons_self](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/lt-cons-self.md) | 356 | `result-track:d2eaaff17022d34ef891da5f3b5f82773c1624554f12e1538ce0d46744e83b4b` |
| 61 | `theorem` | [le_cons_self](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/le-cons-self.md) | 362 | `result-track:09ded469642715bf10a73f69edf2804f0abd75c2576870632dab337f648ee96a` |
| 62 | `theorem` | [cons_le_cons_iff](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/cons-le-cons-iff.md) | 365 | `result-track:aea380c3d93999f0d7f280607a9141ae22ff08baf2a849efa72e50cf79bfff9d` |
| 63 | `theorem` | [cons_le_cons](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/cons-le-cons.md) | 368 | `result-track:ec4530aea3a7729c3982b044a9df7846ce3043bbae4eab485d63d339d8022620` |
| 64 | `lemma` | [cons_lt_cons_iff](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/cons-lt-cons-iff.md) | 371 | `result-track:9cc35ebdaa11dc3d90b52af76bbae39685852f88f2c284fdaf08cb55260d7439` |
| 65 | `lemma` | [cons_lt_cons](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/cons-lt-cons.md) | 374 | `result-track:c98436c5e5fe6892fc56a692e23d6e86e3c2d000f72cde90484b8027bb44564a` |
| 66 | `theorem` | [le_cons_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/le-cons-of-notmem.md) | 376 | `result-track:619f0e81c58e2dbc9bb03bffbdc08a0361ff0b3470e37a727f1156726f6170f4` |
| 67 | `theorem` | [cons_le_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/cons-le-of-notmem.md) | 391 | `result-track:0e95515c09d0b7a31eebabaed53f59af835d9c53f868e21192a3e1f008b97af3` |
| 68 | `theorem` | [singleton_ne_zero](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/singleton-ne-zero.md) | 399 | `result-track:5e0d1dcd0540c047fe498b84ad8a4442f9f0d2761b2887589bd5e67b0b23db13` |
| 69 | `theorem` | [zero_ne_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/zero-ne-singleton.md) | 403 | `result-track:3e746102f0182bec6a8f69f00e392cf0465818381b72cf69106c957e662cb97f` |
| 70 | `theorem` | [singleton_le](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/singleton-le.md) | 406 | `result-track:138a54047b85f745ec7bf092a9fb2d7a8ed6e54514a33af2a5ea6b5c4927526a` |
| 71 | `lemma` | [le_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/le-singleton.md) | 411 | `result-track:6c2e85aabba5aa17a2dfe3a71fcf006f9d042bac0a9a106d4611b79ab9984f23` |
| 72 | `lemma` | [lt_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/lt-singleton.md) | 415 | `result-track:0627065d7687e75a33762915c65fbf692def00c70ac281d6b36fc1f198edd63f` |
| 73 | `lemma` | [ssubset_singleton_iff](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/ssubset-singleton-iff.md) | 421 | `result-track:256f785d809885a35230d3df0c1e044b27f8749a23e9960d6f0a587fa9b639dd` |
| 74 | `theorem` | [card_zero](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/card-zero.md) | 433 | `result-track:044e562b634206099cda4ca1c336eb93d8b8a576ee808f1ffce834a42bd2d07b` |
| 75 | `theorem` | [card_cons](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/card-cons.md) | 437 | `result-track:d5e29737b9c1de2608cbefe3e4d089cba6ec8ee6ad8444cec4595085ae6a08c3` |
| 76 | `theorem` | [card_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/card-singleton.md) | 441 | `result-track:f6d733e5b5ff695c1081451c9615497913838c6ffead20d0b2d32385c7e37d2c` |
| 77 | `theorem` | [card_pair](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/card-pair.md) | 444 | `result-track:dec508f1e9c0d0647a85e3c5c0d519df8421100d500978f231745ccfca215d62` |
| 78 | `theorem` | [card_eq_one](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/card-eq-one.md) | 447 | `result-track:98ac5c8be18979d47123bc681de761d9b0ea435a80721a29a7b6b5ce1aea87c0` |
| 79 | `theorem` | [lt_iff_cons_le](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/lt-iff-cons-le.md) | 451 | `result-track:06eeaa6a15ac96a9b0e726bd5c96b90d8e35dbfc30fb8bc64cfa04c89a5f4325` |
| 80 | `theorem` | [card_eq_zero](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/card-eq-zero.md) | 457 | `result-track:b2ac94c5f2625ff1d17a24c811272b35f2ab1b7ebd7dba89f7cf502477d836e2` |
| 81 | `theorem` | [card_pos](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/card-pos.md) | 460 | `result-track:828fee49be3e6b3abd0c60696589b815b29ef181972ef1711e3333df17b9818b` |
| 82 | `theorem` | [card_pos_iff_exists_mem](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/card-pos-iff-exists-mem.md) | 463 | `result-track:36542ab128c9ae0c83a73e4ea9de55a90ee2b332dd6d4054c223ae0bb68e772f` |
| 83 | `theorem` | [card_eq_two](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/card-eq-two.md) | 466 | `result-track:5a14d4bf5dafb9bbcfdcdfc71a1ae0ee5ce728047afc500bdf2fc27d037798e5` |
| 84 | `theorem` | [card_eq_three](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/card-eq-three.md) | 471 | `result-track:fc2a6e386a43f2e4534748b7a755ac63b128c41106826f0c8728c65dbeba3974` |
| 85 | `theorem` | [pmap_zero](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/pmap-zero.md) | 480 | `result-track:b8b78977de7fabd9db63e6ebbadb81e9f52a6fe778c362abb7ed46bc517b869e` |
| 86 | `theorem` | [pmap_cons](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/pmap-cons.md) | 485 | `result-track:e018aae44e392c3992713f329ce3a18aee47de26ebb1c00598875bedc84d0ede` |
| 87 | `theorem` | [attach_zero](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/attach-zero.md) | 492 | `result-track:15fd5466b396dbccb3ef649901e8f0438412ed76ca7d08965bdd736e3a379898` |
| 88 | `inductive` | [Rel](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/rel.md) | 502 | `declaration-track:4cc0f8edda812f5c106f3d6668e95d00cdbd198853ecf7925bdc52a393259132` |
| 89 | `theorem` | [rel_flip_aux](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/rel-flip-aux.md) | 508 | `result-track:28d7fe2e5694a8b8877fdd6f9836087eb7d65a13456dfbca59d9181b9c2425f1` |
| 90 | `theorem` | [rel_flip](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/rel-flip.md) | 511 | `result-track:5fc682ed2860e27816ffbfe9fd89f668f3b6f7f92586adb8611d9976bb5ddbc3` |
| 91 | `theorem` | [rel_refl_of_refl_on](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/rel-refl-of-refl-on.md) | 514 | `result-track:96afa04f1b9d6106ea80ffb22a8b3bbc70cfbaa25a2a5438601b6f9575a2bdcb` |
| 92 | `theorem` | [rel_eq_refl](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/rel-eq-refl.md) | 521 | `result-track:483f29bb73afe51fbe49cefaa013209f6fd5d44d9cbab309f684f902249a78e1` |
| 93 | `theorem` | [rel_eq](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/rel-eq.md) | 524 | `result-track:ec944cc8740c5e8f0961c385c16b74de0d193446d36a57f6c913c0928e2f81e4` |
| 94 | `theorem` | [Rel.mono](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/rel-mono.md) | 532 | `result-track:9f5a20b2efd411d24584cbbf9794f6a0dbde673ca5b6a6002f16299a48b8d82e` |
| 95 | `theorem` | [rel_flip_eq](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/rel-flip-eq.md) | 540 | `result-track:2f3b3664dd12cdf5a9e3684513bdca70cbc3b1605593178d6dc3573c5895cec0` |
| 96 | `theorem` | [rel_zero_left](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/rel-zero-left.md) | 544 | `result-track:b5614cd8af3ee69253df053bf5df145f672e8a25e69b9aeb1757e8c479acb0c5` |
| 97 | `theorem` | [rel_zero_right](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/rel-zero-right.md) | 547 | `result-track:cb321c6f2db9591f9dfd335991e08f56b76d0c19947de242487f7f772a9c60f7` |
| 98 | `theorem` | [rel_cons_left](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/rel-cons-left.md) | 549 | `result-track:8dd9f01f21acf654d3b81b86a64b7bf1f42dcec083ef7c9a80a33814f4975f3d` |
| 99 | `theorem` | [rel_cons_right](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/rel-cons-right.md) | 565 | `result-track:f1612922de2a77da963846506d94dcde47d4b3882127a6c8c7c272ce3ae98b5c` |
| 100 | `theorem` | [card_eq_card_of_rel](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/card-eq-card-of-rel.md) | 571 | `result-track:b0a30ef14086bfaa0f32636131e2fbebc41c5dc7c8e48c043f963accb8e8526e` |
| 101 | `theorem` | [exists_mem_of_rel_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/exists-mem-of-rel-of-mem.md) | 574 | `result-track:24b1fa242549e764c07366f633bd0df2a93eea036aa8440a1038429c6fb6a17d` |
| 102 | `theorem` | [rel_of_forall](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/rel-of-forall.md) | 585 | `result-track:abe5a67a307d75af661673763ac8c2d13f3a7a8d31fedfadb669d49217514c8e` |
| 103 | `theorem` | [Rel.trans](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/rel-trans.md) | 600 | `result-track:14693f6bdcfdaab44614da88ecf402fb15f63e0727f7f4ba77781d8f98cee0a1` |
| 104 | `theorem` | [pairwise_zero](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/pairwise-zero.md) | 612 | `result-track:7dc963fc2f11ad69db5fed3c0cf2ee981be5b44203f4e514f0c47199730e2ea8` |
| 105 | `theorem` | [nodup_zero](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/nodup-zero.md) | 620 | `result-track:c1d1a6e96b2227fa4447ec6836381fd9608cd48f32cce5952ef614e3d20979e8` |
| 106 | `theorem` | [nodup_cons](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/nodup-cons-source-edition-2.md) | 624 | `result-track:ac9089972ac79045c4ebb4e64bac63d05a0a1333b9fb621c3d4164bd3c736d3d` |
| 107 | `theorem` | [Nodup.cons](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/nodup-cons.md) | 627 | `result-track:093f059799acf0a344215c803db8eb4f225dcc463f7b08a609e488feb8aaba24` |
| 108 | `theorem` | [Nodup.of_cons](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/nodup-of-cons.md) | 630 | `result-track:90f02e82ae5372fe16ebefe080f49521a164fc40b2ff005fe5f3690f783389fc` |
| 109 | `theorem` | [Nodup.notMem](../../../../../Combinatorics/EnumerativeCombinatorics/ZeroConsNamespaced.lean/declarations/nodup-notmem.md) | 633 | `result-track:176e12ff2ee299e523561bf3d711e3a6bcc059aae571fcc04abc0bc3146d75a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=33d6f129a0a544229108868c6024dac9ce3a337817c646030615ca9130245869 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroCons/Variantb8fe2c8f7e3f6f9899c40a3667343bc6d25e9aea2f032a684e99c8d2e6d4921d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ZeroCons/Variantb8fe2c8f7e3f6f9899c40a3667343bc6d25e9aea2f032a684e99c8d2e6d4921d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
