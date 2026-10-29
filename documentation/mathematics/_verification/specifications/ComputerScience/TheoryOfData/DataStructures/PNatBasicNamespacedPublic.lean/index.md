# Verification target: PNat Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afe2ccb09312fc6ed316b235a823225156ab15c6",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0107a16b6f27f7d360c5947586cf66c4af176b3cf41e411a2d8b1ef40471d80d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afe2ccb09312fc6ed316b235a823225156ab15c6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0107a16b6f27f7d360c5947586cf66c4af176b3cf41e411a2d8b1ef40471d80d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0107a16b6f27f7d360c5947586cf66c4af176b3cf41e411a2d8b1ef40471d80d.lean.json)

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
| 1 | `instance` | [instCancelCommMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/instcancelcommmonoid.md) | 38 | `declaration-track:06311ab8b493161580aad8285455684d5241798bd1163ad48180003395f796b3` |
| 2 | `theorem` | [one_add_natPred](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/one-add-natpred.md) | 41 | `result-track:24776dcc3b3cf0bd0ecf1bfb60a34febcbaba6dc58a583d9e7100f33aebe38d8` |
| 3 | `theorem` | [natPred_add_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/natpred-add-one.md) | 45 | `result-track:184d23cce37267c59c2def9a52b41a1e889c5701ce34beae5c2d8781474c34d8` |
| 4 | `theorem` | [natPred_strictMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/natpred-strictmono.md) | 49 | `result-track:c76e646aba01336b1cd4749ed3f55b6c542081b32fe5e693d94561a9efcfa792` |
| 5 | `theorem` | [natPred_monotone](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/natpred-monotone.md) | 52 | `result-track:801dc4a8a927036c2dbf9a7f41179d3187e7dca9ee2a8e2b20632cf1a0e3d9ec` |
| 6 | `theorem` | [natPred_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/natpred-injective.md) | 55 | `result-track:4253a29ffbd5aa24667468852584572b9d89e07987eebaa241ee350246c45c71` |
| 7 | `theorem` | [natPred_lt_natPred](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/natpred-lt-natpred.md) | 59 | `result-track:6a7960c7565b5ce11b6ea52d55ea5c563bd752d83bf9cad0675847545cf96b6a` |
| 8 | `theorem` | [natPred_le_natPred](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/natpred-le-natpred.md) | 63 | `result-track:4934b89d74232f839ea8970c962db67212752f39f01c9daa3d66c409e7fe5292` |
| 9 | `theorem` | [natPred_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/natpred-inj.md) | 67 | `result-track:ce1a1862328134ea7bc375ad6e9f0477f1af264284db2aacd881b06cc4d79ff9` |
| 10 | `lemma` | [val_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/val-ofnat.md) | 71 | `result-track:2a104a7db48d335a7c5bd76c0a965ff5e57adabfeff7694a6876e657923b9de6` |
| 11 | `lemma` | [mk_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/mk-ofnat.md) | 76 | `result-track:7b6ea50e6e6888a4124550c3e6b6f2d2d10c5ef3f47359bd7c3e6c349b73ef4d` |
| 12 | `theorem` | [succPNat_strictMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/succpnat-strictmono.md) | 85 | `result-track:c4beb8edaafa282ccbf90f7753afc847c38ff7a77c83ef888a809d00feef1418` |
| 13 | `theorem` | [succPNat_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/succpnat-mono.md) | 88 | `result-track:22a7996450d5c259fca92f17ed65f81c0c75a559647e14ea80adfe99b17908d5` |
| 14 | `theorem` | [succPNat_lt_succPNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/succpnat-lt-succpnat.md) | 92 | `result-track:0db80f0ce4ac6604b3c187e6a547a21c26240f3370da786bfc9078cf17dd6a66` |
| 15 | `theorem` | [succPNat_le_succPNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/succpnat-le-succpnat.md) | 96 | `result-track:023465a3d6d9f572a7ff2fd976aab266666faf12f583bc86bf45c88d5c5ff78f` |
| 16 | `theorem` | [succPNat_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/succpnat-injective.md) | 99 | `result-track:f4e28e68936b891669d96425633300f87896d5afa599c7cb84938d7a954de464` |
| 17 | `theorem` | [succPNat_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/succpnat-inj.md) | 103 | `result-track:d09d9ed0f361c7e5788364122e64bced5d8c05e0c748ed6a0247f3cda0bebf19` |
| 18 | `theorem` | [coe_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/coe-inj.md) | 118 | `result-track:c7d40868891ac9ae68d3aa65ce55395b46281c58a99f581b3d7a903951976186` |
| 19 | `theorem` | [add_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/add-coe.md) | 122 | `result-track:4ba11d92a52b649e319ebec9f17a17ff8e46ed792c8387023b9c50138696f697` |
| 20 | `def` | [coeAddHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/coeaddhom.md) | 127 | `declaration-track:6f99141b829320380d49f296514d34f7acd3fa1c93a178f76a2140e469d60d3c` |
| 21 | `def` | [PNat Basic Namespaced Public](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-on-source-edition-2.md) | 133 | `declaration-track:47571e86c06ea700e8793a8a709aa1d7e4a38a48ff844970e23dd8c7c155f452` |
| 22 | `theorem` | [PNat Basic Namespaced Public](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-on.md) | 138 | `result-track:2973cd72403a3de459f5535b08ea14c2ce8ade9c623f3dd309863a61581a3a85` |
| 23 | `theorem` | [lt_add_one_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/lt-add-one-iff.md) | 141 | `result-track:74c347df9642becf97821091b5c65ac83ea5c0f8b2d8762680eb8954342b4e03` |
| 24 | `theorem` | [add_one_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/add-one-le-iff.md) | 143 | `result-track:4f89587e9b0b091ee9d85ae4a747617cfa0b876f8db362eabcdb0ece9890c674` |
| 25 | `instance` | [instOrderBot](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/instorderbot.md) | 145 | `declaration-track:3c8dedc00eda02986f4af2f3c061bafb0b43082d161b56baa749d02666bdde09` |
| 26 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/instance.md) | 149 | `declaration-track:324a635bdf8c6ebab75c963db7b08d6f76625b2e677f03172f1d13fd1a89a6ed` |
| 27 | `theorem` | [bot_eq_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/bot-eq-one.md) | 153 | `result-track:62875ffa6d8fcf56f1e605725cd65f9e7f38d4d028077cb8c948acfadad7be10` |
| 28 | `def` | [caseStrongInductionOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/casestronginductionon.md) | 157 | `declaration-track:23dbf6de6ab59134ba8d8de95d49a3dff8bd9bcaf50d7bd698ebceaf9fb708be` |
| 29 | `def` | [recOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/recon.md) | 170 | `declaration-track:1068d3d0110e36a693eaefbd255d320612a46683284c3d3dffeb979d91d6b82d` |
| 30 | `theorem` | [recOn_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/recon-one.md) | 180 | `result-track:c5f3e29953f0738405372f83a7d5adf18156a5bc418a6f598a6f78badb73725d` |
| 31 | `theorem` | [recOn_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/recon-succ.md) | 184 | `result-track:2cb5a379e8de22fc6c0defb5e0bcc023965aaf5bb6077168f8bdfd5ffa3150a1` |
| 32 | `theorem` | [ofNat_le_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/ofnat-le-ofnat.md) | 190 | `result-track:05cd8773250b02d0d943ee6858a5a4d68b6d2ef329b7da18242c1fb4f43ecf05` |
| 33 | `theorem` | [ofNat_lt_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/ofnat-lt-ofnat.md) | 195 | `result-track:4e0b0464545a8e653ddf3c6533149df41ab6fc0a7512f0e48b9b6a07ee2560e8` |
| 34 | `theorem` | [ofNat_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/ofnat-inj.md) | 200 | `result-track:b3276ceabf545a19172a686760d5d1f7ef6b515f12aef423b4db796b3da4d7f5` |
| 35 | `theorem` | [mul_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/mul-coe.md) | 205 | `result-track:5f16d59de0fa024a3bb772cc40c767a12d63b921068a662e64386623985f9101` |
| 36 | `def` | [coeMonoidHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/coemonoidhom.md) | 209 | `declaration-track:fc20bcbec84179b7d8d939c7ecabcb6745cd3ae7e25891341d82d8f4122aeeba` |
| 37 | `theorem` | [coe_coeMonoidHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/coe-coemonoidhom.md) | 215 | `result-track:b62418941946fd3e05ca002b0a08f80817c64c2786c315d44e430eda65c0a3f2` |
| 38 | `theorem` | [le_one_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/le-one-iff.md) | 219 | `result-track:6c9d87739f4239f36291399c8ba51d73c005064892c1a186ed11a9622605885c` |
| 39 | `theorem` | [lt_add_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/lt-add-left.md) | 222 | `result-track:e6b575e76edb560741245da7c7d0aa1f0eeff71eabf55e7c1170375186638653` |
| 40 | `theorem` | [lt_add_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/lt-add-right.md) | 225 | `result-track:497b1ff8d10215544dddfb3c4ca8a3992aefbc62148bc2de8665db56da63b281` |
| 41 | `theorem` | [pow_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/pow-coe.md) | 229 | `result-track:000462dd1e05ca151e8859cb5423ea2a25080ac2fa6314ffa5db1126d9f5e44f` |
| 42 | `theorem` | [one_lt_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/one-lt-of-lt.md) | 233 | `result-track:a1729215328b7480accace19b7dbb09eed98e2df08a7e441a2115404f382dc27` |
| 43 | `theorem` | [add_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/add-one.md) | 235 | `result-track:02338936e6a4786c1f6706b98586385de2d79ca2572162a9980e5c46d26dceda` |
| 44 | `theorem` | [lt_succ_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/lt-succ-self.md) | 237 | `result-track:6d09a97a748f5003af02323d7a9ac81be67d6b259b7840c8871d65291b1bfd6c` |
| 45 | `instance` | [instSub](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/instsub.md) | 242 | `declaration-track:a531f7552c3ca61fbc16ea7549ae9405e9c8c6055267d0ad86363456aec59a42` |
| 46 | `theorem` | [sub_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/sub-coe.md) | 245 | `result-track:88810732301f07eaad74ce2263eabe6f1fe6c9fc5befe09fdd45a2edb15dbe67` |
| 47 | `theorem` | [sub_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/sub-le.md) | 252 | `result-track:51c56db67b743162a80fc0083116b47080c8c31789a53bf503be71ca4ec6d967` |
| 48 | `theorem` | [le_sub_one_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/le-sub-one-of-lt.md) | 258 | `result-track:838d453e99dc427df84981189388664cbd47480bfa2fa3f7c1431c438623ecdc` |
| 49 | `theorem` | [add_sub_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/add-sub-of-lt.md) | 264 | `result-track:208cc36320b8c0ef2c1456f4471a5257d9c83a26276bdbe71f2317fff06ff25c` |
| 50 | `theorem` | [sub_add_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/sub-add-of-lt.md) | 270 | `result-track:0d6647155d30d052facd5f0931594a41b13a0f3c36632f11b76a12b9bf10f2a2` |
| 51 | `theorem` | [add_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/add-sub.md) | 274 | `result-track:8f0934feb741186e566bf82b13324ca39fbb0e7a688c7824e5f513476ec12547` |
| 52 | `theorem` | [exists_eq_succ_of_ne_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/exists-eq-succ-of-ne-one.md) | 278 | `result-track:456d7d4d3c6691c08331dcedfb440c2e2c6d41435b86570adaf11af7be47ad8d` |
| 53 | `theorem` | [modDivAux_spec](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/moddivaux-spec.md) | 283 | `result-track:2d24814cfd29fee27585f8f014a780abe5a912ee00deb03d110fa7e65b2d76c6` |
| 54 | `theorem` | [mod_add_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/mod-add-div-source-edition-2.md) | 292 | `result-track:a602900704eee8f9238b1a8983d555921595f266ad007c3eccdbbe4c26d82027` |
| 55 | `theorem` | [div_add_mod](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/div-add-mod-source-edition-2.md) | 301 | `result-track:fe5cec4da4d0f44864f609a85b683e8b297560c08a12d774a4a344f9bc782075` |
| 56 | `theorem` | [mod_add_div'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/mod-add-div.md) | 304 | `result-track:73e805b78fe679ca4ccdcf5c6362139b2bc0f17f0616689ef2fddfc8487af752` |
| 57 | `theorem` | [div_add_mod'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/div-add-mod.md) | 308 | `result-track:b0bcebbdd77818503c77e8402a8eb35162b6291168eb69276a96854be74baa03` |
| 58 | `theorem` | [mod_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/mod-le.md) | 312 | `result-track:3ac5d8214433259704937829ca4a572ca0621d7c02a67c797a168549e2c72089` |
| 59 | `theorem` | [dvd_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/dvd-iff-source-edition-2.md) | 323 | `result-track:9693ccf7d7772c1a17d919f13f80f58c44ba4697a8af463b00949b60bec18042` |
| 60 | `theorem` | [dvd_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/dvd-iff.md) | 334 | `result-track:129828ee82630e432bef3f6f943437022cadb6a55d10add3d4d2b9f2f399636d` |
| 61 | `theorem` | [le_of_dvd](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/le-of-dvd.md) | 347 | `result-track:2252a8b27f63f7223cd28b93a73fa6e7c1aa42217d0e7a0fe043a4305cc06a3c` |
| 62 | `theorem` | [mul_div_exact](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/mul-div-exact.md) | 353 | `result-track:dcd0b4cd9efc958ba0b18451c9b983685d9e277658ac27759979a09469969272` |
| 63 | `theorem` | [dvd_antisymm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/dvd-antisymm.md) | 358 | `result-track:36e132640041d2f44785aaa2444076e7ea7674d7ce6f3dff87c277b1a32f6c6d` |
| 64 | `theorem` | [dvd_one_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/dvd-one-iff.md) | 361 | `result-track:360e57fd2a5c031fb5f9cac4c126604262908365e0a6e9c8592ebdc53e14af11` |
| 65 | `theorem` | [pos_of_div_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedPublic.lean/declarations/pos-of-div-pos.md) | 364 | `result-track:fb0bb0ed695674a3d89c2cdab3318bec20b0f8f2973bbee9d8e075f27977700f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b59e42ecf7028ee80d9d7600785e3ecde8c9e8baf412332ffb9f06ea58f9c4ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0107a16b6f27f7d360c5947586cf66c4af176b3cf41e411a2d8b1ef40471d80d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0107a16b6f27f7d360c5947586cf66c4af176b3cf41e411a2d8b1ef40471d80d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
