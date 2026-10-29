# Verification target: Topology Compact Open Is Open Set Of Maps To

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9be918d937c5a280589eccddca836f3ccb3fa86a",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variantf11b62472243855d41f408dfa1660a113c984b8a5c615f770264d35ae8fa4516.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9be918d937c5a280589eccddca836f3ccb3fa86a`.

Source path: `GRWTSK/Topology/GeneralTopology/CompactOpen/Variantf11b62472243855d41f408dfa1660a113c984b8a5c615f770264d35ae8fa4516.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompactOpen/Variantf11b62472243855d41f408dfa1660a113c984b8a5c615f770264d35ae8fa4516.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Hom.ContinuousEval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Regular` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [compactOpen](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/compactopen.md) | 47 | `declaration-track:6868c99afa2cc733fa100eafd0ad4b5a97b2b371477e3ad8d184ef37fed61675` |
| 2 | `theorem` | [compactOpen_eq](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/compactopen-eq.md) | 51 | `result-track:6a7cfa5d914b630762c86d4c219bfaeec326d123cb7c602670391ad8ef73ec7d` |
| 3 | `theorem` | [isOpen_setOf_mapsTo](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/isopen-setof-mapsto.md) | 55 | `result-track:ea6f48fb434d9930f01f4c4d6623b955252c643152071ba4feffb44fb6d823f5` |
| 4 | `lemma` | [eventually_mapsTo](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/eventually-mapsto.md) | 59 | `result-track:98d618dd4085000322736c0ce9b20aa25b8493551893ecc3bd5d14df5ad253e6` |
| 5 | `lemma` | [nhds_compactOpen](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/nhds-compactopen.md) | 63 | `result-track:297bdea186e0f6f35718e24b8732b08b715947fe2171bf3d01efabd449bd57f5` |
| 6 | `lemma` | [tendsto_nhds_compactOpen](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/tendsto-nhds-compactopen.md) | 69 | `result-track:0db6d9b9c44f368e932c6d27284f9e57e48807ce9da3ace5614a085f03716caf` |
| 7 | `lemma` | [continuous_compactOpen](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/continuous-compactopen.md) | 74 | `result-track:b2d4a1642332761fafaefa8c76e53b058d3ab0a5e35bd04d3551dd7f8d1d7afd` |
| 8 | `lemma` | [hasBasis_nhds](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/hasbasis-nhds.md) | 78 | `result-track:b722f5612b9784b9e5dae21a4a4a7db08501d3e5831e971e082cab1b18bfa853` |
| 9 | `lemma` | [mem_nhds_iff](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/mem-nhds-iff.md) | 87 | `result-track:0fa0667883a19f471b5e48e66206755b91f0c7d6b0334730da14e767ae9ab7e9` |
| 10 | `lemma` | [_root_.Filter.HasBasis.nhds_continuousMapConst](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/root-filter-hasbasis-nhds-continuousmapconst.md) | 93 | `result-track:ca05258785ffd9b373e92988bd7455cbe2087047780ea6b6fae1766799e1649d` |
| 11 | `theorem` | [continuous_postcomp](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/continuous-postcomp.md) | 120 | `result-track:a5aa298405de577abd4f1901efb24a766813b3a2c7716a2e376eb3d7e9c4712b` |
| 12 | `theorem` | [isInducing_postcomp](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/isinducing-postcomp.md) | 125 | `result-track:eb1e9a5194b5cb0601a4eb2330986273997b1c122ee29f01346efb9c7c888f24` |
| 13 | `theorem` | [isEmbedding_postcomp](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/isembedding-postcomp.md) | 135 | `result-track:b391438e2d4ffb707008696a62ba5e26b9ec82e24e94dc61be7b0dc97853954b` |
| 14 | `theorem` | [continuous_precomp](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/continuous-precomp.md) | 144 | `result-track:ae372422388ece06fc71337fa0e638ad00f9d1f62a811c3b0bb22719aca676ca` |
| 15 | `def` | [compRightContinuousMap](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/comprightcontinuousmap.md) | 152 | `declaration-track:0f935d8bc7c8ac55ba7bf7121e2d1fd6cf313541e2616037f6dad11abb17e4e2` |
| 16 | `def` | [_root_.Homeomorph.arrowCongr](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/root-homeomorph-arrowcongr.md) | 158 | `declaration-track:afcf983c537df3ab0569d36c87c7a370981677ec215c63c86cac6074e89c14ce` |
| 17 | `lemma` | [continuous_prodMk_const](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/continuous-prodmk-const.md) | 168 | `result-track:036a218c03528eeb1ca834ac5993bfd23c8079c52266d91c360170a126f0d05e` |
| 18 | `theorem` | [continuous_comp'](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/continuous-comp.md) | 183 | `result-track:7f3b15fb37b9641e8cd2c3737d40cebc8f0f2b26507de90d2fdd40c0d0964645` |
| 19 | `lemma` | [_root_.Filter.Tendsto.compCM](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/root-filter-tendsto-compcm.md) | 194 | `result-track:ebcf2ac60105c64b83087b3d41d98b3f46fdcb4d3a9e5b2010ffa43da5b9daa8` |
| 20 | `lemma` | [_root_.ContinuousAt.compCM](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/root-continuousat-compcm.md) | 202 | `result-track:679f1ec3bd84886561ad2129cb5051b30c68af12aa62b11e3248aceb6cc9f3ba` |
| 21 | `lemma` | [_root_.ContinuousWithinAt.compCM](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/root-continuouswithinat-compcm.md) | 206 | `result-track:f160c26b34cf3aa0b5b4966d436ac02258548d728c3bcbda80acc6ebe7298167` |
| 22 | `lemma` | [_root_.ContinuousOn.compCM](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/root-continuouson-compcm.md) | 210 | `result-track:b6b40b5e6e787b52d28381bdb7dd32b653a02585b1abbb1c2a2802c5439ab1b4` |
| 23 | `lemma` | [_root_.Continuous.compCM](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/root-continuous-compcm.md) | 214 | `result-track:2f25f6bc2bd36b9dfc5553dca40d7505b5dd1079987cdb8fa6cc766c5bfffff2` |
| 24 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/instance-source-edition-7.md) | 224 | `declaration-track:8839feb5b4ff3f04ad6592f4fe847c422457047050da6e72eca811ad18104374` |
| 25 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/instance-source-edition-8.md) | 231 | `declaration-track:be2f5fe1c2b2c1e9830e61aba369fc1b31200d7498ced06d681bb10d82769081` |
| 26 | `lemma` | [isClosed_setOf_mapsTo](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/isclosed-setof-mapsto.md) | 235 | `result-track:a8c6c3da7fcd1bbcd57f762f434beb6dbc6f6a999cb47827f431cfb63ea83280` |
| 27 | `lemma` | [isClopen_setOf_mapsTo](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/isclopen-setof-mapsto.md) | 239 | `result-track:74bde4c278aabe10ef2a2516274b8e3f07f2e0fe91fa61350771dc10754738c7` |
| 28 | `lemma` | [specializes_coe](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/specializes-coe.md) | 244 | `result-track:6666ef9ba2734b943d1186045f9f08dbcd6df524a966ebe58ca2fd73a3c8ba3c` |
| 29 | `lemma` | [inseparable_coe](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/inseparable-coe.md) | 251 | `result-track:afd71f4c2e5113e5c38a04f62e27626dd35735d589354af8e3730528fa73ccc6` |
| 30 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/instance.md) | 254 | `declaration-track:11cf426522577080d38311e0b8b7907eb5b21d41316e69d17f283eacff1a261c` |
| 31 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/instance-source-edition-3.md) | 257 | `declaration-track:51aced753824c5f52c498e6b761050632a28681dc0cebd16691a540bcb97ef74` |
| 32 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/instance-source-edition-5.md) | 262 | `declaration-track:66d9d9ccd849874b6f97b959ee4dccb3c839815e074d92f256cc0c68fd7880d8` |
| 33 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/instance-source-edition-4.md) | 265 | `declaration-track:5b63771ab6580cbf656cc31af219dc39fe6d7aef981a98778f14dd7db18a7cdf` |
| 34 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/instance-source-edition-9.md) | 268 | `declaration-track:f476b4e82aa23e3a591298f36f66a507b705cd0a8e1f6aae8856e94e368b3735` |
| 35 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/instance-source-edition-6.md) | 270 | `declaration-track:67bf7cafb8c38120920fd57c303da99dc86e2e0471686085fdc58f6cc0e64119` |
| 36 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/instance-source-edition-2.md) | 280 | `declaration-track:1abad767da5065bd11d39c08dd6cc42d80c193050eab4c6f33010529184d74fe` |
| 37 | `def` | [homeoFnOfDiscrete](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/homeofnofdiscrete.md) | 290 | `declaration-track:45a0a1018777743b20ca3346734b8b657fea23ec5d06de4897b2a344b8e1e23a` |
| 38 | `lemma` | [coe_homeoFnOfDiscrete](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/coe-homeofnofdiscrete.md) | 297 | `result-track:56691760d7ef38c296135049164d2bd6fa4f7606c3e8a3d1cb74797cf913fb44` |
| 39 | `lemma` | [homeoFnOfDiscrete_symm_apply](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/homeofnofdiscrete-symm-apply.md) | 299 | `result-track:32cec0a9ce2fa54a6d20d636e7e9fef9b1e600b3cf878db63da6277e1b95ee87` |
| 40 | `lemma` | [isHomeomorph_coe](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/ishomeomorph-coe.md) | 301 | `result-track:fc4be30da64516cd83da9cc2c6be25e606b9a003aebd85bc5bff725cd25d8c06` |
| 41 | `theorem` | [continuous_restrict](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/continuous-restrict.md) | 309 | `result-track:ceccfffd756864ef2efc52da942cc060df26842350dfea3dd427d82dbef66a17` |
| 42 | `theorem` | [compactOpen_le_induced](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/compactopen-le-induced.md) | 312 | `result-track:c2ce87c5a5dce6b1fe74c2913c642f772f97810fe76b25ada37da8f636f31607` |
| 43 | `theorem` | [compactOpen_eq_iInf_induced](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/compactopen-eq-iinf-induced.md) | 321 | `result-track:f119708ec2271d10a8e4ded52b9c6def95005f9c76104deb2d30d0fd69371a18` |
| 44 | `theorem` | [nhds_compactOpen_eq_iInf_nhds_induced](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/nhds-compactopen-eq-iinf-nhds-induced.md) | 330 | `result-track:498fceb515f1b4a6be0390ae62098b0128f34bcc0b3d102d97f7490c2cb59afb` |
| 45 | `theorem` | [tendsto_compactOpen_restrict](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/tendsto-compactopen-restrict.md) | 335 | `result-track:663990ef42e1818739b9e30034f4d43ed2812cc4a8db6d78c08e568b9ec16328` |
| 46 | `theorem` | [tendsto_compactOpen_iff_forall](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/tendsto-compactopen-iff-forall.md) | 340 | `result-track:1ba95e2fa92a360bbecc13e15e6a800406e2b3999bbf07c522c37070cce6c7a4` |
| 47 | `theorem` | [exists_tendsto_compactOpen_iff_forall](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/exists-tendsto-compactopen-iff-forall.md) | 348 | `result-track:415a97946de0a0c8bff89755962572ec90d8fabc01a6799b2670e5c9eb8fd3d7` |
| 48 | `def` | [coev](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/coev.md) | 385 | `declaration-track:73f11c5c6d0c188a2721a168d8429e7c477c8c71f4b117c1b08efebc2f2daed2` |
| 49 | `theorem` | [image_coev](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/image-coev.md) | 390 | `result-track:6b5d2143d524ac11fe9b7e0843ea21d9f8b3044aab044f3e2a4444b0b6b52270` |
| 50 | `theorem` | [continuous_coev](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/continuous-coev.md) | 393 | `result-track:80c807914071e793f05ce87ea20a926116469b3f6a31fda1b37b8bbebb12d8f6` |
| 51 | `def` | [curry](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/curry.md) | 404 | `declaration-track:907f37b469c48d2d311a80cbb2ee2f68b4e861140b2f0a333daa1cb4e6a8d1d1` |
| 52 | `theorem` | [curry_apply](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/curry-apply.md) | 409 | `result-track:2f8457f2f419c42509f937f225b807e719ba50c9ed1cdef142ee55a87c338e4b` |
| 53 | `theorem` | [continuous_of_continuous_uncurry](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/continuous-of-continuous-uncurry.md) | 414 | `result-track:316683de6f9400f036d96b45d4fa60db2e6b4b2a63bb8c715fd4532b3745423d` |
| 54 | `theorem` | [continuous_curry](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/continuous-curry.md) | 419 | `result-track:a27e64fc94fe4cf413dea857cbd0a41f125fafaa0507c0fc13035c6b0acd268f` |
| 55 | `theorem` | [continuous_uncurry_of_continuous](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/continuous-uncurry-of-continuous.md) | 427 | `result-track:eb1dcc7641bdf7ae2c792897c9afea9fe4f88c38954ac7ad1c1d885f7479cac0` |
| 56 | `def` | [uncurry](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/uncurry.md) | 435 | `declaration-track:ea9e0a0a92d21f5cc55162f2fa70b040052c1644f61bd344cd8d3e7cec3f1ac6` |
| 57 | `theorem` | [continuous_uncurry](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/continuous-uncurry.md) | 439 | `result-track:201ee51f6318902bde029d2d6bec20c69d2267bb8670d470c145139ad1cf5c8a` |
| 58 | `def` | [const'](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/const.md) | 447 | `declaration-track:c85edfe45d6ae5f3b87227134ed0b3b35b46f513529eeeec6aefbe99de7140ea` |
| 59 | `theorem` | [coe_const'](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/coe-const.md) | 451 | `result-track:38dac0d0c998af5a40ec5842d546da61170bd19edd0ae8a942c2f3075b4ddb0b` |
| 60 | `theorem` | [continuous_const'](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/continuous-const.md) | 454 | `result-track:284d2dfa041c3aa47de901a988a04d9d8ccd869638ac60b234e41c98b6b9f922` |
| 61 | `def` | [curry](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/curry-source-edition-2.md) | 471 | `declaration-track:e6cbf7eb89fbb6477e3a3b5e5f6a159fd58b2b246857ce8629a635f358dc94ac` |
| 62 | `def` | [continuousMapOfUnique](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/continuousmapofunique.md) | 476 | `declaration-track:4ba19f6eee7a2c2d8534f9fe7b84a656777925fdee28b984887f4df30bef619d` |
| 63 | `theorem` | [continuousMapOfUnique_apply](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/continuousmapofunique-apply.md) | 488 | `result-track:11c45f6351a60814168c86d65849210426c88ec7dbf27b5a4771c66d1e648715` |
| 64 | `theorem` | [continuousMapOfUnique_symm_apply](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/continuousmapofunique-symm-apply.md) | 492 | `result-track:d10d7731a49e212fd20671026f1ca665563172069a3fd5bd4773a979134c5bf9` |
| 65 | `theorem` | [Topology.IsQuotientMap.continuous_lift_prod_left](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/topology-isquotientmap-continuous-lift-prod-left.md) | 503 | `result-track:6d0d222527ec3bd397eef0dc847d3d4a2b89134d31f94cc2abe35dcb81b1eb94` |
| 66 | `theorem` | [Topology.IsQuotientMap.continuous_lift_prod_right](../../../../GeneralTopology/TopologyCompactOpenIsOpenSetOfMapsTo.lean/declarations/topology-isquotientmap-continuous-lift-prod-right.md) | 519 | `result-track:70090b0f8748a0b9fc91b991c9d86179f152a5fa67b8ae47752ef97c8f403af6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85c03a1abffa62fa7eefe152eddfafc19bb9537727ca6afeba52585d1f9d0938 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CompactOpen/Variantf11b62472243855d41f408dfa1660a113c984b8a5c615f770264d35ae8fa4516.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/CompactOpen/Variantf11b62472243855d41f408dfa1660a113c984b8a5c615f770264d35ae8fa4516.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
