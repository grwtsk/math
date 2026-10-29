# Verification target: Generators Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edf96eefcedc6a34f3c6d172d80cf6e4a33c43b9",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Generators/Variant1c0d05d2dd75faf3dbdb9e52257b49d0931a4ead74defe6481d51b87fa3cd949.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/GeneratorsPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/GeneratorsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edf96eefcedc6a34f3c6d172d80cf6e4a33c43b9`.

Source path: `GRWTSK/Algebra/Generators/Variant1c0d05d2dd75faf3dbdb9e52257b49d0931a4ead74defe6481d51b87fa3cd949.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Generators/Variant1c0d05d2dd75faf3dbdb9e52257b49d0931a4ead74defe6481d51b87fa3cd949.lean.json)

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
| 1 | `structure` | [Algebra.Generators](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/algebra-generators.md) | 64 | `declaration-track:fc7a0ad72b62b756811b76e0119b9e06dc8ddbe93b7ae32a2172b79cc648136f` |
| 2 | `abbrev` | [Ring](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/ring.md) | 85 | `declaration-track:a4a208be31817ea4b7ac46754f722ef870cc70db6efc2eca1ecdf159b9ae5571` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/instance-source-edition-3.md) | 87 | `declaration-track:e1d5ddd76093113399361a84b3d7764881b58be8c43aa754899fab33e47bb0c0` |
| 4 | `def` | [σ](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/anonymous.md) | 90 | `declaration-track:2d54e93832def5f94165f045c7dea1acee4790f47da6cfe07f208f9b42dda916` |
| 5 | `def` | [Simps.σ](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/simps.md) | 93 | `declaration-track:4491ed09306b8332414e4272f7f93f12520c2f4f1c3fbb99098d32f2a6d0f29e` |
| 6 | `lemma` | [aeval_val_σ](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/aeval-val.md) | 98 | `result-track:6d54d84af1c976216544e677da065ef33ad9d72bcdb4a8757781729bda73773d` |
| 7 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/instance.md) | 100 | `declaration-track:2b7d3cb93a008b6b503566069dcb12ed9afbdea3f004514a2939147101262c34` |
| 8 | `lemma` | [algebraMap_apply](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/algebramap-apply.md) | 105 | `result-track:60ab171d9952f6a95dfd7a311e95acb66c637408231cf9c9e1cd62c82ff18fc9` |
| 9 | `lemma` | [σ_smul](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/smul.md) | 109 | `result-track:482e847ecc12c7248703a73295195891bc58e39f7c80293e45303674701bf089` |
| 10 | `lemma` | [σ_injective](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/injective.md) | 112 | `result-track:9206de449f42813c3c9e17a52ba65efb5f81365d8c537d51d6cb2c7a28a5f8af` |
| 11 | `lemma` | [aeval_val_surjective](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/aeval-val-surjective.md) | 116 | `result-track:da8ecdd648b6f3c78fd04bc643a2694b91d3161f3fd73d0a24aa15a847d2589d` |
| 12 | `lemma` | [algebraMap_surjective](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/algebramap-surjective.md) | 119 | `result-track:62e88f022d05e8acb11a66b00fe944e1ca33b90d9d9ba5e72569e83197f1e19e` |
| 13 | `def` | [ofSurjective](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/ofsurjective.md) | 127 | `declaration-track:8f2c0bcdcb2c70558ed59f51cc27ee64e82b0fe1b90d965de74c643fefd1a434` |
| 14 | `def` | [ofSurjectiveAlgebraMap](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/ofsurjectivealgebramap.md) | 134 | `declaration-track:977f20ab451879bd0f18718fef03472be4ca4806e46d099beb2685ad4348851e` |
| 15 | `def` | [id](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/id.md) | 141 | `declaration-track:a30b51f5e6c9a808f7eefd9aded582d9d2e33ff68ab9d8b773b46e244c88a54b` |
| 16 | `def` | [mvPolynomial](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/mvpolynomial.md) | 149 | `declaration-track:526c4322461f24ff8ad19f4f1d89b254fe41282077af8d3b4fb4a4712d1598b3` |
| 17 | `def` | [ofAlgHom](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/ofalghom.md) | 156 | `declaration-track:b167cda353c7a6b4ceca29e0fa4f5ac8ff5fbed8556520e1b84c1c10ae8514b4` |
| 18 | `def` | [ofSet](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/ofset.md) | 162 | `declaration-track:59b2d1ba88a4f35e479753a3f74bc094025f4f5662384851ae9dddee828bdadc` |
| 19 | `def` | [self](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/self.md) | 171 | `declaration-track:82c83c0a252bd7147659bc24017777a6c35800bfcfd7a9c9a35bc73c0c9e8f95` |
| 20 | `def` | [toExtension](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/toextension.md) | 179 | `declaration-track:28c924eadff161eb0ee1bdeea3dd11cb24afd656951a4901e44d7415f666a4a7` |
| 21 | `def` | [ofAlgEquiv](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/ofalgequiv.md) | 185 | `declaration-track:5d750746039f46d050fdb0f65fef64c961e1f10b4594ab79df41266b498eaaf9` |
| 22 | `lemma` | [ofAlgEquiv_val](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/ofalgequiv-val.md) | 195 | `result-track:5f05274256cf30baf7ee7098b80c778b6e67b3ffd6e245d6195f309c41a44d1f` |
| 23 | `def` | [localizationAway](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/localizationaway.md) | 208 | `declaration-track:4f7856668c1ca229b8e08d560226154530a79af282e43962b5562f612c2f80e8` |
| 24 | `def` | [comp](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/comp.md) | 230 | `declaration-track:4ebeaa7c47d43763d1530e6d741e8cc6287159575237fb73a126d9688686074e` |
| 25 | `def` | [extendScalars](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/extendscalars.md) | 251 | `declaration-track:5b6cc7bf548da2bcc1f5a77e8371d1c7765c1f90754addf049d140204d659065` |
| 26 | `def` | [baseChange](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/basechange.md) | 261 | `declaration-track:13ffc6635e2cacf87352cb7d8c2b0bd95ba3a9b8bc6341acbccb7ca72fa3d61c` |
| 27 | `def` | [baseChangeFromBaseChange](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/basechangefrombasechange.md) | 291 | `declaration-track:56831cf759619f0c6eeb06e143ac4468f9d6b5b7aa4a1e2a0615ccef9b328b05` |
| 28 | `lemma` | [baseChangeFromBaseChange_apply](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/basechangefrombasechange-apply.md) | 300 | `result-track:aad77a59be67999492542679a99605f3789519cf6856417db6685c446523726a` |
| 29 | `def` | [baseChangeToBaseChange](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/basechangetobasechange.md) | 309 | `declaration-track:4a153cf2fbb69c2e4bc46c96481fe2e84d319413cb61744df2030a62e9d810d5` |
| 30 | `lemma` | [baseChangeToBaseChange_apply](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/basechangetobasechange-apply.md) | 318 | `result-track:7eae34ad54701a0e5f214e1c86613d6569f5b0b5398eedfa312d5dc6efba628a` |
| 31 | `def` | [extend](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/extend.md) | 324 | `declaration-track:75d2317c97adbb1c728506d016b7ad15e38eca06716a6e83926377683d142ea1` |
| 32 | `lemma` | [extend_val_inl](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/extend-val-inl.md) | 330 | `result-track:22b7b1a9b35a373036c3cf47b13ab52037341dfa196be587341c9e8f75f84279` |
| 33 | `lemma` | [extend_val_inr](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/extend-val-inr.md) | 334 | `result-track:2cffb57945ecc975ca77f4bd8109c106779309c124a86ba130c310ecd7223f45` |
| 34 | `def` | [reindex](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/reindex.md) | 339 | `declaration-track:5cdc2b36331903c5d365d9eaa0a2dc18a8cff5d8d10f5da7e4c749d89050537e` |
| 35 | `lemma` | [reindex_val](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/reindex-val.md) | 348 | `result-track:49dc524bb755bc5a2c3c85f6aacd16f4433ffb49551b7f1db310e942086bb88e` |
| 36 | `def` | [naive](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/naive.md) | 364 | `declaration-track:0cf9e87231241c46be389a3500e4e9b3c2438e62860f1d02d228dbbb5e466f4f` |
| 37 | `lemma` | [naive_σ](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/naive-source-edition-2.md) | 376 | `result-track:bae97389f80ba841bd14c9071fa18c10ccf2c0c2ff846e7b1d06c3ade0572c72` |
| 38 | `lemma` | [finiteType](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/finitetype.md) | 380 | `result-track:fddf6a1bcd82891892e172ccc0c530c1469699bdc1ceff88680275b392b30551` |
| 39 | `lemma` | [_root_.Algebra.FiniteType.iff_exists_generators](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/root-algebra-finitetype-iff-exists-generators.md) | 383 | `result-track:dd0533d7136c89c5e2ecec9b6eee091752821bcecc2ae7706387636863a23fac` |
| 40 | `structure` | [Hom](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/hom.md) | 411 | `declaration-track:a88af9812fc5a26ba06d9bc1bdef95986ca6c8331ad489a60e35856e584819a3` |
| 41 | `def` | [Hom.toAlgHom](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/hom-toalghom.md) | 423 | `declaration-track:26b88c8f05cc7caf13b651fb4890ef83a95516cedfced4cdff302f076308a45c` |
| 42 | `lemma` | [Hom.algebraMap_toAlgHom](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/hom-algebramap-toalghom.md) | 427 | `result-track:a01d8c7de63c9f63c0fb8f3314abafb50dd5cdc4e5143d960c4c0178c8976797` |
| 43 | `lemma` | [Hom.algebraMap_toAlgHom'](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/hom-algebramap-toalghom-source-edition-2.md) | 437 | `result-track:a341af8056aa621ba28435ccf65f3a06aa6ab750f3555b65b2841791acd2d050` |
| 44 | `lemma` | [Hom.toAlgHom_X](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/hom-toalghom-x.md) | 443 | `result-track:52e1da291ca45942ae9ab32dbb26889f10ced450ae3717394561b103cecc3187` |
| 45 | `lemma` | [Hom.toAlgHom_C](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/hom-toalghom-c.md) | 446 | `result-track:dc122bfcc8956465fda187747310e4e4e399c67d13455e4c511be336e24282d6` |
| 46 | `lemma` | [Hom.toAlgHom_monomial](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/hom-toalghom-monomial.md) | 449 | `result-track:c4db8c0d74f5ae597db54f16f1ecb6b4fc4ce3db74ec75586fec743909334705` |
| 47 | `def` | [Hom.equivAlgHom](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/hom-equivalghom.md) | 458 | `declaration-track:b4666de4c4023a14c332a699b5759900f123755312b3927e477eacdee23fb3e0` |
| 48 | `def` | [defaultHom](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/defaulthom.md) | 470 | `declaration-track:0db6b11ace544f53e1991d8aefd914589d663ef40e42b2815c1283a46d7ddf96` |
| 49 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/instance-source-edition-2.md) | 472 | `declaration-track:491e08e55b05a027048b90eefacae628ec9f6d91b6678620257ea561d5c50790` |
| 50 | `def` | [Hom.id](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/hom-id.md) | 476 | `declaration-track:e61f8d4ad110cf101529edb5a78c63cf0cfcde1c5a04c7b63e8701153780077e` |
| 51 | `lemma` | [Hom.toAlgHom_id](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/hom-toalghom-id.md) | 479 | `result-track:125f9b4293653064980dd09c1a46ac8a960f206553f0b87a6fe17cc68a7e41ec` |
| 52 | `def` | [Hom.comp](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/hom-comp.md) | 485 | `declaration-track:d67216be62e29a82398b1c59a980c3c07eba9e8bc7130d5b112d3357d0ea3593` |
| 53 | `lemma` | [Hom.comp_id](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/hom-comp-id.md) | 496 | `result-track:99cf32dd9274b3fdab5f260ad25901756691433a6d3126efd31e4d80df6b72a8` |
| 54 | `lemma` | [Hom.id_comp](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/hom-id-comp.md) | 502 | `result-track:5110a4ba928dcbf1ef9acf90cc719c65c68a7b8796ed831f4a82ed45cada49b3` |
| 55 | `lemma` | [Hom.toAlgHom_comp_apply](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/hom-toalghom-comp-apply.md) | 509 | `result-track:1f069b98352526e593f91d11bfdeae96d3a280242c011d43eee87e28b6995155` |
| 56 | `def` | [toComp](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/tocomp.md) | 525 | `declaration-track:1aa74901d63675be9d8f5cd4a60f90cb1ace39e0fb71c54210f3f672d8d86f3d` |
| 57 | `lemma` | [toComp_toAlgHom](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/tocomp-toalghom.md) | 529 | `result-track:6b11e5658ba6e903688d561c6f85f5bc3528122ecabebccf8c8c08b38e0efe89` |
| 58 | `def` | [ofComp](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/ofcomp.md) | 536 | `declaration-track:141968554e958a6eab75cf0c8b0e1aa0362d45e75a9e786c7ded0aa65f2af51e` |
| 59 | `lemma` | [ofComp_toAlgHom_monomial_sumElim](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/ofcomp-toalghom-monomial-sumelim.md) | 540 | `result-track:1324550fbd9e7361d02b329d83e12293ce35918c40b8374c79df9ecc6377cd71` |
| 60 | `lemma` | [toComp_toAlgHom_monomial](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/tocomp-toalghom-monomial.md) | 550 | `result-track:5bd06d54ebfe64d198409392319baae8f4a3d9781009cbdc66f958638f19b961` |
| 61 | `lemma` | [toAlgHom_ofComp_rename](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/toalghom-ofcomp-rename.md) | 560 | `result-track:01c2d25afe23b37127dca1f7fde4a79b8f5887a839b26df11e1650c3075abe75` |
| 62 | `lemma` | [toAlgHom_ofComp_surjective](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/toalghom-ofcomp-surjective.md) | 566 | `result-track:64fc08fd4c48341b6ecf39327a8687951135ad49c5f5412f64eeaaabce5118ae` |
| 63 | `def` | [toExtendScalars](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/toextendscalars.md) | 590 | `declaration-track:b62b70f780fe65b69ed570b6025a8f7ec53950d2b4b15d78c7295bc2246d7a3b` |
| 64 | `def` | [Hom.toExtensionHom](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/hom-toextensionhom.md) | 600 | `declaration-track:b1bffec95d1ae51ab145995e98fac5d9579d4927ca313c153a8f2e7b33ba1b6c` |
| 65 | `lemma` | [Hom.toExtensionHom_id](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/hom-toextensionhom-id.md) | 609 | `result-track:61a6724f234dba068f12471f82fc252cb894d6e0f2304fdaccd3ab126ed2dfbd` |
| 66 | `lemma` | [Hom.toExtensionHom_comp](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/hom-toextensionhom-comp.md) | 614 | `result-track:2e7b422a4ec80e94cc4939998aa34072526ab83340ee1a906cfd0d81d33781be` |
| 67 | `lemma` | [Hom.toExtensionHom_toAlgHom_apply](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/hom-toextensionhom-toalghom-apply.md) | 621 | `result-track:c56fbe98cc16d8a4e913d541ac0f7ac2b2ef24aadab3424cdcbd187e4cfca352` |
| 68 | `abbrev` | [ker](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/ker.md) | 626 | `declaration-track:6b5f51b8245e4cc98b6a8e4a9898f69073dfe3473471aab83b48178904f3ed26` |
| 69 | `lemma` | [ker_eq_ker_aeval_val](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/ker-eq-ker-aeval-val.md) | 630 | `result-track:6486cb621caf221e3a52497c89f7e92578330c53fbb6d45e8e52f9f5c8bcae8d` |
| 70 | `lemma` | [ker_mvPolynomial](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/ker-mvpolynomial.md) | 634 | `result-track:f91fc8b8b0aeb1ac3f156ec64d6bbe82503258f64bc0b04784cbb072a2f2a61c` |
| 71 | `lemma` | [aeval_val_eq_zero](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/aeval-val-eq-zero.md) | 638 | `result-track:4d20ae75fae860f42519bfcdaa2650ccfb58114e7377145488719a5791b709b5` |
| 72 | `lemma` | [ker_naive](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/ker-naive.md) | 640 | `result-track:680f7310ec4585e2e3041dad2c30ceffa1d0027241b08243c33db10b0a458a34` |
| 73 | `lemma` | [ker_ofAlgHom](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/ker-ofalghom.md) | 648 | `result-track:4d0425b3d3ff9e41cd4d3513d8c5bf325c35a97a8b4363dfbcfbe1f322a195d3` |
| 74 | `lemma` | [ker_ofAlgEquiv](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/ker-ofalgequiv.md) | 655 | `result-track:68ca6d2bf8f96cb0a2d89e22f0ae2f3afed167a79c4ee98475ef84cab6219f5b` |
| 75 | `lemma` | [map_toComp_ker](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/map-tocomp-ker.md) | 662 | `result-track:8362f559c2523073c5e3fe5f11f816fb5a332ec287f38e6c071da359a31c7226` |
| 76 | `def` | [kerCompPreimage](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/kercomppreimage.md) | 737 | `declaration-track:11b8f5a87917c972754629ff8127b827d32d656d787c7898af1f480bfea21a12` |
| 77 | `lemma` | [ofComp_kerCompPreimage](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/ofcomp-kercomppreimage.md) | 752 | `result-track:05c69148973b6d91b0f9d8172ec024538a5fab5b5c045ee4499c84b00d458699` |
| 78 | `lemma` | [map_ofComp_ker](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/map-ofcomp-ker.md) | 766 | `result-track:719d61b239c1fcdedf90b34eef75961fa4b807956c32db67beab83c33be3e5ee` |
| 79 | `lemma` | [ker_comp_eq_sup](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/ker-comp-eq-sup.md) | 778 | `result-track:faa613dc171a8db73f6c15d76fbe38b0232e84f382255ff4442ec70ec9a140ef` |
| 80 | `lemma` | [toAlgHom_ofComp_localizationAway](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/toalghom-ofcomp-localizationaway.md) | 792 | `result-track:ee7b10b4ac00a0f26b5bcff90bd4987cd056910e310f2f580a38730d25d7e0a6` |
| 81 | `def` | [defaultHom](../../../../CommutativeAlgebra/GeneratorsPublic.lean/declarations/defaulthom-source-edition-2.md) | 809 | `declaration-track:7ed6eb3258c6126243a2b396ed15ab619f6c63bd49cfbc293ec2c59e73d2b8b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6bd970c25d752dd07509ae8200fc0737dde1af1564bff1ead2627ec5fa0f5181 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Generators/Variant1c0d05d2dd75faf3dbdb9e52257b49d0931a4ead74defe6481d51b87fa3cd949.lean","GRWTSK/_verification/specifications/Algebra/Generators/Variant1c0d05d2dd75faf3dbdb9e52257b49d0931a4ead74defe6481d51b87fa3cd949.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
