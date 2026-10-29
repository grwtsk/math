# Verification target: Exponent Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "150eeadb58b5a30e718cfbe9af487892f8c50d27",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Exponent/Variant7535449fe771b72005c17c20b7e4f19fd77f86936e1ef320f11ad0b2bf137700.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `150eeadb58b5a30e718cfbe9af487892f8c50d27`.

Source path: `GRWTSK/Algebra/GroupTheory/Exponent/Variant7535449fe771b72005c17c20b7e4f19fd77f86936e1ef320f11ad0b2bf137700.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Exponent/Variant7535449fe771b72005c17c20b7e4f19fd77f86936e1ef320f11ad0b2bf137700.lean.json)

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
| 1 | `def` | [ExponentExists](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponentexists.md) | 73 | `declaration-track:292db25c7206db8549fcfd4a6709a97d0c0a8b4089a5752e0bdec2326d23ff88` |
| 2 | `def` | [exponent](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent.md) | 82 | `declaration-track:145efe112b88b5fc40eb52e866dc70a50d9429488b3aa1faee20c73060fc2207` |
| 3 | `theorem` | [Exponent Namespaced Public](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent-additive.md) | 88 | `result-track:e4a8d9f0e4ba0edc26c1a0ce13e22b6cce595a0b069dad76daa3fb8ceaae1d0e` |
| 4 | `theorem` | [exponent_multiplicative](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent-multiplicative.md) | 92 | `result-track:f46734ee1d2c38046d156a02dc6f2da20b4c006be3b6893580d3f907ed906cc9` |
| 5 | `theorem` | [Exponent Namespaced Public](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent-source-line-98-occurrence-2.md) | 98 | `result-track:cc3f18c902d486d9f90ed1f2483882455292974991801256c1b7986456290483` |
| 6 | `theorem` | [ExponentExists.isOfFinOrder](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponentexists-isoffinorder.md) | 104 | `result-track:f87f985a7424d95f0438fc6a9d1d7dd8902be4c61fc2a3dc227ebacb71a43672` |
| 7 | `theorem` | [ExponentExists.orderOf_pos](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponentexists-orderof-pos.md) | 110 | `result-track:16c83d2a5ee5a78724536c0267ac74379c907bff7994d99e57a26674c9a38be9` |
| 8 | `theorem` | [exponent_ne_zero](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent-ne-zero.md) | 115 | `result-track:1be9fac282822c2606b007e1b91a5d6d2880807d6d191bef289ae0015f38d456` |
| 9 | `theorem` | [exponent_pos](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent-pos.md) | 126 | `result-track:b0a9f48e9e39c357a0f2a50495df6783eb28c2c5ccd36e5fdea592aa0c79765f` |
| 10 | `theorem` | [exponent_eq_zero_iff](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent-eq-zero-iff.md) | 133 | `result-track:5adc12e49630f491b5d5f6a540adeb48e4eb9166e01b173306a63067f4bf24d9` |
| 11 | `theorem` | [exponent_eq_zero_of_order_zero](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent-eq-zero-of-order-zero.md) | 137 | `result-track:ee3c28819f963088138bfcf4b34e7c8a5e302bed77f3b6a6dffacff6107c12c5` |
| 12 | `theorem` | [exponent_eq_sInf](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent-eq-sinf.md) | 141 | `result-track:533c882616e0020d607029b7a2557b5d89328bf06b301e41537f80e25fa60e46` |
| 13 | `theorem` | [exponent_eq_zero_iff_forall](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent-eq-zero-iff-forall.md) | 154 | `result-track:66a9f1e3327574379a853320379b3d9bc1f95b5c51e8bedd18f458946ff34a26` |
| 14 | `theorem` | [pow_exponent_eq_one](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/pow-exponent-eq-one.md) | 160 | `result-track:7537298fbc46b351db8d4d33857b4dd327ccee18d7feb24c4637b55e5096ee2a` |
| 15 | `theorem` | [pow_eq_mod_exponent](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/pow-eq-mod-exponent.md) | 168 | `result-track:2f2ca34110334ec2dd8d924e834edeb4e56c61255fb8a737cfb243d81d18c621` |
| 16 | `theorem` | [exponent_pos_of_exists](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent-pos-of-exists.md) | 174 | `result-track:a481953e01baaa4099a21ec9ac05215da76be01e52314ba9a995fb7ac177f850` |
| 17 | `theorem` | [exponent_min'](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent-min-source-edition-2.md) | 179 | `result-track:f7f783f4d2d75e1a3a7a47ead90b0af4c2f818d4b6663618d64014ed6ca28d45` |
| 18 | `theorem` | [exponent_min](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent-min.md) | 187 | `result-track:a0f0833ac5c200949992b92f4d1174714bec378583deb172375e5352d23ce0a3` |
| 19 | `theorem` | [exp_eq_one_iff](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exp-eq-one-iff.md) | 193 | `result-track:247359a13946613377a98ad152acbe95cff5a047533eee6d3c66b64655bbcfb3` |
| 20 | `theorem` | [exp_eq_one_of_subsingleton](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exp-eq-one-of-subsingleton.md) | 203 | `result-track:23e6e8ffa0bf0b14a158461037b12029b9c1b948e1c35d01031f4ddaf1086318` |
| 21 | `theorem` | [order_dvd_exponent](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/order-dvd-exponent.md) | 207 | `result-track:4903f7f8e3c3a49f31e5e613ec4339ac3910f5a98bf0a272fd59b90818bea50c` |
| 22 | `theorem` | [orderOf_le_exponent](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/orderof-le-exponent.md) | 211 | `result-track:0cd8ba8722b1d1db04dfd9e60a5dcb92d7095a6d13ea6eeebe023aaca90f9a26` |
| 23 | `theorem` | [exponent_dvd_iff_forall_pow_eq_one](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent-dvd-iff-forall-pow-eq-one.md) | 215 | `result-track:e56a42fe77fe780f46e27aa689cd40e206c62d24455b3ac16ddc8aab700dc579` |
| 24 | `theorem` | [exponent_dvd](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent-dvd.md) | 236 | `result-track:5f919f69108d5c103bd1cd0f08befa2ad446c4456d6a4efe0e3282ea64a96716` |
| 25 | `theorem` | [lcm_orderOf_dvd_exponent](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/lcm-orderof-dvd-exponent.md) | 242 | `result-track:3795c9151477c202f486a5b65da6ada4fcbfb750b705535d93a944494e0c29d4` |
| 26 | `theorem` | [Exponent Namespaced Public](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exists-orderof-eq-pow-factorization-exponent.md) | 249 | `result-track:38335f81ca21a33e5d650cfa425a56e8b4004e791d81bca73485b7f523df1c62` |
| 27 | `lemma` | [Exponent Namespaced Public](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/orderof-mul-pow-eq-lcm.md) | 286 | `result-track:e42c78b151f8d37fcf7d6519e2275a5c77518be7b70759eef49c8455516a6df8` |
| 28 | `theorem` | [Exponent Namespaced Public](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exists-orderof-eq-lcm.md) | 302 | `result-track:85a63b03f5ccf90827003645890eb05b83a19141a878aee6f2aefdb3228d937e` |
| 29 | `lemma` | [exponent_eq_prime_iff](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent-eq-prime-iff.md) | 315 | `result-track:b21a23414d3e56ab7e1c6b752d28a9426725e658abd6903e39c31e5db5f7974e` |
| 30 | `theorem` | [exponent_ne_zero_iff_range_orderOf_finite](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent-ne-zero-iff-range-orderof-finite.md) | 331 | `result-track:17cc6e7884a34f2a4a21f114b1386a72ebc158a2ea2c101b178f796d9b9c8559` |
| 31 | `theorem` | [exponent_eq_zero_iff_range_orderOf_infinite](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent-eq-zero-iff-range-orderof-infinite.md) | 354 | `result-track:3e2279999b3bc491502cd5fbde9d6f533acc57b3a223d6774a2642c96aae43e6` |
| 32 | `theorem` | [lcm_orderOf_eq_exponent](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/lcm-orderof-eq-exponent.md) | 360 | `result-track:052f2f5a026fc88a8cf641abf8daef440744b8654ca171c43adba84f6dace255` |
| 33 | `theorem` | [exponent_dvd_of_monoidHom](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent-dvd-of-monoidhom.md) | 373 | `result-track:a738d25c9279546fc342a48593230fedfc29b4e1ac6e21a054768b270fd5499d` |
| 34 | `theorem` | [exponent_submonoid_dvd](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent-submonoid-dvd.md) | 382 | `result-track:39f1d03cd3629fffd0a599d90b490361de313f84ed11704781176e5609c6e0b7` |
| 35 | `theorem` | [exponent_eq_of_mulEquiv](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent-eq-of-mulequiv.md) | 392 | `result-track:28ba1f1dd2d9dc3e89c46e2bd3c877c67c85e5e03dedd105a398f82f7eca40a7` |
| 36 | `theorem` | [Exponent Namespaced Public](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent-top.md) | 405 | `result-track:c137452d61dc3f7e6afa967f8d1cb0958302b30d7068f3036df1678062f36cca` |
| 37 | `theorem` | [Exponent Namespaced Public](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/pow-exponent-eq-one-source-line-410-occurrence-2.md) | 410 | `result-track:865e71b4a76b170f672ed7d2595158fecc40936b9ec437225db60c6731212d8c` |
| 38 | `theorem` | [ExponentExists.of_finite](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponentexists-of-finite.md) | 422 | `result-track:bef433a02090d24156e842369b27f34d029e0f3763bdcd3a43c18d61c52add15` |
| 39 | `theorem` | [exponent_ne_zero_of_finite](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent-ne-zero-of-finite.md) | 431 | `result-track:028632d60505c1d234bf24b8d6485f227a70ac3f778b0316d5cce3f5d5a903ea` |
| 40 | `lemma` | [one_lt_exponent](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/one-lt-exponent.md) | 435 | `result-track:7944f46278e667410ae813a230059874f7484a0fa693c84509fe662eefab731c` |
| 41 | `instance` | [neZero_exponent_of_finite](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/nezero-exponent-of-finite.md) | 440 | `declaration-track:4462143241cd9b2ffdf7d7c41898b9a66f1e0c5009c58b389e5b74106eb9c5fe` |
| 42 | `theorem` | [exists_orderOf_eq_exponent](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exists-orderof-eq-exponent.md) | 450 | `result-track:afe7653b74cd98d93ce541ab60052ea9f8eda491a37243a388957078cb1ba9f0` |
| 43 | `theorem` | [exponent_eq_iSup_orderOf](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent-eq-isup-orderof.md) | 489 | `result-track:9b37079cf1d9f91e10d172026d974ce02ea18cb809428c296740eb41d47b1768` |
| 44 | `theorem` | [exponent_eq_iSup_orderOf'](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent-eq-isup-orderof-source-edition-2.md) | 508 | `result-track:cb6ca16ec0688a34a629da1b2208531ba3113f874f0ed42287a6c6964f7aeeeb` |
| 45 | `theorem` | [exponent_eq_max'_orderOf](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/exponent-eq-max-orderof.md) | 524 | `result-track:3281746210068e5999b3716b6c42f28226d725b4225d2ba8d634ea355dab56e7` |
| 46 | `theorem` | [Group.exponent_dvd_card](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/group-exponent-dvd-card.md) | 538 | `result-track:24e76e75a8e7a08dbde74808bec751ca202f70081e2b038c4013b45909acc321` |
| 47 | `theorem` | [Group.exponent_dvd_nat_card](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/group-exponent-dvd-nat-card.md) | 542 | `result-track:2932c1f5ee0fc20be603138a569342cd4135d1b697acc0cb7acbf8561e5e7c72` |
| 48 | `theorem` | [Subgroup.exponent_toSubmonoid](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/subgroup-exponent-tosubmonoid.md) | 546 | `result-track:9787258fedc25d26cbe7204157c28c14157324cd2356afda8b6a3baa12314bcf` |
| 49 | `theorem` | [Subgroup.exponent_top](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/subgroup-exponent-top.md) | 551 | `result-track:8bb3cbf620326aebdaca68595f3703c8a1b37c19c044bd7b4aa74c6abd77d96f` |
| 50 | `theorem` | [Subgroup.pow_exponent_eq_one](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/subgroup-pow-exponent-eq-one.md) | 555 | `result-track:c101cd493761f81355012784e63d3882ea6a27a2facd581595138610362e3dd1` |
| 51 | `theorem` | [Group.exponent_dvd_iff_forall_zpow_eq_one](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/group-exponent-dvd-iff-forall-zpow-eq-one.md) | 559 | `result-track:ea34fcfcd28d4845591064a2fafaed750e682e0bef1e604bd4288eeb7c15a03d` |
| 52 | `theorem` | [Group.exponent_dvd_sub_iff_zpow_eq_zpow](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/group-exponent-dvd-sub-iff-zpow-eq-zpow.md) | 564 | `result-track:6e2e52f8d56002b1ff9675b394183827b9b65fa3553f05c60b98998b32f4c8e4` |
| 53 | `theorem` | [Monoid.exponent_pi_eq_zero](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/monoid-exponent-pi-eq-zero.md) | 575 | `result-track:38ef8c3be84ee340090bf828fb33e0bc1f8aa9a275a539511928de39a3ee05a7` |
| 54 | `theorem` | [MonoidHom.exponent_dvd](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/monoidhom-exponent-dvd.md) | 587 | `result-track:2406e63bd82255b55734194230244c2ac1dbe8b88f25e2170652834964d30ebe` |
| 55 | `theorem` | [Monoid.exponent_pi](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/monoid-exponent-pi.md) | 598 | `result-track:22c5dd411cf6e96c238f1ec4b2b6cd261072c9ac65829a01c6e96e79471d0ef0` |
| 56 | `theorem` | [Monoid.exponent_prod](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/monoid-exponent-prod.md) | 613 | `result-track:14ac8577b455bdc20691521cd593d98d01ea4bc45c937beefb5acb88b58a878c` |
| 57 | `lemma` | [orderOf_eq_two_iff](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/orderof-eq-two-iff.md) | 636 | `result-track:a368a8bf9df135394652dea3e4fea2802369fccfafe411debf157ec49a36d0fa` |
| 58 | `theorem` | [Commute.of_orderOf_dvd_two](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/commute-of-orderof-dvd-two.md) | 641 | `result-track:05b1c94ea078efcc19d313453bc8487f90bc9dceb42d443118420771ebc5d490` |
| 59 | `lemma` | [mul_comm_of_exponent_two](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/mul-comm-of-exponent-two.md) | 655 | `result-track:4e7f1d8c0d88e795156142fd47edc20976ca9f4e72057dcf7c8f16145d951e73` |
| 60 | `abbrev` | [commMonoidOfExponentTwo](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/commmonoidofexponenttwo.md) | 661 | `declaration-track:a825527bb1bcb668fde60adf334fa423149ae860042103faeefaf1d184ff39c7` |
| 61 | `theorem` | [Group.exponent_quotient_dvd](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/group-exponent-quotient-dvd.md) | 676 | `result-track:b47f4621f3871f7836ad2ee2a66c12c2c2b49aacbc15ddb39a07c8c6869b5510` |
| 62 | `lemma` | [inv_eq_self_of_exponent_two](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/inv-eq-self-of-exponent-two.md) | 682 | `result-track:0f10c2ce70bc7ef20493ddf73fc62fdda0a2effd1135cca0daedc14ab0773f68` |
| 63 | `lemma` | [inv_eq_self_of_orderOf_eq_two](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/inv-eq-self-of-orderof-eq-two.md) | 688 | `result-track:df04dc9800237b190acb08ada0b3cd42adc9cb8f70fcb4768d2f2b0a5b319641` |
| 64 | `lemma` | [mul_notMem_of_orderOf_eq_two](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/mul-notmem-of-orderof-eq-two.md) | 693 | `result-track:4cb43e3f114f4fc27ee194efc31c711c992b7146be5a46c3106e912c4bfac9a9` |
| 65 | `lemma` | [mul_notMem_of_exponent_two](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/mul-notmem-of-exponent-two.md) | 700 | `result-track:f4179a08f02f5b65b93ffaf24668952ea6dd7bd76abae6960d4a9cf8906bb494` |
| 66 | `theorem` | [ringChar_eq_addMonoidExponent](../../../../GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/declarations/ringchar-eq-addmonoidexponent.md) | 709 | `result-track:586659158bfdc4317598563a4960add8524061d8288f1c538a9748947aa06201` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=87cba6458f25ba330473a445ca1f69de44be0216bd96ebb774dd3200b2e918f8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Exponent/Variant7535449fe771b72005c17c20b7e4f19fd77f86936e1ef320f11ad0b2bf137700.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Exponent/Variant7535449fe771b72005c17c20b7e4f19fd77f86936e1ef320f11ad0b2bf137700.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
