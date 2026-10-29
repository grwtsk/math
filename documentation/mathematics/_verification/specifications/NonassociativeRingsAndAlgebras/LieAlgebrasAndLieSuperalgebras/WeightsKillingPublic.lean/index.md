# Verification target: Weights Killing Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e791bdea83445f8858ba631e4b6119286bce2203",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Killing/Variantbe5b80fb0b0cad3a70a561d5b01323f43fe633328f32d03e3c9a873547a4e0f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e791bdea83445f8858ba631e4b6119286bce2203`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Killing/Variantbe5b80fb0b0cad3a70a561d5b01323f43fe633328f32d03e3c9a873547a4e0f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Killing/Variantbe5b80fb0b0cad3a70a561d5b01323f43fe633328f32d03e3c9a873547a4e0f6.lean.json)

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
| 1 | `lemma` | [restrict_killingForm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/restrict-killingform.md) | 47 | `result-track:13f94e2c24892d816497aca8e69caf04506e980d1be8ec5a526443f8600b39ba` |
| 2 | `lemma` | [ker_restrict_eq_bot_of_isCartanSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/ker-restrict-eq-bot-of-iscartansubalgebra.md) | 57 | `result-track:c811000e8752621413b636f00b7754042154f61b1d44ccb2fd6add4f040cd4dd` |
| 3 | `lemma` | [ker_traceForm_eq_bot_of_isCartanSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/ker-traceform-eq-bot-of-iscartansubalgebra.md) | 71 | `result-track:a1e53a892e976437757136327e52eb7f01600480c8e8321e450b96ba67bc6c13` |
| 4 | `lemma` | [traceForm_cartan_nondegenerate](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/traceform-cartan-nondegenerate.md) | 76 | `result-track:e8c4ecab815938df678c5b7a7a8cdd90ee6cdc35917df5a28ae2d0ff1d6f5daf` |
| 5 | `instance` | [instIsLieAbelianOfIsCartanSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/instislieabelianofiscartansubalgebra.md) | 84 | `declaration-track:41efa71d6780884ccc2308e4b6764efaeb485f8b19fb7e7d45c21dc2eea094db` |
| 6 | `lemma` | [killingForm_apply_eq_zero_of_mem_rootSpace_of_add_ne_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/killingform-apply-eq-zero-of-mem-rootspace-of-add-ne-zero.md) | 105 | `result-track:0cb7a9ff62f3dd426d4cc238bf2a2f06947f590cb366a025b0ddc8f065bc5fd6` |
| 7 | `lemma` | [mem_ker_killingForm_of_mem_rootSpace_of_forall_rootSpace_neg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/mem-ker-killingform-of-mem-rootspace-of-forall-rootspace-neg.md) | 129 | `result-track:a1eca9525a616aae55493755fad8687e41350910ce806734111cf01549b654b6` |
| 8 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/instance.md) | 160 | `declaration-track:b1327a1ee771568676c8c68214838e2fcf9a3b83b4ceac87d3bfe3d7275ddd04` |
| 9 | `lemma` | [coe_neg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/coe-neg.md) | 172 | `result-track:5c62b41b9e37a341b48ecf4eb4959fc48c3b6c63de5653b3b2d81c73d33cc481` |
| 10 | `lemma` | [IsZero.neg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/iszero-neg-source-edition-2.md) | 174 | `result-track:f67eba6cf60896baf1c82f5ebf34e5b6ea4e53e6e43085b9c1f134f14519917c` |
| 11 | `lemma` | [isZero_neg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/iszero-neg.md) | 176 | `result-track:c1a16d31f8bab777d18dd91af88ca8c678ccd09dc3587e9aa38283b982f6e909` |
| 12 | `lemma` | [IsNonZero.neg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/isnonzero-neg-source-edition-2.md) | 178 | `result-track:fdc5024b162552f62ca01dd394a5364237a417a5befe8313d4d69233cb38da22` |
| 13 | `lemma` | [isNonZero_neg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/isnonzero-neg.md) | 180 | `result-track:d076fd277859fe48baff3026e6fdd970e24a52798f00708bc7071939c92c258d` |
| 14 | `lemma` | [toLinear_neg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/tolinear-neg.md) | 182 | `result-track:c76fff416cf0e120b6622385ed8df77dbf98b597f6ae2bcf290e5a03b56c83be` |
| 15 | `lemma` | [eq_zero_of_isNilpotent_ad_of_mem_isCartanSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/eq-zero-of-isnilpotent-ad-of-mem-iscartansubalgebra.md) | 205 | `result-track:bd33458b5de9d1795caddcea93c724a1d0e964bec5ef898fd3bb4638e72bbb78` |
| 16 | `lemma` | [corootSpace_zero_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/corootspace-zero-eq-bot.md) | 218 | `result-track:17a657e5193407c68227b16d4435b772d14c269ce5d0379ed442681a2e01d814` |
| 17 | `def` | [cartanEquivDual](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/cartanequivdual.md) | 232 | `declaration-track:9bada91356ee7176b84246a044d9233c8cd91f67f9157cf7607ff762bfb2783c` |
| 18 | `def` | [coroot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/coroot.md) | 239 | `declaration-track:64d6e1469e926a62f81d288f1c4d637ff4161d06b8bd877b8f36af234140e7dd` |
| 19 | `lemma` | [traceForm_coroot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/traceform-coroot.md) | 242 | `result-track:b18ac1a3e804c82c8196ec78bea603d288010ebed331ead808d20df2396efaf0` |
| 20 | `lemma` | [coroot_neg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/coroot-neg.md) | 249 | `result-track:711f1a71ec14a45e82e56d5b9f200c35bdbc4317a7740b742364cbd599895c5d` |
| 21 | `lemma` | [lie_eq_killingForm_smul_of_mem_rootSpace_of_mem_rootSpace_neg_aux](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/lie-eq-killingform-smul-of-mem-rootspace-of-mem-rootspace-neg-aux.md) | 255 | `result-track:fe6fc50bb919f1847dbfb0fed555eeba729b34a1532075ada4ce2ce1b31eccfb` |
| 22 | `lemma` | [cartanEquivDual_symm_apply_mem_corootSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/cartanequivdual-symm-apply-mem-corootspace.md) | 275 | `result-track:b4d5f46a2ec16bb142232b22f373df9a15e260fa5d470520c10f272e24d9d249` |
| 23 | `lemma` | [coroot_mem_corootSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/coroot-mem-corootspace.md) | 287 | `result-track:413f4ebb81c57796e97e029b51abec308c74b1a076516d9e649047efec5f634a` |
| 24 | `lemma` | [span_weight_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/span-weight-eq-top.md) | 294 | `result-track:dc0eb7c4e9261ea9bcf5125abeb99574a05b6dff5d834e40343f80fce59f3965` |
| 25 | `lemma` | [span_weight_isNonZero_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/span-weight-isnonzero-eq-top.md) | 302 | `result-track:ff2e8702638c3f7cb3da715112552b9724ab428eb108f4c321f95af307bb6103` |
| 26 | `lemma` | [iInf_ker_weight_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/iinf-ker-weight-eq-bot.md) | 314 | `result-track:a3ae7ae6a92d57832e012222b3f91fa0e2faf319bc3581149970b5093ee3982b` |
| 27 | `lemma` | [isSemisimple_ad_of_mem_isCartanSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/issemisimple-ad-of-mem-iscartansubalgebra.md) | 325 | `result-track:1ac4d05d61738bf85190806f4c165b76269780c70d6b87755cb010bee0a085f1` |
| 28 | `lemma` | [lie_eq_smul_of_mem_rootSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/lie-eq-smul-of-mem-rootspace.md) | 381 | `result-track:046f67880bd86f2d265438543aa7a1307414f5d72a85d189180686d412117d8a` |
| 29 | `lemma` | [lie_eq_killingForm_smul_of_mem_rootSpace_of_mem_rootSpace_neg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/lie-eq-killingform-smul-of-mem-rootspace-of-mem-rootspace-neg.md) | 390 | `result-track:0eddb30aa77aa8c4a18d6b732215c9cd18872b8b711be7ddd0103f1fd532eee0` |
| 30 | `lemma` | [coe_corootSpace_eq_span_singleton'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/coe-corootspace-eq-span-singleton.md) | 396 | `result-track:3c54c6910c9648fbd2789b9c60fd929f2a8f9475b806e6afcbb0828b4c20337c` |
| 31 | `lemma` | [eq_zero_of_apply_eq_zero_of_mem_corootSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/eq-zero-of-apply-eq-zero-of-mem-corootspace.md) | 424 | `result-track:fd1f2b8b15066a19b597c7bfe2bea812155dabedf5f0e7d679db3eb234e6bb64` |
| 32 | `lemma` | [disjoint_ker_weight_corootSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/disjoint-ker-weight-corootspace.md) | 435 | `result-track:d460c62c79a4213676a69522bdeecaabe435871569aacdae83a62ed52701ad9f` |
| 33 | `lemma` | [root_apply_cartanEquivDual_symm_ne_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/root-apply-cartanequivdual-symm-ne-zero.md) | 442 | `result-track:1733bdbe4382b087a6293a6b5adda9b1c4ae2f338f3c88c234969d349d9cecf0` |
| 34 | `lemma` | [root_apply_coroot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/root-apply-coroot.md) | 450 | `result-track:2dae9439d7e9f1b1ba08130f52cd19c6e4e48794d967320df17a1fe5a1156d0e` |
| 35 | `lemma` | [coroot_eq_zero_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/coroot-eq-zero-iff.md) | 455 | `result-track:74a890f2de1913e8124a288efaf69fc0594b98c461d0b6177bd4a47431433e46` |
| 36 | `lemma` | [coroot_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/coroot-zero.md) | 463 | `result-track:b4907214bcd34a0a83e663cd4639282eb9b583f28e9dfead629c383b9d3be319` |
| 37 | `lemma` | [coe_corootSpace_eq_span_singleton](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/coe-corootspace-eq-span-singleton-source-edition-2.md) | 465 | `result-track:c86008168dc229083aedcb2a81f59e47b1523d3b5b49e4d4dadfa2c074c3db7c` |
| 38 | `lemma` | [eq_coroot_of_mem_corootSpace_of_two](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/eq-coroot-of-mem-corootspace-of-two.md) | 476 | `result-track:b9b783bf842a0ff9302d39a171f6448912a66946eed79482b492fb8e1c26f73b` |
| 39 | `lemma` | [corootSpace_eq_bot_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/corootspace-eq-bot-iff.md) | 486 | `result-track:32608e7f687d8dbf176aa47fc618ef379e0c1a21a3078b5a0574cd7625ed3aec` |
| 40 | `lemma` | [isCompl_ker_weight_span_coroot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/iscompl-ker-weight-span-coroot.md) | 490 | `result-track:1170adfb3eb903b4f30161d424f0dbd84329e4bbaa00164ab3b0be9e1a310199` |
| 41 | `lemma` | [traceForm_eq_zero_of_mem_ker_of_mem_span_coroot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/traceform-eq-zero-of-mem-ker-of-mem-span-coroot.md) | 502 | `result-track:0672ad76142202722410eba609d6e744f4cdc530a3a452eea2779b5119680e7d` |
| 42 | `lemma` | [orthogonal_span_coroot_eq_ker](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/orthogonal-span-coroot-eq-ker.md) | 517 | `result-track:66b14155e77f846e8d42339cb5f4acabbfb256656069c79c2dc63eb39add65a6` |
| 43 | `lemma` | [coroot_eq_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/coroot-eq-iff.md) | 533 | `result-track:c03d260316f3d8c81a20ab3042956097bd3582a22f5ab513b37dbd5c2dff44a4` |
| 44 | `lemma` | [exists_isSl2Triple_of_weight_isNonZero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/exists-issl2triple-of-weight-isnonzero.md) | 555 | `result-track:0ac8dc2839de52400f18004fbb8ccd63379e67080c14e3f08c6b06c8c85664bd` |
| 45 | `lemma` | [_root_.IsSl2Triple.h_eq_coroot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/root-issl2triple-h-eq-coroot.md) | 583 | `result-track:33006d9e9625a8faa9275acf784e1099cc37e09acb278108a2fe94e9b15c1791` |
| 46 | `lemma` | [finrank_rootSpace_eq_one](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/finrank-rootspace-eq-one.md) | 608 | `result-track:935c6082cb1587d0cbbb6c09d38c21abf394a7d701d9984566e3966d80795748` |
| 47 | `lemma` | [toSubmodule_rootSpace_eq_span](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/tosubmodule-rootspace-eq-span.md) | 632 | `result-track:fa468de921022821dc52de15991ad0fc9a275447be6ab0a0a3f0c23b6d9aba30` |
| 48 | `def` | [sl2SubalgebraOfRoot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/sl2subalgebraofroot.md) | 646 | `declaration-track:706ed81e8186edc7ffe9ac8c07f33cc5587ebc0b69e96e8bd269f69d0367bbcd` |
| 49 | `lemma` | [mem_sl2SubalgebraOfRoot_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/mem-sl2subalgebraofroot-iff.md) | 651 | `result-track:bfefb0d698be9e96ec98929c417ddc6eddf72ed0442fd516b100941963b46ea8` |
| 50 | `def` | [sl2SubmoduleOfRoot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/sl2submoduleofroot.md) | 680 | `declaration-track:5adf9db9ab64a87f5b92421d98a505e376d52caab2406d38e46329db6ee7a68e` |
| 51 | `abbrev` | [corootSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/corootsubmodule.md) | 700 | `declaration-track:2951ddc174faf48671b4286bbfee8b93cb21d048655485a49c3f968733361ccd` |
| 52 | `lemma` | [coe_coroot_mem_corootSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/coe-coroot-mem-corootsubmodule.md) | 704 | `result-track:41eb1d3c2a82b0e09370a9263ef7cc868135aafe2ac950fe0b6463a4eff23cff` |
| 53 | `lemma` | [sl2SubmoduleOfRoot_eq_sup](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/sl2submoduleofroot-eq-sup.md) | 711 | `result-track:cbbbe237a513b7d895fa2394a514ef3203b2961d7afb6d9107013e818997a9e9` |
| 54 | `lemma` | [sl2SubmoduleOfRoot_ne_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/sl2submoduleofroot-ne-bot.md) | 742 | `result-track:3b01ecd87a1470f30df56612452118e801c18173a376016eea654488be60c82d` |
| 55 | `abbrev` | [_root_.LieSubalgebra.root](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/root-liesubalgebra-root.md) | 748 | `declaration-track:c3718146f63f5bfeef6bd932bb76d2f57061c364f5b932a5e2680b29fb417e1e` |
| 56 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/instance-source-edition-2.md) | 750 | `declaration-track:e1aaa74102a05bb49b13c0fec206b340557e342050b949539dca97dd5625b1c9` |
| 57 | `lemma` | [neg_root_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/neg-root-eq.md) | 755 | `result-track:7114dbe45337c92ce9037cf57a5a419f491327f08878da9d5b32d5c99dc6a223` |
| 58 | `lemma` | [val_neg_root](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/val-neg-root.md) | 758 | `result-track:b9c4e002f6e98b51693e5157d7fd6a7c3ae11a9b0755f4c8383e995840ef452f` |
| 59 | `lemma` | [_root_.LieSubalgebra.isNonZero_coe_root](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/root-liesubalgebra-isnonzero-coe-root.md) | 762 | `result-track:fc640f0439ce4135df611ded65fcc38a18d7a71591ce52c272dd34083c7b2ff4` |
| 60 | `lemma` | [restrict_killingForm_eq_sum](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/restrict-killingform-eq-sum.md) | 765 | `result-track:16fc388cbe3584fa42f9d89a41ab3968996cc88c78c772a1a095ddd944190275` |
| 61 | `lemma` | [lieIdeal_eq_inf_cartan_sup_biSup_rootSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsKillingPublic.lean/declarations/lieideal-eq-inf-cartan-sup-bisup-rootspace.md) | 774 | `result-track:dcb5cd885bce9dc5447f26348a0a492e8118ee50a405fd7b109ef03bf1f24303` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c5a4c70ac78b6c28f58e66951ca4ce460ac33bdf522dc7510fdd865fec378b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Killing/Variantbe5b80fb0b0cad3a70a561d5b01323f43fe633328f32d03e3c9a873547a4e0f6.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Killing/Variantbe5b80fb0b0cad3a70a561d5b01323f43fe633328f32d03e3c9a873547a4e0f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
