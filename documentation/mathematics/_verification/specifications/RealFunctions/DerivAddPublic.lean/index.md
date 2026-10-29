# Verification target: Deriv Add Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "240c7d41e7793d435af0d76db13ec9934d2bc411",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Add/Variant0c337370d60b27ce270b4efb71ecf5c7a2a11ddf2cda2ad19ba1049d7174b47c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/DerivAddPublic.lean/index.md) · [Full source](../../../../RealFunctions/DerivAddPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `240c7d41e7793d435af0d76db13ec9934d2bc411`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Add/Variant0c337370d60b27ce270b4efb71ecf5c7a2a11ddf2cda2ad19ba1049d7174b47c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Add/Variant0c337370d60b27ce270b4efb71ecf5c7a2a11ddf2cda2ad19ba1049d7174b47c.lean.json)

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
| 1 | `theorem` | [HasDerivAtFilter.add](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivatfilter-add.md) | 44 | `result-track:4d0150fe36abc56e4ad3a1d9dfd328382f514071d2ec1ad1883ec0edfaccbbc1` |
| 2 | `theorem` | [HasStrictDerivAt.add](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasstrictderivat-add.md) | 49 | `result-track:3977264c0fa3c3844ba95546537991bb1d14a07733f0df963092458497c31e8a` |
| 3 | `theorem` | [HasDerivWithinAt.add](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivwithinat-add.md) | 54 | `result-track:588e5ba20d2ab35b1c2540cdc69b322365accf42eb7fae4cb0e1f521c6f8a3d7` |
| 4 | `theorem` | [HasDerivAt.add](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivat-add.md) | 59 | `result-track:8087a44b044939c7300915458a525b46efb0974d91af574511c04f5e84f9944b` |
| 5 | `theorem` | [derivWithin_fun_add](../../../../RealFunctions/DerivAddPublic.lean/declarations/derivwithin-fun-add.md) | 63 | `result-track:b2caed8377139fbfe0766fba08feac8bde17333ed2c39d743c07d0551b21e784` |
| 6 | `theorem` | [derivWithin_add](../../../../RealFunctions/DerivAddPublic.lean/declarations/derivwithin-add.md) | 70 | `result-track:00edacca26626046e2256f35c85c325c265224f078f9696b98dc0fd1cd2dc39e` |
| 7 | `theorem` | [deriv_fun_add](../../../../RealFunctions/DerivAddPublic.lean/declarations/deriv-fun-add.md) | 76 | `result-track:5a8b18aacb8480326fbdf02a5b54290fdcbe5524efa4f5464860deaa0601ca6c` |
| 8 | `theorem` | [deriv_add](../../../../RealFunctions/DerivAddPublic.lean/declarations/deriv-add.md) | 81 | `result-track:f0421a2acf0e290cf9ea36b81f35a5d382f22361979b163a519c874dc5028c9b` |
| 9 | `theorem` | [hasDerivAtFilter_add_const_iff](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivatfilter-add-const-iff.md) | 86 | `result-track:83c53737be3630c07c37b5afee9187afba8ad28a743f52e78b42608ff1faa4c0` |
| 10 | `theorem` | [hasStrictDerivAt_add_const_iff](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasstrictderivat-add-const-iff.md) | 93 | `result-track:8ad8cae674f12de16a10f1bd79b660c4058901d8843db37ee4d25737dbd18650` |
| 11 | `theorem` | [hasDerivWithinAt_add_const_iff](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivwithinat-add-const-iff.md) | 100 | `result-track:aeb1b8553960e9cd826402729e30387116c5d7daa7f5ca1577fac52829608143` |
| 12 | `theorem` | [hasDerivAt_add_const_iff](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivat-add-const-iff.md) | 107 | `result-track:7338d146d728b01450a745f98600e946523efe67ff141d3de7cbaf518ba1b649` |
| 13 | `theorem` | [derivWithin_add_const](../../../../RealFunctions/DerivAddPublic.lean/declarations/derivwithin-add-const.md) | 112 | `result-track:98addb83da3775922dba59f051c39fbacf4538af8197734786f64139bd493d27` |
| 14 | `theorem` | [deriv_add_const](../../../../RealFunctions/DerivAddPublic.lean/declarations/deriv-add-const.md) | 116 | `result-track:31663eb5cfc9e9fa6736965895324bbef27b3c0652d0c2c0f837118578a7352b` |
| 15 | `theorem` | [deriv_add_const'](../../../../RealFunctions/DerivAddPublic.lean/declarations/deriv-add-const-source-edition-2.md) | 120 | `result-track:b1f23744a33b46533873f12605d9b165d75209257f4b86c6e764f871c81716ff` |
| 16 | `theorem` | [hasDerivAtFilter_const_add_iff](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivatfilter-const-add-iff.md) | 123 | `result-track:5090635576331248d6601b099cbe12952dd08b415b496598b247ab876a4b4e41` |
| 17 | `theorem` | [hasStrictDerivAt_const_add_iff](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasstrictderivat-const-add-iff.md) | 130 | `result-track:47799f8dada1f8d3fcb271cecc692b3d01865e8b04b13c305d631b4c1e80cb0e` |
| 18 | `theorem` | [hasDerivWithinAt_const_add_iff](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivwithinat-const-add-iff.md) | 137 | `result-track:e0f90a9591117a13cfbff8c190fd76aa99dca287c019c2941069e3c8d9417430` |
| 19 | `theorem` | [hasDerivAt_const_add_iff](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivat-const-add-iff.md) | 144 | `result-track:0cb6a955d2c6b82a0bffa52eacbe8b0b235fba12148b087f83e47dbf36ad7f19` |
| 20 | `theorem` | [derivWithin_const_add](../../../../RealFunctions/DerivAddPublic.lean/declarations/derivwithin-const-add.md) | 149 | `result-track:9666fb82ca84b5f9de61b9a60588cdc5137a5e9ea1c9f44926f93da791dbafb1` |
| 21 | `theorem` | [derivWithin_const_add_fun](../../../../RealFunctions/DerivAddPublic.lean/declarations/derivwithin-const-add-fun.md) | 154 | `result-track:e8dd631ef81adada6a853e018729b43ebf9989984f3b1bb404897ccc989ceafd` |
| 22 | `theorem` | [deriv_const_add](../../../../RealFunctions/DerivAddPublic.lean/declarations/deriv-const-add-source-edition-2.md) | 159 | `result-track:f4c8e9be23d76ba0a45fe3c351fb8d26303d84a5fa21014a58178f6c33d486ab` |
| 23 | `theorem` | [deriv_const_add'](../../../../RealFunctions/DerivAddPublic.lean/declarations/deriv-const-add.md) | 163 | `result-track:dd6aab9fd5da08231f06e7cccfaf2cefd02fcb1130a0807ee7d9b4f2436a9364` |
| 24 | `theorem` | [deriv_const_add_id](../../../../RealFunctions/DerivAddPublic.lean/declarations/deriv-const-add-id-source-edition-2.md) | 166 | `result-track:6b9928dfb2cf2b7ab3a9b96b473862cc9619275dd1e2fd4ecb87e3e33b8ee327` |
| 25 | `theorem` | [deriv_const_add_id'](../../../../RealFunctions/DerivAddPublic.lean/declarations/deriv-const-add-id.md) | 170 | `result-track:1687d947d3df7863887e3a495755608944ef79e3020ddd39ca61dddc9648053f` |
| 26 | `lemma` | [differentiableAt_comp_add_const](../../../../RealFunctions/DerivAddPublic.lean/declarations/differentiableat-comp-add-const.md) | 173 | `result-track:ca2d7dd687d4b32bffc32991acb56067c8f4b0c796d3d69530a4fc7d4f3f31bf` |
| 27 | `lemma` | [differentiableAt_iff_comp_const_add](../../../../RealFunctions/DerivAddPublic.lean/declarations/differentiableat-iff-comp-const-add.md) | 177 | `result-track:6b2ef0e41de5b8f670f608f70773f491ab8ce6b8659e70e90081aec84b0251dd` |
| 28 | `lemma` | [differentiableAt_iff_comp_add_const](../../../../RealFunctions/DerivAddPublic.lean/declarations/differentiableat-iff-comp-add-const.md) | 181 | `result-track:da22d51facf27002751d7554c53ca8c3548b39957248ad7e39949be8a0e2cab6` |
| 29 | `theorem` | [HasDerivAtFilter.fun_sum](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivatfilter-fun-sum.md) | 193 | `result-track:7560bd6b03ff23702bd5ca07148feba08cd7d1185f01e24757eb9f0fa4b54ac1` |
| 30 | `theorem` | [HasDerivAtFilter.sum](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivatfilter-sum.md) | 197 | `result-track:bdbc58e54301ef5b89d83a8a5d656685f248aad239c7e779ab555ff85ee1ea8b` |
| 31 | `theorem` | [HasStrictDerivAt.fun_sum](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasstrictderivat-fun-sum.md) | 202 | `result-track:4d76df428f6a48765aba68fccb79bf0a5e5e5950e5786afa3a8204ba365d92c6` |
| 32 | `theorem` | [HasStrictDerivAt.sum](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasstrictderivat-sum.md) | 206 | `result-track:b331a25917259a225c90bae356ec26158c8bd6c7275da3fbcc77fc71ee690098` |
| 33 | `theorem` | [HasDerivWithinAt.fun_sum](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivwithinat-fun-sum.md) | 210 | `result-track:9144318f53fd9d9ecff04aaf853a8eed04ac3d705843ef8b540e46bc91bf382a` |
| 34 | `theorem` | [HasDerivWithinAt.sum](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivwithinat-sum.md) | 214 | `result-track:f8eebd5a31a3647b0eea706e1d25e2c7317a8d4fef7aad9249b8c658f70eff8c` |
| 35 | `theorem` | [HasDerivAt.fun_sum](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivat-fun-sum.md) | 218 | `result-track:ed5b554f5e4ee01bc54d22c97237e480cc1c3a0f09d9d3e7fd1f82540ecd583e` |
| 36 | `theorem` | [HasDerivAt.sum](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivat-sum.md) | 222 | `result-track:013168b64a5fc9dead46aa1126c980d7dc18d09c045e7d6de8d97ccde238ad7b` |
| 37 | `theorem` | [derivWithin_fun_sum](../../../../RealFunctions/DerivAddPublic.lean/declarations/derivwithin-fun-sum.md) | 226 | `result-track:187f2e0cea36dfe4d1cc334937a08270eed7fb6a4e42e235813868460fc98b10` |
| 38 | `theorem` | [derivWithin_sum](../../../../RealFunctions/DerivAddPublic.lean/declarations/derivwithin-sum.md) | 232 | `result-track:e33fa26b5e4c43f3c49ae29ea93f31a9ffcb73e3c84ae3207ebbe02c080c67df` |
| 39 | `theorem` | [deriv_fun_sum](../../../../RealFunctions/DerivAddPublic.lean/declarations/deriv-fun-sum.md) | 239 | `result-track:ab09541b5c71646fbba824f7b3c295081f15db32c3de73596a209e75bfc8c4d9` |
| 40 | `theorem` | [deriv_sum](../../../../RealFunctions/DerivAddPublic.lean/declarations/deriv-sum.md) | 244 | `result-track:6e3dcd8f6094735622d3b7132823bb59171c80bb31904db739756dc7cdefefd9` |
| 41 | `theorem` | [HasDerivAtFilter.neg](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivatfilter-neg.md) | 255 | `result-track:75952b5fce7251a87f971b6d94755088f4823d38b0f9776cd8b1c43a16307f97` |
| 42 | `theorem` | [HasDerivWithinAt.neg](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivwithinat-neg.md) | 259 | `result-track:185aac10da16bec82c330e4f892efecaddeb544d1c8bf80424a5d7718dce966e` |
| 43 | `theorem` | [HasDerivAt.neg](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivat-neg-source-edition-2.md) | 264 | `result-track:7486b58e735956b0aee9b50e8ba5c659be1c3492136ced768ae44aa141f4393f` |
| 44 | `theorem` | [HasStrictDerivAt.neg](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasstrictderivat-neg-source-edition-2.md) | 268 | `result-track:77bac78bb09cc1d8671baae6d39c8850d126f95519360cd546c1d8a7a3cc1e58` |
| 45 | `theorem` | [derivWithin.neg](../../../../RealFunctions/DerivAddPublic.lean/declarations/derivwithin-neg.md) | 272 | `result-track:287c7d787c2d5803151a2fb8d72c20689d3b9b9b5581a927385928f28df73637` |
| 46 | `theorem` | [deriv.neg](../../../../RealFunctions/DerivAddPublic.lean/declarations/deriv-neg-source-edition-3.md) | 278 | `result-track:cc40ca6dd482a7c7ce5198770b03315fa4257f864676b42cb66c1a0bd89920c0` |
| 47 | `theorem` | [deriv.neg'](../../../../RealFunctions/DerivAddPublic.lean/declarations/deriv-neg-source-edition-4.md) | 282 | `result-track:d3f719470a3e6b99a4803bbedf4e47697cecad4e0aa29f349d4ab3333a7aaa56` |
| 48 | `theorem` | [hasDerivAtFilter_neg](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivatfilter-neg-source-edition-2.md) | 293 | `result-track:bb470ca67397e3629e1efff4bde62d15acc08638e1c84c7cdb25b3a1c25da9ba` |
| 49 | `theorem` | [hasDerivWithinAt_neg](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivwithinat-neg-source-edition-2.md) | 296 | `result-track:b7358bb7684100640492ef439c66d510156f575ec159185f990bd69c9f9098a9` |
| 50 | `theorem` | [hasDerivAt_neg](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivat-neg-source-edition-3.md) | 299 | `result-track:b168094bd606df8e6147a0ccd363d7aabe96a2a9307bb0b34216d20a8f3996c8` |
| 51 | `theorem` | [hasDerivAt_neg'](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivat-neg.md) | 302 | `result-track:59a158e4753a9bdb5bc37266fc04b18bf5dfdea3734413be41e71520b73fe897` |
| 52 | `theorem` | [hasStrictDerivAt_neg](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasstrictderivat-neg.md) | 305 | `result-track:17e22875efe30889a949fea9aa6712e1b0e2ceb031c259033ce509c8493223df` |
| 53 | `theorem` | [deriv_neg](../../../../RealFunctions/DerivAddPublic.lean/declarations/deriv-neg-source-edition-2.md) | 308 | `result-track:96ea555a116c73d8a5a1155f2934583d59aa474b3c264e01428c755fd605c416` |
| 54 | `theorem` | [deriv_neg'](../../../../RealFunctions/DerivAddPublic.lean/declarations/deriv-neg.md) | 312 | `result-track:43664d29d8c98baa5f9154a994d39a97999f2b6d67709149965f85ac74133843` |
| 55 | `theorem` | [deriv_neg''](../../../../RealFunctions/DerivAddPublic.lean/declarations/deriv-neg-source-edition-5.md) | 316 | `result-track:fb19e21e8008f6624c5e0f7382aaf6ab83a4e8effba06f57edc3666f26164603` |
| 56 | `theorem` | [derivWithin_neg](../../../../RealFunctions/DerivAddPublic.lean/declarations/derivwithin-neg-source-edition-2.md) | 319 | `result-track:e99b712e1d873672fb43067333f4b51afb8f76a0602854c4e4b745c35b74cb86` |
| 57 | `theorem` | [differentiable_neg](../../../../RealFunctions/DerivAddPublic.lean/declarations/differentiable-neg.md) | 322 | `result-track:1486c454cd8a794b16d382e92d2b208e5ccbf6c7d03c410dbc1c09ade55b8f1b` |
| 58 | `theorem` | [differentiableOn_neg](../../../../RealFunctions/DerivAddPublic.lean/declarations/differentiableon-neg.md) | 325 | `result-track:31bcc2690d129aa1468a113c38a1557f524535899d9f04111e72449864ffa809` |
| 59 | `lemma` | [differentiableAt_comp_neg](../../../../RealFunctions/DerivAddPublic.lean/declarations/differentiableat-comp-neg.md) | 328 | `result-track:5ade3cd0e4ee153e6a613ec83269fab7f7a88892f28b29ec7842cd79eac9155a` |
| 60 | `lemma` | [differentiableAt_iff_comp_neg](../../../../RealFunctions/DerivAddPublic.lean/declarations/differentiableat-iff-comp-neg.md) | 335 | `result-track:ec5ba91cd2aca95284990ea327f27a2ffeb85c2813b5ae702aba18330aa8b6c3` |
| 61 | `theorem` | [HasDerivAtFilter.sub](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivatfilter-sub.md) | 346 | `result-track:93b8c46d96cb230442f0bdf3dda938c4d9627c3c0c40c9455778e0acaf06ac1c` |
| 62 | `theorem` | [HasDerivWithinAt.sub](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivwithinat-sub.md) | 351 | `result-track:8843dbb00f2ef684f97460bec0f43756f71a26813be5f0c26e1e4fdaf85ec5d3` |
| 63 | `theorem` | [HasDerivAt.sub](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivat-sub.md) | 356 | `result-track:31cb9c044dabde02e7841b3987a1eeb46b7785a716b2eada745b9a715d7701f5` |
| 64 | `theorem` | [HasStrictDerivAt.sub](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasstrictderivat-sub.md) | 361 | `result-track:c85382abfd75f5b50d348e23810392575fc6ad60e7b477b84d161a9ca711c728` |
| 65 | `theorem` | [derivWithin_fun_sub](../../../../RealFunctions/DerivAddPublic.lean/declarations/derivwithin-fun-sub.md) | 365 | `result-track:9f97ac22fb365c32b22d2b122163f1f10c03062a31a70d5988b4d3ca0bde0258` |
| 66 | `theorem` | [derivWithin_sub](../../../../RealFunctions/DerivAddPublic.lean/declarations/derivwithin-sub.md) | 370 | `result-track:a950120f908fe0e5c968af89b0b72ae4dcec6bbbf60382282c24c9f1a9c3b0a5` |
| 67 | `theorem` | [deriv_fun_sub](../../../../RealFunctions/DerivAddPublic.lean/declarations/deriv-fun-sub.md) | 376 | `result-track:ad43298fac1067a50d6276e54139d8886d29a0d54da1dabfe6e2d89b32e5b0d5` |
| 68 | `theorem` | [deriv_sub](../../../../RealFunctions/DerivAddPublic.lean/declarations/deriv-sub.md) | 381 | `result-track:cc3a1c8c3aad9f103b576ba7b814d3aaa30518e117c7a6acc735ef44c1136272` |
| 69 | `theorem` | [hasDerivAtFilter_sub_const_iff](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivatfilter-sub-const-iff.md) | 386 | `result-track:3047847c1827ed751fa41587c3268003b778a462000ee3733b4bee45d8e9a511` |
| 70 | `theorem` | [hasDerivWithinAt_sub_const_iff](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivwithinat-sub-const-iff.md) | 393 | `result-track:69df8ec5e8fda2f122a1b9980ded318382bd3cd12f8fb6b6368f299bf4bb4632` |
| 71 | `theorem` | [hasDerivAt_sub_const_iff](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivat-sub-const-iff.md) | 400 | `result-track:64e4b4a5b5f03cca21b831a205614acd6833bced8c1c5f4543ef1ab1a57478d7` |
| 72 | `theorem` | [derivWithin_sub_const](../../../../RealFunctions/DerivAddPublic.lean/declarations/derivwithin-sub-const.md) | 405 | `result-track:da5094069926e9bf09920cf91689e922a7cfbe902ccab01f6865b4169ba88e9c` |
| 73 | `theorem` | [derivWithin_sub_const_fun](../../../../RealFunctions/DerivAddPublic.lean/declarations/derivwithin-sub-const-fun.md) | 410 | `result-track:c8932a36c5eb4415a6b7ecbba4b5506a6b8b50735c5fa4eee9e43f59c0086bb8` |
| 74 | `theorem` | [deriv_sub_const](../../../../RealFunctions/DerivAddPublic.lean/declarations/deriv-sub-const.md) | 414 | `result-track:e5472de642a4ed511c2d6533d03ef60ca85eeba95baec8dac06670bf01fd389b` |
| 75 | `theorem` | [deriv_sub_const_fun](../../../../RealFunctions/DerivAddPublic.lean/declarations/deriv-sub-const-fun.md) | 418 | `result-track:835d65192beebc0de23f0e5968f3ebbe4b14757ed85b53df1b14adc2260449d8` |
| 76 | `theorem` | [HasDerivAtFilter.const_sub](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivatfilter-const-sub.md) | 422 | `result-track:5d2d3bd412e2a03508da20ab4d190050edaf1603592e03afb194923c3f71fb15` |
| 77 | `theorem` | [HasDerivWithinAt.const_sub](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivwithinat-const-sub.md) | 426 | `result-track:6273694c3fead375d3604e245813ca2e8e0aabdb4d93057b1e21219ee13ebf01` |
| 78 | `theorem` | [HasStrictDerivAt.const_sub](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasstrictderivat-const-sub.md) | 430 | `result-track:507b7bcf527bdf754110b934085d31fd6cb7ef36e9d65c196a2b683ff41c9d8e` |
| 79 | `theorem` | [HasDerivAt.const_sub](../../../../RealFunctions/DerivAddPublic.lean/declarations/hasderivat-const-sub.md) | 434 | `result-track:b74c8c33da19d9225554b148258fc0a33e3248c13e9c3b4e5f64d987bef87374` |
| 80 | `theorem` | [derivWithin_const_sub](../../../../RealFunctions/DerivAddPublic.lean/declarations/derivwithin-const-sub.md) | 438 | `result-track:b7af6d3c9ba054effd96820e74a39d3a72f42bbb86c80f6d9ba88b45421a6d4a` |
| 81 | `theorem` | [deriv_const_sub](../../../../RealFunctions/DerivAddPublic.lean/declarations/deriv-const-sub.md) | 442 | `result-track:5d3d19880293eeffc3cdd407c39e7c11ae10b3baeb3eb45bb5e0e2083757ac07` |
| 82 | `theorem` | [deriv_const_sub'](../../../../RealFunctions/DerivAddPublic.lean/declarations/deriv-const-sub-source-edition-2.md) | 446 | `result-track:ea8dd55ba98a092879ba7a594e9471012c5d07732c237b6077cc5baa32b54e51` |
| 83 | `theorem` | [deriv_const_sub_id](../../../../RealFunctions/DerivAddPublic.lean/declarations/deriv-const-sub-id.md) | 449 | `result-track:36981b9834d89fbe9902e530f452909b985f3815b199d70523b5b5eb41fd70ae` |
| 84 | `theorem` | [deriv_const_sub_id'](../../../../RealFunctions/DerivAddPublic.lean/declarations/deriv-const-sub-id-source-edition-2.md) | 453 | `result-track:f060f6de94a26f23c58b1429b695a87be092e7e9d90566ab4cb288be470ae207` |
| 85 | `lemma` | [differentiableAt_comp_sub_const](../../../../RealFunctions/DerivAddPublic.lean/declarations/differentiableat-comp-sub-const.md) | 456 | `result-track:6d38ed15468a714cf770c987d650c2cd0dbcd499abcee6f2ce338dd4f9b04494` |
| 86 | `lemma` | [differentiableAt_comp_const_sub](../../../../RealFunctions/DerivAddPublic.lean/declarations/differentiableat-comp-const-sub.md) | 460 | `result-track:f0eeba9348392bfd0f61c34fc587dc75266a3dbea80d444d7387d6906a06c19d` |
| 87 | `lemma` | [differentiableAt_iff_comp_sub_const](../../../../RealFunctions/DerivAddPublic.lean/declarations/differentiableat-iff-comp-sub-const.md) | 468 | `result-track:76730d620abe6d91f828cdb2415bfe844152f689ff4a7362c4a7d39db5d44509` |
| 88 | `lemma` | [differentiableAt_iff_comp_const_sub](../../../../RealFunctions/DerivAddPublic.lean/declarations/differentiableat-iff-comp-const-sub.md) | 472 | `result-track:5be19c5b610b29df59b31d64b461848ac6b8124e872d8e0bdde8f84625cdb806` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76ff2c1568409b6f89e768bd5253c35f03b222e7f05d7d494b310c0635a27b8f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Add/Variant0c337370d60b27ce270b4efb71ecf5c7a2a11ddf2cda2ad19ba1049d7174b47c.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Add/Variant0c337370d60b27ce270b4efb71ecf5c7a2a11ddf2cda2ad19ba1049d7174b47c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
