# Verification target: Equiv Prod Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de0edaede351751ab2eac188008031aa301f1445",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Varianta3cb00b5939719d46d859426e052f74bcb011e92184b01d4b6de9338e91d1bca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de0edaede351751ab2eac188008031aa301f1445`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Varianta3cb00b5939719d46d859426e052f74bcb011e92184b01d4b6de9338e91d1bca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Varianta3cb00b5939719d46d859426e052f74bcb011e92184b01d4b6de9338e91d1bca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Contrapose` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pprodEquivProd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/pprodequivprod.md) | 44 | `declaration-track:61f396bbe519247d63a07d1c4ccacd0c7a209b27a5cc48ccebb54b1918d13414` |
| 2 | `def` | [pprodCongr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/pprodcongr.md) | 53 | `declaration-track:ecd39f6bad414bf145199622add116464f8f4b6da277f0ec36b21346b9531e69` |
| 3 | `def` | [pprodProd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/pprodprod.md) | 61 | `declaration-track:ba31c47093f4d2bc5a1761391880f5286e34e3dddb945514228cdc8915498ea0` |
| 4 | `def` | [prodPProd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodpprod.md) | 67 | `declaration-track:2290ae02bbb734c18af62f824f1288ab4587c1f784ff92f1603b23c44985e139` |
| 5 | `def` | [pprodEquivProdPLift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/pprodequivprodplift.md) | 73 | `declaration-track:4a702922dbbff4768e118a9e760e2d55fd28166a6b1f56f0fb7808af8f901b48` |
| 6 | `def` | [prodCongr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodcongr.md) | 79 | `declaration-track:db48481fa2ffaa3e4b6d69e88a2ad31819fc977188dfd4f3924ea18e2dbccfbe` |
| 7 | `theorem` | [prodCongr_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodcongr-symm.md) | 83 | `result-track:6b4a357ed432b1f8ab1a9a74dab86266ed13127e8f839b528eafdc2d73471a15` |
| 8 | `def` | [prodComm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodcomm.md) | 89 | `declaration-track:9ac3f18b7e7aa636aae88936cea0d99ed5daa8cb30a7f4ce92f78c8a6e81e7d7` |
| 9 | `theorem` | [coe_prodComm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/coe-prodcomm.md) | 93 | `result-track:b39d3e954542d53194a54ebcc4c0273befc97ba03cbf83043e9b23e717126f39` |
| 10 | `theorem` | [prodComm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodcomm-apply.md) | 97 | `result-track:9dc09966e6239b8987a6d2caf706c036ff0226a5bd879f2e2f8c304d7fb5c34c` |
| 11 | `theorem` | [prodComm_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodcomm-symm.md) | 101 | `result-track:757c60da8079cb27f21d33d3e4ba4150f3623e1c9620da44927a2b000e966db9` |
| 12 | `def` | [prodAssoc](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodassoc.md) | 106 | `declaration-track:bd96c4c3ab781cff09c9b978056f25101e25bb85b80e89e0531fdc65de36d278` |
| 13 | `def` | [prodProdProdComm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodprodprodcomm.md) | 112 | `declaration-track:9278a584f18c06320746da43f626939f28efc34d50b29ded10ba578a331d57a4` |
| 14 | `theorem` | [prodProdProdComm_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodprodprodcomm-symm.md) | 119 | `result-track:85c3b10f385bdf8d5ef70d8537a3dbaa9e6eb4d3be4a50d0a926c9041639adff` |
| 15 | `def` | [curry](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/curry.md) | 125 | `declaration-track:77f51780cd64f458e8f82bf0152dd5398211fa630e1c148297a6720c3e93e64a` |
| 16 | `def` | [prodPUnit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodpunit.md) | 135 | `declaration-track:24f9fd1730d39e3974d87f2e40472ca1983e55f32b13e95bf1200968f4f36fb7` |
| 17 | `def` | [punitProd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/punitprod.md) | 140 | `declaration-track:0d291b3944a689fcf899b8f9c0d3488cdf47d086aa37b6b0f495c20276aa1a20` |
| 18 | `def` | [sigmaPUnit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/sigmapunit.md) | 147 | `declaration-track:451e987612336f02f8e79a3809a96486448593370d302c62b847176121929d50` |
| 19 | `def` | [prodUnique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/produnique.md) | 151 | `declaration-track:b47557bd53d9c60504c268005b57edc174bd51e5e6d1a37eb3c3e409aacbd685` |
| 20 | `theorem` | [coe_prodUnique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/coe-produnique.md) | 155 | `result-track:5c0e1efb165c4ebbc88ecc0709bd0dc82a1361ad562d2138badcd170cbc9ff5d` |
| 21 | `theorem` | [prodUnique_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/produnique-apply.md) | 158 | `result-track:c7a07de03af70d6282db41d2c7307f62ad0a953c38025357c23c60a307c8200a` |
| 22 | `theorem` | [prodUnique_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/produnique-symm-apply.md) | 162 | `result-track:cfe00d351d731006fa0ebe0a15e6f7fb1508c403c7ac8bf61ae61508b6c1610e` |
| 23 | `def` | [uniqueProd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/uniqueprod.md) | 166 | `declaration-track:065ae96f359ae69d071b967fb175c7a1a69265149365b5017cbac06e5e4d107f` |
| 24 | `theorem` | [coe_uniqueProd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/coe-uniqueprod.md) | 170 | `result-track:bdff42e7cf448b366326f81b877733dacf3edca5b50481218d36ddbfbf87fcee` |
| 25 | `theorem` | [uniqueProd_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/uniqueprod-apply.md) | 173 | `result-track:43470a02f0deacc56c51fc93f4bb544e246be49b9c5a4933050e79d4aed0224c` |
| 26 | `theorem` | [uniqueProd_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/uniqueprod-symm-apply.md) | 177 | `result-track:0ce19e0db2c2f87126ae2cedf3db26ac123714eab49e7f216aa668769b126af4` |
| 27 | `def` | [sigmaUnique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/sigmaunique.md) | 183 | `declaration-track:27f1c969cfe361f5ee250d003de4b1516f15b98ea67dc6eb9ebde26d0b6cadc0` |
| 28 | `theorem` | [coe_sigmaUnique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/coe-sigmaunique.md) | 187 | `result-track:855132b8354183c5e5fd834689c8b2eaae61055c4d2b28ae9d941ba7fe0d3d16` |
| 29 | `theorem` | [sigmaUnique_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/sigmaunique-apply.md) | 191 | `result-track:499ece1b562728fbda9b0dd5acc37490161f8ea9f3ceb9d5d67f12f023527ccc` |
| 30 | `theorem` | [sigmaUnique_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/sigmaunique-symm-apply.md) | 196 | `result-track:59eba8be18c90436fbb2330de5b40357b2a389d5ce99e49db707166040a08374` |
| 31 | `def` | [uniqueSigma](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/uniquesigma.md) | 202 | `declaration-track:9d5ecad8acf836d27ea718ec9264e3b7f3467b599930757c3aa48741ffee81f7` |
| 32 | `theorem` | [uniqueSigma_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/uniquesigma-apply.md) | 208 | `result-track:42a8ececcdf9cbb7084118aee4ce021c365caca41fae9d6bb9fa5683524a780f` |
| 33 | `theorem` | [uniqueSigma_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/uniquesigma-symm-apply.md) | 213 | `result-track:b72b4506f1cd5fcb95642838425635f7bb4360bc12bf31a8b72b738a72f993eb` |
| 34 | `def` | [prodEmpty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodempty.md) | 218 | `declaration-track:7746526bd93b06151303ad2a87ef5e5ff3305ee7dcd214d9db214879c8c3a194` |
| 35 | `def` | [emptyProd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/emptyprod.md) | 222 | `declaration-track:59d00a0170044256ab7a1d5a7e14637b3fa5812be8e40f512bbbe613807ad660` |
| 36 | `def` | [prodPEmpty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodpempty.md) | 226 | `declaration-track:a832e0aaeeedd95d377a616557b27c8238444ec0a9574a5cfefd55db77d6922b` |
| 37 | `def` | [pemptyProd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/pemptyprod.md) | 230 | `declaration-track:5d3e98decfda3de715380f4c5d3060d7ee40f73566946d2c091dcec8ed4fe502` |
| 38 | `def` | [prodCongrLeft](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodcongrleft.md) | 241 | `declaration-track:2dd5ccb1c815eea529442336df982aa431b05cf353a8ff7e9326596b25b146e7` |
| 39 | `theorem` | [prodCongrLeft_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodcongrleft-apply.md) | 252 | `result-track:99c032cd6bdee5e1a045c22d27c9417ebe4a2f048bca8189e8b6a56933da3531` |
| 40 | `theorem` | [prodCongr_refl_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodcongr-refl-right.md) | 255 | `result-track:5d931c925dd8b6f5d0bc58edf9f4aae959443681be2a9d04a9e151abf118527a` |
| 41 | `def` | [prodCongrRight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodcongrright.md) | 262 | `declaration-track:f4f27408a9a3735b089043158612367b95353d11b24a2be3d5422cb876c45e3d` |
| 42 | `theorem` | [prodCongrRight_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodcongrright-apply.md) | 273 | `result-track:66c892e368884136837bfcde0f7b60fbfecb0448272ac188fcb9326dc0f0e4d9` |
| 43 | `theorem` | [prodCongr_refl_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodcongr-refl-left.md) | 276 | `result-track:7ff201ad5ea7aa5853129f750ab46443b29d9838732c717c48e71fd880983135` |
| 44 | `theorem` | [prodCongrLeft_trans_prodComm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodcongrleft-trans-prodcomm.md) | 282 | `result-track:449cd70aa8bb1636fce0aae97f018738ac2317c9cfe1d2dfe280615f254a051a` |
| 45 | `theorem` | [prodCongrRight_trans_prodComm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodcongrright-trans-prodcomm.md) | 288 | `result-track:e191831dadd4492a4d0ad13bb83411e2f4b370789747e5ae049eae9bd6e5b4cc` |
| 46 | `theorem` | [sigmaCongrRight_sigmaEquivProd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/sigmacongrright-sigmaequivprod.md) | 293 | `result-track:93619b538d4ca1b43cc7023b850af90b7d471023b6c893154eb9dd5ea2a3bf5e` |
| 47 | `theorem` | [sigmaEquivProd_sigmaCongrRight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/sigmaequivprod-sigmacongrright.md) | 299 | `result-track:978d79efd80156cc614f194c63b923a0f06a713fd7bd53094961c3dff4332716` |
| 48 | `def` | [prodShear](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodshear.md) | 310 | `declaration-track:9cf5e204bfc423565e4614823b65852e697f25cc208a4412afe35513c62567e8` |
| 49 | `def` | [prodExtendRight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodextendright.md) | 328 | `declaration-track:61c674f9f2ae43df48733ff3b0ffbce78a9d237521aa79fc88d4550cc2531a3f` |
| 50 | `theorem` | [prodExtendRight_apply_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodextendright-apply-eq.md) | 347 | `result-track:de32645c1dd3668d1073c57ebacadd00f3e76f4c253813cd384cdde551295b3d` |
| 51 | `theorem` | [prodExtendRight_apply_ne](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodextendright-apply-ne.md) | 350 | `result-track:1fb5e865ccee3fad37a64bd70ed14259e331b175d7dae087b2e82e7bed3cff24` |
| 52 | `theorem` | [eq_of_prodExtendRight_ne](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/eq-of-prodextendright-ne.md) | 354 | `result-track:91b8b766735cdda56272fd2df8982135ce964429bc8a9bb4f114d4448e64a095` |
| 53 | `theorem` | [fst_prodExtendRight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/fst-prodextendright.md) | 360 | `result-track:3853f888906439fc6a7c192cf53af4567e49e39a14c283812ac6d8b1998a7191` |
| 54 | `def` | [arrowProdEquivProdArrow](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/arrowprodequivprodarrow.md) | 374 | `declaration-track:4bfc7918f3021ae1d4f6baf397bb3f5c883191a99c9ef5e93de6d90bc853ad2a` |
| 55 | `def` | [sumPiEquivProdPi](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/sumpiequivprodpi.md) | 386 | `declaration-track:0eba9859377ee6c48bc06c92cf413683c9a17626c896b8f67ce65d1562b8d639` |
| 56 | `def` | [prodPiEquivSumPi](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodpiequivsumpi.md) | 396 | `declaration-track:7d85ddd8e7f87a8d67fe7d11754144a501c17a04a62094bfe5a39cd36e67ec97` |
| 57 | `def` | [sumArrowEquivProdArrow](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/sumarrowequivprodarrow.md) | 402 | `declaration-track:ce153f61e3721de3d27a0aa106d536688b1c67fe7da7655429f30b656996871b` |
| 58 | `theorem` | [sumArrowEquivProdArrow_apply_fst](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/sumarrowequivprodarrow-apply-fst.md) | 408 | `result-track:168d73cbdb0ae6e7367e875f18ca8964f7ffabdc6663e93a1b444f1b21424ba2` |
| 59 | `theorem` | [sumArrowEquivProdArrow_apply_snd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/sumarrowequivprodarrow-apply-snd.md) | 413 | `result-track:f131ec5811d359be3da785128e306e924481743f1820626c4108a96c1a77d5a5` |
| 60 | `theorem` | [sumArrowEquivProdArrow_symm_apply_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/sumarrowequivprodarrow-symm-apply-inl.md) | 418 | `result-track:3a78689096eebdf815679488439ea29c57b7cdd08f8a93b13820af6feadeda9b` |
| 61 | `theorem` | [sumArrowEquivProdArrow_symm_apply_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/sumarrowequivprodarrow-symm-apply-inr.md) | 423 | `result-track:45ebb3a66053efda0f3f6517c81d3d9b17bcd2c1d800208556a7e4fdf2d724e8` |
| 62 | `def` | [sumProdDistrib](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/sumproddistrib.md) | 428 | `declaration-track:e1a06375a3c7f8d775788fac773f324d2f6819ddd289812958fde39618cde13d` |
| 63 | `theorem` | [sumProdDistrib_apply_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/sumproddistrib-apply-left.md) | 434 | `result-track:024299837455c0acac2b8e7b1b3a896e3caeed31bfbc6fbe2a1b0313dc5121e9` |
| 64 | `theorem` | [sumProdDistrib_apply_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/sumproddistrib-apply-right.md) | 439 | `result-track:5c4fda50bbf4d4aa84745934be69e54f641870a26b384c8b4314a828d11b2aca` |
| 65 | `theorem` | [sumProdDistrib_symm_apply_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/sumproddistrib-symm-apply-left.md) | 444 | `result-track:33571df402d9b2fb76b22e03b66c2324878c3a5ee5c263e5e119fe065f75da56` |
| 66 | `theorem` | [sumProdDistrib_symm_apply_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/sumproddistrib-symm-apply-right.md) | 449 | `result-track:3b14a60dae285087feb8c34963cda1099544a0e33448a26f40d1005c22dfb4e1` |
| 67 | `def` | [sigmaProdDistrib](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/sigmaproddistrib.md) | 456 | `declaration-track:e5653ca0c530075907b5420904c1d10d678120dda6b96775762c53cfce1d5432` |
| 68 | `def` | [boolProdEquivSum](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/boolprodequivsum.md) | 465 | `declaration-track:894c5359533537b01343948d255e6f58674b39a330442c26e3d6b4484f56380c` |
| 69 | `def` | [boolArrowEquivProd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/boolarrowequivprod.md) | 473 | `declaration-track:e3994b93936b9ab2dfc72181527e0410ab82ffa467dc20ec902cc3e97536d3db` |
| 70 | `def` | [subtypeProdEquivProd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/subtypeprodequivprod.md) | 487 | `declaration-track:6a112617e381619fd241bc2cab5c74eb85f648ed0bbd1b7b49fb721bc65a04e6` |
| 71 | `def` | [prodSubtypeFstEquivSubtypeProd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/prodsubtypefstequivsubtypeprod.md) | 496 | `declaration-track:8f31ac1f4e6b3a0f4f1d755cb2457eae19a54fc153c349bd372b8aaa0fd9097d` |
| 72 | `def` | [subtypeProdEquivSigmaSubtype](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/subtypeprodequivsigmasubtype.md) | 504 | `declaration-track:47eeb1a65dc094219501cdd26221f9ea6cd6e50da74148b04c98477960694141` |
| 73 | `def` | [piEquivPiSubtypeProd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/piequivpisubtypeprod.md) | 514 | `declaration-track:9f5c3041ddd70f11c8427431b190f26b79112ef71e25e538f89fb3a2c9b5183a` |
| 74 | `def` | [piSplitAt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/pisplitat.md) | 532 | `declaration-track:366c20cb8cb7ef4d53724e9470f910049f78387df3832b100cb46bef9f098b5a` |
| 75 | `def` | [funSplitAt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/funsplitat.md) | 549 | `declaration-track:31b1a8a4c0be163d0b71c7b84b6f8198eb76d0284b06baafb804e041764c6ab6` |
| 76 | `def` | [subsingletonProdSelfEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivProdNamespaced.lean/declarations/subsingletonprodselfequiv.md) | 558 | `declaration-track:d32f33a3fb6bbc868d6741a2b19b536331d2e102c04edf0b90954fd75b67582b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca66a998222508bbdc3992f8b655834ae6bc1face2b972ed51218b8ade64792d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Varianta3cb00b5939719d46d859426e052f74bcb011e92184b01d4b6de9338e91d1bca.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Varianta3cb00b5939719d46d859426e052f74bcb011e92184b01d4b6de9338e91d1bca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
