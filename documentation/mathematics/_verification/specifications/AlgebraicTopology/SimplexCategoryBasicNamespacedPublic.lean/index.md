# Verification target: Simplex Category Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9695e8ba4db4888fdec809c19c4a3fabfd8273d3",
  "lexical_observation_count": 118,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantc057e9b34b4c370ffaf5dafa5c2e8867b8aa3e43663827f58af4cd40ea9b30a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9695e8ba4db4888fdec809c19c4a3fabfd8273d3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantc057e9b34b4c370ffaf5dafa5c2e8867b8aa3e43663827f58af4cd40ea9b30a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variantc057e9b34b4c370ffaf5dafa5c2e8867b8aa3e43663827f58af4cd40ea9b30a2.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 43 | `declaration-track:9ed1ca2130b7ac4c22c185ba69c58fac3305ea201306df7b40849ba49dd927ab` |
| 2 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 47 | `declaration-track:c157795ea77d4511c90d70b9950f6d8fc4b2f034c5a323352b76f363db241418` |
| 3 | `lemma` | [congr_toOrderHom_apply](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/congr-toorderhom-apply.md) | 52 | `result-track:b21ce8e38f2128b2fb6c0faa23a6e22d9e81ef4c41a79ed25e9ef205ffc7e12d` |
| 4 | `def` | [const](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/const.md) | 56 | `declaration-track:d687aa76151f0f96b9adca1a4f42f43e2386ea196ff83fce724ed82efe478192` |
| 5 | `lemma` | [const_eq_id](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/const-eq-id.md) | 60 | `result-track:a1c35ea43829c004ca762965f0af069df5338855ab50d63a38e6a47a24271aea` |
| 6 | `lemma` | [const_apply](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/const-apply.md) | 63 | `result-track:0bf53d1d8f645e3930a13088b0c573b7cf79cd17da98bc6919db0785dad78575` |
| 7 | `theorem` | [const_comp](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/const-comp.md) | 67 | `result-track:8c96c1b7251ba33e5aff766fa876e98653160b305da9a2ea3044340eba36d2b6` |
| 8 | `theorem` | [const_fac_thru_zero](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/const-fac-thru-zero.md) | 72 | `result-track:8b8e60f1260cee4599bae1f949b564b25694af304c25a2691cff9e7ac869ff94` |
| 9 | `theorem` | [Hom.ext_zero_left](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/hom-ext-zero-left.md) | 76 | `result-track:fb47d82beeb9b18775c94d693384769547ee51061840715425306e85071a25e9` |
| 10 | `theorem` | [eq_const_of_zero](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/eq-const-of-zero.md) | 80 | `result-track:8873aeb9b7156dff5abd8fedb6a242d1d1f1fa98cce1c4ba6e01eaea33122c2b` |
| 11 | `theorem` | [exists_eq_const_of_zero](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/exists-eq-const-of-zero.md) | 84 | `result-track:29e0754a0e052cd9d5b83f543743a59e5b2674dae4d962e628d72785de07c4f9` |
| 12 | `theorem` | [eq_const_to_zero](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/eq-const-to-zero.md) | 87 | `result-track:cd5847d4806c49b66054e792e526badf739d8bf705762ce40af667bd83e4caf5` |
| 13 | `theorem` | [Hom.ext_one_left](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/hom-ext-one-left.md) | 92 | `result-track:6571accfc42fc4906860f56eb3ce0fc25bff938c2e7ecfaf28c956d5646e39bf` |
| 14 | `theorem` | [eq_of_one_to_one](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/eq-of-one-to-one.md) | 100 | `result-track:34a312e64d553e24046d232c4ad61dfd31040050cfba252e73d0796862377cd3` |
| 15 | `def` | [mkHom](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/mkhom.md) | 125 | `declaration-track:4f24afab6af927dc3c05b226be3a020ff185fa1d406fb6ecacaca4dc5522b78c` |
| 16 | `def` | [mkOfLe](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/mkofle.md) | 129 | `declaration-track:a2c47b70a11d0030d555aecb5ec266eebc26adf2fefcff337c15f03c074f8422` |
| 17 | `lemma` | [mkOfLe_refl](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/mkofle-refl.md) | 138 | `result-track:e23a8cc833d6cd1b1fe419055bb6752c19d051be0ff9df1baead80efb06296f3` |
| 18 | `def` | [diag](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/diag.md) | 142 | `declaration-track:e36ebcd481fccf4d422825b7704ee56653bf538276c8936dea2ca69900c0c10e` |
| 19 | `def` | [intervalEdge](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/intervaledge.md) | 146 | `declaration-track:441640209d9e6d51eb3b49577361c8b7c969d8cb894a7fb52d1eed005825dcbc` |
| 20 | `def` | [mkOfSucc](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/mkofsucc.md) | 150 | `declaration-track:f85aec536f3c9a1fb9c31afdf1c67bef2846291b278b6c5045c00600228550a0` |
| 21 | `lemma` | [mkOfSucc_homToOrderHom_zero](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/mkofsucc-homtoorderhom-zero.md) | 159 | `result-track:589151d543843dd1eeafe2648cfe0070b10f5395f3f0a72bfb247e832c312356` |
| 22 | `lemma` | [mkOfSucc_homToOrderHom_one](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/mkofsucc-homtoorderhom-one.md) | 163 | `result-track:c01b0f6d105be552bde4dee122a77cfba37dac4337c158341a71cc2ef6c33a66` |
| 23 | `lemma` | [mkOfSucc_eq_id](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/mkofsucc-eq-id.md) | 167 | `result-track:dd66b1f7ca86c6df0e5b2b453eb69967026814cb44007d13911bf0e88d669a52` |
| 24 | `def` | [mkOfLeComp](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/mkoflecomp.md) | 170 | `declaration-track:30a9c97c35fb83491d4d120f1be5d1e34721c05d138e1820d72c729de02fbcf9` |
| 25 | `def` | [subinterval](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/subinterval.md) | 182 | `declaration-track:4933092b29a6c4a1d31ff8bb8801e0232edeca698fa24601911303e21f98ef0c` |
| 26 | `lemma` | [const_subinterval_eq](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/const-subinterval-eq.md) | 190 | `result-track:ff3b92f33c48a9192c49b9a0863d738792c45cc31279c4f60a36d0731915b0a7` |
| 27 | `lemma` | [mkOfSucc_subinterval_eq](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/mkofsucc-subinterval-eq.md) | 201 | `result-track:930345dedbdc861650742b56813105384fcc2f21cd26d2929e523c5b911b9bac` |
| 28 | `lemma` | [diag_subinterval_eq](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/diag-subinterval-eq.md) | 210 | `result-track:16ab4fbf78ceb5cfc8177b75021964c935e074097c7410cce5c6e1e176d00c33` |
| 29 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 216 | `declaration-track:3a02307a767a25de1366e1c61f7350ed576da7150906dfbeb1a03ff635ac0b84` |
| 30 | `theorem` | [hom_zero_zero](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/hom-zero-zero.md) | 219 | `result-track:395f66ec394ca5871bd1c35ccb35f9588d84367df2289c3120a3b00d2b4a7eae` |
| 31 | `lemma` | [eqToHom_toOrderHom](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/eqtohom-toorderhom.md) | 223 | `result-track:2ac518da80182b141dcf25786bc6a3b3a2407c2d3626978d14bc4b1a6beebdeb` |
| 32 | `def` | [δ](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/anonymous-source-edition-2.md) | 241 | `declaration-track:63eb23f44be9571890e8f48e33fd3ecf3107831c3f9e51c6085e25781e1d46e8` |
| 33 | `def` | [σ](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/anonymous.md) | 245 | `declaration-track:0ac04db807ffafd7c5298a0305c8e2fb7d0cbf395d134637a66381d54ba5fcbd` |
| 34 | `theorem` | [δ_comp_δ](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/comp-source-edition-3.md) | 250 | `result-track:9d6c227319622b5ef01ce2260ef43532ef29f486103880c03daaaf635ee82181` |
| 35 | `theorem` | [δ_comp_δ'](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/comp-source-edition-2.md) | 259 | `result-track:1c9423604141e152279f5a46c1e6404c70ab5381607cae8b431eaf408bdfc51a` |
| 36 | `theorem` | [δ_comp_δ''](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/comp-source-edition-4.md) | 268 | `result-track:d2521dda2b939c578fd3a8839a1c9962d66e7a637989b1e7df8d151630527bc1` |
| 37 | `theorem` | [δ_comp_δ_self](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/comp-self-source-edition-2.md) | 277 | `result-track:683acd23213d9d0147b99b601d0aa592b9e0f7daac7791cd57e51ff6dcd9aba8` |
| 38 | `theorem` | [δ_comp_δ_self'](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/comp-self.md) | 281 | `result-track:5fe668c1c8bace1086a99a0b9c232b636b9001b0245c5b01bd4b395f9d84d84c` |
| 39 | `theorem` | [δ_comp_σ_of_le](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/comp-of-le.md) | 289 | `result-track:8c0f2d898be9cbacfa28e0f85f933e92da77b1caf48696beab14e4134906e40d` |
| 40 | `theorem` | [δ_comp_σ_self](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/comp-self-source-edition-3.md) | 311 | `result-track:87b733298692e0ad6aac78c996a9a10227ccee88dff288d963e25b46fa738e54` |
| 41 | `theorem` | [δ_comp_σ_self'](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/comp-self-source-edition-4.md) | 322 | `result-track:cbcc89e6215898d42c39200c7ff1ea8cd4c4282c221c3843225e6b4440395da4` |
| 42 | `theorem` | [δ_comp_σ_succ](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/comp-succ-source-edition-2.md) | 330 | `result-track:fbdc76e22cbddc4ddee472d917d03a60c64addc3aa09fe9d4959fceeabeaf07b` |
| 43 | `theorem` | [δ_comp_σ_succ'](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/comp-succ.md) | 338 | `result-track:acabdee3fa0108b80343b4e65c6c226a909a017c6101468f545afc43aa3e40a2` |
| 44 | `theorem` | [δ_comp_σ_of_gt](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/comp-of-gt-source-edition-2.md) | 346 | `result-track:fbd845630f11f175db42b42fd0bb124cbaf106295b94f3b08c883b13d710d22f` |
| 45 | `theorem` | [δ_comp_σ_of_gt'](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/comp-of-gt.md) | 370 | `result-track:5f556ff7b54858d78fe7d95f398fa2e3b59d621ed6282bddea87b1a042ee3c1e` |
| 46 | `theorem` | [σ_comp_σ](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/comp.md) | 381 | `result-track:151d802fb4dab547d82949f4195db57345cc3c5320e8017706e895550bdf3f7d` |
| 47 | `lemma` | [δ_zero_eq_const](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/zero-eq-const.md) | 413 | `result-track:c61f36f4616e76a4b8b063c0d466ba7bbdc0bf09b93290199b0b1b257d6e7b82` |
| 48 | `lemma` | [δ_one_eq_const](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/one-eq-const.md) | 415 | `result-track:bc9236d75b533526e3c0f4c6ffb503eb5da87e88bb1f40dcd9bcb5b64b5f04e8` |
| 49 | `def` | [factor_δ](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/factor.md) | 422 | `declaration-track:2568c1d3c6b9d6dc17c005c077817b52fb9af52308824578a05edf9e408f92a7` |
| 50 | `lemma` | [factor_δ_spec](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/factor-spec.md) | 425 | `result-track:f8696638bba842729dba3af55a445bcb2293e3b1fc33a86764dd73cbdbe74c54` |
| 51 | `lemma` | [δ_zero_mkOfSucc](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/zero-mkofsucc.md) | 432 | `result-track:1c17a6fb867ce19c01e2b7d5a64029668320597a84e7eeae030e0fcb8b552001` |
| 52 | `lemma` | [δ_one_mkOfSucc](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/one-mkofsucc.md) | 439 | `result-track:a0f5107415a442c74d0c4dbfd04409f475cdf79df1c11bd58e8aa76e3908667d` |
| 53 | `lemma` | [mkOfSucc_δ_lt](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/mkofsucc-lt.md) | 447 | `result-track:b9d345e5a57877d6764b7950503bcf2ae6a0e1a149035f1f338e06a971a9dbfd` |
| 54 | `lemma` | [mkOfSucc_δ_gt](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/mkofsucc-gt.md) | 457 | `result-track:728f3b87dbb3010efdaf9b18ff98f5e9c02029c377b12b69a02727569fb9075b` |
| 55 | `lemma` | [mkOfSucc_δ_eq](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/mkofsucc-eq.md) | 471 | `result-track:e4a3487b1ac9a86dd1c9fae1557a60d87918e8d40f6ccf93a55c3be4d73b293c` |
| 56 | `lemma` | [mkOfSucc_one_eq_δ](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/mkofsucc-one-eq.md) | 489 | `result-track:fc5e34826baa24cbb1c6ea9c15d3287e94a9d2a1b2f4fff607d8134cca32ddb2` |
| 57 | `lemma` | [mkOfSucc_zero_eq_δ](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/mkofsucc-zero-eq.md) | 491 | `result-track:0f3f724e053c1ce0eecb755cac295e3f32998f9efa42f2fb0a00bb1c8d6f38de` |
| 58 | `theorem` | [eq_of_one_to_two](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/eq-of-one-to-two.md) | 493 | `result-track:07dd32ad971d2d1d3e423cabf260c540e3e91e09629aba103fd1dbc2bb1d5f80` |
| 59 | `theorem` | [eq_of_one_to_two'](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/eq-of-one-to-two-source-edition-2.md) | 525 | `result-track:32b16cb147b4d8feef4369a71efdedd461a0cb23eb0bc616bc2b834da02b4989` |
| 60 | `def` | [skeletalFunctor](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/skeletalfunctor.md) | 541 | `declaration-track:9d227bda9e63dea15244ecb82d75657c870eceda2e973fd6e28f768ec53a0ba0` |
| 61 | `theorem` | [skeletalFunctor.coe_map](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/skeletalfunctor-coe-map.md) | 545 | `result-track:21c92a8d8ddcb317f92ab4e8890562f1e348ecd80aecfb9e00559eb05a67140b` |
| 62 | `theorem` | [skeletal](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/skeletal.md) | 549 | `result-track:6afc0fbbb12816cf18c2ff5a44a156b6a13a134edc06a2bdbaec2a63ee3c0ad3` |
| 63 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 558 | `declaration-track:bdec46c36228b69154cd594bc93a27db930569bcd304b2992dc97186387dc3a6` |
| 64 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/instance-source-edition-16.md) | 561 | `declaration-track:f276318914c50d35bcd2ab7762a8f35260612cbd9a9f40a3308ca64c9309a1b9` |
| 65 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 566 | `declaration-track:734b0b4343505dadd7bad51ad2efcdb5c80bc618719ddb8547ddd06240818951` |
| 66 | `instance` | [isEquivalence](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/isequivalence.md) | 585 | `declaration-track:a1bfca053123352fb0a82d8dda2ac13ad1ca5325dafefdb4bd53a7dc9e6f59d2` |
| 67 | `def` | [skeletalEquivalence](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/skeletalequivalence.md) | 591 | `declaration-track:5d7634d7850537f71b158c0ce8d54fcf7751e9b88e7e2cf287d3f2a539243619` |
| 68 | `lemma` | [isSkeletonOf](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/isskeletonof.md) | 598 | `result-track:68e1775504b549a6cf684442f760ffa8397e28b23ace7e0412165b3b36a246d0` |
| 69 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/instance.md) | 605 | `declaration-track:1e6538f9ea74071483839ad7a2aadae4f84dc7bc5a6a1cf9d41cf8b78d894071` |
| 70 | `lemma` | [toType_apply](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/totype-apply.md) | 609 | `result-track:2e49e3e9fdf5c76226abba0b2c973d8b4cbeab2a31b3426c8b2f8ee0f17df36a` |
| 71 | `lemma` | [concreteCategoryHom_id](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/concretecategoryhom-id.md) | 612 | `result-track:bfb504e728651c272339ec19a451ebb3cb29de3533299bacbb345cc5ac5e5787` |
| 72 | `lemma` | [coe_δ](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/coe-source-edition-2.md) | 614 | `result-track:60969a5962e754f17d5a1adab51422090de155ba0f7b60c3e08590dcb60da54c` |
| 73 | `lemma` | [coe_σ](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/coe.md) | 617 | `result-track:5e7a3864da4545871c2a4fc96346a1d206fb0a4466c1016b223ea5bcfe17c6cf` |
| 74 | `theorem` | [mono_iff_injective](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/mono-iff-injective.md) | 627 | `result-track:3ff0bbaf7c3d5dce2ebc2cd6fa67f2a45558abffa0e072babf16060486782ffc` |
| 75 | `theorem` | [epi_iff_surjective](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/epi-iff-surjective.md) | 637 | `result-track:8b12d900af19d0bff72eaaf85d279618f8624618f2ae77e72b8941a129052366` |
| 76 | `theorem` | [len_le_of_mono](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/len-le-of-mono.md) | 645 | `result-track:666bd96f89929087d1045e7669c6861752ee4f75eba86f7c7d4fdde3566b973a` |
| 77 | `theorem` | [le_of_mono](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/le-of-mono.md) | 649 | `result-track:887035a930d5bb0c40a4de9ab133ca310d3953239decccb8d8ab16cbc5a3bc1c` |
| 78 | `theorem` | [len_le_of_epi](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/len-le-of-epi.md) | 653 | `result-track:e351caebe6aa600511b2ed8f0304520ff3034c999b52a508009e09a1c40d7b24` |
| 79 | `theorem` | [le_of_epi](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/le-of-epi.md) | 657 | `result-track:c30cd5836e0aabee79c5c84c3bdb5ba16ef010792178dd70af6d8f982654aa28` |
| 80 | `lemma` | [len_eq_of_isIso](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/len-eq-of-isiso.md) | 659 | `result-track:0ca30ed87b5a338f073dcd6314ff426dcea75d0c3483e76b86f6d570df53a121` |
| 81 | `lemma` | [eq_of_isIso](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/eq-of-isiso.md) | 662 | `result-track:d54128e158b1f51f50f2646528a63804f9096540bca45fa21e9b0284acc3729e` |
| 82 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 665 | `declaration-track:3e49e728ebd700f8ed25ec64f7299c7b2d8b44c68e057a2b8084d94a83f5e5fb` |
| 83 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 668 | `declaration-track:a7d20666f67b2e4cf39920fc045ff0470ef43e133770897dffb47527229ddec9` |
| 84 | `theorem` | [isIso_of_bijective](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/isiso-of-bijective.md) | 690 | `result-track:2fe7383e89685d2ca2feb4b938802b2b6f61961239975b6ce5f4c26201d719d0` |
| 85 | `lemma` | [isIso_iff_of_mono](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/isiso-iff-of-mono.md) | 695 | `result-track:295003608c743168621032fe61e8ae9f24577a5674f5585a0ecd6bb262256a86` |
| 86 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 702 | `declaration-track:44c951be39a3ac53d24e9aacf99ea3474a0861ecabec8ed25daae681bdb1f0fb` |
| 87 | `lemma` | [isIso_iff_of_epi](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/isiso-iff-of-epi.md) | 706 | `result-track:659eb1c76df6cde5b56f483793f889b9110c20b51972c95cf9b4225bbf407e62` |
| 88 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 713 | `declaration-track:f195f8880bb21da480aa92aa401588b047c384b6d239c27096ea7cfa0fbf60b8` |
| 89 | `def` | [orderIsoOfIso](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/orderisoofiso.md) | 720 | `declaration-track:5a1df91e8021a2ab3be4c0b1b798acff5300e549b4ef6c9602e8e12bdca1d5f8` |
| 90 | `theorem` | [iso_eq_iso_refl](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/iso-eq-iso-refl.md) | 730 | `result-track:54534cda9bff04d7d57f37d7b9fedb5948c5156e3783b815895e0edc02d2a5da` |
| 91 | `theorem` | [eq_id_of_isIso](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/eq-id-of-isiso.md) | 738 | `result-track:88aaf6b1400d9482a6e90f6e7e3a8b78880b2ff529071b7e9c49d543fbe7d77e` |
| 92 | `theorem` | [eq_σ_comp_of_not_injective'](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/eq-comp-of-not-injective.md) | 742 | `result-track:73960e3284320e0d66348cf7991ca0eb39adc8c1d601ff293fe292e1a2de2f99` |
| 93 | `theorem` | [eq_σ_comp_of_not_injective](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/eq-comp-of-not-injective-source-edition-2.md) | 773 | `result-track:8af375b7c303c827d78440280447e87fbea4ba88648dc534e18711045d18d6f5` |
| 94 | `theorem` | [eq_comp_δ_of_not_surjective'](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/eq-comp-of-not-surjective.md) | 793 | `result-track:536ef59c607d0e6d6a57b4a9600f7810244e01914e181397d1f0b9fb2a7dc4d9` |
| 95 | `theorem` | [eq_comp_δ_of_not_surjective](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/eq-comp-of-not-surjective-source-edition-2.md) | 803 | `result-track:7d424d438afd7343b544b6589b3e7eba687c6a9ede8730cbf6aef3b5d9b1e261` |
| 96 | `theorem` | [eq_id_of_mono](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/eq-id-of-mono.md) | 810 | `result-track:38428ade41178a390c31a792a82e4870aed7b7e7b042a61cf19d7a30e20b55c7` |
| 97 | `theorem` | [eq_id_of_epi](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/eq-id-of-epi.md) | 814 | `result-track:847608d2125c3484197a9dc86fd11d83a5fcf86b496c665935c791671394abbc` |
| 98 | `theorem` | [eq_σ_of_epi](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/eq-of-epi.md) | 818 | `result-track:fda81a3289ed2be15bfbd1d19321f0fc3a7009366b60c755ead807dac3af0438` |
| 99 | `theorem` | [eq_δ_of_mono](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/eq-of-mono.md) | 829 | `result-track:c47796bda717141eb0e18734b69d6e5c21d105752ed7c7cbb5f87dfca6b5ea3c` |
| 100 | `theorem` | [len_lt_of_mono](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/len-lt-of-mono.md) | 840 | `result-track:81296ed055f60927daccea80d3f955d39179b93154b7234a2634aa8c4264032d` |
| 101 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 844 | `declaration-track:2141f180ebb7a41692a134c0865971b9dc53f683af5e5e17de8a1ec8bba4172d` |
| 102 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 847 | `declaration-track:89d0c5f8534b592c052429d7cfb1e75418c29ba955380740b92f725b9d3896c9` |
| 103 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 851 | `declaration-track:4cd213ee09ecff56316cc5143656baf2f587fd0b05871d728cd622d1b255b3e6` |
| 104 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 854 | `declaration-track:a33f978246016057c48d87a0b5938c5f564d3d1067c2225f5e767fa9fa6eba64` |
| 105 | `theorem` | [image_eq](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/image-eq-source-edition-2.md) | 857 | `result-track:353d0e102112a22e903f37b399d264f9220dee856dc1773e18b30e630944880f` |
| 106 | `theorem` | [image_ι_eq](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/image-eq.md) | 864 | `result-track:0dce78318d7fadb09fbd85159c5fde2af71246306041e0e28fc70adc9996575f` |
| 107 | `theorem` | [factorThruImage_eq](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/factorthruimage-eq.md) | 870 | `result-track:ac0d3a98e4f5fe5995ad53714c9155ec41db169072905efd161b3f737ec93acd` |
| 108 | `def` | [toPartOrd](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/topartord.md) | 878 | `declaration-track:ce23007dbe1bf6695c46fe7e8f71dec7c8dc70ecdb825dbe3054e85f73d6b7ee` |
| 109 | `lemma` | [toPartOrd_obj](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/topartord-obj.md) | 883 | `result-track:bf4eab68bfb18d7d73e584c7073bb9d25e973e2cac07effc6e6134fb42188c13` |
| 110 | `lemma` | [toPartOrd_map_apply](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/topartord-map-apply.md) | 887 | `result-track:91a4d86787335e1b7a35b21def0f75cc42ebc46bfef97ba18a6362a45f5ad81e` |
| 111 | `def` | [toCat](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/tocat.md) | 893 | `declaration-track:768c1c3fd5d824eae57f7d49996c5d3bc6a027550ad4b357145a60fa952b4176` |
| 112 | `theorem` | [toCat.obj_eq_Fin](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/tocat-obj-eq-fin.md) | 898 | `result-track:c98c49b66e4af1bc55a2438628c88192a60fb484ecd0b47051014b81a94e66ea` |
| 113 | `instance` | [uniqueHomToZero](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/uniquehomtozero.md) | 900 | `declaration-track:55c9e1fb19d596e6a42eb597de67f3b415b7f90f627c8ee3485ce5048ec78364` |
| 114 | `def` | [isTerminalZero](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/isterminalzero.md) | 905 | `declaration-track:bbacaf10d770eb2d94c7df11a03a24ce74e135915c0a8e6b8a4b86bc78004e4b` |
| 115 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 908 | `declaration-track:f1451ae19aa1d4f724f8e5b5d86c43efdeebc12886c65b4006f323d0bf7b2fd8` |
| 116 | `def` | [topIsoZero](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/topisozero.md) | 912 | `declaration-track:ca3ea8673c7b61459c96654ccd4acf3c89b7cd550127e9e8df435f8580d6b793` |
| 117 | `lemma` | [δ_injective](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/injective.md) | 915 | `result-track:7cb5f95c3ceffe1d32d43885d8e489f869e6a65144b03587548e277c818f4945` |
| 118 | `lemma` | [σ_injective](../../../../AlgebraicTopology/SimplexCategoryBasicNamespacedPublic.lean/declarations/injective-source-edition-2.md) | 921 | `result-track:e74601f06e94ed722a4bd41b406a0481b58dc5ba9a214b58908e21180d8831ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9cccc9f4fc9ef1f767b8bbec4c276c496ce03bb2f38a99fbfc61c83794f95a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantc057e9b34b4c370ffaf5dafa5c2e8867b8aa3e43663827f58af4cd40ea9b30a2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variantc057e9b34b4c370ffaf5dafa5c2e8867b8aa3e43663827f58af4cd40ea9b30a2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
