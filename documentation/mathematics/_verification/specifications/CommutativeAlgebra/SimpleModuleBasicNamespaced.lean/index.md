# Verification target: Simple Module Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90f481d3934327f882eb7fe9f4db9d4008738109",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant1960ceea8cde9bccb3f6ef84e1b78829abb31bc112921b9c14e3ef77b801b776.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90f481d3934327f882eb7fe9f4db9d4008738109`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant1960ceea8cde9bccb3f6ef84e1b78829abb31bc112921b9c14e3ef77b801b776.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant1960ceea8cde9bccb3f6ef84e1b78829abb31bc112921b9c14e3ef77b801b776.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Module` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Card` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Mul` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DFinsupp` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.Span` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Isomorphisms` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Projection` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms.Finite` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompactlyGenerated.Intervals` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Order.JordanHolder` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Colon` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Defs` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsSimpleModule](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/issimplemodule.md) | 64 | `declaration-track:c40011f1ea0f58358141beb66c0350f6aedfd6e0e56a85ef6931b93c6d7f3fab` |
| 2 | `abbrev` | [IsSemisimpleModule](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/issemisimplemodule.md) | 69 | `declaration-track:43c1413086d1c571b36de4c33f06f20a3085c6aec4c79aefd852e75f99b0510f` |
| 3 | `abbrev` | [IsSemisimpleRing](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/issemisimplering.md) | 73 | `declaration-track:8f71ca7a37c309568abb1f335709b97d8b402e5e450c1704ce0bf95dc14590a9` |
| 4 | `theorem` | [RingEquiv.isSemisimpleRing](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/ringequiv-issemisimplering.md) | 76 | `result-track:c0d101426e02e5af0e23ee3da8b488d0c95658bcdfd0e6836dce0d57cceace39` |
| 5 | `theorem` | [RingEquiv.isSemisimpleRing_iff](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/ringequiv-issemisimplering-iff.md) | 80 | `result-track:dc4ffdc008202232f9a8af69871ac71bf57944a61d12cdadacb987b890de31ee` |
| 6 | `theorem` | [IsSimpleModule.nontrivial](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/issimplemodule-nontrivial.md) | 83 | `result-track:ec7aedb7b75f57d7df8723b412e08909960df054747dea6768b37e99f8806cd0` |
| 7 | `theorem` | [LinearMap.isSimpleModule_iff_of_bijective](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/linearmap-issimplemodule-iff-of-bijective.md) | 92 | `result-track:ecc10036b7fa232d4af1e080739ace52cc805789fa69f9cdfd2582b1310ca7b3` |
| 8 | `theorem` | [IsSimpleModule.congr](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/issimplemodule-congr.md) | 98 | `result-track:467531d2f1a9f0df9357aef5fac3c9e7669edcf1aca7c5b47e42ae62cf14b103` |
| 9 | `theorem` | [LinearEquiv.isSimpleModule_iff](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/linearequiv-issimplemodule-iff.md) | 101 | `result-track:4e950e8ceff2ac6e4157d668f53bab824633f639794a49f15e6f06634da41842` |
| 10 | `theorem` | [isSimpleModule_iff_isAtom](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/issimplemodule-iff-isatom.md) | 104 | `result-track:f6a2032d597c7cebf3d661ff36f4a0f260211f29c6cd5ce13631f484c06188c5` |
| 11 | `theorem` | [isSimpleModule_iff_isCoatom](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/issimplemodule-iff-iscoatom.md) | 108 | `result-track:006bf7e0f17300de298aad736f6641e624d7d593b0af42c63946446ff1af4fe5` |
| 12 | `theorem` | [covBy_iff_quot_is_simple](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/covby-iff-quot-is-simple.md) | 113 | `result-track:55f8f55038c0a8fb777e852acfed3c2122fdfc3c2e396bf02550f875bf021b42` |
| 13 | `theorem` | [isAtom](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/isatom.md) | 122 | `result-track:f7567852ffacedefaeba3436cd07f41bccdf30f74009dd73814d29dd3fd1b13d` |
| 14 | `theorem` | [span_singleton_eq_top](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/span-singleton-eq-top.md) | 128 | `result-track:30c0669d69976f4d900ab694d0a9cf0cd2f115e7a8f57d918d1ab0ad5a97d65b` |
| 15 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 131 | `declaration-track:9b3e01c6781eabb7c435035274375d30ffd55f43a118ef58d428fb47eaeb37f2` |
| 16 | `theorem` | [toSpanSingleton_surjective](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/tospansingleton-surjective.md) | 139 | `result-track:dc8818697127a6cd86eb0e842d36b37d97875ee7230ed17bf0ac930dd6af0cdb` |
| 17 | `theorem` | [ker_toSpanSingleton_isMaximal](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/ker-tospansingleton-ismaximal.md) | 143 | `result-track:cda716cc01c282f48b9b7e98c4bb3a1230a00284ad037e1213b2f8aa6cdf8aed` |
| 18 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 148 | `declaration-track:3b8c4456a15e9b55fed3aee16bc4afae7d8b3fce3c206df57c5f6cbfb220cde5` |
| 19 | `theorem` | [isSimpleModule_iff_quot_maximal](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/issimplemodule-iff-quot-maximal.md) | 155 | `result-track:9cecc431b8e52e008d38431b72d3743b858733c0625cf5d49761b5d633db2c46` |
| 20 | `theorem` | [IsSimpleModule.annihilator_isMaximal](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/issimplemodule-annihilator-ismaximal.md) | 167 | `result-track:fb928350af80e2eb74cd246275567cdf84bd6339b90436b50b7ba87873ce52d1` |
| 21 | `theorem` | [isSimpleModule_iff_toSpanSingleton_surjective](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/issimplemodule-iff-tospansingleton-surjective.md) | 172 | `result-track:7ecec5c2652cc65fcf9e3fcda55b991962660adddade8b76fa1df8b194dfba08` |
| 22 | `theorem` | [isSimpleModule_self_iff_isUnit](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/issimplemodule-self-iff-isunit.md) | 180 | `result-track:e142498388dc399a1c54c24fe4651ffe538edaef1cad86100527c1f656691548` |
| 23 | `theorem` | [IsSemisimpleModule.of_sSup_simples_eq_top](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/issemisimplemodule-of-ssup-simples-eq-top.md) | 189 | `result-track:a76880daa14061ffda58dc037582dcf4f75e572c1a8601e8dca85ccf80961e01` |
| 24 | `theorem` | [extension_property](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/extension-property.md) | 197 | `result-track:c057eaf13ef073190e4491a4fdcd8d3f72ffb60d7eb68e43e14054b63c3a1037` |
| 25 | `theorem` | [eq_bot_or_exists_simple_le](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/eq-bot-or-exists-simple-le.md) | 203 | `result-track:a5226884e8e46610f66543552c29927b87fbd454d5da616e4f94dd7fe7c57799` |
| 26 | `theorem` | [sSup_simples_le](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/ssup-simples-le.md) | 206 | `result-track:f6f020fe087ad97b5fba6efaeb5714c4a0b91be2def0b33e24da1de57f67c535` |
| 27 | `theorem` | [exists_simple_submodule](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/exists-simple-submodule.md) | 212 | `result-track:350eff866bc5673890c2767080ab9a1279d5c09bc454b360e3633201d866e441` |
| 28 | `theorem` | [sSup_simples_eq_top](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/ssup-simples-eq-top.md) | 215 | `result-track:4e36d320eba2b236e4254d6eb673be3466df120256f18825c7e72409f2e86dbd` |
| 29 | `theorem` | [exists_sSupIndep_sSup_simples_eq_top](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/exists-ssupindep-ssup-simples-eq-top.md) | 218 | `result-track:c97cbf3e271db226c960407362ab455e5840dcef8d14eddabd711792686d5958` |
| 30 | `theorem` | [annihilator_isRadical](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/annihilator-isradical.md) | 228 | `result-track:2e79186b475e1773b83d3e1274e308a23f94af240aaf8243f3499a3579b7cc10` |
| 31 | `instance` | [submodule](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/submodule.md) | 233 | `declaration-track:48581efebfe46de14e410a5ed991c5856abe220b1d7b6418c30049d980a6d974` |
| 32 | `theorem` | [congr](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/congr.md) | 239 | `result-track:06653e613210e607ba0209939690d18dd7373c183f117e42154913baf50da294` |
| 33 | `theorem` | [of_injective](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/of-injective.md) | 242 | `result-track:6ce8d2ddb17631b5841fed953ab93826bd5b32958ae05e9988b81a9171eb3f41` |
| 34 | `instance` | [quotient](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/quotient.md) | 245 | `declaration-track:02e0e278a1bbb97300aac9e70548be043cd178a433fa1ec673151968438086dd` |
| 35 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 249 | `declaration-track:2a283f39eed4525b4d431a425bf399bb6027ba6fcb2f984986c1d16544f54bca` |
| 36 | `theorem` | [range](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/range.md) | 254 | `result-track:1c077c6b599173cfe45578f479d711327018fd3788784f69544220f0c362c526` |
| 37 | `theorem` | [of_surjective](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/of-surjective.md) | 257 | `result-track:c0a68410f9c8e6107db1619f8ead54d5591b656a3758bdc675b7c4cd0ad55207` |
| 38 | `theorem` | [Simple Module Basic Namespaced](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/issemisimplemodule-iff-of-bijective.md) | 265 | `result-track:6a885dad41cee0d5139ab476e6261ad60e0ab9f882edbf6e5d110f998fca2222` |
| 39 | `theorem` | [LinearEquiv.isSemisimpleModule_iff](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/linearequiv-issemisimplemodule-iff.md) | 282 | `result-track:d1c83c16f9d6aba9ff2075d13aaeaf9e1d0e3335697dc354bf06dfbce46c97c1` |
| 40 | `theorem` | [sSup_simples_eq_top_iff_isSemisimpleModule](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/ssup-simples-eq-top-iff-issemisimplemodule.md) | 287 | `result-track:5c9f6af2a8dd4fda13edc8c22215c9cb59a82365d9a76924c56cc7298dae635d` |
| 41 | `lemma` | [isSemisimpleModule_of_isSemisimpleModule_submodule](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/issemisimplemodule-of-issemisimplemodule-submodule-source-edition-2.md) | 292 | `result-track:d6e14c24a92e08d2f51fb46cfdce5acfb6c8fa6ceb6cec8981057da430630165` |
| 42 | `lemma` | [isSemisimpleModule_biSup_of_isSemisimpleModule_submodule](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/issemisimplemodule-bisup-of-issemisimplemodule-submodule.md) | 299 | `result-track:e69b68641e541efd6f6b46ca9f8ba9ce3ffaf4dc8210f957afe399c93d34379c` |
| 43 | `lemma` | [isSemisimpleModule_of_isSemisimpleModule_submodule'](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/issemisimplemodule-of-issemisimplemodule-submodule.md) | 307 | `result-track:639c29bc0f48eef4838b52145357b2f6bc912253ee6ed0131df532462988e077` |
| 44 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 312 | `declaration-track:91705a7e90dc508a06834735667106523bc6ff5a26262b1dc67f17eeb30adb79` |
| 45 | `theorem` | [IsSemisimpleModule.exists_linearEquiv_dfinsupp](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/issemisimplemodule-exists-linearequiv-dfinsupp.md) | 319 | `result-track:94c611c7808fe91e66ba034a89c03fc3f39a229e781b468142353195237bf808` |
| 46 | `theorem` | [isSemisimpleModule_iff_exists_linearEquiv_dfinsupp](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/issemisimplemodule-iff-exists-linearequiv-dfinsupp.md) | 329 | `result-track:2677c698e50cb9b7e9cf56dc427d8acd3722d01b666303114ff178f666a3cf0a` |
| 47 | `theorem` | [IsSemisimpleModule.exists_linearEquiv_fin_dfinsupp](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/issemisimplemodule-exists-linearequiv-fin-dfinsupp.md) | 336 | `result-track:2b9ecf61f97eee6d1eed6fb48dad58b8d9c062f79d7d08f0a16f1980c50e36c5` |
| 48 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 345 | `declaration-track:926b6df7abddfb98d73209e915f7591086f9adc19e01383d2425e2915adde932` |
| 49 | `theorem` | [IsSemisimpleModule.sup](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/issemisimplemodule-sup.md) | 351 | `result-track:b064c0ef798035d9595d82b243d054eb48dccf780e45c89c5fdc74a1f003fe34` |
| 50 | `instance` | [IsSemisimpleRing.isSemisimpleModule](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/issemisimplering-issemisimplemodule.md) | 358 | `declaration-track:571be08790082bf776e43636d580f8bc3049246d5e15d79cfe531af6dfb44dfb` |
| 51 | `instance` | [IsSemisimpleModule.isCoatomic_submodule](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/issemisimplemodule-iscoatomic-submodule.md) | 363 | `declaration-track:5943fb456c0b4def27da6d166e8927342951f86ae700241db7958961a41ceb6b` |
| 52 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 369 | `declaration-track:5bb39f9ff499383d34c316bb197d9f39d37c13fb3edd528f1333c991773a11e5` |
| 53 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/instance.md) | 379 | `declaration-track:094e50b9b34c29911e2077db919b1831f93be59f6ad40f17bd234be2f3b2b3e5` |
| 54 | `theorem` | [RingHom.isSemisimpleRing_of_surjective](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/ringhom-issemisimplering-of-surjective.md) | 391 | `result-track:a03e7c6e49404f431ed21e17d972e87134d90065e1963955460f8b7ed4b8a4d1` |
| 55 | `theorem` | [IsSemisimpleRing.ideal_eq_span_idempotent](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/issemisimplering-ideal-eq-span-idempotent.md) | 399 | `result-track:57aa3c61250b17327e4524ae2ee87f2e0aba179cf5ab480e7c6b9c168382ad80` |
| 56 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/instance-source-edition-8.md) | 407 | `declaration-track:c750778401f752d0452856a98a38c282c16c76eaf2384e7d85497c62b264df27` |
| 57 | `theorem` | [injective_or_eq_zero](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/injective-or-eq-zero.md) | 431 | `result-track:f13335e3777a87bbb9f63766215dc625f6e483a419bc25c8ad21ce7b0a2714b0` |
| 58 | `theorem` | [injective_of_ne_zero](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/injective-of-ne-zero.md) | 436 | `result-track:6165bbbe5d0aa2b55c313bf4ce62d68a23d273ea1d7d2e86d6d83a1a820feaf6` |
| 59 | `theorem` | [surjective_or_eq_zero](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/surjective-or-eq-zero.md) | 440 | `result-track:73c9662d961372d4fa558c59b685e60b7a91f71e0709f51852ca7fda05d64675` |
| 60 | `theorem` | [surjective_of_ne_zero](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/surjective-of-ne-zero.md) | 445 | `result-track:f8bbe85e3907015a8f3e51c05985c856319535daa4f89da56e6057d4ab1708e5` |
| 61 | `theorem` | [bijective_or_eq_zero](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/bijective-or-eq-zero.md) | 450 | `result-track:9ff2ad8dbc55d380d1dfc68723a10cf2904fdda6e886cd89bdc16089e35eba56` |
| 62 | `theorem` | [bijective_of_ne_zero](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/bijective-of-ne-zero.md) | 454 | `result-track:a0de730597046332af99660674226eb8a4ba1e811cb59acb580d738422684b06` |
| 63 | `theorem` | [isCoatom_ker_of_surjective](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/iscoatom-ker-of-surjective.md) | 458 | `result-track:4faf5416700de43b0888c27d0ed48be829dae7c347746926a5dac8ce72b6a2f5` |
| 64 | `theorem` | [linearEquiv_of_ne_zero](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/linearequiv-of-ne-zero.md) | 463 | `result-track:bc2f84fb0a76a282e2f95ab825c818e31d0623271c3ed01f75f61b73d141caad` |
| 65 | `instance` | [Simple Module Basic Namespaced](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/instdivisionring.md) | 470 | `declaration-track:82c7e1ec6a829f5fa634c289c528b6218a32833c7654df534dacd3209b028120` |
| 66 | `def` | [Iso](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/iso.md) | 492 | `declaration-track:b39ba8ebce81f4417e5e7b92c59a45b6313fe4d83926e1d9b690c3d8ae6b7586` |
| 67 | `theorem` | [iso_symm](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/iso-symm.md) | 495 | `result-track:ca1e012f2532d65363b147e4c3ba9932eab148d95924a92f0a27685d9e89c175` |
| 68 | `theorem` | [iso_trans](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/iso-trans.md) | 498 | `result-track:b093aeb849e204cc34566d187fe463957c3ff9a5ca85c44be6663be5cbec8476` |
| 69 | `theorem` | [second_iso](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/second-iso.md) | 502 | `result-track:09fdd2db1344f08d86ed20a20a1a7dbcfc9f4f4721fa9618bca303856fc604f0` |
| 70 | `instance` | [instJordanHolderLattice](../../../../CommutativeAlgebra/SimpleModuleBasicNamespaced.lean/declarations/instjordanholderlattice.md) | 509 | `declaration-track:b8e20453ed1e384e726fa054404d3cb4184f2eddef69a6b6e60bd832572a44b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f7b78e4948849fadae2f2e24a2df08368c9168fe4f0a5e68d5628b4b6fe33d0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant1960ceea8cde9bccb3f6ef84e1b78829abb31bc112921b9c14e3ef77b801b776.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant1960ceea8cde9bccb3f6ef84e1b78829abb31bc112921b9c14e3ef77b801b776.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
