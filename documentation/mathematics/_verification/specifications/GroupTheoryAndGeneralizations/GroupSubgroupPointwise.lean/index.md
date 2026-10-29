# Verification target: Group Subgroup Pointwise

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99d973796a1a4d8f5618b0cd6e2622d7902b7f0a",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant01ffa1874259dd9052c3b32029d5a7dddcdc4fa1695e271d888a91a7f9f2651d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99d973796a1a4d8f5618b0cd6e2622d7902b7f0a`.

Source path: `GRWTSK/Algebra/GroupTheory/Pointwise/Variant01ffa1874259dd9052c3b32029d5a7dddcdc4fa1695e271d888a91a7f9f2651d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pointwise/Variant01ffa1874259dd9052c3b32029d5a7dddcdc4fa1695e271d888a91a7f9f2651d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.End` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.MulOppositeLemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Pointwise` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.ConjAct` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inv_coe_set](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/inv-coe-set.md) | 39 | `result-track:7ed666194d1230426abd5bd50ad0f1f0dd32ede12aeae5c8da4e317e5c91b648` |
| 2 | `lemma` | [smul_coe_set](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/smul-coe-set.md) | 43 | `result-track:bc19ef80a5b6cb68c8453af093fd68fe4ad72a9db15a602df8ece4cd01ee9d2d` |
| 3 | `lemma` | [coe_set_eq_one](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/coe-set-eq-one.md) | 48 | `result-track:30ebf7ffeace6a98edd91c27ada3dfb3e7ae5f9bd593e7b32b4c187fc8a01569` |
| 4 | `lemma` | [op_smul_coe_set](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/op-smul-coe-set.md) | 52 | `result-track:c36cec7b5b053d8720d3afe0fb66c9628a8c210c7b53370468602d88331bee79` |
| 5 | `lemma` | [coe_div_coe](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/coe-div-coe.md) | 57 | `result-track:25b6e7f8ff4df97674569db2da837655ce8f2b2bcbc422c27035f296b513fd0e` |
| 6 | `lemma` | [mul_subgroupClosure](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/mul-subgroupclosure.md) | 67 | `result-track:5254c9f621178215f6f446b46ec9205aaf3cbf3624983aca27814768bd295b0e` |
| 7 | `lemma` | [subgroupClosure_mul](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/subgroupclosure-mul.md) | 75 | `result-track:ad10c26094565475730955459d50752b6077c9a06edf454811e606a8a82126bf` |
| 8 | `lemma` | [pow_mul_subgroupClosure](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/pow-mul-subgroupclosure.md) | 82 | `result-track:fee5748a1cea1f2f23619a60a51e3fe078e14ab7594204293283039ac6824540` |
| 9 | `lemma` | [subgroupClosure_mul_pow](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/subgroupclosure-mul-pow.md) | 87 | `result-track:e8c3daccb1a0d812531b97b482e361c59568c72f56baad5a4318ed63aec6846f` |
| 10 | `theorem` | [inv_subset_closure](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/inv-subset-closure.md) | 96 | `result-track:00d620a7a88ad3f4683e6601f2cea7099d8503a9c45e2706ebd4859b3454fc13` |
| 11 | `theorem` | [closure_toSubmonoid](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/closure-tosubmonoid.md) | 101 | `result-track:ba4cb2f38a274a1c8c2e1af88e8ed9f8fb3c50dfee5437b948766c9adc7894ae` |
| 12 | `theorem` | [closure_induction_left](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/closure-induction-left.md) | 115 | `result-track:57b02a0bfebba89971d6211621f0e6ff168c56dc8ae51a45ab870b926f16e8dd` |
| 13 | `theorem` | [closure_induction_right](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/closure-induction-right.md) | 134 | `result-track:e2da29ae9ee2b1c0ef85b13163fd31db682bf5f75a10e3815a23a5f61c3fead7` |
| 14 | `theorem` | [closure_inv](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/closure-inv.md) | 147 | `result-track:0d6d98cf97ec48f9881baca9bac90d9b07e63c318acea583696a2df6be2b1606` |
| 15 | `lemma` | [closure_singleton_inv](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/closure-singleton-inv.md) | 151 | `result-track:f279fc18c8c0d69fa823e55cd3ab7a9d00517d0abd804fa91d0f164c29e3f49c` |
| 16 | `theorem` | [closure_induction''](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/closure-induction.md) | 161 | `result-track:988fd1e7eb0fbead1fc54faf6493f740fb2a2e8e420f04cd6e3581fd5dff809c` |
| 17 | `theorem` | [iSup_induction](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/isup-induction-source-edition-2.md) | 176 | `result-track:e5f3833df21c5e3e5f3a0ca7eb573e920fc6def24b2b92c5e5c649825476bd07` |
| 18 | `theorem` | [iSup_induction'](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/isup-induction.md) | 191 | `result-track:1b1a87b1864ff0ba06574e268a95cb711bd9f4ba1dd923a131a4e62690c87c22` |
| 19 | `theorem` | [closure_mul_le](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/closure-mul-le.md) | 203 | `result-track:b25028d8d2ed5619964cf0f0c228257f749b8bdc74fc4b680897ce665ab24254` |
| 20 | `lemma` | [closure_pow_le](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/closure-pow-le.md) | 209 | `result-track:7efaad8e6edf4730382c57628918958514967e19e29fa37f62566d11d58b0864` |
| 21 | `lemma` | [closure_pow](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/closure-pow.md) | 220 | `result-track:76fd00f9b11690ff9696cf4559c1f6933a5cf9050c50225285f30d1a274d7fd6` |
| 22 | `theorem` | [sup_eq_closure_mul](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/sup-eq-closure-mul.md) | 224 | `result-track:aa1e199f0f4efd8cc5ffd7500b5f538ff6291ed2ecdb6ea11728aefaa0930cf9` |
| 23 | `theorem` | [set_mul_normalizer_comm](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/set-mul-normalizer-comm.md) | 231 | `result-track:7d3f423ad4138456faf3180707c43bafc1efa06e333bdffed1d1a2fbf187d951` |
| 24 | `theorem` | [set_mul_normal_comm](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/set-mul-normal-comm.md) | 239 | `result-track:648d622d94f6337aa6c3bfd5c75b7f4d126572107f905f7f5407192b519f6369` |
| 25 | `theorem` | [coe_mul_of_left_le_normalizer_right](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/coe-mul-of-left-le-normalizer-right.md) | 246 | `result-track:bba70ccf294af219be4ccca0452c9f4f406f6ca4bb067110be38796525092087` |
| 26 | `theorem` | [coe_mul_of_right_le_normalizer_left](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/coe-mul-of-right-le-normalizer-left.md) | 268 | `result-track:184d444c630c4370ab6e76ef271b1ca18daf6ea917f03f173d4fa9fc11046127` |
| 27 | `theorem` | [mul_normal](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/mul-normal.md) | 275 | `result-track:8407cabacb6521f7dab0ef8386a6672fb3bc85e4e637cd2228381a70be58e81b` |
| 28 | `theorem` | [normal_mul](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/normal-mul.md) | 281 | `result-track:46577ef2c2d3a968b7c73ddd07d491d5503df6e6ba1a66d176c1af022a9de953` |
| 29 | `theorem` | [mul_inf_assoc](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/mul-inf-assoc.md) | 285 | `result-track:9e2ba07fe3741e7b735a8b40a52d59d0c2d27cbc6f10064929c55b9d84ba7d6d` |
| 30 | `theorem` | [inf_mul_assoc](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/inf-mul-assoc.md) | 299 | `result-track:8eb519cfc2694cec4e8149078b47f838fcf05ab7e6d872f4826a02824c1805ed` |
| 31 | `instance` | [sup_normal](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/sup-normal.md) | 313 | `declaration-track:681ebc5e3c24b636b9bc52f526a54df08007ba2789d5f05a04c02c9c8a144c10` |
| 32 | `theorem` | [smul_mem_of_mem_closure_of_mem](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/smul-mem-of-mem-closure-of-mem.md) | 321 | `result-track:a6242c15ac20d9b9974fbc25bab1331f2140e4d9623ec3dfcf438797db029c99` |
| 33 | `theorem` | [smul_opposite_image_mul_preimage'](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/smul-opposite-image-mul-preimage.md) | 331 | `result-track:31d255f5f0bb0c3f20e0541aa7ca616aea6aefeefc1f061600aa1d7e163c0cd6` |
| 34 | `theorem` | [smul_opposite_image_mul_preimage](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/smul-opposite-image-mul-preimage-source-edition-2.md) | 337 | `result-track:946a8763536bb6e548a483b7249b57a73001cf8b902a6d7ec9181a610ab5f4b6` |
| 35 | `def` | [pointwiseMulAction](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/pointwisemulaction.md) | 351 | `declaration-track:85f9925b6a5d7657cf1947fd31fa22b6c5a759ba3cd38d4fb29fd573620bc971` |
| 36 | `theorem` | [pointwise_smul_def](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/pointwise-smul-def.md) | 362 | `result-track:29e710a96056f5b361a9b20dd61181a68561e3f06143b5040db39624249e1695` |
| 37 | `theorem` | [coe_pointwise_smul](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/coe-pointwise-smul.md) | 367 | `result-track:48d98e6a158e94d968ae9e7cff80e5141bfdea93d8f566dadbdb220ce7b18ba7` |
| 38 | `theorem` | [pointwise_smul_toSubmonoid](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/pointwise-smul-tosubmonoid.md) | 371 | `result-track:9e9c1b4da97538b97072df5478470ab8a04dd49aea887f15bc07dfbf4e2b4364` |
| 39 | `theorem` | [smul_mem_pointwise_smul](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/smul-mem-pointwise-smul.md) | 375 | `result-track:6e265fdc2e52549d14b5bd57f0f513726e3b89f37533a4150bbdf730cfb25e67` |
| 40 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/instance.md) | 378 | `declaration-track:af83f168250e49cc6a26d02ae462baccaeff2033e0a33a0074cbb5b47493a87a` |
| 41 | `theorem` | [mem_smul_pointwise_iff_exists](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/mem-smul-pointwise-iff-exists.md) | 381 | `result-track:697a702a3200606be954657833c5245a01567856b6e9edb202dda4791251f743` |
| 42 | `theorem` | [smul_bot](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/smul-bot.md) | 386 | `result-track:12b7debc8e18609b8ca0a1d2235da0c70040addf91bf0ae32c7e8a94a0824603` |
| 43 | `theorem` | [smul_sup](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/smul-sup.md) | 389 | `result-track:53a851309a63ef4eaf1a2a940e95d4ab35ff27044742e438ab4827ffd93fb4ce` |
| 44 | `theorem` | [smul_closure](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/smul-closure.md) | 392 | `result-track:98d2b3d2ffa339cbd7c856f078ddda85a8f15d4ace48aa86c186a5f056b4d423` |
| 45 | `instance` | [pointwise_isCentralScalar](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/pointwise-iscentralscalar.md) | 395 | `declaration-track:188cf3f89318d2e475fbced77331bd832169274f56599411358597cf520f8796` |
| 46 | `theorem` | [conj_smul_le_of_le](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/conj-smul-le-of-le.md) | 399 | `result-track:4bd285672df783be8259ba4b277fdb6dfceae46930daba101cba80913d643bad` |
| 47 | `theorem` | [conj_smul_subgroupOf](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/conj-smul-subgroupof.md) | 404 | `result-track:b43454c687898bd066f0210a90d07b6f549d51346117231150599e8c0afa0b63` |
| 48 | `theorem` | [smul_mem_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/smul-mem-pointwise-smul-iff.md) | 419 | `result-track:cb9969eb9592c083387a869e8d8152b783cf0dd632a5746da335fe991e29d091` |
| 49 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem.md) | 422 | `result-track:4ec56737eee5ea3b322c59ec04aa69a13361da83ffc70e780254ddf828eeb20c` |
| 50 | `theorem` | [mem_inv_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/mem-inv-pointwise-smul-iff.md) | 426 | `result-track:67818eb8a8987c071f893b9360f3f0dd2bcd4484cd658e8b988617daecdd1cf9` |
| 51 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/pointwise-smul-le-pointwise-smul-iff.md) | 430 | `result-track:2128229944758ba5da3296f317b0c67a70300fbf9fccc2f3f5f61fa972fe94d0` |
| 52 | `theorem` | [pointwise_smul_subset_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/pointwise-smul-subset-iff.md) | 433 | `result-track:64e68ccb3264749a5d0cc10bf15960647fb51fd4aba56d371993b22d8621bd85` |
| 53 | `theorem` | [subset_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/subset-pointwise-smul-iff.md) | 436 | `result-track:f0a9d85a9f18611347fea38c24fb600a46a25d2b57b434729c8f5021eb89ea66` |
| 54 | `theorem` | [smul_inf](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/smul-inf.md) | 440 | `result-track:2d7f3e7458efe5a5f6a8cb624697da40399170ff45b7834e89f8bdaac311ced0` |
| 55 | `def` | [equivSMul](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/equivsmul.md) | 445 | `declaration-track:33d622c1fae824220e8cc22fc16bb37d0609689c77901a912ee0b87b70891abb` |
| 56 | `theorem` | [subgroup_mul_singleton](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/subgroup-mul-singleton.md) | 448 | `result-track:880540dd146f913c7486c5edbb2b225d620ba4f31cc59ee40827d3902510e618` |
| 57 | `theorem` | [singleton_mul_subgroup](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/singleton-mul-subgroup.md) | 451 | `result-track:d69b4bcbb75af76ebfe317cabca9336b096b37e7fa997182745b40c472bfef2c` |
| 58 | `theorem` | [Normal.conjAct](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/normal-conjact.md) | 454 | `result-track:6e0bc23d6b89feedcd598d476a62cea1b97a3421bb4a32ae2cf026cc18ad7d87` |
| 59 | `theorem` | [Normal.conj_smul_eq_self](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/normal-conj-smul-eq-self.md) | 460 | `result-track:eb76db36ad1b938de104f216e176152752358a30b31473ea467926e5f9aeefae` |
| 60 | `theorem` | [Normal.of_conjugate_fixed](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/normal-of-conjugate-fixed.md) | 465 | `result-track:90e243cab952e77b0c55976eb5aa72a82d2fb19c448f40e7a4d016fdaae54c47` |
| 61 | `theorem` | [normalCore_eq_iInf_conjAct](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/declarations/normalcore-eq-iinf-conjact.md) | 474 | `result-track:187b6506e4c0ab80671d98f963063f1d833b62bbe42674c0a11b45d7bbad399a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b25b4d7a2b29aecb3979fd3d1ec0d5c48837841b94d1f3fb57e686dea35939ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Pointwise/Variant01ffa1874259dd9052c3b32029d5a7dddcdc4fa1695e271d888a91a7f9f2651d.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Pointwise/Variant01ffa1874259dd9052c3b32029d5a7dddcdc4fa1695e271d888a91a7f9f2651d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
