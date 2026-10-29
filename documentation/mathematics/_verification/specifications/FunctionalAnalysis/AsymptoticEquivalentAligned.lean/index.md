# Verification target: Asymptotic Equivalent Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5683d99bb4787c6e984da64497b8f9e7455a784a",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variantbc25be107121bfb5b04745b64106b762a2f0dc0309d0286591a74fb6e00409fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/index.md) · [Full source](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5683d99bb4787c6e984da64497b8f9e7455a784a`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variantbc25be107121bfb5b04745b64106b762a2f0dc0309d0286591a74fb6e00409fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variantbc25be107121bfb5b04745b64106b762a2f0dc0309d0286591a74fb6e00409fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.Asymptotics` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Theta` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Order.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent.md) | 73 | `declaration-track:89a53411c7f0a104fb2f88123d5d48a83949ce0d052f04f0fda6ee237cacc3b7` |
| 2 | `theorem` | [IsEquivalent.isLittleO](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-islittleo.md) | 81 | `result-track:de9a2c8e2a036ebc95cbea42f7128e2e705c242870bf039c922b504725b77b9d` |
| 3 | `theorem` | [IsEquivalent.isBigO](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-isbigo.md) | 84 | `result-track:ed047488d544646fbe25cc2f89502bbc1af168f6dc1bb097d194887742bab4d6` |
| 4 | `theorem` | [IsEquivalent.isBigO_symm](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-isbigo-symm.md) | 89 | `result-track:1fe521a394ec6719780b20159c82de722c675c29ae351ee716f52df5b806dbac` |
| 5 | `theorem` | [IsEquivalent.isTheta](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-istheta.md) | 95 | `result-track:90100e07c8e78b9e8e93193609e8b0388e4b3eb201c7ba9670964044acbdfeda` |
| 6 | `theorem` | [IsEquivalent.isTheta_symm](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-istheta-symm.md) | 98 | `result-track:4c8621dfd173b0cfbf990dbf207c593a9e093068284c8f862d2150e665c61d12` |
| 7 | `theorem` | [IsEquivalent.refl](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-refl.md) | 102 | `result-track:e8c813ea6a09b497b333b6319cde4e75d310ad36e55110b61a71cd9bc0d08f92` |
| 8 | `theorem` | [IsEquivalent.symm](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-symm.md) | 108 | `result-track:61da356540f0acbf98690febb7cd9b329d9f0005895dbad24a83959128406887` |
| 9 | `theorem` | [IsEquivalent.trans](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-trans.md) | 113 | `result-track:ebe6821c70281483e6738bc7f1359ad37e769f29af65adfcb7bae9d8b99fbcf9` |
| 10 | `theorem` | [IsEquivalent.congr_left](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-congr-left.md) | 118 | `result-track:93bb9d9f20412455be282a7dcb10d9bd0c8f0e7b90e0ae012bac4d1b4753a8ad` |
| 11 | `theorem` | [IsEquivalent.congr_right](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-congr-right.md) | 123 | `result-track:0abacfed247418d96b42dcbbfa29daca49bf43261a5775e6bc891ec4e980d090` |
| 12 | `theorem` | [isEquivalent_zero_iff_eventually_zero](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-zero-iff-eventually-zero.md) | 128 | `result-track:96f2bca69d333fc87e96d80b6b0b035dd6da5affb906a33d800daca7d891357d` |
| 13 | `theorem` | [isEquivalent_zero_iff_isBigO_zero](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-zero-iff-isbigo-zero.md) | 133 | `result-track:112d6168ab1ea95602bcde9c3f064de1175d64ec20bd9b5d4e0df76122c0b2d5` |
| 14 | `theorem` | [isEquivalent_const_iff_tendsto](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-const-iff-tendsto.md) | 140 | `result-track:573618e8f6ec1e59b78615dbd97b2137994ad60fc43634fcc1b54b194aeb0a8b` |
| 15 | `theorem` | [IsEquivalent.tendsto_const](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-tendsto-const.md) | 151 | `result-track:903c8f2723420e51a544250f96c1b4015f18741a21289072d104009d822623d5` |
| 16 | `theorem` | [IsEquivalent.tendsto_nhds](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-tendsto-nhds.md) | 157 | `result-track:b9c6c11d34ca3ca5479dc745915eefee6bfee4c86192e36f794cf44f98d7150e` |
| 17 | `theorem` | [IsEquivalent.tendsto_nhds_iff](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-tendsto-nhds-iff.md) | 167 | `result-track:4a710ad4b5ce44b0bf63dd66b5f70602efd341049f6dc6612575f87e5ad5cf0e` |
| 18 | `theorem` | [IsEquivalent.add_isLittleO](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-add-islittleo.md) | 172 | `result-track:4a2a7880da2827b76bbda703b27722c806445307f140cf0059b7a6e1244010c6` |
| 19 | `theorem` | [IsEquivalent.sub_isLittleO](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-sub-islittleo.md) | 176 | `result-track:7f46ce905d6bf8324bbb4d77f1a04a0f6ed2a96665c51aaddd66d498926240c6` |
| 20 | `theorem` | [IsLittleO.add_isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/islittleo-add-isequivalent.md) | 180 | `result-track:a7f638747c2c52a5a3c725211868a9a75cdae687739fb3260ffc2e8de7ab4e5e` |
| 21 | `theorem` | [IsLittleO.isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/islittleo-isequivalent.md) | 184 | `result-track:4d58ca4daef13fe42ee9ed6b1afa63df153e39aba2114d982f7ff43c26a74c74` |
| 22 | `theorem` | [IsEquivalent.neg](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-neg.md) | 187 | `result-track:7cf602bb2cfd166ac6e2238537f099cb68ef811d5eaecf0c048b0a5238ee7275` |
| 23 | `theorem` | [isEquivalent_iff_exists_eq_mul](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-iff-exists-eq-mul.md) | 201 | `result-track:73de9b0b005586eaab4cd68db6406480883e13ae55e38c73f7b8497bf886fe63` |
| 24 | `theorem` | [IsEquivalent.exists_eq_mul](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-exists-eq-mul.md) | 213 | `result-track:f6081556ed1461f1b555148675c019b9b8883aa237a5a1f4067c8ae5e2c3ffaa` |
| 25 | `theorem` | [isEquivalent_of_tendsto_one](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-of-tendsto-one-source-edition-2.md) | 218 | `result-track:c829485bfdd5724398dd037a8cab7022d5f7974e3f212fe6bd87cc8577506e74` |
| 26 | `theorem` | [isEquivalent_of_tendsto_one'](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-of-tendsto-one.md) | 224 | `result-track:3dea217f22be58b5a57dbf55219eeef87b2489018588b1bc18c596e2b78d5a45` |
| 27 | `theorem` | [isEquivalent_iff_tendsto_one](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-iff-tendsto-one.md) | 229 | `result-track:b972a9e7a57055d404bd9c4e2f7dbc41fc11616e32e0279dd60039c4caca2c1e` |
| 28 | `theorem` | [IsEquivalent.smul](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-smul.md) | 247 | `result-track:4c05ef4adfbf4b60713ade6a324985613d6c27349977cd7ab32b96ffb91105e9` |
| 29 | `theorem` | [IsEquivalent.mul](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-mul.md) | 290 | `result-track:67c5810fd6b864f4f72abe72039f7aa2303908fbfaad819991a915a93cb97698` |
| 30 | `theorem` | [IsEquivalent.inv](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-inv.md) | 294 | `result-track:0c75c73ebd6a47d4323e25683e17becfa8bbb642a897cc116ac726e0f23e74ce` |
| 31 | `theorem` | [IsEquivalent.div](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-div.md) | 303 | `result-track:b88cb42d869afe283d3350f7738ed96ee8f4f2fcbb8fd21d0eda9e49d45da22c` |
| 32 | `theorem` | [IsEquivalent.tendsto_atTop](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-tendsto-attop.md) | 314 | `result-track:357371bf4078df30bfe9bdd9e13c84d921a4665fa1920fc7eaf31136123f0de3` |
| 33 | `theorem` | [IsEquivalent.tendsto_atTop_iff](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-tendsto-attop-iff.md) | 320 | `result-track:7e01c7e9169eb06ebc4e547da537dd5325499593b17bfa194e47e37018a8df4a` |
| 34 | `theorem` | [IsEquivalent.tendsto_atBot](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-tendsto-atbot.md) | 325 | `result-track:99d819cb530a1c389f4990b4bed091ca8cf0fbff351467044d6acd8142366d9c` |
| 35 | `theorem` | [IsEquivalent.tendsto_atBot_iff](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-tendsto-atbot-iff.md) | 332 | `result-track:8dbd9b0d8e706e3d98009c152ae1efa9cbd2f25bd7702c4827e2ebcb3c341770` |
| 36 | `theorem` | [Filter.EventuallyEq.isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/filter-eventuallyeq-isequivalent.md) | 347 | `result-track:3acd600afc70765d9e2e992234d4ddf878334c4149fa81b2a9b8ed107f79c1d0` |
| 37 | `theorem` | [Filter.EventuallyEq.trans_isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/filter-eventuallyeq-trans-isequivalent.md) | 352 | `result-track:5d36396697924348723b99e74b011cc8ee8852b51343c3dc7e54172649843674` |
| 38 | `instance` | [transIsEquivalentIsEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/transisequivalentisequivalent.md) | 358 | `declaration-track:3085e3c7552bb7d4bd255ea1424eacca20836e7bfe4c3ada782227e954b91dec` |
| 39 | `instance` | [transEventuallyEqIsEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/transeventuallyeqisequivalent.md) | 362 | `declaration-track:efd930381b3a3adb4c4846f3020cc823a6c51e498653770794bd0aee06b5e193` |
| 40 | `theorem` | [IsEquivalent.trans_eventuallyEq](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-trans-eventuallyeq.md) | 367 | `result-track:b531a581e206e9d4becf4776dc7d99452a27774dab36783b924c6b700cd7c77c` |
| 41 | `instance` | [transIsEquivalentEventuallyEq](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/transisequivalenteventuallyeq.md) | 371 | `declaration-track:963e8dba68b488ce5ed6929fedac339f996ca5dda3e22f05257c470ee7848fa4` |
| 42 | `theorem` | [IsEquivalent.trans_isBigO](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-trans-isbigo.md) | 376 | `result-track:8b09fc061528c37fbc2906f3b36c3c7bec67d2582d8e78c4ef7c338179831faa` |
| 43 | `instance` | [transIsEquivalentIsBigO](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/transisequivalentisbigo.md) | 380 | `declaration-track:a38867d3b5e8fa7a46e24dd75f9351942c3ef85add6b2a9b9b5bffbfd7812526` |
| 44 | `theorem` | [IsBigO.trans_isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isbigo-trans-isequivalent.md) | 385 | `result-track:b0fd5c655e4f39b23cd663454cf66d4d50294be3a7a7ffdc95cc92e72067402e` |
| 45 | `instance` | [transIsBigOIsEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/transisbigoisequivalent.md) | 389 | `declaration-track:0278e126db0ef55317e249fed8fcf128bd46c0155e689dd15203f9edcd60b9c5` |
| 46 | `theorem` | [IsEquivalent.trans_isLittleO](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-trans-islittleo.md) | 394 | `result-track:6fe122ae2f54c147607ebfbfc950f37cd3e7b9b78cd4b0f2992cae5aa81f558a` |
| 47 | `instance` | [transIsEquivalentIsLittleO](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/transisequivalentislittleo.md) | 398 | `declaration-track:c426eebe2c356663e2e8d0034efb28c51cfc6bd42dddc25e36c33477381f984c` |
| 48 | `theorem` | [IsLittleO.trans_isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/islittleo-trans-isequivalent.md) | 403 | `result-track:3250ceb61889bc32722ac74c8b85b13279579bd754042f554e46bdc2529cc5f4` |
| 49 | `instance` | [transIsLittleOIsEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/transislittleoisequivalent.md) | 407 | `declaration-track:8fc1c2923b816100c1782e8140a14e94de685e8a72b71e09ed9e2581d006ffd8` |
| 50 | `theorem` | [IsEquivalent.trans_isTheta](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/isequivalent-trans-istheta.md) | 412 | `result-track:590e00641a08f96a8f706dba13991625a377831f1b0a2ab3f0964050be40a9f6` |
| 51 | `instance` | [transIsEquivalentIsTheta](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/transisequivalentistheta.md) | 416 | `declaration-track:305236dd9af2f2fd4592283fceaa8885d526ae60cd7c7cfa65e06d3d4ea2c3ea` |
| 52 | `theorem` | [IsTheta.trans_isEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/istheta-trans-isequivalent.md) | 421 | `result-track:9ec4f876d0104f38f0706a06eef36e80ee5c353afad1cb83ad70f257b1a0c8a7` |
| 53 | `instance` | [transIsThetaIsEquivalent](../../../../FunctionalAnalysis/AsymptoticEquivalentAligned.lean/declarations/transisthetaisequivalent.md) | 425 | `declaration-track:aec0ab3be791d1c3bf4f1f02b9b73660894d5184a3e8be1e77d1895dc43d80c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b28956427bc0d4f885175d6a9813b9904456df2dd4815b3a04c3ce18960d9da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variantbc25be107121bfb5b04745b64106b762a2f0dc0309d0286591a74fb6e00409fc.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variantbc25be107121bfb5b04745b64106b762a2f0dc0309d0286591a74fb6e00409fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
