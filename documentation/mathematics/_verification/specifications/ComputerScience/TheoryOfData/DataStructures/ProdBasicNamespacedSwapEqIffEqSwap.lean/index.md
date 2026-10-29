# Verification target: Prod Basic Namespaced Swap Eq Iff Eq Swap

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6c1e6b50b78227393e4d366852671df9d3f2ca3",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0449b25888e2f6393364a7908e5462d70927dff3f6e2abfa158f24911aa2fc2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6c1e6b50b78227393e4d366852671df9d3f2ca3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0449b25888e2f6393364a7908e5462d70927dff3f6e2abfa158f24911aa2fc2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0449b25888e2f6393364a7908e5462d70927dff3f6e2abfa158f24911aa2fc2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Iterate` — import line 12; external provider; requires a separately pinned dependency.
- `Aesop` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Inhabit` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [swap_eq_iff_eq_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/swap-eq-iff-eq-swap.md) | 30 | `result-track:b9a27f23a4bace1ab86b5c1ed5f3681b9fb2921fe36790e0444540e09c4a1fcf` |
| 2 | `def` | [mk.injArrow](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/mk-injarrow.md) | 32 | `declaration-track:6a4de9763828b4521766ee6bd12599bee36bd097dc4ae84648b0b19d7f201c8e` |
| 3 | `theorem` | [mk.eta](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/mk-eta.md) | 37 | `result-track:c019f72f685da2db0c1c89486bd47f58c4671dae15e7e14dc9c5924e27515920` |
| 4 | `theorem` | [forall'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/forall.md) | 40 | `result-track:06f2a2f60b3e161b5889d3315d019c8ad12cbaa40a572dc3c310f9fc6d5dee7c` |
| 5 | `theorem` | [exists'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/exists.md) | 43 | `result-track:dac23da6fa47dbf3d523e3d4598f5650f82f5c88844bb85305404cb16bfa4f5a` |
| 6 | `theorem` | [snd_comp_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/snd-comp-mk.md) | 47 | `result-track:51087f060b5fad94085dde28adf6f54735aa38d3a354ec1a161e1caec92349a1` |
| 7 | `theorem` | [fst_comp_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/fst-comp-mk.md) | 51 | `result-track:647f761c397e7dbe6ed5f5955a80858dce7a556b230e3c2c96456bd0931394e3` |
| 8 | `theorem` | [map_apply'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/map-apply.md) | 58 | `result-track:b46edb825316382cd6595d24595bc34d10766f5de8fd5b30989cec1f26616b1f` |
| 9 | `theorem` | [map_fst'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/map-fst.md) | 61 | `result-track:2cc1ec378742c10d0fdb4dd385cd4ea9c4b7a37faa5f55500d85e587224c3dc8` |
| 10 | `theorem` | [map_snd'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/map-snd.md) | 64 | `result-track:cbc05649f6ae6ecb86aeb4c2425ee2f3247db57d889dfa66071dd8011dc59c5d` |
| 11 | `theorem` | [mk_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/mk-inj.md) | 67 | `result-track:e7998ede71cb6a06e634fe8753c41f0d2f77aca6d4763191f94630ca5e5da84b` |
| 12 | `theorem` | [mk_right_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/mk-right-injective.md) | 71 | `result-track:926a842c0523cb99a866140b46c62a39dd39f8f449107e7bacba854ce0b86857` |
| 13 | `theorem` | [mk_left_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/mk-left-injective.md) | 77 | `result-track:a7a106a7d5465ca155f73dc17ace7c5e917e0cabcd6cf8e16c615d9e71762441` |
| 14 | `lemma` | [mk_right_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/mk-right-inj.md) | 83 | `result-track:7c01f2b57f6b46e92c3c40f19e3d2328799231d72f970dd410244a5141ac03e9` |
| 15 | `lemma` | [mk_left_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/mk-left-inj.md) | 86 | `result-track:95019e149cede4d360f6bedb7127496f84e036685a9555db90e2952be0a8dcc1` |
| 16 | `theorem` | [map_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/map-def.md) | 91 | `result-track:3c3a7be954214fd8e616a1401106cb2a46d42696104b1ab24ae499c761088a02` |
| 17 | `theorem` | [id_prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/id-prod.md) | 94 | `result-track:8df695720a99a80eff5a1ec5e59cf2672209cf56ee81b5181e9236da1377239f` |
| 18 | `theorem` | [map_iterate](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/map-iterate.md) | 98 | `result-track:2b8ad238ff184cfff3677bf3669bf0ca38f76e1b3da2a652793173a1e0ca7dec` |
| 19 | `theorem` | [fst_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/fst-surjective.md) | 101 | `result-track:aaeab3d7ccf94aa28403f7c95293763a8ce4a095d7f726de9333f70ce17bf17c` |
| 20 | `theorem` | [snd_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/snd-surjective.md) | 104 | `result-track:cb152b6078626c1d830a9303a9facaa170c225b16da2ecfa4d430a31b145378b` |
| 21 | `theorem` | [fst_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/fst-injective.md) | 107 | `result-track:2734eb578e4ff59e9ed9e307f8cb922f4d891406515b07e69f704548067e46ab` |
| 22 | `theorem` | [snd_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/snd-injective.md) | 110 | `result-track:39ca431f6da4cbe7d26bfb3c400671c3725274c6ed1535d490f9ae4c0917f422` |
| 23 | `theorem` | [swap_leftInverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/swap-leftinverse.md) | 114 | `result-track:48864602574d982f44e18d1e7e1df257cce1196f9f0e390dba48a8da1ca9ab55` |
| 24 | `theorem` | [swap_rightInverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/swap-rightinverse.md) | 118 | `result-track:cb5b6b7861d3a457b69acdab4b57751dcb1bd65369d253e169e504ccb4360431` |
| 25 | `theorem` | [swap_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/swap-injective.md) | 121 | `result-track:4562811212d7396df2292cda4143852822bbd5c1762ff8d056c3babbe6d097b8` |
| 26 | `theorem` | [swap_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/swap-surjective.md) | 124 | `result-track:68b580a3c74098ea48878bfb36ca8e628aa9f5778ffba4241dd45bfec8383154` |
| 27 | `theorem` | [swap_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/swap-bijective.md) | 127 | `result-track:90fa32b468fac041b9fa8e17093b990a7cd4be130923237c89700838dcffd018` |
| 28 | `theorem` | [Prod Basic Namespaced Swap Eq Iff Eq Swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-swapeqiffeqs.md) | 130 | `result-track:fed2d511235b22bcf8b7e8a956c0a5b2292c08afba85b83cb28653e39cf13e4a` |
| 29 | `theorem` | [eq_iff_fst_eq_snd_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/eq-iff-fst-eq-snd-eq.md) | 134 | `result-track:e2323c5793c10496e5379045621b8d54c610b58cf95ef211be1839789a445166` |
| 30 | `theorem` | [fst_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/fst-eq-iff.md) | 137 | `result-track:332f1691187d357731322a991f900aa4d6a2678a6b949523cac1ca4ed43a117d` |
| 31 | `theorem` | [snd_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/snd-eq-iff.md) | 140 | `result-track:a3f88f8a0cb81cc50173cecf4b78717696117b1e585446a959396320f2d642dc` |
| 32 | `lemma` | [lex_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/lex-iff.md) | 145 | `result-track:833ad817a3225f28ea1810f708d4e1944196705a15fb3290165fbb7cf335a5ce` |
| 33 | `instance` | [Lex.decidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/lex-decidable.md) | 147 | `declaration-track:d5f6d9f80b0147d91db9a852b7d472e20b8bfed3e01f8913dbca7c5dfe34507b` |
| 34 | `theorem` | [Lex.refl_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/lex-refl-left.md) | 153 | `result-track:33381f6dbf3dcd9f4812cd0b325164948991df49440ac1b3b6555c14f29194d0` |
| 35 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/instance-source-edition-2.md) | 156 | `declaration-track:5feeb7765e728425993e6530485b9cbc940d4ee70708eb879fea2fe5ae99a91e` |
| 36 | `theorem` | [Lex.refl_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/lex-refl-right.md) | 160 | `result-track:4fad5d61aa94a423b38a36f577038c511916dd2d56cb1b30d88f7efb5a3561d6` |
| 37 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/instance-source-edition-4.md) | 163 | `declaration-track:c3394eff5c734823c2dd25284b928149f91083923ba31190be61ebf301239557` |
| 38 | `instance` | [isIrrefl](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/isirrefl.md) | 166 | `declaration-track:ffb990c49dbaf95f25d2e3e4a1cdc3437d72789a445e159ec91cb851f40aec6b` |
| 39 | `theorem` | [Lex.trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/lex-trans.md) | 170 | `result-track:bf7a358565fe1609b951a8e1bb751444d7178a43a5dcb043de0492671df9259d` |
| 40 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/instance.md) | 177 | `declaration-track:26c8eaee6c0370360c82bcbbed793bc2ddb71f40e588308a1c9ec87f076f510d` |
| 41 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/instance-source-edition-3.md) | 181 | `declaration-track:9612cad77e3c892b603e750b266dcec53e4271d3ad03a9e738888d6395105830` |
| 42 | `instance` | [isTotal_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/istotal-left.md) | 190 | `declaration-track:70b724d04469cad794d90088143cd25ec978b42ffc4495221f5733b2633188e3` |
| 43 | `instance` | [isTotal_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/istotal-right.md) | 194 | `declaration-track:91d34d34c73c42409e35007ee4e53ebbf796f4ae4cc4c6813c67baa90a981415` |
| 44 | `instance` | [IsTrichotomous](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/istrichotomous.md) | 202 | `declaration-track:419b7fdf1969ce4dcc2c4ac00f65ba2dbe8127c8cf23652eb8fb8b8922857c84` |
| 45 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/instance-source-edition-5.md) | 210 | `declaration-track:f9db1e0f061c6ef720f4dffeb4b3c62aa635fc678ff32200679b3cca22e1de18` |
| 46 | `theorem` | [Injective.prodMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/injective-prodmap.md) | 226 | `result-track:a5c1a1a3b02e5e3ac2beadf471f1b31f7d839795773f3235d3bafa20d1545f14` |
| 47 | `theorem` | [Surjective.prodMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/surjective-prodmap.md) | 229 | `result-track:307cc4407d0112c94c276130b892e3804e8e6c3fbc51e71b2d2a651d4b0b5542` |
| 48 | `theorem` | [Bijective.prodMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/bijective-prodmap.md) | 235 | `result-track:d06e280026035547c6c650ba118e94e086a27d40f50e44844a828bd461286029` |
| 49 | `theorem` | [LeftInverse.prodMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/leftinverse-prodmap.md) | 238 | `result-track:4da4f45d77cad56d3f7da925f10b6a1a1f71cb52bf04ddfdcc374f1b804f2ced` |
| 50 | `theorem` | [RightInverse.prodMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/rightinverse-prodmap.md) | 242 | `result-track:8a04d7447310dfa18c4876337cfe36f9c6ff2833ff35d4447770b07604e7d0dc` |
| 51 | `theorem` | [Involutive.prodMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/involutive-prodmap.md) | 246 | `result-track:d37eae296d534c6861d50f5be53c52646c6cfe7094b8dd234bb14433481bd93d` |
| 52 | `theorem` | [map_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/map-injective.md) | 257 | `result-track:a4cc337f23c52dee25368dc0560803f684bad6620b7ba555fe388897dc8d91c6` |
| 53 | `theorem` | [map_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/map-surjective.md) | 270 | `result-track:5f8977de650111466af8996a6ab4e6845c9c4b2c8461ee44169b0d660f444e00` |
| 54 | `theorem` | [map_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/map-bijective.md) | 284 | `result-track:e452c365034f880c45d50ac464bbb82c5e1f07f0660305212a82832a08116652` |
| 55 | `theorem` | [map_leftInverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/map-leftinverse.md) | 291 | `result-track:27dd549f6a2931e59c0f8e95ddc2e605a0fa939f9abf557a9204f3f0ffe20b86` |
| 56 | `theorem` | [map_rightInverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/map-rightinverse.md) | 303 | `result-track:e17f0e368a0fe26e2894877a841a142ad74cd8881454fe0085ff04793a00e89a` |
| 57 | `theorem` | [map_involutive](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/map-involutive.md) | 308 | `result-track:d9b86693b0e6d7307ddd9ec321e853e3c9f5c3e97b4d195504d010eba37b43ea` |
| 58 | `register_option` | [pp.numericProj.prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/pp-numericproj-prod.md) | 319 | `declaration-track:cc1bbb27545f2850c570e902b2a51749135228a2c185ce39bd43c0db7332c4e6` |
| 59 | `def` | [getPPNumericProjProd](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/getppnumericprojprod.md) | 326 | `declaration-track:c5aa60f716bef35be607951f8de49f70a29fb5a679a272efbaa9eb9846e1405b` |
| 60 | `def` | [delabProdFst](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/delabprodfst.md) | 331 | `declaration-track:7634c02fb29eb405aa9ef9c66e4a087c275094316dd905bd8709059bd87c11a1` |
| 61 | `def` | [delabProdSnd](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedSwapEqIffEqSwap.lean/declarations/delabprodsnd.md) | 341 | `declaration-track:f9f9f8b71b6cd9e0b0cb0e2ed4b516eba4be169846d832a2453428ab36784c88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=08f03b3ffe88e013cd41d57013f81bced4d3af076a98a781ccb40b7694ac2871 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0449b25888e2f6393364a7908e5462d70927dff3f6e2abfa158f24911aa2fc2c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0449b25888e2f6393364a7908e5462d70927dff3f6e2abfa158f24911aa2fc2c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
