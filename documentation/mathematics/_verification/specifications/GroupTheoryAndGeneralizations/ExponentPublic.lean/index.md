# Verification target: Exponent Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c86c5366a4495322423562f335e163c7c593612e",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Exponent/Varianteefa1a66bae11a275f016ef6d2aad6fe4e81e0ad5a00456946d7f67898f8d60f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c86c5366a4495322423562f335e163c7c593612e`.

Source path: `GRWTSK/Algebra/GroupTheory/Exponent/Varianteefa1a66bae11a275f016ef6d2aad6fe4e81e0ad5a00456946d7f67898f8d60f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Exponent/Varianteefa1a66bae11a275f016ef6d2aad6fe4e81e0ad5a00456946d7f67898f8d60f.lean.json)

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
| 1 | `def` | [ExponentExists](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponentexists.md) | 65 | `declaration-track:933350ee947e2f55dcce80a0e9fab942dadc1e915f88b70587cda74a03527214` |
| 2 | `def` | [exponent](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponent.md) | 74 | `declaration-track:49d9da9c792b91b6099e8e91ca2f24825b12f71f62e4424e985c029ff7000abf` |
| 3 | `theorem` | [_root_.AddMonoid.exponent_additive](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/root-addmonoid-exponent-additive.md) | 80 | `result-track:b11ccee600ff95978334d1fb9c94f3ce8af9c6fd8722138fcd46c7efd566a9b7` |
| 4 | `theorem` | [exponent_multiplicative](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponent-multiplicative.md) | 84 | `result-track:cce037af9054dffeea744687250aa93810cf4d0fe99bf6297fbee0c7e041fdf7` |
| 5 | `theorem` | [_root_.MulOpposite.exponent](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/root-mulopposite-exponent.md) | 90 | `result-track:5818aa01f1eedd41011d4ef9955a643555fdaa453ce8f1892c9a2717d70fef15` |
| 6 | `theorem` | [ExponentExists.isOfFinOrder](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponentexists-isoffinorder.md) | 96 | `result-track:4f3cd98656769a32ca41af200b129a3b67a50e21cc415c8f548bda3d4a30e899` |
| 7 | `theorem` | [ExponentExists.orderOf_pos](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponentexists-orderof-pos.md) | 102 | `result-track:5cfbf3345921eac4d07ce1a2e4ad2f096cd7dee013c2f24d7247fc8c7cfe75c2` |
| 8 | `theorem` | [exponent_ne_zero](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponent-ne-zero.md) | 107 | `result-track:5a4edc7c209ea7c05e352177c448a6fba9ae458240deae0aacd9af762e504c08` |
| 9 | `theorem` | [exponent_pos](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponent-pos.md) | 118 | `result-track:4923cce24f5f43d1b7d78f2fbf7a2d94bc67a52479f56c3910832f22d0a8b113` |
| 10 | `theorem` | [exponent_eq_zero_iff](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponent-eq-zero-iff.md) | 125 | `result-track:65f85826678aa913fb2e3cf1632f4b756cabc5fcb2479108228b4dbd0542dff2` |
| 11 | `theorem` | [exponent_eq_zero_of_order_zero](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponent-eq-zero-of-order-zero.md) | 129 | `result-track:e204a08b7bea3478bb9b92d4920ddcffddc335a4774eb4a8881704aea0db04db` |
| 12 | `theorem` | [exponent_eq_sInf](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponent-eq-sinf.md) | 133 | `result-track:ca071d6760290663814eea8f9e81a999d0fca9b8d2048e28a382baaf6000fc71` |
| 13 | `theorem` | [exponent_eq_zero_iff_forall](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponent-eq-zero-iff-forall.md) | 146 | `result-track:bf5e8db3347135746dbd36f330ec5b3d21609a7f78d67d50cc68ad59a1f656e4` |
| 14 | `theorem` | [pow_exponent_eq_one](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/pow-exponent-eq-one.md) | 152 | `result-track:41a4160149b43872aecf5bd5fff5fb4fb5fcd2e699660cfb1a957d35a25d7f0c` |
| 15 | `theorem` | [pow_eq_mod_exponent](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/pow-eq-mod-exponent.md) | 160 | `result-track:320e1dc86de6ba54b60aa4087dc8b5f79b942105d524dd95ada9a4fa129a2867` |
| 16 | `theorem` | [exponent_pos_of_exists](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponent-pos-of-exists.md) | 166 | `result-track:5fc1a6017e8d60b6a332b267412dd024003c83993c9cc4e20bca4f5a74615993` |
| 17 | `theorem` | [exponent_min'](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponent-min.md) | 171 | `result-track:578ee81af86e9f6ca9896a23bd6afa981e8b373d58a7522275552a36ae84bcbe` |
| 18 | `theorem` | [exponent_min](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponent-min-source-edition-2.md) | 179 | `result-track:c5f05ad510f957c08a1dfa8a0c54deea20813a6e2a7c1a314acb52fee381d94e` |
| 19 | `theorem` | [exp_eq_one_iff](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exp-eq-one-iff.md) | 185 | `result-track:c6f959c3fba811030951cd1123d960c3cd817ad59afbcfd9b53924cdb5e1796e` |
| 20 | `theorem` | [exp_eq_one_of_subsingleton](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exp-eq-one-of-subsingleton.md) | 195 | `result-track:5c812b207b799a2f75737549aafebb6fd786f99da977cbb347b60249a24097d2` |
| 21 | `theorem` | [order_dvd_exponent](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/order-dvd-exponent.md) | 199 | `result-track:e65b9f42f6e446d6fe13fe37746fcde6784d31769b10c86deb150f2ac24b1416` |
| 22 | `theorem` | [orderOf_le_exponent](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/orderof-le-exponent.md) | 203 | `result-track:0054717f4fd6804efe7b3bd52077a29d3980cc9e98960267470a79c7b649f03a` |
| 23 | `theorem` | [exponent_dvd_iff_forall_pow_eq_one](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponent-dvd-iff-forall-pow-eq-one.md) | 207 | `result-track:454896d94232b4bfdb8496cb384e16ed6fd64620d7e3129f42f464e7fad48a41` |
| 24 | `theorem` | [exponent_dvd](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponent-dvd.md) | 228 | `result-track:cb47986f5a02af7d3316c956bd54ae952295f9b29bdff55d9227a96dc97021ad` |
| 25 | `theorem` | [lcm_orderOf_dvd_exponent](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/lcm-orderof-dvd-exponent.md) | 234 | `result-track:a73b04b850268596e915dbecca1f28c098f5ebfa7cd896050a0dc4be22f988c8` |
| 26 | `theorem` | [_root_.Nat.Prime.exists_orderOf_eq_pow_factorization_exponent](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/root-nat-prime-exists-orderof-eq-pow-factorization-exponent.md) | 241 | `result-track:cd750078904f7d358f2c96c7d01efe9d5253a4bf6f4d4522674357fabdac33f0` |
| 27 | `lemma` | [_root_.Commute.orderOf_mul_pow_eq_lcm](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/root-commute-orderof-mul-pow-eq-lcm.md) | 278 | `result-track:796b458cdf714943c3d75fc39345fcffb3091c2ec23d05564cd10ec88d7f92a1` |
| 28 | `theorem` | [_root_.Commute.exists_orderOf_eq_lcm](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/root-commute-exists-orderof-eq-lcm.md) | 294 | `result-track:47b5645abc81f2741aeb40f216d38b940c3d9eafde8fb3793a9a180ecf9a9423` |
| 29 | `lemma` | [exponent_eq_prime_iff](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponent-eq-prime-iff.md) | 307 | `result-track:e2c63b8f423b80e881119980b9597143f0f1ca3089f5a424bee52f8d0f6873df` |
| 30 | `theorem` | [exponent_ne_zero_iff_range_orderOf_finite](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponent-ne-zero-iff-range-orderof-finite.md) | 323 | `result-track:1c12ded0948961280f483f56f30a58ad3240af237aaa9c4a63ab264e73ce7576` |
| 31 | `theorem` | [exponent_eq_zero_iff_range_orderOf_infinite](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponent-eq-zero-iff-range-orderof-infinite.md) | 346 | `result-track:8113f6af54510f206e4158a2c37d7cfb7a7b05689beaeca2c8307c4a29ba2d7e` |
| 32 | `theorem` | [lcm_orderOf_eq_exponent](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/lcm-orderof-eq-exponent.md) | 352 | `result-track:06ba0645c05087a8bb71099f6295a6e7002ae790fc317e03c5ee75e9dcf641fc` |
| 33 | `theorem` | [exponent_dvd_of_monoidHom](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponent-dvd-of-monoidhom.md) | 365 | `result-track:e336de9a3582ab3b083ee8cb6aefce46190eefe767668670a3f86dcd9885324e` |
| 34 | `theorem` | [exponent_submonoid_dvd](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponent-submonoid-dvd.md) | 374 | `result-track:1cced589e27d64adaa006e7a044b2ef038aa2ec741e78ee91e817bc40c9b2024` |
| 35 | `theorem` | [exponent_eq_of_mulEquiv](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponent-eq-of-mulequiv.md) | 384 | `result-track:5afb54adfc25b8c4123fa79cd5c37b8b90dfe4efc0de19d2322243ff88ee3b61` |
| 36 | `theorem` | [_root_.Submonoid.exponent_top](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/root-submonoid-exponent-top.md) | 397 | `result-track:0ca6176968838db3ae094b8b237c6c4c60f3291e084967c63db27be8e9f980bc` |
| 37 | `theorem` | [_root_.Submonoid.pow_exponent_eq_one](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/root-submonoid-pow-exponent-eq-one.md) | 402 | `result-track:8c38824aff0579f62daa554d55ea55d489c4b09829297b89e7f333bea65549b6` |
| 38 | `theorem` | [ExponentExists.of_finite](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponentexists-of-finite.md) | 414 | `result-track:5a0ebc1d26cf1fee5beda6adffb4f2e8eb15e448436bf9cb78ab34c6e78afd63` |
| 39 | `theorem` | [exponent_ne_zero_of_finite](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponent-ne-zero-of-finite.md) | 423 | `result-track:578c9ec08954364fa4e596981b6309851b9af6ca95712ca8b9b95d5ff32460c6` |
| 40 | `lemma` | [one_lt_exponent](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/one-lt-exponent.md) | 427 | `result-track:7b8d862573a5e37e8bc8962d605511607839ce496bc896dcf569557bf3eac5bb` |
| 41 | `instance` | [neZero_exponent_of_finite](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/nezero-exponent-of-finite.md) | 432 | `declaration-track:cd2b05dc89dd9a36ed7c8fc380e2879cce897a14cf3ea14a1938818906cb08a9` |
| 42 | `theorem` | [exists_orderOf_eq_exponent](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exists-orderof-eq-exponent.md) | 442 | `result-track:ea57a599a43d74e14f27604235871ac40bcce6e589ffda528ca6346f68fd933d` |
| 43 | `theorem` | [exponent_eq_iSup_orderOf](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponent-eq-isup-orderof-source-edition-2.md) | 481 | `result-track:fc52fe4d2eab2871ccf6a509529e2fd89d02fb43dcc325210e61deb59f854e5e` |
| 44 | `theorem` | [exponent_eq_iSup_orderOf'](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponent-eq-isup-orderof.md) | 500 | `result-track:a2c242c176f9e48ff205529e0f29c012c4c59b1614bfad690f7c36e4bdc70db2` |
| 45 | `theorem` | [exponent_eq_max'_orderOf](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/exponent-eq-max-orderof.md) | 516 | `result-track:e6fd77edfd38df54749973cb842b5f2b37c4d655115534a5e501930843dd6492` |
| 46 | `theorem` | [Group.exponent_dvd_card](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/group-exponent-dvd-card.md) | 530 | `result-track:63e32730401dc9bcc5cebe56c38f8916bdf0c1b0540ebd2c3329f3d5da1ba9da` |
| 47 | `theorem` | [Group.exponent_dvd_nat_card](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/group-exponent-dvd-nat-card.md) | 534 | `result-track:e292e937023b3f2c54565fb9f8bc05235c741c6c3bf42f50175a0aa64ef80e54` |
| 48 | `theorem` | [Subgroup.exponent_toSubmonoid](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/subgroup-exponent-tosubmonoid.md) | 538 | `result-track:0e75246c668aa8b08f31cfb334637c123d4fe03225a6e18413511c33b95e6392` |
| 49 | `theorem` | [Subgroup.exponent_top](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/subgroup-exponent-top.md) | 543 | `result-track:4a5145f8af3341f12acce9460be9498d6af665ea50418ea87534ab584265c648` |
| 50 | `theorem` | [Subgroup.pow_exponent_eq_one](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/subgroup-pow-exponent-eq-one.md) | 547 | `result-track:53ba4c88608d0b560901207ed629b2d40cd54ff40367c2868be5f8d05ae7afa3` |
| 51 | `theorem` | [Group.exponent_dvd_iff_forall_zpow_eq_one](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/group-exponent-dvd-iff-forall-zpow-eq-one.md) | 551 | `result-track:f7db40762ecfbe3d716feb6f657c7a18985b0512e96a7975d59a600807bd5ce7` |
| 52 | `theorem` | [Group.exponent_dvd_sub_iff_zpow_eq_zpow](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/group-exponent-dvd-sub-iff-zpow-eq-zpow.md) | 556 | `result-track:f3be8bba457cf41af88e3432a7d4c443bc956ea00e604bb1fd52411bce96e93a` |
| 53 | `theorem` | [Monoid.exponent_pi_eq_zero](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/monoid-exponent-pi-eq-zero.md) | 567 | `result-track:0c7643e70eba21e03115d63ac8d346c396b241d746bfeef49956c7bcfd8b35b3` |
| 54 | `theorem` | [MonoidHom.exponent_dvd](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/monoidhom-exponent-dvd.md) | 579 | `result-track:e3fedea08f16a7e00474432e7a62770b51a5d1c3aad76a561cff8fc50423b568` |
| 55 | `theorem` | [Monoid.exponent_pi](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/monoid-exponent-pi.md) | 590 | `result-track:83ec42720a45e7d8fdbbef2e0ee61effac201399348a2c96bb814fedc71e7001` |
| 56 | `theorem` | [Monoid.exponent_prod](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/monoid-exponent-prod.md) | 605 | `result-track:313864eff52d09f798f32f34652e46e1f1b040554557acdf4e14ac3bd2f050b2` |
| 57 | `lemma` | [orderOf_eq_two_iff](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/orderof-eq-two-iff.md) | 628 | `result-track:fb39cafbc0479e38afb5f77d2832a46cd23f21ba55f8c8141629929003d37742` |
| 58 | `theorem` | [Commute.of_orderOf_dvd_two](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/commute-of-orderof-dvd-two.md) | 633 | `result-track:4adb2de7fa55343940d9a943432129b0960d22746329f7a4cb9c43fd0ea73245` |
| 59 | `lemma` | [mul_comm_of_exponent_two](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/mul-comm-of-exponent-two.md) | 647 | `result-track:dbed7b56002499ba97fb84aaf87a77326ddb1116d7d3d0f8e93e4f1829beabcb` |
| 60 | `abbrev` | [commMonoidOfExponentTwo](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/commmonoidofexponenttwo.md) | 653 | `declaration-track:255cfd67e9633d67cceb2b6dd43294940d28f1a47369c411b5ba10d0aba2e4bc` |
| 61 | `theorem` | [Group.exponent_quotient_dvd](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/group-exponent-quotient-dvd.md) | 668 | `result-track:0d25d50635ae27e80812e34a44fa5b3b0ecaf77500df12b8394848deca125944` |
| 62 | `lemma` | [inv_eq_self_of_exponent_two](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/inv-eq-self-of-exponent-two.md) | 674 | `result-track:74da2fef8d2427d7f3040a66dd914b299108340093a2990b33409830989b975e` |
| 63 | `lemma` | [inv_eq_self_of_orderOf_eq_two](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/inv-eq-self-of-orderof-eq-two.md) | 680 | `result-track:ce06801b93525d26c0c0e037bac17db1a7b8421837c46dac87c654bb95afc1be` |
| 64 | `lemma` | [mul_notMem_of_orderOf_eq_two](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/mul-notmem-of-orderof-eq-two.md) | 685 | `result-track:3478b1b834394d4e26f1744fc7b22a90ed327994be16c38bc11f5d97820e3cf3` |
| 65 | `lemma` | [mul_notMem_of_exponent_two](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/mul-notmem-of-exponent-two.md) | 692 | `result-track:98ab000a35f20c4cec5e5d3de207dfde3cee60fa6cd450c80eb44820340f82f2` |
| 66 | `theorem` | [ringChar_eq_addMonoidExponent](../../../../GroupTheoryAndGeneralizations/ExponentPublic.lean/declarations/ringchar-eq-addmonoidexponent.md) | 701 | `result-track:47caf1ee97a895f0b2e9509e0ff321f3ffba99143363cc89c3d59d067041f5b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb705f0edd8c1059e4ad143ef73fcfd62d30676ae8133a3f4d4524de8856e632 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Exponent/Varianteefa1a66bae11a275f016ef6d2aad6fe4e81e0ad5a00456946d7f67898f8d60f.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Exponent/Varianteefa1a66bae11a275f016ef6d2aad6fe4e81e0ad5a00456946d7f67898f8d60f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
