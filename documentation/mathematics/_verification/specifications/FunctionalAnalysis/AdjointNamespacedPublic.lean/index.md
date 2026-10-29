# Verification target: Adjoint Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96c62ef8510b228769fe6fd9a1e8d0d59cfd0b70",
  "lexical_observation_count": 154,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Adjoint/Variant48328a127136f3370b974169236338dd8572ec6b444630969b41ccbb7b0f3276.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96c62ef8510b228769fe6fd9a1e8d0d59cfd0b70`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Adjoint/Variant48328a127136f3370b974169236338dd8572ec6b444630969b41ccbb7b0f3276.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Adjoint/Variant48328a127136f3370b974169236338dd8572ec6b444630969b41ccbb7b0f3276.lean.json)

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
| 1 | `def` | [adjointAux](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjointaux.md) | 83 | `declaration-track:4b6ccd10b1fc8c40a00d084c82fd537a0dfe79daa2b08720286b8c1bd01baae7` |
| 2 | `theorem` | [adjointAux_apply](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjointaux-apply.md) | 88 | `result-track:4bf6e7517520e251d1433e3fd105278a4fa4ebc1310b4c3bff22aed3f1b10a44` |
| 3 | `theorem` | [adjointAux_inner_left](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjointaux-inner-left.md) | 92 | `result-track:10126ca7d6c1eb7bbc3682eaac5e88ab211c68ec73e7e5f836ecff521e73f6ee` |
| 4 | `theorem` | [adjointAux_inner_right](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjointaux-inner-right.md) | 95 | `result-track:45bb926e3b668e57f4aeb9ec87f78ae11776f13620d0be99e00e8616ccc27ca9` |
| 5 | `theorem` | [adjointAux_adjointAux](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjointaux-adjointaux.md) | 101 | `result-track:f1e592094e3497754437371995b18e7cbce06282672db0e8cd911c82dd208137` |
| 6 | `theorem` | [adjointAux_norm](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjointaux-norm.md) | 107 | `result-track:4d7db11eb302fff91c57c01cbf99a66c4358c2e9d28a324952268bca08aac71f` |
| 7 | `def` | [adjoint](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint.md) | 122 | `declaration-track:5611a24d3c6d456c91ec5877334dac63285106a729468fbe42151e8bfb263fdf` |
| 8 | `theorem` | [adjoint_inner_left](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-inner-left.md) | 131 | `result-track:473549d680c87015ae675b2025e02a59bfb159e2d7ef2ed41d8ef87fa6a93148` |
| 9 | `theorem` | [adjoint_inner_right](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-inner-right.md) | 135 | `result-track:3d8d2df455b0507474b74f3e94d935444284556990e47bf1dcc1cf2f8a4e118a` |
| 10 | `theorem` | [adjoint_adjoint](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-adjoint-source-edition-2.md) | 140 | `result-track:b4adfc4789208a719d12cf71462ea2227d960b3e6411492c88aeeea5f942f603` |
| 11 | `theorem` | [adjoint_comp](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-comp.md) | 146 | `result-track:a38d8de55e3b7c1945ccaab121842d93b7126549172e0944083efd332fd41700` |
| 12 | `theorem` | [apply_norm_sq_eq_inner_adjoint_left](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/apply-norm-sq-eq-inner-adjoint-left.md) | 151 | `result-track:0f58ac21b75976497433891efcf47c8a55c57e8ccd610ed1e5498fa21c47384e` |
| 13 | `theorem` | [apply_norm_eq_sqrt_inner_adjoint_left](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/apply-norm-eq-sqrt-inner-adjoint-left.md) | 156 | `result-track:580b0455c19b488e7f6da11f211664d9d8362bb7be80b4d9f88be6485273743f` |
| 14 | `theorem` | [apply_norm_sq_eq_inner_adjoint_right](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/apply-norm-sq-eq-inner-adjoint-right.md) | 160 | `result-track:8523574aaf99dd0be5b9b1dd1ad5e8f61a8acbe3f288d51641525f1940090c86` |
| 15 | `theorem` | [apply_norm_eq_sqrt_inner_adjoint_right](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/apply-norm-eq-sqrt-inner-adjoint-right.md) | 165 | `result-track:86937bf4ec6714f8445f6376a8f27b837eba5069c0a6ae351a3907a673a43c87` |
| 16 | `theorem` | [eq_adjoint_iff](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/eq-adjoint-iff.md) | 171 | `result-track:821acda394bfd22df0325afa2b5d417a168e4dee18674d230bfe885437e466cd` |
| 17 | `theorem` | [Adjoint Namespaced Public](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/clm-adjoint-eq.md) | 177 | `result-track:a992e6deb7d1b96b332f7d34f0e494152cc8dafb04faf772b33abdcb005ba880` |
| 18 | `lemma` | [adjoint_id](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-id-source-edition-2.md) | 182 | `result-track:669900041f88d0d480c115dc1f09ca6b990dfbd3c674fde46cb0ea16778c2ebe` |
| 19 | `lemma` | [adjoint_one](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-one.md) | 185 | `result-track:32aff42765cc2575214b9bc7b761ddac3f1a1d63e3ececb02ce2dee2f48b5ee3` |
| 20 | `theorem` | [Adjoint Namespaced Public](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-subtypel.md) | 187 | `result-track:7f951c1cf9a70027ed538a7c753803a4c1560460bb969c94e0cd9e58ed0dd6be` |
| 21 | `theorem` | [Adjoint Namespaced Public](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-orthogonalprojectiononto.md) | 192 | `result-track:792a2bef8e72c2255096e77bbdf61971af3fb89d512bfc5c0ac1358bd749cf9c` |
| 22 | `theorem` | [orthogonal_ker](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/orthogonal-ker-source-edition-2.md) | 199 | `result-track:ac9ab4afaab8b13abd9ec0c867e73ab3fcf96554608f7010a494084ba5bd2a7f` |
| 23 | `theorem` | [orthogonal_range](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/orthogonal-range-source-edition-2.md) | 209 | `result-track:c682ddb4b2a99a7798050c3a1bd5099ef69acdfd797795894edceda5891e85cb` |
| 24 | `theorem` | [norm_eq_iInf_range_iff_adjoint_apply_eq_zero](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/norm-eq-iinf-range-iff-adjoint-apply-eq-zero.md) | 215 | `result-track:8bcc682d1ce152164b1207b0a481042ffbbc5bb35ad6fdf59143ecc2296abbfa` |
| 25 | `theorem` | [forall_norm_sub_apply_le_iff_adjoint_apply_sub_eq_zero](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/forall-norm-sub-apply-le-iff-adjoint-apply-sub-eq-zero.md) | 222 | `result-track:7c0b0e2ce7676478f0e22f5959a634a4858dc7f3e76cea2b15c6c1f8b9ee1f0e` |
| 26 | `theorem` | [ker_le_ker_iff_range_le_range](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/ker-le-ker-iff-range-le-range.md) | 231 | `result-track:415c764d30adc548af8bdb86a2f5e9e27f1c1e901da8cd7bac606f97f6c38d67` |
| 27 | `theorem` | [ker_adjoint_comp_self](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/ker-adjoint-comp-self-source-edition-2.md) | 239 | `result-track:921aeb1f436f9eeadefdc062a2b292ddbd3395a2c3722016a368690d645b4d1c` |
| 28 | `theorem` | [ker_self_comp_adjoint](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/ker-self-comp-adjoint.md) | 244 | `result-track:d6a4a4b25a905dd8649c277cd7f0824b6cd38e057e092155acaedfaa37c1deec` |
| 29 | `lemma` | [adjoint_comp_self_injective_iff](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-comp-self-injective-iff.md) | 252 | `result-track:8563cdbf1459a1e68d7b952ceef909d1ad9d2466c8a52cdc998c3f18456a0fec` |
| 30 | `lemma` | [self_comp_adjoint_injective_iff](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/self-comp-adjoint-injective-iff.md) | 262 | `result-track:3efa51a0e91be10079b6a24de4e1405eb551aa92c293508a8e68d9cc15f6f782` |
| 31 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 267 | `declaration-track:2e3b9d027a85df23f15265c326a25eeef92155d5bc7562536a0b236c0a9d71ce` |
| 32 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 270 | `declaration-track:f642f11a735b017ecd999bb787535c1e17c37592f87de45dcff4d91240793b59` |
| 33 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 273 | `declaration-track:1bd45cf164c2018ade4b146ac974461267a5eba8139be49ee63297d80e9589ec` |
| 34 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 276 | `declaration-track:7e5b7769600648566710272303f0e2628da420a577f4433623a9c1cd4bf0ce4e` |
| 35 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 279 | `declaration-track:21fbcc218eb9a36b012521a1bf49ac34bc48d43fe1fdf76a0ece07ae293a1abd` |
| 36 | `theorem` | [star_eq_adjoint](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/star-eq-adjoint-source-edition-2.md) | 282 | `result-track:52fe2027a48e9ad8fde72336eb1df5ea84b37b7700d7a6f3f994771aa768b7f6` |
| 37 | `theorem` | [isSelfAdjoint_iff'](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/isselfadjoint-iff-source-edition-2.md) | 286 | `result-track:ea2bebad9c69159e29033dd816122c6c607ca8cfe31b402cfa35b63179d3fbd8` |
| 38 | `lemma` | [id_mem_unitary](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/id-mem-unitary.md) | 289 | `result-track:38c7b7edc1c3250fc0286c8525ceb069131c99c8b5d8342d841785395bf7ecfa` |
| 39 | `theorem` | [norm_adjoint_comp_self](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/norm-adjoint-comp-self.md) | 291 | `result-track:6a5fb9dfcd2b70f4a7901399dc1b6e2e45479794953520cd812717fadbe27158` |
| 40 | `theorem` | [adjoint_comp_self_eq_zero_iff](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-comp-self-eq-zero-iff.md) | 310 | `result-track:0ee0b962ed776a230bb6b77c490c00bd2501c7a8c7a81cf7629c0c3907b65ea7` |
| 41 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 315 | `declaration-track:44a620f117ed989ccc555a0f6e86222298b43b460fbe2e77d5deb8250587c349` |
| 42 | `theorem` | [isAdjointPair_inner](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/isadjointpair-inner-source-edition-2.md) | 318 | `result-track:7ed73ce74c7885e853dea6d8399ba2153c505d24bcd5cb7527ce3ac6c338bab7` |
| 43 | `theorem` | [adjoint_innerSL_apply](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-innersl-apply.md) | 324 | `result-track:d03b090a7aa866314adaa8f4761d4d448d225aabd81b79fcc8e6856b6fa87df5` |
| 44 | `theorem` | [adjoint_toSpanSingleton](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-tospansingleton-source-edition-2.md) | 328 | `result-track:a28e0ef1cd42caffe1c20aab2df632abb5a54839f87733353ea31676d4adaf07` |
| 45 | `theorem` | [innerSL_apply_comp](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/innersl-apply-comp.md) | 332 | `result-track:9490f9f1d204eadd87cfb7cd462a7664428f9d7e9f170b27f34627cf742e3a74` |
| 46 | `theorem` | [innerSL_apply_comp_of_isSymmetric](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/innersl-apply-comp-of-issymmetric.md) | 337 | `result-track:57ce5ee2221f431bdc1b4f5f416adeff6470d0197f3944e841668db8d4e46aed` |
| 47 | `lemma` | [Adjoint Namespaced Public](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-rankone.md) | 341 | `result-track:b040aaa84af0d8f78405f4f8d26f299fbcfaf81c9a84693bfa72855d264982e7` |
| 48 | `lemma` | [Adjoint Namespaced Public](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/rankone-comp.md) | 345 | `result-track:6e9cbff3d9360ddbf8d5c9f0804545827c6e2e4a414014ad5e9acb323b1d6e8c` |
| 49 | `theorem` | [lipschitzWith_adjoint_apply](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/lipschitzwith-adjoint-apply.md) | 351 | `result-track:516ea512a5bc6c2425047992eef0d8ae032779510e77f05b13bcbdcd1fe55668` |
| 50 | `theorem` | [adjoint_eq](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-eq.md) | 372 | `result-track:25a358c8f29b6ff04ed270946c4dcb448920637978579eae01c8f1d6b7ba3d80` |
| 51 | `theorem` | [isSymmetric](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/issymmetric.md) | 376 | `result-track:9a8f0a9c4c9714de47dc6673cf78e43e0c8defd924b0a4d559e048960e98f3c9` |
| 52 | `theorem` | [conj_adjoint](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/conj-adjoint.md) | 381 | `result-track:930e8acb0047c187e8cc34374bce63b6a8b6ab91cb7f41deb8559bcceb25c89f` |
| 53 | `theorem` | [adjoint_conj](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-conj.md) | 388 | `result-track:71b66ff2cb5516222a046cd89e3b106467fed1e196ca3427842474dca1cc6298` |
| 54 | `theorem` | [Adjoint Namespaced Public](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/isselfadjoint-iff-issymmetric.md) | 394 | `result-track:7af7499355dd3bf6f775ad0244ce4ead5062918204be9787813f66544788f5ff` |
| 55 | `theorem` | [Adjoint Namespaced Public](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/isselfadjoint.md) | 399 | `result-track:688dd4bb2ae39c0a48b2a21ba45f2d274bcc8506abc42631562e40c99d27eab6` |
| 56 | `theorem` | [Adjoint Namespaced Public](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/isselfadjoint-starprojection.md) | 405 | `result-track:73cd6aa564e120044b5abc8e8d08eca3493c5a98902bb71a06e073cb9f8b5e69` |
| 57 | `theorem` | [conj_starProjection](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/conj-starprojection.md) | 410 | `result-track:b16a1a9530a8ff5d1af1a1136aa71e1682a2643875e6dc7d0a1b5036d16a0264` |
| 58 | `theorem` | [isStarNormal_iff_norm_eq_adjoint](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/isstarnormal-iff-norm-eq-adjoint.md) | 423 | `result-track:574eb4c83ab7c1b62495e5f556f373a38e752265d4caeb5e3ec71c739de39940` |
| 59 | `lemma` | [IsStarNormal.adjoint_apply_eq_zero_iff](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/isstarnormal-adjoint-apply-eq-zero-iff.md) | 436 | `result-track:ebb0811788d0b811005c171f7bcda3c08dcf14ab9b4b874b82ff0b376dd7480b` |
| 60 | `theorem` | [IsStarNormal.ker_adjoint_eq_ker](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/isstarnormal-ker-adjoint-eq-ker.md) | 442 | `result-track:2ac120f38885b9ffa0f23c0a42997194aa58b382ed6ee5255adc2eb85c036fb9` |
| 61 | `theorem` | [IsStarNormal.orthogonal_range](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/isstarnormal-orthogonal-range.md) | 450 | `result-track:349374af35832594e798e35a028f80dd924e93224cf844f4f78e18b6c890ecc1` |
| 62 | `theorem` | [IsIdempotentElem.isSelfAdjoint_iff_isStarNormal](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/isidempotentelem-isselfadjoint-iff-isstarnormal.md) | 458 | `result-track:e7b06709e6a1d59d02bfd21e5e8e2aa1735f6bb93d0fae358df63d9fe96d16fd` |
| 63 | `theorem` | [isStarProjection_iff_isIdempotentElem_and_isStarNormal](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/isstarprojection-iff-isidempotentelem-and-isstarnormal.md) | 475 | `result-track:1f0946eb99e6f044fb6c5f717b70ecdcfdde0ab4f9eebbdf7d0bb1366de2bd31` |
| 64 | `theorem` | [isStarProjection_iff_isSymmetricProjection](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/isstarprojection-iff-issymmetricprojection-source-edition-2.md) | 480 | `result-track:dbb8d2666e69a270c613d128e62364ee32aaf5704b1e828b2522f5474d98633b` |
| 65 | `theorem` | [IsStarProjection.ext_iff](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/isstarprojection-ext-iff-source-edition-2.md) | 489 | `result-track:abc61767ec80c00f7a3608d85d9887da8c377eeb4c9164342b094d4e5a17a94c` |
| 66 | `theorem` | [Adjoint Namespaced Public](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/isstarprojection-rankone-self.md) | 496 | `result-track:f060d80b5244b3849e19247b04f0ee07e0e0a69d7eecaf62accaf0649fc6a7ff` |
| 67 | `theorem` | [orthogonal_mem_invtSubmodule](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/orthogonal-mem-invtsubmodule.md) | 500 | `result-track:70fc90903a61dab7abd5af7402898bcef5cad41887db4c16a4c502921cdb89ef` |
| 68 | `theorem` | [mem_invtSubmodule_adjoint_iff](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/mem-invtsubmodule-adjoint-iff.md) | 507 | `result-track:b17ef02d7c97b4d3407750c29abab4ac20320a526c591eb6d92ddf425fab9fab` |
| 69 | `theorem` | [isStarProjection_starProjection](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/isstarprojection-starprojection.md) | 517 | `result-track:a5babb806eba4ae975945945dfb12e8b279d62aa0431abde3c8e5e611bdd2f21` |
| 70 | `theorem` | [isStarProjection_iff_eq_starProjection_range](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/isstarprojection-iff-eq-starprojection-range.md) | 523 | `result-track:3c6600293be8d890b8ed5e50998aadcd56d4658b2f3c900784e15d41e1e7998c` |
| 71 | `lemma` | [isStarProjection_iff_eq_starProjection](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/isstarprojection-iff-eq-starprojection.md) | 529 | `result-track:64b6d9fd1b36e82e76292a2f399a75ad94fc1f6ebad474b2cfd8981cdca30b9d` |
| 72 | `def` | [IsSymmetric.toSelfAdjoint](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/issymmetric-toselfadjoint.md) | 542 | `declaration-track:536f84d3fd0f8167ab6d519c6e069f4821aa0dfac2f5f0e0b8f06dbf66238747` |
| 73 | `theorem` | [IsSymmetric.coe_toSelfAdjoint](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/issymmetric-coe-toselfadjoint.md) | 545 | `result-track:41a6a0b0195edc35fc62dcccefdf5b1d486165b8521e806cfe1636a91ff00d2b` |
| 74 | `theorem` | [IsSymmetric.toSelfAdjoint_apply](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/issymmetric-toselfadjoint-apply.md) | 548 | `result-track:c6c26485531d6e0c86ff3729e3669786414f75db2e49d87f8d5ccbec0ec9c4f6` |
| 75 | `def` | [adjoint](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-source-edition-2.md) | 560 | `declaration-track:9c74947c1d970c9a0f990abb98d23c6e4ee7cec462688ad201779922242fe3a5` |
| 76 | `theorem` | [adjoint_toContinuousLinearMap](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-tocontinuouslinearmap.md) | 576 | `result-track:56d246d4d9456a957cd2f3277b03a33d5e381359497f6957a9313a0043641f8a` |
| 77 | `theorem` | [adjoint_eq_toCLM_adjoint](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-eq-toclm-adjoint.md) | 582 | `result-track:9f14f1213d3ceb9dc7a59db6377952aceea3582fa66ab5f5ad42fc99b1a207d5` |
| 78 | `theorem` | [Adjoint Namespaced Public](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-tolinearmap.md) | 588 | `result-track:552b8007f24f2499becfc07af1a444216fe67fb8f539ea6da9cf0b8c736a941b` |
| 79 | `theorem` | [adjoint_inner_left](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-inner-left-source-edition-2.md) | 595 | `result-track:854742fb2d329e6362498fe36a1e32f17eab7c806e8fca096d6fc3c85f013f9d` |
| 80 | `theorem` | [adjoint_inner_right](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-inner-right-source-edition-2.md) | 602 | `result-track:eafe13b3791e9c5c4ef7b3b09e6baf12f297605abecc9ac596171173a987bdc7` |
| 81 | `theorem` | [adjoint_adjoint](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-adjoint.md) | 610 | `result-track:aa968d2987f5c03a0b2d7b0f4345c9cec54256d3e4040d183be703a8cd478a06` |
| 82 | `theorem` | [adjoint_comp](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-comp-source-edition-2.md) | 618 | `result-track:d415c5d871f8dc4509f49b6613d559c8e6e915864ea3adba1af8cec47b8146ec` |
| 83 | `theorem` | [eq_adjoint_iff](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/eq-adjoint-iff-source-edition-2.md) | 626 | `result-track:e08bb8fa8600b1bd2da32790608485267b6fd8111c4288f610cd77d029b69a22` |
| 84 | `theorem` | [IsSymmetric.adjoint_eq](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/issymmetric-adjoint-eq.md) | 633 | `result-track:cd0a7d23c0b1f8fae94eb333791a65e761dc4cae7698a47088c76940c914a8c5` |
| 85 | `lemma` | [adjoint_id](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-id.md) | 637 | `result-track:0500b099ef4288dac3a259eafca6fa832d85eb1d6edd288d730582bab37c86d9` |
| 86 | `lemma` | [adjoint_one](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-one-source-edition-2.md) | 638 | `result-track:a4976a167394df8aa76c6999b608ccc397d5f0746495d9f9f2e9c6f8a4526d43` |
| 87 | `lemma` | [orthogonal_ker](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/orthogonal-ker.md) | 642 | `result-track:2077112ff89304ebf98f216799e7fc5fa14502e51234c14a9272295e15c55fb9` |
| 88 | `lemma` | [orthogonal_range](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/orthogonal-range.md) | 649 | `result-track:a413a354098a6af8356447ace8a0f0c517bdb3413c009f3d95ca28a3cde597fb` |
| 89 | `lemma` | [ker_adjoint_comp_self](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/ker-adjoint-comp-self.md) | 655 | `result-track:0872f1709206c303d357208dcabad2e3a6282de5133fc17a0557eb53380553cc` |
| 90 | `lemma` | [ker_self_comp_adjoint](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/ker-self-comp-adjoint-source-edition-2.md) | 660 | `result-track:ee5cd0d360e342cf19f28794308d5f62e5afc8caf50cc779a4b169ce4ddcc2e1` |
| 91 | `lemma` | [adjoint_comp_self_injective_iff](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-comp-self-injective-iff-source-edition-2.md) | 668 | `result-track:bac5332f5ee4bc8e9b67629c4a2debc749e6c8a42fe93eb92a3ccdac85078fca` |
| 92 | `lemma` | [self_comp_adjoint_injective_iff](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/self-comp-adjoint-injective-iff-source-edition-2.md) | 677 | `result-track:f1701a673d5d439421618c859a356c5233df14a27f28346be77dfd3866d5ab37` |
| 93 | `lemma` | [range_adjoint_comp_self](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/range-adjoint-comp-self.md) | 682 | `result-track:3d03fc5c7cedb2cd76a8ea99f7dbb44db5456629f2ce2a350862896e8c0890da` |
| 94 | `lemma` | [range_self_comp_adjoint](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/range-self-comp-adjoint.md) | 687 | `result-track:0bccade4e5b5420a844f95ab9854ac0314d6237aa3e14a3eac6c5767280a9d16` |
| 95 | `theorem` | [finrank_range_adjoint](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/finrank-range-adjoint.md) | 691 | `result-track:c6a5d128b3313c2f819d470d06f3cc4cf4bd5d198028ec739e334c8f7be5e957` |
| 96 | `theorem` | [eq_adjoint_iff_basis](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/eq-adjoint-iff-basis.md) | 700 | `result-track:9a22e7f0e76295d4469f210fdfe5b1e326f709c4569f1a077d86c1c557663e89` |
| 97 | `theorem` | [eq_adjoint_iff_basis_left](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/eq-adjoint-iff-basis-left.md) | 707 | `result-track:f2c89323bcff35199939a6559d1937bf666a11e6b208b838f3af6da5cb50f5cc` |
| 98 | `theorem` | [eq_adjoint_iff_basis_right](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/eq-adjoint-iff-basis-right.md) | 712 | `result-track:2b8ff792bdad1cc7bce2f4a62c1353252447d7b5e0903eaee1f62be04e838e05` |
| 99 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/instance.md) | 719 | `declaration-track:01599976694accb268c91c4e210a139b6d29b310933d92c78cd7a8e149d97f21` |
| 100 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 722 | `declaration-track:feba95b9695709e739d4e91307fa9b93abf0be6db16aeabaf3e00804c41965e7` |
| 101 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 725 | `declaration-track:b514d8b7940261a72d2e11b4b70a6731bb91ffc86b1a13ffb2aaf6876d0f2a76` |
| 102 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 728 | `declaration-track:2f00390109e2a714279aef758e150fd61a3d04b385f90f44091276507ccfa3a3` |
| 103 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 731 | `declaration-track:1ff9bf0cf0092c731d5aa14a7464ba817b3545f46d1417fb8c9bfff4af2b1275` |
| 104 | `theorem` | [star_eq_adjoint](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/star-eq-adjoint.md) | 734 | `result-track:0d3cb3c49cf9194fdc41a788e2b040c11fdd44bca4234dff72472ad60ab5089f` |
| 105 | `theorem` | [isSelfAdjoint_iff'](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/isselfadjoint-iff.md) | 738 | `result-track:45066861f8aabc43b476aa127e79eedaf879fa9a13411f1bc43b86009f92bdc4` |
| 106 | `theorem` | [isSymmetric_iff_isSelfAdjoint](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/issymmetric-iff-isselfadjoint.md) | 741 | `result-track:ab6124e06e85f1eb0111a46027a164924ffe8e80febb03cff34d8440348ff9aa` |
| 107 | `lemma` | [id_mem_unitary](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/id-mem-unitary-source-edition-2.md) | 745 | `result-track:8796bb0f8fd1c51f5ae8afeb2d4f51c7d21f7e28a38804c8bcdabe87ca95766c` |
| 108 | `theorem` | [isAdjointPair_inner](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/isadjointpair-inner.md) | 747 | `result-track:08213ce2e735de3e13152670586f9ecd447a500fd97746377d8bb1641d8a8a8e` |
| 109 | `theorem` | [IsSymmetric.conj_adjoint](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/issymmetric-conj-adjoint.md) | 758 | `result-track:815ba29746077c7e41ab430855462915f349c8278c6c72816a5c30221329fef1` |
| 110 | `theorem` | [isSymmetric_self_comp_adjoint](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/issymmetric-self-comp-adjoint.md) | 761 | `result-track:79c21dcf5f954f3df199febd5be0cd0d88c56e8fa6f09beeec797b1dc88a47da` |
| 111 | `theorem` | [IsSymmetric.adjoint_conj](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/issymmetric-adjoint-conj.md) | 765 | `result-track:9bead984784d0dbe315e635305e0f616e3e156f327ca604dc2d4b7e61efaf3c3` |
| 112 | `theorem` | [isSymmetric_adjoint_comp_self](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/issymmetric-adjoint-comp-self.md) | 770 | `result-track:244325d667456b3a5d042793cef962bb4e10238e2d1e9a69e069acf4ae98b7f6` |
| 113 | `theorem` | [isSymmetric_adjoint_mul_self](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/issymmetric-adjoint-mul-self.md) | 775 | `result-track:e66d9902de7ab2d814041db870fcb70e9fab8d37f94ef24322351bd905ff4c17` |
| 114 | `theorem` | [re_inner_adjoint_mul_self_nonneg](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/re-inner-adjoint-mul-self-nonneg.md) | 780 | `result-track:aab3d79a535d10a63203db1e5aeed1bc3b41bda5c4b805dd9439ddef6bebcfb8` |
| 115 | `theorem` | [im_inner_adjoint_mul_self_eq_zero](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/im-inner-adjoint-mul-self-eq-zero.md) | 787 | `result-track:62cb3596da41639f2bf21e6532bf82fc6d5a9278922990b685bc15f50d404b04` |
| 116 | `theorem` | [isSelfAdjoint_toContinuousLinearMap_iff](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/isselfadjoint-tocontinuouslinearmap-iff.md) | 792 | `result-track:95015d4295e05988f30be8d7464ee5bd7049a6c80e333c64aaacfba82ae374be` |
| 117 | `theorem` | [Adjoint Namespaced Public](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/isselfadjoint-tolinearmap-iff.md) | 798 | `result-track:056c6723452f533cf3a13db4ab6e96a34a3c30d8b2fc3decda20044d85ebb6c3` |
| 118 | `theorem` | [isStarProjection_toContinuousLinearMap_iff](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/isstarprojection-tocontinuouslinearmap-iff.md) | 806 | `result-track:ce79ab8a196117e956b2d471b520e362db671da719d3d783fffa0699040ee15d` |
| 119 | `theorem` | [isStarProjection_iff_isSymmetricProjection](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/isstarprojection-iff-issymmetricprojection.md) | 812 | `result-track:7efa391a01d99089e1ad70e5336c5b279a9aad17e847abd763289cf3da962dad` |
| 120 | `theorem` | [IsStarProjection.ext_iff](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/isstarprojection-ext-iff.md) | 819 | `result-track:79ffe6126c0d9cf1d706409171df0f6b65721c94bc85e427327df20258cd2b2a` |
| 121 | `theorem` | [adjoint_innerₛₗ_apply](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-inner-apply.md) | 829 | `result-track:6a70e2693709fb98599f17222c5033d7d52cc5f73f95fb4008bad486edd58fe3` |
| 122 | `theorem` | [adjoint_toSpanSingleton](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-tospansingleton.md) | 834 | `result-track:86e3bc1c94d7e3da8854159c53fbfdec1fd998484c1f815dbe58e1337c05bf5e` |
| 123 | `theorem` | [Adjoint Namespaced Public](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/mem-invtsubmodule-adjoint-iff-source-line-841-occurrence-2.md) | 841 | `result-track:5a0aef373dfae33ec5f3c17009b8102040f7dd5e1e5aea144510928307486255` |
| 124 | `theorem` | [inner_map_map_iff_adjoint_comp_self](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/inner-map-map-iff-adjoint-comp-self.md) | 857 | `result-track:5bc401b4387a2439880ea680c55a558f681378cd8a5177a57c3d3cb34947a7ea` |
| 125 | `theorem` | [norm_map_iff_adjoint_comp_self](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/norm-map-iff-adjoint-comp-self.md) | 864 | `result-track:ce73a17658dcea002b7e68658a6a6e7e51f0c89532da1905604ffc088d6afd3e` |
| 126 | `theorem` | [isometry_iff_adjoint_comp_self](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/isometry-iff-adjoint-comp-self.md) | 868 | `result-track:efa9c56b63a8a672d90bb2d5b3b4c7e012df7cd9ab066bdbff9bef0de003383b` |
| 127 | `lemma` | [Adjoint Namespaced Public](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-eq-symm.md) | 873 | `result-track:065a5a00cdf43c3e1576b807031584b4c7066ccb834de205ec8165ff066aca0b` |
| 128 | `theorem` | [Adjoint Namespaced Public](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/adjoint-tolinearmap-eq-symm.md) | 881 | `result-track:a2c24d979ba468e7ed7d294274188b0c841c41070434605f8fa4e63105ae5127` |
| 129 | `lemma` | [Adjoint Namespaced Public](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/star-eq-symm.md) | 889 | `result-track:7ab5c93ef0c091a2d5cace868ec39b9870179bd52fb10d58accdd4e060cf5f19` |
| 130 | `theorem` | [norm_map_of_mem_unitary](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/norm-map-of-mem-unitary.md) | 893 | `result-track:fe385d6b1c24c4893e1dd4c42556654de18a16d9b86b1e5b81741e4327d49055` |
| 131 | `theorem` | [inner_map_map_of_mem_unitary](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/inner-map-map-of-mem-unitary.md) | 899 | `result-track:8f588b84b359d1ca0208115b037bb520d49cbe2fa6448d20631d079e984a55db` |
| 132 | `def` | [conjStarAlgEquiv](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/conjstaralgequiv.md) | 916 | `declaration-track:47ef3ec26f80306992010e17e46694d0b04d1cb210e7a29509d3cb06813e9483` |
| 133 | `lemma` | [conjStarAlgEquiv_apply_apply](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/conjstaralgequiv-apply-apply.md) | 920 | `result-track:efebb388c06e3582063d72a665c015f56d9cd385dc62515d93e7d3b471c78581` |
| 134 | `theorem` | [symm_conjStarAlgEquiv_apply_apply](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/symm-conjstaralgequiv-apply-apply.md) | 923 | `result-track:5c5c024d3ea3649e35de80a6d5435fe399d29ab2106146a5570cff55d5c10458` |
| 135 | `lemma` | [conjStarAlgEquiv_apply](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/conjstaralgequiv-apply.md) | 926 | `result-track:54aa4a43d3b5017bc340e5153d2508401a64757e51eed243fc6b93162522325a` |
| 136 | `lemma` | [symm_conjStarAlgEquiv](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/symm-conjstaralgequiv.md) | 929 | `result-track:dd3abe6969c4ca9b4c6cba68e26f6206f8af9c104e7f8f7edb669d95f13ff06f` |
| 137 | `theorem` | [conjStarAlgEquiv_refl](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/conjstaralgequiv-refl.md) | 932 | `result-track:c4e0823aee3201354507f734df055bb83f89b766ec883663c3a0aaa4cf5d9161` |
| 138 | `theorem` | [conjStarAlgEquiv_trans](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/conjstaralgequiv-trans.md) | 934 | `result-track:f1a33163d0e374e5a8fbed0baeec3b40020be5c560aba3adca109458eab9422a` |
| 139 | `theorem` | [conjStarAlgEquiv_ext_iff](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/conjstaralgequiv-ext-iff.md) | 940 | `result-track:b9e87d649219359f27bd97451aa7aff92e3ea04e838adb7585528dfd9b7fcee4` |
| 140 | `theorem` | [norm_map](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/norm-map.md) | 971 | `result-track:4b09064c4d0b170610ab6de433539fff67badb80b76fa8034184a428550cfd75` |
| 141 | `theorem` | [inner_map_map](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/inner-map-map.md) | 974 | `result-track:60b4d7ebaeb5fcd17bdde5ac0244c9cfbc217ecda8c5c33edcdcf9d3c4db62f0` |
| 142 | `def` | [linearIsometryEquiv](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/linearisometryequiv.md) | 980 | `declaration-track:c542f3f2c1f36634c5dc8ffad819090d6dbbcc5754c4383fd846ae2f531971be` |
| 143 | `lemma` | [coe_linearIsometryEquiv_apply](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/coe-linearisometryequiv-apply.md) | 1000 | `result-track:1c20cca5c161a55d3b929a49b00202584e1c9a335e3d763992c83422d7e960c3` |
| 144 | `lemma` | [coe_symm_linearIsometryEquiv_apply](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/coe-symm-linearisometryequiv-apply.md) | 1005 | `result-track:2df556a8c2cf5a70d7175aa2b1371f1520b7bf3e3b2908220c6637f86d5be199` |
| 145 | `theorem` | [conjStarAlgEquiv_unitaryLinearIsometryEquiv](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/conjstaralgequiv-unitarylinearisometryequiv.md) | 1009 | `result-track:6779f98861d22ea415b79007911d7154083b379b3f588e1bc5f7e06535188c0a` |
| 146 | `theorem` | [conjStarAlgAut_symm_unitaryLinearIsometryEquiv](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/conjstaralgaut-symm-unitarylinearisometryequiv.md) | 1012 | `result-track:62569660e36ab12240d79934d8185723961458ce28e374c519468df33a53a7be` |
| 147 | `lemma` | [Matrix.toLin_conjTranspose](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/matrix-tolin-conjtranspose.md) | 1030 | `result-track:0ca4398cf1ea02621a079e351ba277fd65a0194fa06428fba7d2707642b80b3a` |
| 148 | `lemma` | [LinearMap.toMatrix_adjoint](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/linearmap-tomatrix-adjoint.md) | 1039 | `result-track:d2d34c9573599f3f1f5d428b27a190fc5c71443dd9fbb56d954aa7d4c9c5c917` |
| 149 | `def` | [LinearMap.toMatrixOrthonormal](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/linearmap-tomatrixorthonormal.md) | 1046 | `declaration-track:34343105c454a43755d663032fc64caee3b4d6b5c87203241730fd8b655e577d` |
| 150 | `lemma` | [LinearMap.toMatrixOrthonormal_apply_apply](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/linearmap-tomatrixorthonormal-apply-apply.md) | 1051 | `result-track:fb56e93d6010905ee3b1842cd8bca68035d6b32cc4a642a2c023ed8240de9323` |
| 151 | `lemma` | [LinearMap.toMatrixOrthonormal_reindex](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/linearmap-tomatrixorthonormal-reindex.md) | 1057 | `result-track:549a83f1a36c4b3b8935ce601104d2c4ced1afe7fec236b2248edf784bf4bb67` |
| 152 | `theorem` | [Matrix.toEuclideanLin_conjTranspose_eq_adjoint](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/matrix-toeuclideanlin-conjtranspose-eq-adjoint.md) | 1069 | `result-track:638c2b109296f1696455961ed8855bd41d8d8c099dc1ca4310ec35bce268a804` |
| 153 | `theorem` | [LinearIsometry.adjoint_comp_self](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/linearisometry-adjoint-comp-self.md) | 1076 | `result-track:aa0a500690c92b2e8b077e687aeb437c572489b78489779a63c119f2744c38b2` |
| 154 | `theorem` | [LinearIsometry.adjoint_comp_self'](../../../../FunctionalAnalysis/AdjointNamespacedPublic.lean/declarations/linearisometry-adjoint-comp-self-source-edition-2.md) | 1084 | `result-track:fcfaaa7a8800a3e5a08c93e7adbb0e02c3037853abf95b709df0c50b67dff65d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=69461548407b13deb8b2ff4a574d380f682a73934e8951a92be32c8b893f4788 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Adjoint/Variant48328a127136f3370b974169236338dd8572ec6b444630969b41ccbb7b0f3276.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Adjoint/Variant48328a127136f3370b974169236338dd8572ec6b444630969b41ccbb7b0f3276.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
