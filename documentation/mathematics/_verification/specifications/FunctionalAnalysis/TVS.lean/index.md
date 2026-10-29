# Verification target: TVS

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5624ae2be391f87ef07b2377952d05a28e73510e",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TVS/Variant67f3e675c2a75fa2ead4d60dba9607fd9c0751eed8ec8154738b439a42e897c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/TVS.lean/index.md) · [Full source](../../../../FunctionalAnalysis/TVS.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5624ae2be391f87ef07b2377952d05a28e73510e`.

Source path: `GRWTSK/Topology/GeneralTopology/TVS/Variant67f3e675c2a75fa2ead4d60dba9607fd9c0751eed8ec8154738b439a42e897c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TVS/Variant67f3e675c2a75fa2ead4d60dba9607fd9c0751eed8ec8154738b439a42e897c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.EGauge` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.BalancedCoreHull` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Seminorm` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Peel` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.ENNReal.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.LinearMapPiProd` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsLittleOTVS](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs.md) | 87 | `declaration-track:5f1f6b43cd42e2496077112e72f0659246beaa5a01b3d6a77fe2e1188dadfb1d` |
| 2 | `structure` | [IsBigOTVS](../../../../FunctionalAnalysis/TVS.lean/declarations/isbigotvs.md) | 105 | `declaration-track:346375556ab6998928783f3214129825a6c370327a77b379e355cfac5ed16cdf` |
| 3 | `theorem` | [isLittleOTVS_iff_tendsto_div](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-iff-tendsto-div.md) | 127 | `result-track:364915f428e1e0c02e88fa3fd1eac67cc815b45385d5952e7904f98ec055e315` |
| 4 | `theorem` | [IsLittleOTVS.exists_eventuallyLE_mul_ennreal](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-exists-eventuallyle-mul-ennreal.md) | 138 | `result-track:f2fe36ccf7af3f7bfb1ca900f4d542e5bbfc414b0808075e88cdf254c6cbc758` |
| 5 | `theorem` | [isLittleOTVS_congr](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-congr-source-edition-2.md) | 146 | `result-track:3cddeee0063e9004aed0f59dd13bf42064594932bcaff6e612607504c9f871b3` |
| 6 | `theorem` | [IsLittleOTVS.congr'](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-congr.md) | 154 | `result-track:08f3e0696af6fd3ab65cb82318782dd79c55ce97e77cc941800c68f2757eccc1` |
| 7 | `theorem` | [IsLittleOTVS.congr](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-congr-source-edition-3.md) | 158 | `result-track:df65ecfa371509e5adcc196f25321a46ea97cc1a558f28bcaeafcce18c241e36` |
| 8 | `theorem` | [IsLittleOTVS.congr_left](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-congr-left.md) | 162 | `result-track:de25279710520a24339f2876779a121378d5d31f8cd124a8377d1c436458a799` |
| 9 | `theorem` | [IsLittleOTVS.congr_right](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-congr-right.md) | 165 | `result-track:e23d8ceebe78ab45c463dbd5a7349ae6550be414acebb7b9a66e492064e970a5` |
| 10 | `theorem` | [IsLittleOTVS.isBigOTVS](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-isbigotvs.md) | 172 | `result-track:29c30596e46e8c9eb0101b16d3ac2aae8d98b16b95cac6e04d3584c3a9cf270f` |
| 11 | `theorem` | [IsBigOTVS.trans](../../../../FunctionalAnalysis/TVS.lean/declarations/isbigotvs-trans.md) | 179 | `result-track:7154ccc159327c90df646076ed557141e178832ce334d906a70dcf5999cb3072` |
| 12 | `instance` | [instTransIsBigOTVSIsBigOTVS](../../../../FunctionalAnalysis/TVS.lean/declarations/insttransisbigotvsisbigotvs.md) | 186 | `declaration-track:9277549a531959fe5d216d20b9387e859c4448b710ec2404585228c2ce100c0d` |
| 13 | `theorem` | [IsLittleOTVS.trans_isBigOTVS](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-trans-isbigotvs.md) | 190 | `result-track:8902ced526639c1ddadc9461b3a97fd2383570449a1646bfc6bef5d78ab57810` |
| 14 | `instance` | [instTransIsLittleOTVSIsBigOTVS](../../../../FunctionalAnalysis/TVS.lean/declarations/insttransislittleotvsisbigotvs.md) | 198 | `declaration-track:3a13125b747ecce87e406a68de899985425bca3fe3ba9b0e15d15713d8cec451` |
| 15 | `theorem` | [IsBigOTVS.trans_isLittleOTVS](../../../../FunctionalAnalysis/TVS.lean/declarations/isbigotvs-trans-islittleotvs.md) | 202 | `result-track:569d6881e0d7dfe13967f042c4538d592f1aa391da905f0b6488a79bcd055399` |
| 16 | `instance` | [instTransIsBigOTVSIsLittleOTVS](../../../../FunctionalAnalysis/TVS.lean/declarations/insttransisbigotvsislittleotvs.md) | 210 | `declaration-track:2aa0ec21ff134bb87ed5558bd851f63e68a5837639d51b3bb374dc3664e5443e` |
| 17 | `theorem` | [IsLittleOTVS.trans](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-trans.md) | 215 | `result-track:0bb7e2f56445c90f4cb4e31ae21faa32ed46fe33a0fdb4194c348e015e0e7b0b` |
| 18 | `instance` | [instTransIsLittleOTVSIsLittleOTVS](../../../../FunctionalAnalysis/TVS.lean/declarations/insttransislittleotvsislittleotvs.md) | 218 | `declaration-track:152feb22eacc8de09b6695651f2d2c00780373fa6e5a8f906fbd7116d65b2141` |
| 19 | `theorem` | [_root_.Filter.HasBasis.isLittleOTVS_iff](../../../../FunctionalAnalysis/TVS.lean/declarations/root-filter-hasbasis-islittleotvs-iff.md) | 222 | `result-track:65006d23e0ce99cece66d3a9945ce45898d75c91b6c4993d19b062e06a2ecaf4` |
| 20 | `theorem` | [_root_.Filter.HasBasis.isBigOTVS_iff](../../../../FunctionalAnalysis/TVS.lean/declarations/root-filter-hasbasis-isbigotvs-iff.md) | 236 | `result-track:ccb72cad8e294f0f96ef7af72aec2e519b323ed93c3659f5f0a68c09df84c85f` |
| 21 | `theorem` | [isLittleOTVS_iff_smallSets](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-iff-smallsets.md) | 248 | `result-track:ba984250f966e8a23a65f2799af393fbae08bfbc5d1fb467fc009f67e00122db` |
| 22 | `theorem` | [isBigOTVS_iff_smallSets](../../../../FunctionalAnalysis/TVS.lean/declarations/isbigotvs-iff-smallsets.md) | 256 | `result-track:24c8a54dac18c771b83a37afc2954185d71558776a94756915d6c11ca11ef10f` |
| 23 | `theorem` | [isLittleOTVS_map](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-map.md) | 265 | `result-track:984b935242557109cce569986dc5e430a125c941c62f9e947424a7e085dce61a` |
| 24 | `theorem` | [isBigOTVS_map](../../../../FunctionalAnalysis/TVS.lean/declarations/isbigotvs-map.md) | 270 | `result-track:7cfb6266ce40069a50a7c47a2ff656b8d042949973cb5ce51d1f565535c5dc43` |
| 25 | `lemma` | [IsLittleOTVS.mono](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-mono.md) | 274 | `result-track:58d9d3b38de92bed2e9d641ec03f67041f5dc71de1bb6242edbed3927f61aceb` |
| 26 | `lemma` | [IsBigOTVS.mono](../../../../FunctionalAnalysis/TVS.lean/declarations/isbigotvs-mono.md) | 277 | `result-track:23df561104ea0a8b656018005f44cb8ccbe0d4f16b532a04d1b89a0e7fcdde61` |
| 27 | `lemma` | [IsLittleOTVS.comp_tendsto](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-comp-tendsto.md) | 280 | `result-track:f67a7bf852e8817055041911182b4f2fddc3dd05e374c648fde9784c800023c4` |
| 28 | `lemma` | [IsBigOTVS.comp_tendsto](../../../../FunctionalAnalysis/TVS.lean/declarations/isbigotvs-comp-tendsto.md) | 284 | `result-track:1d1b40aae14c134052a47ddc802e466a92267bd9f744e1156d975085e57e085b` |
| 29 | `lemma` | [isLittleOTVS_sup](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-sup-source-edition-2.md) | 288 | `result-track:7f16ed86e3e8a89bfe0c5510b9e9e9273236c3038a7ad9711cfdd8d1b87570aa` |
| 30 | `lemma` | [IsLittleOTVS.sup](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-sup.md) | 291 | `result-track:204968bac007e715e926284db5dd3cb602bc1911f61e6bf6b0600c991d82828a` |
| 31 | `lemma` | [_root_.ContinuousLinearMap.isBigOTVS_id](../../../../FunctionalAnalysis/TVS.lean/declarations/root-continuouslinearmap-isbigotvs-id.md) | 294 | `result-track:479fe973c5022d683b354ad1cacbb8f9cce159dd48d509c16e0a16ca7baeaf3b` |
| 32 | `lemma` | [_root_.ContinuousLinearMap.isBigOTVS_comp](../../../../FunctionalAnalysis/TVS.lean/declarations/root-continuouslinearmap-isbigotvs-comp.md) | 298 | `result-track:d1e60ae9ce2c55dba6edeedd54243aea41758673b5d7a1c823bfba0056341284` |
| 33 | `lemma` | [_root_.ContinuousLinearMap.isBigOTVS_fun_comp](../../../../FunctionalAnalysis/TVS.lean/declarations/root-continuouslinearmap-isbigotvs-fun-comp.md) | 301 | `result-track:87cf3339ba464985e9db88086619ac52b26a29b2533e2fc390e683100571120e` |
| 34 | `lemma` | [IsLittleOTVS.zero](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-zero.md) | 305 | `result-track:636a6f34b538298fa2214c4b9bac0e4d345e4e56bcccdf7273c3bbc6a5a70b80` |
| 35 | `lemma` | [isLittleOTVS_insert](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-insert.md) | 310 | `result-track:4811b0c7d7b523274669d8d37292abd5fbcb9d6de5e273b1ae021a08172c023a` |
| 36 | `lemma` | [IsLittleOTVS.insert](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-insert-source-edition-2.md) | 315 | `result-track:d7354c7d33b60ffcd04f8ded88df78dd219e51a643cbece9b906ae0c87b22432` |
| 37 | `lemma` | [IsLittleOTVS.bot](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-bot.md) | 321 | `result-track:d793827008a269e74cbd650e42cb4b27c727dd997f1075283c816e2195d088af` |
| 38 | `theorem` | [IsLittleOTVS.prodMk](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-prodmk.md) | 324 | `result-track:6e5bb2f7c7b8fb8704b9ee1cfaadcf1d2832a9572ba7338eacfdee1a77185748` |
| 39 | `theorem` | [IsLittleOTVS.fst](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-fst.md) | 335 | `result-track:e795ef76b694db13ab02661303459b67e1795cb2ff92a9fdbfbab4ddc8b5987a` |
| 40 | `theorem` | [IsLittleOTVS.snd](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-snd.md) | 339 | `result-track:eb9d4ec855d8d31c07aa32be6aa3312489aa8defc037981dbffc2ad047654389` |
| 41 | `theorem` | [isLittleOTVS_prodMk_left](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-prodmk-left.md) | 344 | `result-track:8bc3a86cab70342be8607f77caaa0387e7feefacf152d6713543c9ecce32182f` |
| 42 | `theorem` | [IsBigOTVS.prodMk](../../../../FunctionalAnalysis/TVS.lean/declarations/isbigotvs-prodmk.md) | 348 | `result-track:120e77eb9da60567267e7145ac6351b1ae6f8e5e23b67c7b08ffcd6830da54f4` |
| 43 | `theorem` | [IsBigOTVS.fst](../../../../FunctionalAnalysis/TVS.lean/declarations/isbigotvs-fst.md) | 358 | `result-track:06fdef863bccf4cf44b208112e8bc2c7cbe4e4287450a710d0f34cc6adee4a79` |
| 44 | `theorem` | [IsBigOTVS.snd](../../../../FunctionalAnalysis/TVS.lean/declarations/isbigotvs-snd.md) | 362 | `result-track:2214553610c5ede498253a39991b3d7df56da3361651e7d757b2dcf2dc12b9ea` |
| 45 | `theorem` | [isBigOTVS_prodMk_left](../../../../FunctionalAnalysis/TVS.lean/declarations/isbigotvs-prodmk-left.md) | 367 | `result-track:d288312ed6db92ef86291099cf5efc2fbe179749bda14eb51810eb181ae57787` |
| 46 | `theorem` | [IsLittleOTVS.add](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-add.md) | 371 | `result-track:65e1affead7e0ec196f2439acc91c3d2fd43a6fa0f3e16765bfad41a0c11bb25` |
| 47 | `theorem` | [IsBigOTVS.add](../../../../FunctionalAnalysis/TVS.lean/declarations/isbigotvs-add.md) | 377 | `result-track:5761bf2be902697c3d46f806b9f2b8e2368a6ea228d3bb5e516817ebe9efe712` |
| 48 | `theorem` | [IsLittleOTVS.pi](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-pi.md) | 383 | `result-track:0c5557785e5538fb0bd4de3644dc8459bb93aaebd49341039387ced4238d7b55` |
| 49 | `theorem` | [IsLittleOTVS.proj](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-proj.md) | 396 | `result-track:179e701370caecc72d2bc47ce97089cf43b08a5a622d84b31e3da29b56cab0c7` |
| 50 | `theorem` | [isLittleOTVS_pi](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-pi-source-edition-2.md) | 401 | `result-track:84eb761a1132547718d7d8ac08109294ad9d3b5ffbed583e527acbbe9fd57cbe` |
| 51 | `theorem` | [IsBigOTVS.pi](../../../../FunctionalAnalysis/TVS.lean/declarations/isbigotvs-pi-source-edition-2.md) | 406 | `result-track:926009b186f229a3f093ce78800c81a08506bdc1d877134b84d5f9ba6afdfb0b` |
| 52 | `theorem` | [IsBigOTVS.proj](../../../../FunctionalAnalysis/TVS.lean/declarations/isbigotvs-proj.md) | 419 | `result-track:12644e961ccd5c2f4dda06c38859634515a2c41042b5e30992ecf38eb929ebf2` |
| 53 | `theorem` | [isBigOTVS_pi](../../../../FunctionalAnalysis/TVS.lean/declarations/isbigotvs-pi.md) | 424 | `result-track:1ddce7695737db2796058e5fe647d1b40272f8f2e26a2006fdc07053f086c72e` |
| 54 | `lemma` | [IsLittleOTVS.smul_left](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-smul-left.md) | 429 | `result-track:d5fa500306902bb3a77b50a37127b67d65d9ce9a18a2c8cd201faa12de1e1d67` |
| 55 | `lemma` | [isLittleOTVS_one](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-one.md) | 438 | `result-track:7377bb6368238f4009feaf7dfe29c6f7179b98f22dffc06c3f29668e3a1e4172` |
| 56 | `lemma` | [IsLittleOTVS.tendsto_inv_smul](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-tendsto-inv-smul.md) | 473 | `result-track:f22caa9b15b5075494b33577005ef102774c59d24d5cc21df4d52dd452387339` |
| 57 | `lemma` | [isLittleOTVS_iff_tendsto_inv_smul](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-iff-tendsto-inv-smul.md) | 481 | `result-track:2725e00ae54410c443d28c1685de9cefe9e05a338325b34eee6b3840301e9466` |
| 58 | `lemma` | [Filter.Tendsto.isBigOTVS_one](../../../../FunctionalAnalysis/TVS.lean/declarations/filter-tendsto-isbigotvs-one.md) | 490 | `result-track:86869e362e56bbcaaef684785bca2f568875041500ab4c5400c0c03c556033a4` |
| 59 | `lemma` | [isLittleOTVS_iff_isLittleO](../../../../FunctionalAnalysis/TVS.lean/declarations/islittleotvs-iff-islittleo.md) | 521 | `result-track:2f5a10e5e6819ba03caa9b4b51b4ea31f753871135ff8c41ba47263862181ee3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=258065e99f6fb36fda79e63161131942da5569b25d7d44d3b5cba48701630689 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/TVS/Variant67f3e675c2a75fa2ead4d60dba9607fd9c0751eed8ec8154738b439a42e897c7.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/TVS/Variant67f3e675c2a75fa2ead4d60dba9607fd9c0751eed8ec8154738b439a42e897c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
