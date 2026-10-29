# Verification target: Univariate MMPublic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46ecc1e8a814e8ee4f236fefdfc3daa32b6200a9",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variant9f85d534bda332dd45928ffb8d024e3ed82210344dcf337b56c4ddec36e45126.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46ecc1e8a814e8ee4f236fefdfc3daa32b6200a9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variant9f85d534bda332dd45928ffb8d024e3ed82210344dcf337b56c4ddec36e45126.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variant9f85d534bda332dd45928ffb8d024e3ed82210344dcf337b56c4ddec36e45126.lean.json)

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
| 1 | `inductive` | [CofixA](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/cofixa.md) | 33 | `declaration-track:90b27027175c5342156f5a44632048db213567608e0cb27fff9fe357cce9f3a4` |
| 2 | `def` | [CofixA.default](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/cofixa-default.md) | 38 | `declaration-track:49ec1d83c9096d80ee576cbe8ded8232768bc6312a4366bd330f82ccc080114c` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/instance.md) | 42 | `declaration-track:85c3cb476e32f613c2b37589b96f72ddb5826cb561af29b9d823258ed30cf945` |
| 4 | `theorem` | [cofixA_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/cofixa-eq-zero.md) | 45 | `result-track:dac60a23add16a5f744fb1b814e3d56aefe594b8554a02a7ae1ff89a26bb2c6f` |
| 5 | `def` | [head'](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/head.md) | 53 | `declaration-track:3372e8235505e506c15bbad029ab686c3e303921a0674db43ce6c81a788e211d` |
| 6 | `def` | [children'](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/children-source-edition-2.md) | 57 | `declaration-track:8b57020b277ad5f3200f795e1c9c6daf7238adb0f9ae28ba0407363bb8ac8187` |
| 7 | `theorem` | [approx_eta](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/approx-eta.md) | 60 | `result-track:a2c9f8fe1367b3c7d6440e38807d14ddd21db441481540b3c9e74927261ed7bd` |
| 8 | `inductive` | [Agree](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/agree-source-edition-2.md) | 65 | `declaration-track:467487be77fa1be84c74f8576086fc4b3508046d3d88b1092188b98ce7bb6993` |
| 9 | `def` | [AllAgree](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/allagree.md) | 73 | `declaration-track:58412c06390da8576feacc6eaca35c8618f26fdd983d9595c9184f47de0cba71` |
| 10 | `theorem` | [agree_trivial](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/agree-trivial.md) | 77 | `result-track:bf48d050eec647a4dddc2612396ec672376efc4294c50bf2fe7155a5474c085c` |
| 11 | `theorem` | [agree_children](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/agree-children.md) | 79 | `result-track:2656fb51e04c1d79f733e9dfbea65afba1062414fbaf402ca9f7d5b63bee42a6` |
| 12 | `def` | [truncate](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/truncate.md) | 85 | `declaration-track:ee9ab37bbf86a1a8849a90d39ef261c65a7a0d4c78f5687fbc9b4c86aa7e12b1` |
| 13 | `theorem` | [truncate_eq_of_agree](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/truncate-eq-of-agree.md) | 89 | `result-track:7da98735c96aea31c1d0130a8c006104639e18500f5326d642127f7dd18aff23` |
| 14 | `def` | [sCorec](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/scorec.md) | 107 | `declaration-track:52cba5956e0ec2046e839d2a34d503d78bafdf3801395507329929294a235ab1` |
| 15 | `theorem` | [P_corec](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/p-corec.md) | 111 | `result-track:bd6114d55ea50e31b94509b910b87f3e8b6fc38830f56c28e6bf768e37c41fba` |
| 16 | `def` | [Path](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/path.md) | 117 | `declaration-track:d9b837a91f4b6438a0c9d8bc011429988e19c90058ad1b2ca94e12cf2ec8311f` |
| 17 | `instance` | [Path.inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/path-inhabited.md) | 120 | `declaration-track:34bec28c4026b36d05a066cb449eba33f2b3f8b79ca6e9c0a3b28799cc5a3b8b` |
| 18 | `instance` | [CofixA.instSubsingleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/cofixa-instsubsingleton.md) | 123 | `declaration-track:b5bab5860856420600339ff8140714b2be05192821ca72adc6a5799d40f433ee` |
| 19 | `theorem` | [head_succ'](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/head-succ.md) | 126 | `result-track:5c41d5ff686a27e03854721e8818e9182fc733411ae5c79e79f320bae60dc6bd` |
| 20 | `structure` | [MIntl](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/mintl.md) | 141 | `declaration-track:752cec54f18f55ca8fdfc4180e35ab77ae0c1529e4fb05349e8c9d8fec39de3a` |
| 21 | `def` | [M](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/m.md) | 148 | `declaration-track:7b880952907104424775c5f241a4570e5411310c091f57cdb2e63ba447695ee4` |
| 22 | `theorem` | [M.default_consistent](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/m-default-consistent.md) | 151 | `result-track:6e9224fae2c1d2923c8430e390eef61d70eb6489a1939a132df3e4004a9a3309` |
| 23 | `instance` | [MIntl.inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/mintl-inhabited.md) | 155 | `declaration-track:c93c447e33319a3f47803e5b02897347edc303bd956842d8f58e0a0924846e25` |
| 24 | `instance` | [M.inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/m-inhabited.md) | 159 | `declaration-track:408b9e454094bd844a2d095ff870fbcf11d41ea2fcffefb0a5e5479041db1ad7` |
| 25 | `theorem` | [ext'](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/ext.md) | 164 | `result-track:1f7bffe0ea7d7d9ba40400c69d3d0dcde4fcff068d250bca42049b9d0c6a474e` |
| 26 | `def` | [corec](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/corec-source-edition-3.md) | 175 | `declaration-track:d616da2525d835345b33315fdd7eda6a79b69b2c250aa23908672c4087bef9cc` |
| 27 | `def` | [head](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/head-source-edition-2.md) | 181 | `declaration-track:d66f536f1ed63b0d5917ea9a517b0ad9899e6519aa79f154ca24ad32f41d5464` |
| 28 | `def` | [children](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/children.md) | 185 | `declaration-track:79519a31280d08d5eac3831260acbced7cfd2107e09434540387c5b18f186a2c` |
| 29 | `def` | [ichildren](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/ichildren.md) | 199 | `declaration-track:f0f7b7cd51f828961ae3c0e0b5049e2730312304a8a05e2dd6168cc3390125aa` |
| 30 | `theorem` | [head_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/head-succ-source-edition-2.md) | 203 | `result-track:fc6e7f74b6d1caf01691e7f1273a45d1412c1347434da545f4e75cf0153938b8` |
| 31 | `theorem` | [head_eq_head'](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/head-eq-head-source-edition-2.md) | 206 | `result-track:655436a21c4e5a520c44ac8162c35cf08f13f7764db2730701379bbfa0afe7b3` |
| 32 | `theorem` | [head'_eq_head](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/head-eq-head.md) | 209 | `result-track:46a8b1a2205b608d55d2301ceaa9b9a71ea1e7c626b9f6737afcaa7f4151f320` |
| 33 | `theorem` | [truncate_approx](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/truncate-approx.md) | 212 | `result-track:de78fbeaa34e9c9fd5414f690e76dc2e57f0d2d75302f40472603379ac1cb483` |
| 34 | `def` | [dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/dest.md) | 216 | `declaration-track:949a5329175963e929ca16b848247d342061a382e80584bdc3aab74975b61774` |
| 35 | `def` | [sMk](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/smk.md) | 221 | `declaration-track:1bf05047050d30486f63509a680f62701d0b70038d6e9cf8165f63d23bfb007b` |
| 36 | `theorem` | [P_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/p-mk.md) | 225 | `result-track:3bb4565acb46935a9b5596e7a5a537a259d940fdb9df253daa99d7f2c4157980` |
| 37 | `def` | [mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/mk.md) | 235 | `declaration-track:5017a956c6935cc279f9f12ac5d5994d1c3faf95845c026dce0f9820e266d4f1` |
| 38 | `inductive` | [Agree'](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/agree.md) | 241 | `declaration-track:26faf459217a5d89be82ddd8d5de90848e6cfffb6760ce3f6a59b4511f66cbac` |
| 39 | `theorem` | [dest_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/dest-mk.md) | 248 | `result-track:5c6fd479c9daf848e77c57774fe7d1d24ad3af28ecc897e3ffcd9193c58c1e34` |
| 40 | `theorem` | [mk_dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/mk-dest.md) | 251 | `result-track:a4b092e7daa00ab558d68a571e9b79b198474e0033057966a84d9fc80eb4d1b3` |
| 41 | `theorem` | [mk_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/mk-inj.md) | 268 | `result-track:a994537acc8c93693f369d6f4cce90db2b151112fcbf16a07396bd3ff8e7dedd` |
| 42 | `def` | [cases](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/cases.md) | 271 | `declaration-track:fd2de73628afbfe87f9e60aa11b3ee6913eed666a45a9d25dcc1f4d0fa54143e` |
| 43 | `def` | [casesOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/caseson.md) | 278 | `declaration-track:9b10c82743fc5e973e339c8673ebcd20d9b09e7a75bbf8f8c8f7174dee21e142` |
| 44 | `def` | [casesOn'](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/caseson-source-edition-2.md) | 283 | `declaration-track:f93a6ed386e3b090db592bafd89ad941fbe03fe602b87e19655e82f2ed3ac11e` |
| 45 | `theorem` | [approx_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/approx-mk.md) | 286 | `result-track:cd3d5924d094e6ead4858b57e50fd37cdc56c46ba4d505e82a46ba6d9d2ef3e0` |
| 46 | `theorem` | [agree'_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/agree-refl.md) | 291 | `result-track:faf35a0299ebe980870c739d8b231dde7dc00e6d3a98227791fcda186668016d` |
| 47 | `theorem` | [agree_iff_agree'](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/agree-iff-agree.md) | 296 | `result-track:4d073bf5ba42ffeaa2d44768621cca54d6ac849d94fc6fb008f4d67759d262e4` |
| 48 | `theorem` | [cases_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/cases-mk.md) | 327 | `result-track:6669efef53cf32eeda7ed46a2ef4269432fb0bd660de1be8d69e13dd1da91fb8` |
| 49 | `theorem` | [casesOn_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/caseson-mk-source-edition-2.md) | 331 | `result-track:e44a67fde3c72277cf132a1cb42a0b777dadc9d51af9357a144ff414884f54a6` |
| 50 | `theorem` | [casesOn_mk'](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/caseson-mk.md) | 336 | `result-track:699968040e6cb6c84caa79e705a198498daa1b696a4ca660583d33ac8e283ec6` |
| 51 | `inductive` | [IsPath](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/ispath.md) | 341 | `declaration-track:17b252f8448ad8df1a150d41bf239718cc024b6c7805b60db438a0d7688ee9f3` |
| 52 | `theorem` | [isPath_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/ispath-cons-source-edition-2.md) | 346 | `result-track:e128b5f3be5e0f9dc50d94abc23b07e722b3312b04f1f3092bfbf8171b21800d` |
| 53 | `theorem` | [isPath_cons'](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/ispath-cons.md) | 353 | `result-track:7ea513c3927349062fcba07d02acc0b4ffc621aa8c587610ff3e0bddb355ba00` |
| 54 | `def` | [isubtree](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/isubtree.md) | 363 | `declaration-track:fcca9bef59bacb70252dae973f7ca13982315e8734e78789b71ad980d18781d2` |
| 55 | `def` | [iselect](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/iselect.md) | 374 | `declaration-track:b8233faa069817499b1b2e86d525af321b07d3313c0d7e05383c13dc68e793e3` |
| 56 | `theorem` | [iselect_eq_default](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/iselect-eq-default.md) | 377 | `result-track:6ecab4fadd53fc53c5fb637aada035057f2941e467c4142581b8ae30d72ac02f` |
| 57 | `theorem` | [head_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/head-mk.md) | 399 | `result-track:4624950df03db24b06a080bb645d469078fe1532cfa1e1a9e5e247433ddc4a22` |
| 58 | `theorem` | [children_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/children-mk.md) | 405 | `result-track:924fff92543c5d6ecb0f34f8299d0e26f11f5e77b0361be449a47fb7831fb8e7` |
| 59 | `theorem` | [ichildren_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/ichildren-mk.md) | 409 | `result-track:9e9559d41e682789ce6a54e11e7caa252b72cff7ba88c22d9c5e87b6beb6ee69` |
| 60 | `theorem` | [isubtree_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/isubtree-cons.md) | 415 | `result-track:f783a93bbddcd2290ac5362f2b8d6b9f4fa30305ddfea24f3d64654a78396808` |
| 61 | `theorem` | [iselect_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/iselect-nil.md) | 420 | `result-track:6bd83d8276bc020bdc2e558f7d9c9056dc06aee2a8a766a87b15a12d413694a4` |
| 62 | `theorem` | [iselect_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/iselect-cons.md) | 424 | `result-track:6fe061a6534f5108b25b29459a519e1680e586e1340149ed0aeb58fab5dc7a79` |
| 63 | `theorem` | [corec_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/corec-def.md) | 428 | `result-track:1aa899a4c72f6f7035cde2992d8a38832db82152489b226b5869bc33c3cb7a7f` |
| 64 | `theorem` | [ext_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/ext-aux.md) | 438 | `result-track:fcbece27aa8d783e71531d49e466e986f469e7c3e7ba9ed6fe5270a7834670ab` |
| 65 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/ext-source-edition-2.md) | 473 | `result-track:6119dfb4105f221124a4c2d24bfcdf3e11015b6abca120ee4bb5dcc00bff037a` |
| 66 | `structure` | [IsBisimulation](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/isbisimulation.md) | 498 | `declaration-track:3431dbbcbfd03d59086f19a28e1768ddd0f27c66fdbe3a379eaed74b520dfb46` |
| 67 | `theorem` | [nth_of_bisim](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/nth-of-bisim.md) | 505 | `result-track:2324315338dc1d18163d2bdd84ff13f5cdc44cf09ff8350591ee6111df2c461f` |
| 68 | `theorem` | [eq_of_bisim](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/eq-of-bisim.md) | 535 | `result-track:20b8ee72d247700097b1ba1393d597a9e483334b29d4c11c7f4649d22ce31160` |
| 69 | `def` | [corecOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/corecon.md) | 552 | `declaration-track:5e9a62e411dad0c3e4d4f7549181d80c8f7eb7c440e40875d7fc264cc9d4c9cb` |
| 70 | `theorem` | [dest_corec](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/dest-corec.md) | 557 | `result-track:e3fd992ca4ca77fabccf941bcfde65d2230ce42760a751150e74a962bda64b4b` |
| 71 | `theorem` | [bisim](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/bisim.md) | 560 | `result-track:8eb422a60702400b15ce86109ad7c07d21fac573e22291f701bf5096f3f40dc4` |
| 72 | `theorem` | [bisim'](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/bisim-source-edition-2.md) | 577 | `result-track:fcbba8551f954afe05776ca649569c16ce5d2054073bd0fc6f3a3521279f7974` |
| 73 | `theorem` | [bisim_equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/bisim-equiv.md) | 591 | `result-track:e94364bea0f9856ec0d68069f0550fb8a66329efc36bcbf3a0fcfcf1b48dfd82` |
| 74 | `theorem` | [corec_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/corec-unique.md) | 602 | `result-track:5ae6743b4b99af0153052090abd691c059ce5caf28a8761da97dceb3b4cab0d0` |
| 75 | `def` | [corec₁](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/corec-source-edition-2.md) | 618 | `declaration-track:b1b1476038c0bce77f94b09dbf91786c5fa00037659b3b8981e9a2af2bf21202` |
| 76 | `def` | [corec'](../../../../../../ComputerScience/TheoryOfData/DataStructures/UnivariateMMPublic.lean/declarations/corec.md) | 623 | `declaration-track:758892018ecb711414b9782ac321ec085698e55f82c5c01abbe360c7a51df401` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aad5f71aef2b7d04d2de6d3e0e0f0d88d66f62463081cda87c2bf914d42fe301 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variant9f85d534bda332dd45928ffb8d024e3ed82210344dcf337b56c4ddec36e45126.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variant9f85d534bda332dd45928ffb8d024e3ed82210344dcf337b56c4ddec36e45126.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
