# Verification target: To Dual Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db82bbba50c3c8f95902978ff8fd377bbae6afcc",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ToDual/Variant0277fa3aadcb1a3c5dd2fea601f9362e3a63700788209ca7eb77cac723290b35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ToDualPublic.lean/index.md) · [Full source](../../../../Combinatorics/ToDualPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db82bbba50c3c8f95902978ff8fd377bbae6afcc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ToDual/Variant0277fa3aadcb1a3c5dd2fea601f9362e3a63700788209ca7eb77cac723290b35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ToDual/Variant0277fa3aadcb1a3c5dd2fea601f9362e3a63700788209ca7eb77cac723290b35.lean.json)

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
| 1 | `class` | [SemilatticeInf](../../../../Combinatorics/ToDualPublic.lean/declarations/semilatticeinf.md) | 12 | `declaration-track:0073dc13bf9f7a12a057ac8c0d6d8da8da98a4e46b034b547535aa9f02b564b1` |
| 2 | `class` | [SemilatticeSup](../../../../Combinatorics/ToDualPublic.lean/declarations/semilatticesup.md) | 17 | `declaration-track:bb15279d1f2f1665515e62f919e9bbb0ca469764cb96229085a20adf0864c95e` |
| 3 | `lemma` | [SemilatticeInf.le_inf'](../../../../Combinatorics/ToDualPublic.lean/declarations/semilatticeinf-le-inf.md) | 21 | `result-track:916d68ef5010a28413970033cef3d6e5cd7b6f90bc54a863464acbfe038ec745` |
| 4 | `lemma` | [SemilatticeSup.sup_le'](../../../../Combinatorics/ToDualPublic.lean/declarations/semilatticesup-sup-le.md) | 25 | `result-track:c0c55cc25722d396f5d19eeb50a70c1c32aff94bfd1ba4c2db66e6ffc30d9e2c` |
| 5 | `structure` | [Lattice](../../../../Combinatorics/ToDualPublic.lean/declarations/lattice.md) | 28 | `declaration-track:b108d26a6c9edb31dc5d0e2bb6839e629c11f74419c66fb364d715549500557f` |
| 6 | `def` | [le_inf_test](../../../../Combinatorics/ToDualPublic.lean/declarations/le-inf-test.md) | 34 | `declaration-track:8ad46fcbf10beee24b717a8b36040979c1e0822c93700a66276d757de42703b1` |
| 7 | `theorem` | [SemilatticeSup.ext](../../../../Combinatorics/ToDualPublic.lean/declarations/semilatticesup-ext.md) | 40 | `result-track:bf0b675973fff12b94035d52af31640f054fbbb463c466ff4479615a84ee1a95` |
| 8 | `def` | [SemilatticeSup.casesOn'](../../../../Combinatorics/ToDualPublic.lean/declarations/semilatticesup-caseson.md) | 49 | `declaration-track:98dbf0724e3f1a3eec4dac5eee35a46e510c6193b6eb8e0142370f6e2354057c` |
| 9 | `class` | [Semilattice](../../../../Combinatorics/ToDualPublic.lean/declarations/semilattice.md) | 68 | `declaration-track:6236fc30e61546c968d46435a0d5b6a7da96cff5419ea3df7c6daa1e369ff26c` |
| 10 | `def` | [SemilatticeSup.foo](../../../../Combinatorics/ToDualPublic.lean/declarations/semilatticesup-foo.md) | 75 | `declaration-track:2aa14ed60afe65591b9b33243ddddfd11819d08b79379aa4173d20c76f11fa90` |
| 11 | `theorem` | [le_imp_le](../../../../Combinatorics/ToDualPublic.lean/declarations/le-imp-le-source-edition-2.md) | 89 | `result-track:a61953626f567daef4b504d19a3e5bd0d13d8889ece0ee150cd46db094cde160` |
| 12 | `theorem` | [le_imp_le'](../../../../Combinatorics/ToDualPublic.lean/declarations/le-imp-le.md) | 100 | `result-track:1fffb87f287e47e673bf293e458318bae982413079c52861d7d85d3be2be04b4` |
| 13 | `theorem` | [le_imp_le_of_forall](../../../../Combinatorics/ToDualPublic.lean/declarations/le-imp-le-of-forall.md) | 111 | `result-track:296ba7924f4ed40f84ec0eb75be5aabafacdfd248c3ffd2a7d2e7cab0f288192` |
| 14 | `theorem` | [le_imp_le''](../../../../Combinatorics/ToDualPublic.lean/declarations/le-imp-le-source-edition-3.md) | 122 | `result-track:aac4fade707c5900b99115bcef383b67535b3b039c8bdad5720e5bf94d9e0be9` |
| 15 | `theorem` | [le_imp_le'''](../../../../Combinatorics/ToDualPublic.lean/declarations/le-imp-le-source-edition-4.md) | 140 | `result-track:b347aeb889d1370f419ecc52dede08e474927d45c8fd6eb2a33c978b977d63bb` |
| 16 | `theorem` | [refl₁](../../../../Combinatorics/ToDualPublic.lean/declarations/refl-source-edition-2.md) | 144 | `result-track:6bf4c3793528762ca2c33fcd0b84873d35997af0d6da0f9189e27c12e9411558` |
| 17 | `theorem` | [refl₂](../../../../Combinatorics/ToDualPublic.lean/declarations/refl.md) | 147 | `result-track:42fc9d19b2e049c9e2df463e6afe5fde8001de45ae1049f4ded6c2c09b3c85fa` |
| 18 | `theorem` | [one_le_one](../../../../Combinatorics/ToDualPublic.lean/declarations/one-le-one.md) | 160 | `result-track:6c66c170bbbf7fb627d723a22c40d687b641d1ec05544a4f033609a55ca2d950` |
| 19 | `theorem` | [bot_eq_top](../../../../Combinatorics/ToDualPublic.lean/declarations/bot-eq-top.md) | 164 | `result-track:65982b3567a0a9c3f0e4dd4d93c56f797a7e8428edacedfce973d698ff3f634f` |
| 20 | `theorem` | [le_lt_trans](../../../../Combinatorics/ToDualPublic.lean/declarations/le-lt-trans.md) | 173 | `result-track:a26fe3f4d1fc282f105dcbc9b6c200035b2dc8771200250f5c6bc0ba21e69c4f` |
| 21 | `theorem` | [le_refl'](../../../../Combinatorics/ToDualPublic.lean/declarations/le-refl.md) | 176 | `result-track:258f463c54459bc11e9e6da8de94b438f6e4043fde651cd39631c1c8ef306d09` |
| 22 | `instance` | [Prop.le](../../../../Combinatorics/ToDualPublic.lean/declarations/prop-le.md) | 190 | `declaration-track:9e26a71ffcca572ae32ec60a88263eacf86dd58fb9f322032e534499e02cb7bb` |
| 23 | `theorem` | [Prop.le_of_imp](../../../../Combinatorics/ToDualPublic.lean/declarations/prop-le-of-imp.md) | 194 | `result-track:1c62b25a9c7675c9970c35fd2c0363e53aa16741ce72cd566dc17fd9eeb530b6` |
| 24 | `def` | [lt_sum_eq_of_le](../../../../Combinatorics/ToDualPublic.lean/declarations/lt-sum-eq-of-le.md) | 206 | `declaration-track:363f16f37d0a96d92c7d027a4d0985cda37fca7948ad679e52e65b026c874716` |
| 25 | `abbrev` | [DecidableLE1](../../../../Combinatorics/ToDualPublic.lean/declarations/decidablele1.md) | 212 | `declaration-track:696e56f11b3a979b2301506350fd667218d0d604d0a7605643df2a7e2096e534` |
| 26 | `abbrev` | [DecidableLE2](../../../../Combinatorics/ToDualPublic.lean/declarations/decidablele2.md) | 215 | `declaration-track:373ba2ea9dbe4aa11ffd232a18ca390b15bbfee3fcb36ec92f4f6c2b95d9be25` |
| 27 | `def` | [DecidableLE3](../../../../Combinatorics/ToDualPublic.lean/declarations/decidablele3.md) | 232 | `declaration-track:aef44c93d6faa75b8eb493c82009372c86084d116855ed867aa05f2cc8106f6d` |
| 28 | `def` | [DecidableLE4](../../../../Combinatorics/ToDualPublic.lean/declarations/decidablele4.md) | 235 | `declaration-track:128af15895d0992fcfc763ad4e99ad539807c8b309dc54abedf6455f044e2cf7` |
| 29 | `def` | [Cov.Ico](../../../../Combinatorics/ToDualPublic.lean/declarations/cov-ico.md) | 265 | `declaration-track:6cec7712b610c54a11cb98ce300d9da9e99d998824bf1283039cf0750e0ab888` |
| 30 | `def` | [Cov.Ioc](../../../../Combinatorics/ToDualPublic.lean/declarations/cov-ioc.md) | 269 | `declaration-track:b4020f9fd1755d84d4ef2a128fb97c5bb40001a85ec6c377611c0ad1f812a212` |
| 31 | `theorem` | [Cov.Ico_def](../../../../Combinatorics/ToDualPublic.lean/declarations/cov-ico-def.md) | 274 | `result-track:85c70b15f4e8175b600579bf2da6b23c85bbd265ae5c540458913e6696cd9a57` |
| 32 | `def` | [Top.autoParamTest](../../../../Combinatorics/ToDualPublic.lean/declarations/top-autoparamtest.md) | 314 | `declaration-track:11ed89aee34b7b96a5efc0e80069c51bf7f71d7a46739883e1d6aa20f75196b5` |
| 33 | `def` | [nonemptyIcc](../../../../Combinatorics/ToDualPublic.lean/declarations/nonemptyicc.md) | 321 | `declaration-track:09ca40f4ab39e899c0fc2dcf2f80877dc15bc3901a1ea71d0a6a2bb417f38b0a` |
| 34 | `inductive` | [WithBot](../../../../Combinatorics/ToDualPublic.lean/declarations/withbot.md) | 326 | `declaration-track:11022a44d8cffc728721d57b37fa364ac10aae11105e3a878755c531a0be2b3f` |
| 35 | `inductive` | [WithTop](../../../../Combinatorics/ToDualPublic.lean/declarations/withtop.md) | 331 | `declaration-track:7ca394edf64f0a6691134f237e809493825027a31e762bede5749d8f2783c4c5` |
| 36 | `inductive` | [WithBot.LE](../../../../Combinatorics/ToDualPublic.lean/declarations/withbot-le.md) | 335 | `declaration-track:7a1f60ac8f45cce8592d5829f6dbb8dcf2e3d116b1028ef91dd59a4b449e4300` |
| 37 | `inductive` | [WithTop.LE](../../../../Combinatorics/ToDualPublic.lean/declarations/withtop-le.md) | 340 | `declaration-track:22aa2051550e5c2f840061825ddf682f2059a01176eecc7e23dc232faa7c12aa` |
| 38 | `instance` | [WithBot.instLE](../../../../Combinatorics/ToDualPublic.lean/declarations/withbot-instle.md) | 345 | `declaration-track:6bc0cb174ffd51b98d3d544f76b943709114f98ff60a8472a65ada9c6577430a` |
| 39 | `example` | [(anonymous)](../../../../Combinatorics/ToDualPublic.lean/declarations/example.md) | 347 | `declaration-track:c76a6706e619854f08aefc0e22f14f3e4cd3cc59346d257a6ec5c141756d57fd` |
| 40 | `theorem` | [WithBot.coe_le_top](../../../../Combinatorics/ToDualPublic.lean/declarations/withbot-coe-le-top.md) | 351 | `result-track:9a5d99b722e8d3546c5e8645db6334862c352c81721a530c9007bbd6c1306cab` |
| 41 | `abbrev` | [WithBotPrivate](../../../../Combinatorics/ToDualPublic.lean/declarations/withbotprivate.md) | 356 | `declaration-track:fc936356ae7e772c7a4166e5eb57bf6e41aa5cb513251e8a0f4eca0b48a206f2` |
| 42 | `theorem` | [WithBotPrivate.coe_le_top](../../../../Combinatorics/ToDualPublic.lean/declarations/withbotprivate-coe-le-top.md) | 359 | `result-track:014cae44f6e8b8bc8c4592d10faac62d7f9f850177de27000fd78016172eb4ec` |
| 43 | `def` | [renameTest](../../../../Combinatorics/ToDualPublic.lean/declarations/renametest.md) | 366 | `declaration-track:089d8c6fad22256d39e70bba00a1f0c72c24934e979372b44923763b1fbc8a1b` |
| 44 | `theorem` | [eq_of_min_of_max](../../../../Combinatorics/ToDualPublic.lean/declarations/eq-of-min-of-max.md) | 378 | `result-track:84d277e05a9f9167a02ab13570a9668ba595a27077054aba6b60ebd430ed6760` |
| 45 | `theorem` | [le_of_lt_and_le_of_lt](../../../../Combinatorics/ToDualPublic.lean/declarations/le-of-lt-and-le-of-lt.md) | 389 | `result-track:a1e4b5be050907b86de1c7ba4b61fd6dc432334d0c0f3510436ee02ec62590e5` |
| 46 | `def` | [universeTest1.](../../../../Combinatorics/ToDualPublic.lean/declarations/universetest1-source-edition-2.md) | 394 | `declaration-track:f0cc8d62cf492a48c4c77f832c98bf6c125cf6b0379cc351e45cff08d994d405` |
| 47 | `def` | [universeTest1'.](../../../../Combinatorics/ToDualPublic.lean/declarations/universetest1.md) | 396 | `declaration-track:73a2dc20202fe46255acffd15b0ff35844c02c1ac9ee8fcd13c1dc62541dac7b` |
| 48 | `def` | [universeTest2.](../../../../Combinatorics/ToDualPublic.lean/declarations/universetest2.md) | 415 | `declaration-track:85d34ff469d0563ec7f898e4ba923eb6a6985133305b6ea8d9dfd2f27b071473` |
| 49 | `class` | [Category.](../../../../Combinatorics/ToDualPublic.lean/declarations/category.md) | 421 | `declaration-track:8d88b1846c06ec0be3fb470a04922bae22db8cc7d36160c6b99236ce00b94ec3` |
| 50 | `structure` | [Comma](../../../../Combinatorics/ToDualPublic.lean/declarations/comma.md) | 425 | `declaration-track:d824df2de5a1f0bb1eb0643359541de473974d00413dc562bf96d9e34edc1f10` |
| 51 | `axiom` | [HLE](../../../../Combinatorics/ToDualPublic.lean/declarations/hle.md) | 428 | `declaration-track:bbc5eccc23c07fb68328319bceeed8b2e5f55d44383ad756884a0324c9f1c818` |
| 52 | `axiom` | [hle_trans](../../../../Combinatorics/ToDualPublic.lean/declarations/hle-trans.md) | 431 | `declaration-track:43c543f0c18391e76c05d24440b93b44150598b0d66d65cdba844f7f6dd8b3d4` |
| 53 | `structure` | [HasLimitsOfSize](../../../../Combinatorics/ToDualPublic.lean/declarations/haslimitsofsize.md) | 452 | `declaration-track:92de0b26bf92a2046c309b8ca67746afaac078ce207a3dfd7d1b284098954295` |
| 54 | `structure` | [HasColimitsOfSize](../../../../Combinatorics/ToDualPublic.lean/declarations/hascolimitsofsize.md) | 456 | `declaration-track:2a7ab4d1012c12a2a50514d7cff5713dc72f35076a83d48553aa6e92519840fc` |
| 55 | `def` | [MyLE](../../../../Combinatorics/ToDualPublic.lean/declarations/myle.md) | 462 | `declaration-track:3845728cb7e63daec6fa90d898f915fadc2302019bb4b32c808aa2559f5c2311` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0637c1784d93747c143bc2c98ce0e98b9cf1b8a4962d4fc272213b8aaf2e1e5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ToDual/Variant0277fa3aadcb1a3c5dd2fea601f9362e3a63700788209ca7eb77cac723290b35.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ToDual/Variant0277fa3aadcb1a3c5dd2fea601f9362e3a63700788209ca7eb77cac723290b35.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
