# Verification target: TVSNamespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4d1414f6409bd8837ab6212ea881887616138ca",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TVS/Variant802f6abe48b4dc96afbb832be0d242376f01abd2edc2dbfcdee7ce34b6794b33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/TVSNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/TVSNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4d1414f6409bd8837ab6212ea881887616138ca`.

Source path: `GRWTSK/Topology/GeneralTopology/TVS/Variant802f6abe48b4dc96afbb832be0d242376f01abd2edc2dbfcdee7ce34b6794b33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TVS/Variant802f6abe48b4dc96afbb832be0d242376f01abd2edc2dbfcdee7ce34b6794b33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.EGauge` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.BalancedCoreHull` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Seminorm` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Peel` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.ENNReal.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Defs` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.LinearMapPiProd` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsLittleOTVS](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs.md) | 95 | `declaration-track:955b12a92e0fce91445a8c240e87e5ad1e425c332a46fa15b3f23678f8fe73b8` |
| 2 | `structure` | [IsBigOTVS](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/isbigotvs.md) | 113 | `declaration-track:90e606b58e2c21c20388b6ca8d5871a11a6cb3d84aca4bca4570bfb2fa302563` |
| 3 | `theorem` | [isLittleOTVS_iff_tendsto_div](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-iff-tendsto-div.md) | 135 | `result-track:932c2877d895218e850c06564db23119a7dd917ab16d820d76abaf85006b22ab` |
| 4 | `theorem` | [IsLittleOTVS.exists_eventuallyLE_mul_ennreal](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-exists-eventuallyle-mul-ennreal.md) | 146 | `result-track:cde5a0db1536cd6c05ede11d0be9c7caf8773faa59c47312617f6cc273db12e3` |
| 5 | `theorem` | [isLittleOTVS_congr](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-congr-source-edition-3.md) | 154 | `result-track:7e64b89828c9d915d0c2f2b9b3ca042276c0879e4775987caa2b89dfe189cfbf` |
| 6 | `theorem` | [IsLittleOTVS.congr'](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-congr.md) | 162 | `result-track:2a022b48ebe23de3dde9ed7a4cce8333ab5a634bdb5a3747c327149a12e96e5d` |
| 7 | `theorem` | [IsLittleOTVS.congr](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-congr-source-edition-2.md) | 166 | `result-track:2e44138ca74f2c9af2f9dbec0ed9e22868ac3ac59b02b07751202c9d54995507` |
| 8 | `theorem` | [IsLittleOTVS.congr_left](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-congr-left.md) | 170 | `result-track:e98f0b87d050479b950e7f9b72a03bec834b89518db10e7a2fa008c1da6c0fc2` |
| 9 | `theorem` | [IsLittleOTVS.congr_right](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-congr-right.md) | 173 | `result-track:ec81232d356ab58130df9a85c1e9943763369d62749439d95b797057db2b9139` |
| 10 | `theorem` | [IsLittleOTVS.isBigOTVS](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-isbigotvs.md) | 180 | `result-track:7f803fe211f8b9372b40328da88240ab5f7039e35d6b29147533257fbeb45942` |
| 11 | `theorem` | [IsBigOTVS.trans](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/isbigotvs-trans.md) | 187 | `result-track:73acd1e9a13793f88ec1be26f0f8341e1eb88f5d48704182e84e38601bf10aac` |
| 12 | `instance` | [instTransIsBigOTVSIsBigOTVS](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/insttransisbigotvsisbigotvs.md) | 194 | `declaration-track:e5399759536b42d15dc96ad4ac1876a490c27e8b721af319c8178406a9d26109` |
| 13 | `theorem` | [IsLittleOTVS.trans_isBigOTVS](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-trans-isbigotvs.md) | 198 | `result-track:73be19557fe3406bed32deaf41ae319303332e1dd5f009ddf288b473d17edcbc` |
| 14 | `instance` | [instTransIsLittleOTVSIsBigOTVS](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/insttransislittleotvsisbigotvs.md) | 206 | `declaration-track:c2c9823ee3b37a3052b1d2ecde020485f9167e073b090f4f0d9a2e9b6ed09cd6` |
| 15 | `theorem` | [IsBigOTVS.trans_isLittleOTVS](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/isbigotvs-trans-islittleotvs.md) | 210 | `result-track:f63ba67b1cc2611b814031aa7d9999365ee54fd93a77f0283c6213648fda04cc` |
| 16 | `instance` | [instTransIsBigOTVSIsLittleOTVS](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/insttransisbigotvsislittleotvs.md) | 218 | `declaration-track:2428731f9da5cc20da42a979803ff83b5c22315bd94a5b17a88618ab0beb1691` |
| 17 | `theorem` | [IsLittleOTVS.trans](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-trans.md) | 223 | `result-track:99c55deb865b9d2cf5855971ce92ce9ae0a525a786b47f39947a541bcf0c1f16` |
| 18 | `instance` | [instTransIsLittleOTVSIsLittleOTVS](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/insttransislittleotvsislittleotvs.md) | 226 | `declaration-track:c14e7a75c2cb7416560783dfb15b92d8db51a1bba6a427f55ddd51fe02f41730` |
| 19 | `theorem` | [TVSNamespaced](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-iff.md) | 230 | `result-track:8653edc2c612174d32fdc9fab73d28116244673e16afdc3cc1459e46bd3d5e02` |
| 20 | `theorem` | [TVSNamespaced](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/isbigotvs-iff.md) | 244 | `result-track:908ac5da89d51867a7338b514ed2e7d3b7fa0dee2b091701545cbc012d7a1f45` |
| 21 | `theorem` | [isLittleOTVS_iff_smallSets](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-iff-smallsets.md) | 256 | `result-track:f12c530d8286153537dd102e5c9940911533fa3229b65b1b3fb3813843f24676` |
| 22 | `theorem` | [isBigOTVS_iff_smallSets](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/isbigotvs-iff-smallsets.md) | 264 | `result-track:1cf55908cfa8d14a5ecd35cdfbe15ae1fe25f32074f98724757a2866cb1e3e1f` |
| 23 | `theorem` | [isLittleOTVS_map](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-map.md) | 273 | `result-track:e63f8644cc3638110a09f3bea406fb9767d0c65fb9a19ff2050b8c9065c8c12a` |
| 24 | `theorem` | [isBigOTVS_map](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/isbigotvs-map.md) | 278 | `result-track:807aea219bc5672a96ee8e0879034f87930da9192628714fe9a5c2bd420508ee` |
| 25 | `lemma` | [IsLittleOTVS.mono](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-mono.md) | 282 | `result-track:01c1d721e351de2ffb579ae6c34de39101a66093f48d01f2ffb07e845337d753` |
| 26 | `lemma` | [IsBigOTVS.mono](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/isbigotvs-mono.md) | 285 | `result-track:bf8125566befda8a37a2e3377f6d221a4a7d19955db5ca6d0d430eda6626f276` |
| 27 | `lemma` | [IsLittleOTVS.comp_tendsto](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-comp-tendsto.md) | 288 | `result-track:85d8c98a5d49523c54838fcbc9983f6756bfc3bdf6f866fad582912036ac4cfc` |
| 28 | `lemma` | [IsBigOTVS.comp_tendsto](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/isbigotvs-comp-tendsto.md) | 292 | `result-track:6d26021d926449a296108f3ae48f69f44da56be597d76268fc79efcc8288942d` |
| 29 | `lemma` | [isLittleOTVS_sup](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-sup.md) | 296 | `result-track:7651b7d98cf25ec8193d0c93f5d7d65f7f1d31f5c4a130212beb03c87662c21e` |
| 30 | `lemma` | [IsLittleOTVS.sup](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-sup-source-edition-2.md) | 299 | `result-track:89297ab72f6890313415bee6675e36feeb6482da35d297111c0496e443c00169` |
| 31 | `lemma` | [TVSNamespaced](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/isbigotvs-id.md) | 302 | `result-track:7eedaf85a8c24a989a460ffdca4509972b69a0657298025ba49485b9bb35f2b5` |
| 32 | `lemma` | [TVSNamespaced](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/isbigotvs-comp.md) | 306 | `result-track:5ed73a9f7aa6aeb9305f0e17617f35a4f59419864939049905a5a202209ff4b6` |
| 33 | `lemma` | [TVSNamespaced](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/isbigotvs-fun-comp.md) | 309 | `result-track:1d7f0ba27b7086b246965ed2803e3568d85a33a77d7e94ad31814e448d5a76ab` |
| 34 | `lemma` | [IsLittleOTVS.zero](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-zero.md) | 313 | `result-track:299aebb91d162a53d11172a16e6f5658ab32f728319211d32f9b484b0d9a06d2` |
| 35 | `lemma` | [isLittleOTVS_insert](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-insert.md) | 318 | `result-track:3d9ae2a66f343186a82d01628f3b785cc64d352075077cabd095f34cbce7e10c` |
| 36 | `lemma` | [IsLittleOTVS.insert](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-insert-source-edition-2.md) | 323 | `result-track:4a3b63aca423e15609a92ae5357be3429c1e24a7ffcb09e241da1df16b5dcd91` |
| 37 | `lemma` | [IsLittleOTVS.bot](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-bot.md) | 329 | `result-track:27a8d88746778fefc9b1d97e2f777a0e899031ca12388cbbf48ba0c03492a837` |
| 38 | `theorem` | [IsLittleOTVS.prodMk](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-prodmk.md) | 332 | `result-track:27b397e6fde49a6fed3e4a433621cee1984fe53ac75f7b1c14b78fdc919ae681` |
| 39 | `theorem` | [IsLittleOTVS.fst](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-fst.md) | 343 | `result-track:8918044d5d54c8ff312fb1841b48ebb76c242e436834c1a217249012603778ec` |
| 40 | `theorem` | [IsLittleOTVS.snd](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-snd.md) | 347 | `result-track:f614e10215f884aceb5045c8830d80d74d6f7ec875402c611d46af876d839a7e` |
| 41 | `theorem` | [isLittleOTVS_prodMk_left](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-prodmk-left.md) | 352 | `result-track:d59f3f0e6a80696e09930eaae90d77020a546044ac40753a508d9a19d3476d7f` |
| 42 | `theorem` | [IsBigOTVS.prodMk](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/isbigotvs-prodmk.md) | 356 | `result-track:5b17843564db2a5e17eb31ba973aa9a99a80a9bd6ba5635166c7cb8763d0d0e2` |
| 43 | `theorem` | [IsBigOTVS.fst](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/isbigotvs-fst.md) | 366 | `result-track:fc302202da371f903db731d509df82fa328e61306c339f757855e7877b6b9612` |
| 44 | `theorem` | [IsBigOTVS.snd](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/isbigotvs-snd.md) | 370 | `result-track:955b4cb200547808ed67088b5eea5a0d37927a7d11e5022a4c1dafa760db95e7` |
| 45 | `theorem` | [isBigOTVS_prodMk_left](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/isbigotvs-prodmk-left.md) | 375 | `result-track:0c43f29674327e2d29fda5baf3427dd3dcf71be1eba90d1128748711bb439e88` |
| 46 | `theorem` | [IsLittleOTVS.add](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-add.md) | 379 | `result-track:f2da74babf01fe2a07255540113bd8a6a27d1dcc59f0a34f9dbf78b669230154` |
| 47 | `theorem` | [IsBigOTVS.add](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/isbigotvs-add.md) | 385 | `result-track:49e8f014f775cc13ad19b86ea8a10872ed2d46a8f610b8883ae0dd8103cc8f7e` |
| 48 | `theorem` | [IsLittleOTVS.pi](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-pi-source-edition-2.md) | 391 | `result-track:f6293e4edad398d5bdfa650d2cac9be93f9ce7a71b5a0a06bfed7aaa7110d406` |
| 49 | `theorem` | [IsLittleOTVS.proj](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-proj.md) | 404 | `result-track:ac1bfeb09039d7c7db654e4fad45a0cf79015474b2191bf9dedb14881f1fa645` |
| 50 | `theorem` | [isLittleOTVS_pi](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-pi.md) | 409 | `result-track:4df259bdcf720b4ac947c1174dec19e81173882f0476f81829d6fea07d1fa1eb` |
| 51 | `theorem` | [IsBigOTVS.pi](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/isbigotvs-pi-source-edition-2.md) | 414 | `result-track:d79fcb127f9ad5091d3ff250f788a3cef2d80e017ff80d4f8ca2e8f87ec9dd8d` |
| 52 | `theorem` | [IsBigOTVS.proj](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/isbigotvs-proj.md) | 427 | `result-track:c90e0221b6fd9e47d84402a2661df5183e8d46efc777bda33ac13d07e852848b` |
| 53 | `theorem` | [isBigOTVS_pi](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/isbigotvs-pi.md) | 432 | `result-track:86da9db8050a03c1173ea564d5a4b964c4bcc78530cbbf74ba178b2d0a72d792` |
| 54 | `lemma` | [IsLittleOTVS.smul_left](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-smul-left.md) | 437 | `result-track:d8344ca8c4a2ec84879875e17edb17c1e9b1597078dfd8f9a96377ca5f5dd957` |
| 55 | `lemma` | [isLittleOTVS_one](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-one.md) | 446 | `result-track:22ac9f638f664f9eeb1877a3b29a23e735e42110ad64bb6817f6b60b6126487c` |
| 56 | `lemma` | [IsLittleOTVS.tendsto_inv_smul](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-tendsto-inv-smul.md) | 481 | `result-track:baf4e41051ee9f2ac400999e1455c61c731f23f25d353e4eb47e4d7614a2d27b` |
| 57 | `lemma` | [isLittleOTVS_iff_tendsto_inv_smul](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-iff-tendsto-inv-smul.md) | 489 | `result-track:c0a74a3baf4842aff00c5edcd82d1168ee3d7f66fe0fd6250ddf9e8ceefd743b` |
| 58 | `lemma` | [Filter.Tendsto.isBigOTVS_one](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/filter-tendsto-isbigotvs-one.md) | 498 | `result-track:a9e0406120f73e70ee539c308f5989bb7c9ba75e8626c56827fa58610a8a2806` |
| 59 | `lemma` | [isLittleOTVS_iff_isLittleO](../../../../FunctionalAnalysis/TVSNamespaced.lean/declarations/islittleotvs-iff-islittleo.md) | 529 | `result-track:d32bfdc700af21aaee29a1f00979a8070c712599dfd965664b08ecab0734096f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ca0145365706b2d9bf2fb12a10e97c0619c9f0ef9784ef0f1064d07a09145f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/TVS/Variant802f6abe48b4dc96afbb832be0d242376f01abd2edc2dbfcdee7ce34b6794b33.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/TVS/Variant802f6abe48b4dc96afbb832be0d242376f01abd2edc2dbfcdee7ce34b6794b33.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
