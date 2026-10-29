# Verification target: Coprod INamespaced Mk Aux

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c69882ab06ca0ce031e836729c460fda2cea334e",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CoprodI/Variant4539ecb868f959a940d14c350f25c9220b3a0499fe5aa073063a73593afcff01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c69882ab06ca0ce031e836729c460fda2cea334e`.

Source path: `GRWTSK/Algebra/GroupTheory/CoprodI/Variant4539ecb868f959a940d14c350f25c9220b3a0499fe5aa073063a73593afcff01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CoprodI/Variant4539ecb868f959a940d14c350f25c9220b3a0499fe5aa073063a73593afcff01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.FreeMonoid.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.IsFreeGroup` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Chain` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Ordinal` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pointwise.SMul` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Monoid.CoprodI.Rel](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/monoid-coprodi-rel.md) | 98 | `declaration-track:b44fb86f9cbe7c947344968c31230340dfdce0e67ed733ac56560c3d97276c9d` |
| 2 | `def` | [Monoid.CoprodI](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/monoid-coprodi.md) | 105 | `declaration-track:fdd8a4064467ae04af62ef0d2a9f2ed402ca1e924d3253765306c4c7eefa7987` |
| 3 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/instance-source-edition-9.md) | 109 | `declaration-track:df1010ffaece81fc00b7574bc76571f5a1b0daa97f03381005138e0a3556454f` |
| 4 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/instance-source-edition-6.md) | 112 | `declaration-track:8a2b41a2cf4849c777654153c1f9a54f32c435fe35d061dadf5b3cf39c01f425` |
| 5 | `structure` | [Word](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/word.md) | 120 | `declaration-track:37d7c63769ff55c367b82e90ae11d5f8ed7ec0265a4c075ae50c02932b2ece41` |
| 6 | `def` | [of](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/of.md) | 133 | `declaration-track:12e17fab7c78e32a900ed7d54abb2bd2c04827d4c40e9915b647bd9fcbd598a2` |
| 7 | `theorem` | [of_apply](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/of-apply.md) | 139 | `result-track:08984777b12fccc05c23b51f6bb3f516c21c4896903ca312ac8039f93fc22fd5` |
| 8 | `theorem` | [ext_hom](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/ext-hom.md) | 148 | `result-track:431e6b75c79f645ea05d42de73c925d1aeab5dc1301d87732d188e6d43527258` |
| 9 | `def` | [lift](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/lift.md) | 158 | `declaration-track:f9fc047d4d2a555dfb9531c1e4c82b91f04dd95ec76ba4545d2e30bdadb4123c` |
| 10 | `theorem` | [lift_of](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/lift-of.md) | 182 | `result-track:98f283324686c41348775a417d43037ba4233c0ceaa8c0bf073ed70817eec950` |
| 11 | `theorem` | [induction_on](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/induction-on.md) | 187 | `result-track:81a3f2e323a8a8c40d6027dfc56f11619b92f198709d02b8c27968e6588d15df` |
| 12 | `theorem` | [of_leftInverse](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/of-leftinverse.md) | 201 | `result-track:60810c846909a1e985cf24e171be6d88258d0ff5c44de42c12cfba5ad186fe1a` |
| 13 | `theorem` | [of_injective](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/of-injective.md) | 206 | `result-track:f6e6967c8b384e120b7b36185b4e80ee4cc8b825ab97ee76414dde689769a908` |
| 14 | `theorem` | [lift_mrange_le](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/lift-mrange-le.md) | 210 | `result-track:6d2b62b1fe2d0794de459350bdd2698c08ecce667df3e3dea33ec8ed129ebeb4` |
| 15 | `theorem` | [mrange_eq_iSup](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/mrange-eq-isup.md) | 221 | `result-track:3ff86e41cbd515a09027042d68eba6333720b751ed94b9c900e443dd574503ce` |
| 16 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/instance-source-edition-7.md) | 233 | `declaration-track:bc228c1c9c66bd923f8aa6374d92b076aa8bc444abda3dec7b20fef7580ec8ce` |
| 17 | `theorem` | [inv_def](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/inv-def.md) | 237 | `result-track:c3901c34dd138a96393276e3e4f87e1af62582c2385f888da635e8bd71355177` |
| 18 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/instance-source-edition-2.md) | 244 | `declaration-track:17ee7fd77c62f1256980bd55701522dd35b20722b81bb47b62e9b7bd7d776930` |
| 19 | `theorem` | [lift_range_le](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/lift-range-le.md) | 258 | `result-track:d5845a7772dd2711a90d86e61bc8d4dde262ce97c4aedb053e0a30cdfbbbce82` |
| 20 | `theorem` | [range_eq_iSup](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/range-eq-isup.md) | 269 | `result-track:798725a00b54beb4d604a59428eed5efaf4650e07e594b3d3bae7cf9748e167b` |
| 21 | `def` | [empty](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/empty.md) | 281 | `declaration-track:21007c3bec4e9951eb851b74c358585e8daffc816f46056f88b8aead6daf69ef` |
| 22 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/instance.md) | 287 | `declaration-track:173c434168bdf860fdf82f95308a2f0a9e8ebd1611f872aadae6eb418f339cb2` |
| 23 | `def` | [prod](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/prod.md) | 291 | `declaration-track:56ea580ec66df217a71b78e674486be6ca3cd437961209598c0ade90892810c2` |
| 24 | `theorem` | [prod_empty](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/prod-empty.md) | 296 | `result-track:19aff3ea685bf0fa754f0136e7a48ddcf267edbdccc757a15fe43d7380b4c3d7` |
| 25 | `def` | [fstIdx](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/fstidx.md) | 302 | `declaration-track:634f00edac0da44557defe677c9e14f2375b081bda8147a37ef238186581fd92` |
| 26 | `theorem` | [fstIdx_ne_iff](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/fstidx-ne-iff.md) | 306 | `result-track:e8192d3e25482bc1438204e57ef63f6beb7a88f61cb3d46986968ba6c211e38d` |
| 27 | `structure` | [Pair](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/pair.md) | 318 | `declaration-track:f4f29d94212099a17625e645ee0c36c3e7f23c223b0157f18969eba2765cc242` |
| 28 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/instance-source-edition-5.md) | 327 | `declaration-track:7c4f706af3a8e83382e55a09101db53ac52b300593289628f8556ea4429e0f0b` |
| 29 | `def` | [rcons](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/rcons.md) | 337 | `declaration-track:549a7abd59a9bc29b535d6b87f44c0ea34225f2f361a8c13ed6708516226d6de` |
| 30 | `def` | [mkAux](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/mkaux.md) | 351 | `declaration-track:8ad3bb37962882eb543355af28338fe2270f687f84989d6e80009c1f2f87aa68` |
| 31 | `theorem` | [cons_eq_rcons](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/cons-eq-rcons.md) | 355 | `result-track:985b42ef1d7db9ccbdd70920e964b2f81be176a5fe0224ca7399c904779570f6` |
| 32 | `theorem` | [prod_rcons](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/prod-rcons.md) | 363 | `result-track:0cc054562da33ceced28c361c9f826dcfe1d05fa9b08cb5631fa21dce8c8e0eb` |
| 33 | `theorem` | [rcons_inj](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/rcons-inj.md) | 368 | `result-track:66ec5ada35ffcc8f036be1ed2952a54969e02a519a68b1945df03efe56ef2a62` |
| 34 | `def` | [equivPairAux](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/equivpairaux.md) | 395 | `declaration-track:457ec5e630aadadbb2b27bde54e86ba68acf28ecdf6f6867b188030474ab8d60` |
| 35 | `def` | [equivPair](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/equivpair.md) | 409 | `declaration-track:c43dc8f0962056b33128bd7a95505c91b00a585b6194bf0f3f0f1448560c6ecf` |
| 36 | `theorem` | [equivPair_symm](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/equivpair-symm.md) | 416 | `result-track:5252568d7d6256448d904e961a1b3939b765a2c4d80c0fd2a95c23b568177c7f` |
| 37 | `theorem` | [equivPair_eq_of_fstIdx_ne](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/equivpair-eq-of-fstidx-ne.md) | 420 | `result-track:15397ac68fe570cf203b62a58ae3e7462f84a325e1122db0bc64815d770bab8b` |
| 38 | `instance` | [summandAction](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/summandaction.md) | 425 | `declaration-track:533cfd7b960e1812d72b05b4fb137333f1fcf6e2ebd85a1da4a3d827933dae5c` |
| 39 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/instance-source-edition-3.md) | 435 | `declaration-track:23188314d9b13812cb8d420cf0b2c8f76432f1750b3452693ef44d14cede7302` |
| 40 | `theorem` | [of_smul_def](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/of-smul-def.md) | 438 | `result-track:a9fbe20f24e0fff25dfa3b4af45bf6a81246995dec4fb0ff2fb7048e33ab0eff` |
| 41 | `theorem` | [cons_eq_smul](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/cons-eq-smul.md) | 443 | `result-track:c0a27c0a0d6913f02af06f60ea147b71b12fbdb2c9dc58cdcd3b412fd603b39e` |
| 42 | `theorem` | [smul_induction](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/smul-induction.md) | 451 | `result-track:34c205aab87a6c0e57fb0bc631b5e3b0ee40644dec48864b8d11eb5a8d06472c` |
| 43 | `theorem` | [prod_smul](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/prod-smul.md) | 462 | `result-track:1202a9026c6da535c47f9cd77bc1a3fd75d74efa3f9fa3cd3837662f12950a4b` |
| 44 | `def` | [equiv](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/equiv.md) | 477 | `declaration-track:8f7895c35820bc7c23e66df21430d183cf308024b9d667397368298fb67fef13` |
| 45 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/instance-source-edition-4.md) | 490 | `declaration-track:7606cfaa912afd0a8580a2ec43a2401b0a136c3e7f980b2f8dcdc59176725a76` |
| 46 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/instance-source-edition-8.md) | 493 | `declaration-track:cc3197eb42fa1f3ec6255fe54817614e0c75aebb8db9570376e8633a27d9c39a` |
| 47 | `inductive` | [NeWord](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/neword.md) | 504 | `declaration-track:6788e8dffda4398f2a1675cd7005b1f6e3890a4a65512346bcdb33d41cfd2fd2` |
| 48 | `def` | [toList](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/tolist.md) | 517 | `declaration-track:0c6786387f55d335e6fb12e0544d771e70f9a5d1c09678f50d062c16bf5263eb` |
| 49 | `theorem` | [toList_ne_nil](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/tolist-ne-nil.md) | 522 | `result-track:11ab141b5c5e17a67dce80bda58aa6cc7a377b80d9459bfe585f148906a37d89` |
| 50 | `def` | [head](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/head.md) | 531 | `declaration-track:f50d358c5d7fe5739312683d0f6200dce2b9f0e46a4eca9e5420feaa510fa516` |
| 51 | `def` | [last](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/last.md) | 538 | `declaration-track:7d61dcf7949ca96a58ce43c7b95a3ce91780c9be126c3a301cd54a6956f8be06` |
| 52 | `theorem` | [toList_head?](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/tolist-head.md) | 544 | `result-track:a692dd741e64b1d7e2b5bbfb999ce0857be9e6cd23f108bacab748aa81a7d9a2` |
| 53 | `theorem` | [toList_getLast?](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/tolist-getlast.md) | 553 | `result-track:d8ce84a130f7ddeebfe85e1c495751b29011aadb948ad5f8cb711e6ce663d980` |
| 54 | `def` | [toWord](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/toword.md) | 562 | `declaration-track:e93eacf459dacede51271babbafe4a13650fcc2103043a84897a02fe2e4503fe` |
| 55 | `theorem` | [of_word](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/of-word.md) | 584 | `result-track:5c7f3e1b9e6a0af6a3a0dce961a9d9ddad74bd525c8297f5b92b11bfac8cd00e` |
| 56 | `def` | [prod](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/prod-source-edition-2.md) | 606 | `declaration-track:57c225462a5933df645c5c9e6b94129ddec4d65d75492763b25cf2a36ae7176a` |
| 57 | `theorem` | [singleton_head](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/singleton-head.md) | 611 | `result-track:b1f9ceceba5f40fe344806a9b993eaa7d98953773a920c09dabf7ff6afb3db21` |
| 58 | `theorem` | [singleton_last](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/singleton-last.md) | 616 | `result-track:f3fc8be4656ae62078840d1bee5a74c103ca5e169ae1d8fa654c05cc915af612` |
| 59 | `theorem` | [prod_singleton](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/prod-singleton.md) | 621 | `result-track:8c1681ff0235de3aee5d2f72cf731003f05780a3cc01d19cd27efa03e702da75` |
| 60 | `theorem` | [append_head](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/append-head.md) | 626 | `result-track:0c09c54e3b59ee368bcd9748ac411eacc607159cb87033b62fca2408734850ee` |
| 61 | `theorem` | [append_last](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/append-last.md) | 632 | `result-track:f15b06e9e167f15ef207e0bc95811addf5bb350c7880cfe74ecd7075f9b1d128` |
| 62 | `theorem` | [append_prod](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/append-prod.md) | 638 | `result-track:34b2ecb56e2d75bc6311a5d26321fbfcd5b87e3399590cfe8624b57efe383848` |
| 63 | `def` | [replaceHead](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/replacehead.md) | 644 | `declaration-track:9f3d95491484be1a6e43806da16ca2327c36a8f8b9a89c15fbdfba186a25b554` |
| 64 | `theorem` | [replaceHead_head](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/replacehead-head.md) | 650 | `result-track:fd396fe1b0c80e21dd834e9080a1152735d3f03a3d04259095411e866a7a48ee` |
| 65 | `def` | [mulHead](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/mulhead.md) | 659 | `declaration-track:5fe3f3cd826e8aa2de68ffdbc6e6c4d623b0a056df610556a035d754a3588147` |
| 66 | `theorem` | [mulHead_head](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/mulhead-head.md) | 664 | `result-track:906d469f77ddfc7fde21dd396bd5e7ab87c314bb00a39fbfbb2d1a063940304e` |
| 67 | `theorem` | [mulHead_prod](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/mulhead-prod.md) | 672 | `result-track:d8c351f4a28ed19218f1cc9c4b5e8c084348d321d5aa56221c14e808788af8ab` |
| 68 | `def` | [inv](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/inv.md) | 688 | `declaration-track:0adc83f9d98e3378018a3a2f9d5d1dc6ecf89fff72e91be2a621426cea14541a` |
| 69 | `theorem` | [inv_prod](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/inv-prod.md) | 694 | `result-track:a55af150f269e407ab7ace25becba4032a92530962da994be52091ba66ad668a` |
| 70 | `theorem` | [inv_head](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/inv-head.md) | 699 | `result-track:a058c7d81d01af1b34f44f8fb03e266486861d14a5e96ee0a3e67a17e1ab2750` |
| 71 | `theorem` | [inv_last](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/inv-last.md) | 704 | `result-track:aa502e2ba62701bf0df9747de20e278e1c593b4a04468c14c65a4748cc2dd1d5` |
| 72 | `theorem` | [lift_word_ping_pong](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/lift-word-ping-pong.md) | 742 | `result-track:74f371e17e87f030dd1fcb687e8c46d32ba58fd70ff511dfd52a1f66a26b181c` |
| 73 | `theorem` | [lift_word_prod_nontrivial_of_other_i](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/lift-word-prod-nontrivial-of-other-i.md) | 755 | `result-track:6564ebe484dd03ba7bbc343d032cfb713ebd0b9d5ee8f7c3a60fcf8f63c7ee10` |
| 74 | `theorem` | [lift_word_prod_nontrivial_of_head_eq_last](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/lift-word-prod-nontrivial-of-head-eq-last.md) | 765 | `result-track:d593dbbb44749670c3e6d4765c3d4ac2353e79d46b4cb5d2dd683a814ab81b0c` |
| 75 | `theorem` | [lift_word_prod_nontrivial_of_head_card](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/lift-word-prod-nontrivial-of-head-card.md) | 770 | `result-track:15f596a528c440de2714989c024558ffcdc92166539dbca847f7a57e4bc0e866` |
| 76 | `theorem` | [lift_word_prod_nontrivial_of_not_empty](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/lift-word-prod-nontrivial-of-not-empty.md) | 788 | `result-track:fa0b18701305fb47d23fce8827bf114d1165affc31ab1792237cd5a67bb65345` |
| 77 | `theorem` | [empty_of_word_prod_eq_one](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/empty-of-word-prod-eq-one.md) | 821 | `result-track:aa37fdecba3ace708e1e90f2f42d041403ccc1f13283c40f5a6f8c485a655504` |
| 78 | `theorem` | [lift_injective_of_ping_pong](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/lift-injective-of-ping-pong.md) | 840 | `result-track:fb6ade9943a9793916c04ab636b68905afc3be8c7d1f745d986c0d7f791d2446` |
| 79 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/instance-source-edition-10.md) | 854 | `declaration-track:ec51ef6785ae52d0487d541aec13353a2624ce0c03a4fdd56ff8f7fa3c42d8ab` |
| 80 | `def` | [Coprod INamespaced Mk Aux](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/freegroupequivcoprodi.md) | 872 | `declaration-track:ec01a067612bb214a900c579fa6f1c610039a32a1ef1298e9716bc69358169cb` |
| 81 | `theorem` | [Coprod INamespaced Mk Aux](../../../../GroupTheoryAndGeneralizations/CoprodINamespacedMkAux.lean/declarations/injective-lift-of-ping-pong.md) | 918 | `result-track:6864e24b5eb2ef4585829393a428bfb1dfd672a419c71a740dd1a92d37c58d32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f7ee0a5a352743606ec382fac9cce6b902dbe8fc1ea944707f5d1c2f31c82a5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/CoprodI/Variant4539ecb868f959a940d14c350f25c9220b3a0499fe5aa073063a73593afcff01.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/CoprodI/Variant4539ecb868f959a940d14c350f25c9220b3a0499fe5aa073063a73593afcff01.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
