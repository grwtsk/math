# Verification target: Separation Quotient Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c144635f87dcd791abd45709349a656924aad0a",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant89a2b74ff749199e2554b8e0de09c1e2474ecd7b4c07638b97e404970e469603.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c144635f87dcd791abd45709349a656924aad0a`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant89a2b74ff749199e2554b8e0de09c1e2474ecd7b4c07638b97e404970e469603.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant89a2b74ff749199e2554b8e0de09c1e2474ecd7b4c07638b97e404970e469603.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.LinearMap` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instsmul.md) | 41 | `declaration-track:4a56f139c10605233cfe195b458d10dd946f75c0ece2641bc2dfa056c775a964` |
| 2 | `theorem` | [mk_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/mk-smul.md) | 45 | `result-track:43a9b592e599e8557967f6b3771d252e7ef8ea4e835bf9c6f8d04ecb3dc86230` |
| 3 | `instance` | [instContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instcontinuousconstsmul.md) | 48 | `declaration-track:ec92547c754ca5340b610a972439e46ef9340d3824cddebd3df3628d24b19d4d` |
| 4 | `instance` | [instIsPretransitiveSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instispretransitivesmul.md) | 53 | `declaration-track:1727469f63e15b24225c732de102566d7d1781eedfe4a4d47a7c13f744648a0d` |
| 5 | `instance` | [instIsCentralScalar](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instiscentralscalar.md) | 59 | `declaration-track:c351c0b36cd2a058733a7592c75b2dfa3decbecdaf9bd0b81d7872f1a5feaace` |
| 6 | `instance` | [instSMulCommClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instsmulcommclass.md) | 66 | `declaration-track:ed755843d273f5709930e642d8af3910e19263845cae400479231a19a4c35fb1` |
| 7 | `instance` | [instIsScalarTower](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instisscalartower.md) | 71 | `declaration-track:9618b063a3e4f771c5f93ba5d8a7a837d464179718fa8f64b9cf3f08131916d1` |
| 8 | `instance` | [instContinuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instcontinuoussmul.md) | 77 | `declaration-track:dab3796013440c82478568032b7ee7aaa1ca608a5244969e8d393d02d324e20e` |
| 9 | `instance` | [instSMulZeroClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instsmulzeroclass.md) | 83 | `declaration-track:2aefdd8b87a9e4e96d275531a252cc79a3a23d676cbccf0e2cadbe0a074dc4aa` |
| 10 | `instance` | [instMulAction](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instmulaction.md) | 88 | `declaration-track:2b161b61101b1777f61579aad2baf09266695e11bf4472c4bf92ecae2efd7ba3` |
| 11 | `instance` | [instMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instmul.md) | 97 | `declaration-track:dd07ad1cfa227ceb6fae8dcd02cd21736f7da0f893e885f2aad6b02fd168a013` |
| 12 | `theorem` | [mk_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/mk-mul.md) | 101 | `result-track:6bac5a62138c22d4084e7ae7103c4f745ebe14af9580485b803ae65fe3366e0b` |
| 13 | `instance` | [instContinuousMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instcontinuousmul.md) | 104 | `declaration-track:e297d2863b9c9ca7169debd6a91e4f201bf4bc54b8345c41fb64aa89d9205427` |
| 14 | `instance` | [instCommMagma](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instcommmagma.md) | 108 | `declaration-track:4510ec519026f0820e4c8966f153b1074eb7687f63700c65313328940bb1d509` |
| 15 | `instance` | [instSemigroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instsemigroup.md) | 112 | `declaration-track:3b731312a0fccf3cd5b903f1d834ae4d3ca7561e60ecd8f637022e06af3df64a` |
| 16 | `instance` | [instCommSemigroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instcommsemigroup.md) | 116 | `declaration-track:6b2186a404fedc27c3658c476e21331045be17440176ea585117312d11c572a1` |
| 17 | `instance` | [instMulOneClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instmuloneclass.md) | 121 | `declaration-track:33944e5a892281d4a5a4c884eab6a1e2bdf6c62188e10321d9697ee0a19b25ad` |
| 18 | `def` | [mkMonoidHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/mkmonoidhom.md) | 127 | `declaration-track:52f7c0513d721107a49a5a1fb7ac5f9400703dd6cb54a2677db32865eb8b73c3` |
| 19 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instance.md) | 132 | `declaration-track:044fece28a81c832785d870d0ef91bd30af4a35c6cb1318c80bb8e67c499a982` |
| 20 | `instance` | [instPow](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instpow.md) | 137 | `declaration-track:4bbf54bf25cd44793b58c4edf9c28e156312c0d0b04c56e0f4a82c7ba5d4ef53` |
| 21 | `theorem` | [mk_pow](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/mk-pow.md) | 141 | `result-track:9e65389bdf9a380b9c22ed0774783c4cee07e84dc7667ca8659650f8cf17fed9` |
| 22 | `instance` | [instMonoid](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instmonoid.md) | 144 | `declaration-track:7beba745ccd02fe106bf24f083b099c5331378c8734fd2062526689ec0269e8e` |
| 23 | `instance` | [instCommMonoid](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instcommmonoid.md) | 148 | `declaration-track:538361855f14541202688bff9d359f8faa841592a2a41269df5aaa0ca1731d2f` |
| 24 | `instance` | [instInv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instinv.md) | 158 | `declaration-track:bd32607f120a21a5cc3a86f4af80606a707e78e6ca1002859be5ff0f411c1ad6` |
| 25 | `theorem` | [mk_inv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/mk-inv.md) | 162 | `result-track:380196cc94c472eca134e037cc6379d4e97ba49040fef384dc4894fe178980b7` |
| 26 | `instance` | [instContinuousInv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instcontinuousinv.md) | 165 | `declaration-track:a13f9882c99d4a3806d653d55a7cd269215931b8ced0832f4f66db0cdb29e771` |
| 27 | `instance` | [instInvolutiveInv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instinvolutiveinv.md) | 169 | `declaration-track:b82afc67e2e6ab0eb64a5e73e18dfe1b1d395c1965e8fae04cbc50dbb5ab1e8b` |
| 28 | `instance` | [instInvOneClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instinvoneclass.md) | 174 | `declaration-track:f5a4c35437f70638f6cf423ef1eeb0f861c8dd1c8e3fb7486c62e44ac93abb1e` |
| 29 | `instance` | [instDiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instdiv.md) | 179 | `declaration-track:dad8450c234e8c4551c1dc6a8447f9fc4e124490f55b4e6cb967895737841030` |
| 30 | `theorem` | [mk_div](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/mk-div.md) | 183 | `result-track:23fb7f96859ff9e8c2a30005337d7378605088e2a6f2a18f66719153bc4ea1b7` |
| 31 | `instance` | [instContinuousDiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instcontinuousdiv.md) | 186 | `declaration-track:cb8319f54386b3772ddef9a1e1a630904d9f5becd6b2f84997d563fdaa5c2878` |
| 32 | `instance` | [instZSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instzsmul.md) | 189 | `declaration-track:e9215e3e00c0e30177515449f569b428f7f477288ff658009ba0266ca3dbd564` |
| 33 | `instance` | [instZPow](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instzpow.md) | 193 | `declaration-track:0adee036346c30765e37806e4b88bf16e9c4cb58fff4196b6805375a83872ea8` |
| 34 | `theorem` | [mk_zpow](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/mk-zpow.md) | 197 | `result-track:b6d0c2c5a6833f6a2cf8f45da3b73fe9129bb853bddbaf9d3bad6303c26080fd` |
| 35 | `instance` | [instGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instgroup.md) | 200 | `declaration-track:ea93866c7013782b3ef5703f24242cf846c0bb9a25b5738d0ee2729df594a51c` |
| 36 | `instance` | [instCommGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instcommgroup.md) | 204 | `declaration-track:2fa7bbf739e66467bbb78c1ff8f6bfdef8cf73787f1fd2ae0792b6d5a71cb40b` |
| 37 | `instance` | [instIsTopologicalGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instistopologicalgroup.md) | 208 | `declaration-track:06b52445ef38a8bc7dc0cfd3e1b8afc882ff245f466c4a3c43ecc88efe0b500d` |
| 38 | `instance` | [instIsUniformGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instisuniformgroup.md) | 216 | `declaration-track:cd421f7fd411f35e5efaeca4fc5f3bffce45ba2073130234c4dc737ffa483c6c` |
| 39 | `instance` | [instMulZeroClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instmulzeroclass.md) | 233 | `declaration-track:48bae967da90377217626adf122ca7f8b41ad3475362134013e26f5acc92e633` |
| 40 | `instance` | [instSemigroupWithZero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instsemigroupwithzero.md) | 237 | `declaration-track:6e55ccc7c492789a02b147c51965c29d5deed4537d409fcc13907220bb98fb4d` |
| 41 | `instance` | [instMulZeroOneClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instmulzerooneclass.md) | 241 | `declaration-track:6bc808d41e804cae4f4bef2707f32c6614b14ae005a7bb72f15a37a7c2c642ef` |
| 42 | `instance` | [instMonoidWithZero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instmonoidwithzero.md) | 245 | `declaration-track:30fcc11bbfac90f307f3536c2f5b20a456df8237f0232d12cf8456e978faeb76` |
| 43 | `instance` | [instCommMonoidWithZero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instcommmonoidwithzero.md) | 249 | `declaration-track:c488dcb3f5d5ccdc5a75a4d63bd5c42f5f1b0c7bc8156e6882520e3da43192cf` |
| 44 | `instance` | [instDistrib](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instdistrib.md) | 259 | `declaration-track:eff37a4fbd6849675d78d60c86b755b72fa33e2f6ec9b4249ca8f128b956d4df` |
| 45 | `instance` | [instLeftDistribClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instleftdistribclass.md) | 263 | `declaration-track:db565fdbf9186c6a888ae8d90136d9dd144e75e7385ee27a9f50c1e7b133bdac` |
| 46 | `instance` | [instRightDistribClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instrightdistribclass.md) | 268 | `declaration-track:e0fbe88b4b587aa66bb7a5a7c0736f09dc279d2d29cf31afacbfcb82dbaca1a3` |
| 47 | `instance` | [instNonUnitalnonAssocSemiring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instnonunitalnonassocsemiring.md) | 273 | `declaration-track:561d0251aeb3425a7a1a3974e4b18e9b65638c6c80332aa12d6c0530d07e1e13` |
| 48 | `instance` | [instNonUnitalSemiring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instnonunitalsemiring.md) | 277 | `declaration-track:e1575e524f2b6d6d3a110802ad3d28dc661ce00ce479db97307911a1945602c5` |
| 49 | `instance` | [instNatCast](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instnatcast.md) | 281 | `declaration-track:667f1ef75fac5e3268ed9efe76e77fcaedaf2651f799f6afcac6e4f6ed7a27b0` |
| 50 | `theorem` | [mk_natCast](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/mk-natcast.md) | 285 | `result-track:b8156c104ed2b45a909c077360b42d15eeeffbbffa6fb28c0816ba126a303341` |
| 51 | `theorem` | [mk_ofNat](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/mk-ofnat.md) | 288 | `result-track:e132d9912a701daf9c80613538fb1fa30afcc0d5236cfd29ed1e575d9104143e` |
| 52 | `instance` | [instIntCast](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instintcast.md) | 292 | `declaration-track:66607a406a8c1e43d52be23a8d67287a99f4b8cd68c97e16477ec6186eea0712` |
| 53 | `theorem` | [mk_intCast](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/mk-intcast.md) | 296 | `result-track:3907d7da39adac5485c0375d1e5e4ea51986605ae047c0404ee7baf5c9f10e21` |
| 54 | `instance` | [instNonAssocSemiring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instnonassocsemiring.md) | 298 | `declaration-track:2e61aca984f792fa82fa2b74219c1d8e3c821da5493ba6a532dd0d76a6dbfcf6` |
| 55 | `instance` | [instNonUnitalNonAssocRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instnonunitalnonassocring.md) | 302 | `declaration-track:516c062f94709cf96e9b2fdf88c11f0373fa3cc4a16a1d92d2d758b6908e1fca` |
| 56 | `instance` | [instNonUnitalRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instnonunitalring.md) | 306 | `declaration-track:b8ef72ead65e1eb14a33a3370e3c650b0fa90fd365734444b4cfc908c609aacb` |
| 57 | `instance` | [instNonAssocRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instnonassocring.md) | 310 | `declaration-track:b196bb40f415956e2ac043539bfb9921861391fdd37cff6c770685e2a9fad2d8` |
| 58 | `instance` | [instSemiring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instsemiring.md) | 315 | `declaration-track:06fd52e0f47a1c400421030d5cfba6f07244a1e06bf39958e1e212602f9ab705` |
| 59 | `instance` | [instRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instring.md) | 319 | `declaration-track:b511a205481e1958179c58fed595b053f34caed6e38baad93cf5e05dfe8f383f` |
| 60 | `instance` | [instNonUnitalNonAssocCommSemiring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instnonunitalnonassoccommsemiring.md) | 324 | `declaration-track:92ecbbf0bc8a9aa6b808f40b69a1ccd5a20ec81cf234e668445097a9d4e1db4d` |
| 61 | `instance` | [instNonUnitalCommSemiring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instnonunitalcommsemiring.md) | 329 | `declaration-track:5390c21e02b89aad08a199c2c2f86b8b0c64a7e8f7bbcc1483e706cedabd4864` |
| 62 | `instance` | [instCommSemiring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instcommsemiring.md) | 333 | `declaration-track:efea503c0d91bafd29a76f269ddedc3c9afaae8ca38ec8e34219043bc00badfd` |
| 63 | `instance` | [instHasDistribNeg](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/insthasdistribneg.md) | 337 | `declaration-track:8bc34561d9817be2b1903c7295539038d9746d49202257a297170575d16cfd3a` |
| 64 | `instance` | [instNonUnitalNonAssocCommRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instnonunitalnonassoccommring.md) | 341 | `declaration-track:c4cefeb793075bd3904562a38fc4439458b00abfca3110aaf4d37a44fb50e395` |
| 65 | `instance` | [instNonUnitalCommRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instnonunitalcommring.md) | 345 | `declaration-track:9250f6265326c34e90d068407a2c543b4479526c0374fea5e24a5040af2b3625` |
| 66 | `instance` | [instCommRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instcommring.md) | 349 | `declaration-track:08d20c8844215bc383ddc45835280bf0a6804d216767b10305adad858adb897d` |
| 67 | `def` | [mkRingHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/mkringhom.md) | 356 | `declaration-track:d8be470899466c9fd3969f6a2f5b71ed915911be1b8cf3e24b8d1d6e3bf249ca` |
| 68 | `instance` | [instDistribSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instdistribsmul.md) | 366 | `declaration-track:49684ad81b1968386fe8baa222a6db266241f4718d56e07ba0c695c4cdc1077b` |
| 69 | `instance` | [instDistribMulAction](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instdistribmulaction.md) | 371 | `declaration-track:e1646520d2b73692318fc97bd0c08c894aa2750b0d260e545a3db96e15d4c946` |
| 70 | `instance` | [instMulDistribMulAction](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instmuldistribmulaction.md) | 376 | `declaration-track:6b8a677f0264bc493e74441dfb38d4f7cdb16237a70bb23f7b05cf3c4b329bc7` |
| 71 | `instance` | [instModule](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instmodule.md) | 390 | `declaration-track:c851d0f8f2517f41f9201a26a5120ea95c6e9e31f8c59c2bce6203c858928057` |
| 72 | `def` | [mkCLM](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/mkclm.md) | 397 | `declaration-track:e7ea942f59583857d6d2a0e720045fe05872b92dd8feae44dbba7048c9b882a2` |
| 73 | `def` | [liftCLM](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/liftclm.md) | 406 | `declaration-track:db840ef7ae323807e7ab1b87f7de8e523c7ba27e5975292124687c4405554601` |
| 74 | `theorem` | [liftCLM_mk](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/liftclm-mk.md) | 413 | `result-track:eec32bb65a774af7bc3474289cfbffbc23ddf31faffe37842f50ed459121507c` |
| 75 | `instance` | [instAlgebra](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/instalgebra.md) | 422 | `declaration-track:d308f09916bd5b78b7d8bfb8e90629f5f7c04bb082bc9edb0957007c5378b23e` |
| 76 | `theorem` | [mk_algebraMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasicNamespaced.lean/declarations/mk-algebramap.md) | 428 | `result-track:e750faf34c70d7832de0c08525d4af4f0f4c36c1841af5c347531f461eeeac48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9885eff51dc4debb45cd7c2fb4820e3025573b2e19066d13f8b7898888d11e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant89a2b74ff749199e2554b8e0de09c1e2474ecd7b4c07638b97e404970e469603.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant89a2b74ff749199e2554b8e0de09c1e2474ecd7b4c07638b97e404970e469603.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
