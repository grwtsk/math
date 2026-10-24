# Verification target: GRWTSK.Topology.GeneralTopology.Window.Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63abccc96d115cf966dcf2f3551c9d99877e0ac9",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63abccc96d115cf966dcf2f3551c9d99877e0ac9`.

Source path: `GRWTSK/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Statement` — import line 32; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Certificate.Poly` — import line 33; external provider; requires a separately pinned dependency.
- `Zeta23.ThmD.Limit` — import line 34; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cRatio_eq_cWin](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/cratio-eq-cwin--f6cbe0e03a54c9ed482bf317.md) | 52 | `result-track:f6cbe0e03a54c9ed482bf317a0b8b01cec7780b4499b1e71c9850a5b63b25506` |
| 2 | `theorem` | [vConv_nonneg](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/vconv-nonneg--90b8d09af688e7101718241b.md) | 61 | `result-track:90b8d09af688e7101718241b91977772231b49769d1ef0fe4e581c7f84450dd5` |
| 3 | `theorem` | [jWin_nonneg](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/jwin-nonneg--7367e5f7c8ab6ba863e5dc6c.md) | 70 | `result-track:7367e5f7c8ab6ba863e5dc6cbf0afd1370acdbd2905c04e93d7fe6d2f088c270` |
| 4 | `theorem` | [cWin_pos](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/cwin-pos--8212fc390482a4dbd5e29b36.md) | 79 | `result-track:8212fc390482a4dbd5e29b3612761b1a1281c880ccfb648537384157bd01c00a` |
| 5 | `theorem` | [cWin_denom_pos](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/cwin-denom-pos--64a28328a391c18b7651a26b.md) | 87 | `result-track:64a28328a391c18b7651a26bf2c426118aaecc5ae1612514c63c72539e825f58` |
| 6 | `theorem` | [tendsto_cRatio_cWin](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/tendsto-cratio-cwin--b8a4fd72abf9ff83f0e2c4ea.md) | 100 | `result-track:b8a4fd72abf9ff83f0e2c4eae57701e6006a4261b56266b2033ad5f9b324a713` |
| 7 | `theorem` | [continuous_vConv](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/continuous-vconv--4972b257701f7056521d4753.md) | 120 | `result-track:4972b257701f7056521d47537588290372d92b50558d0c4077fb101ec976ab09` |
| 8 | `theorem` | [tendsto_JT_of_autocorr_close](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/tendsto-jt-of-autocorr-close--14360d30e361e62daabf7257.md) | 130 | `result-track:14360d30e361e62daabf725770ec07f0f4d624d7d2d08c8af2df3a59e6345494` |
| 9 | `theorem` | [jWin_vFlat](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/jwin-vflat--b82c41de401fa1ae707da5b2.md) | 222 | `result-track:b82c41de401fa1ae707da5b26cbbd9cfeac6ddd422ea7dc3c82fe62c8314cefa` |
| 10 | `theorem` | [cWin_vFlat](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/cwin-vflat--f07baebdf4ecb18eebea47a8.md) | 226 | `result-track:f07baebdf4ecb18eebea47a81e12a4c3cbc6b93ca54328fe532b4408e5562d4e` |
| 11 | `theorem` | [kappaXi_vFlat](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/kappaxi-vflat--59e496affd6eb52dd71b2941.md) | 230 | `result-track:59e496affd6eb52dd71b2941139ca00d8574a72e03cd10e2913a41c481fa3961` |
| 12 | `theorem` | [eventually_w8](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/eventually-w8--5205f2e42fa928df196abb7a.md) | 234 | `result-track:5205f2e42fa928df196abb7ad620467013ad8b6169b77bfcd670788c1f1f8e56` |
| 13 | `theorem` | [tendsto_a_flat](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/tendsto-a-flat--08e63481427985bc33ddb96f.md) | 238 | `result-track:08e63481427985bc33ddb96f8ed6c6e705c6ace1af682a510ebbf5f3d7b05014` |
| 14 | `theorem` | [tendsto_b_flat](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/tendsto-b-flat--2d1dd159b0c3976d1fe1bacf.md) | 250 | `result-track:2d1dd159b0c3976d1fe1bacf1f363f0343681afd98f567bbcd37ad217fe02452` |
| 15 | `theorem` | [g_flat_close](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/g-flat-close--631b6869795e20892846243e.md) | 262 | `result-track:631b6869795e20892846243e7b1272a278e010c07522db9abe2218a4f64e3930` |
| 16 | `theorem` | [tendsto_JT_flat](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/tendsto-jt-flat--9553ff0c85d3dbacbc6c8791.md) | 278 | `result-track:9553ff0c85d3dbacbc6c87913c331096ddf5fc4ff2aa2235b99eada8588bbfce` |
| 17 | `theorem` | [tendsto_cRatio_flat](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/tendsto-cratio-flat--7a5ae68546b8d8b81f0af140.md) | 289 | `result-track:7a5ae68546b8d8b81f0af140fd0608e1afa4fb5e71070eac784a37128c17cb9b` |
| 18 | `theorem` | [cWin_vFlat_pos](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/cwin-vflat-pos--4d2e5b6d06f8e49c22ed1503.md) | 301 | `result-track:4d2e5b6d06f8e49c22ed1503fc2a1ea594b6159c991e8ac3232e11ebd3a5b528` |
| 19 | `theorem` | [continuous_jWin](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/continuous-jwin--270bec10ef0a6970ddf3adfe.md) | 317 | `result-track:270bec10ef0a6970ddf3adfef484fd3e7c08ef1c9a36c10877f2874db6ac439a` |
| 20 | `theorem` | [continuousOn_cWin](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/continuouson-cwin--6bb042e88699057b7610f87e.md) | 326 | `result-track:6bb042e88699057b7610f87e0771e18d2eda9accbf76b5123f77c361dc708f49` |
| 21 | `theorem` | [continuousOn_inv_cWin](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/continuouson-inv-cwin--14eb5653cbf95d33e5c556a4.md) | 336 | `result-track:14eb5653cbf95d33e5c556a4d0f1254b7d738dc8982f90a83d37b93c695d4e9c` |
| 22 | `theorem` | [continuousOn_kappaXi](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/continuouson-kappaxi--f12dea7d7d47e30443c991d2.md) | 346 | `result-track:f12dea7d7d47e30443c991d2cdcb2534ebfa90495fe81f0e4dd8fed4bdcf59b4` |
| 23 | `theorem` | [exists_lt_one_pos](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/exists-lt-one-pos--93978bb8394171a0fc2b2bb3.md) | 353 | `result-track:93978bb8394171a0fc2b2bb3179fb50a7efbfe7b169c21b1079f0a2dcbb02a22` |
| 24 | `theorem` | [eps_form_of_continuousOn](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/eps-form-of-continuouson--7a815fcce17e40d29d42ef42.md) | 372 | `result-track:7a815fcce17e40d29d42ef429334da57c861e899997a226a7d7c385169b3017b` |
| 25 | `theorem` | [windowProfile_vFlat](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/windowprofile-vflat--b492e6c539776049188d3744.md) | 386 | `result-track:b492e6c539776049188d3744c763a87ca07e9fe6ac22711f564fd9fd4a092ef8` |
| 26 | `theorem` | [windowProfile_vQuartic](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/windowprofile-vquartic--094d9ca2ff01ea2e6b460501.md) | 392 | `result-track:094d9ca2ff01ea2e6b460501a13de4845b6304a173c8d453500c3f9aff7af127` |
| 27 | `theorem` | [continuousOn_kappaXi_vFlat](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/continuouson-kappaxi-vflat--9a6bc0e4b69bcce1b2eb4d56.md) | 399 | `result-track:9a6bc0e4b69bcce1b2eb4d56cdda8664b3b3b7e11588257505dcd775b5790541` |
| 28 | `theorem` | [continuousOn_kappaXi_vQuartic](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/continuouson-kappaxi-vquartic--0f08e218c288c0e973a98398.md) | 403 | `result-track:0f08e218c288c0e973a983982446fe2e303322dc33985f1e683c8881c46f7dc1` |
| 29 | `theorem` | [cWin_D1_vFlat_pos](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/cwin-d1-vflat-pos--1b173e4a1810b4c37774a3ea.md) | 407 | `result-track:1b173e4a1810b4c37774a3eaf6ff5ad83c1b8ae99c9fac76c2b35270c8256355` |
| 30 | `theorem` | [cWin_D1_vQuartic_pos](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/cwin-d1-vquartic-pos--08bb59a9de6888a10a13d4a1.md) | 410 | `result-track:08bb59a9de6888a10a13d4a13367840243ae8f0c4130a004c0d6a59546b2b9be` |
| 31 | `theorem` | [kappaXi_pos_vFlat](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/kappaxi-pos-vflat--96071f8b9807685f278121c7.md) | 414 | `result-track:96071f8b9807685f278121c7c76df58e4da63fe21a60d264fe52490e63695d89` |
| 32 | `theorem` | [kappaXi_pos_vQuartic](../../../../../mathematics/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/declarations/kappaxi-pos-vquartic--27979a92c2a2586408813659.md) | 417 | `result-track:27979a92c2a2586408813659ff285ad8892336e814ba35618d3e90829e9fc971` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
