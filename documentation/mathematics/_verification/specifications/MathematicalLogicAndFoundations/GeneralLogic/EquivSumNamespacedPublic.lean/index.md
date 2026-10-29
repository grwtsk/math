# Verification target: Equiv Sum Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95adf2cbab18720cff1f3382be244f611e2961e8",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant8978d2e725e0c7e0b3738799964d2bc91acb32f977fd7434de0546079752634f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95adf2cbab18720cff1f3382be244f611e2961e8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant8978d2e725e0c7e0b3738799964d2bc91acb32f977fd7434de0546079752634f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant8978d2e725e0c7e0b3738799964d2bc91acb32f977fd7434de0546079752634f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [psumEquivSum](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/psumequivsum.md) | 60 | `declaration-track:f59d689053505c6b2965cee9d6320d0bf3961e242ea9defd80accc438ee44fc0` |
| 2 | `def` | [sumCongr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumcongr.md) | 68 | `declaration-track:8fafcbfe50ff4ae995521943160b5f232b91da45eb80e9b7cc7f70081cecd8ab` |
| 3 | `theorem` | [sumCongr_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumcongr-trans.md) | 72 | `result-track:5ca6422d134284bff5a7d9e41b934ef9b5cb482074360de454a7c9af6b15428a` |
| 4 | `theorem` | [sumCongr_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumcongr-symm-source-edition-2.md) | 78 | `result-track:fb0646177c8a48afb352a112441820e38a20f48d84b740bb7a12c02ee0b09d43` |
| 5 | `theorem` | [sumCongr_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumcongr-refl.md) | 83 | `result-track:07476b863e77128e1b27492a5a749dd0b6886f25686401302d81e02e82d5e941` |
| 6 | `def` | [psumCongr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/psumcongr.md) | 89 | `declaration-track:26beaf3345db0480bf558cf99b3b77e531061bab8080c79050c088afff948719` |
| 7 | `def` | [psumSum](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/psumsum.md) | 96 | `declaration-track:459fbd7f9eece11fab258070b82c914f72a165120bb9cfbcce4f2dcc5ccf5522` |
| 8 | `def` | [sumPSum](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumpsum.md) | 101 | `declaration-track:37ec2aacbc8a1c4fc001f296c40012f3891ce2aa3ba3ab417fd38979e01eadf7` |
| 9 | `def` | [subtypeSum](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/subtypesum.md) | 106 | `declaration-track:9a6b56494f3d718625bc9a41a8e6a50c33d118591da00c4a8e7ae8f8ffa0c288` |
| 10 | `abbrev` | [sumCongr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumcongr-source-edition-2.md) | 120 | `declaration-track:e8e8a78c9ad547e649b29f07997ca004dcb10a7374bf8c6598d05c9a89f2b2a9` |
| 11 | `theorem` | [sumCongr_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumcongr-apply.md) | 124 | `result-track:5f108446be24c9e3644da1cb0c3670fb49a1fc91b6d9854c121c838997a78d32` |
| 12 | `theorem` | [sumCongr_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumcongr-trans-source-edition-2.md) | 127 | `result-track:b7e16d3aaf5e7940ee330eb5b79705ba6967d697a75c71ad11b02ea3d4177698` |
| 13 | `theorem` | [sumCongr_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumcongr-symm.md) | 131 | `result-track:bc155ae763e4a600e5d0b283631b601ec2db3cffda08c75d09ccf58fa0d84975` |
| 14 | `theorem` | [sumCongr_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumcongr-refl-source-edition-2.md) | 135 | `result-track:36af36b8ce0fe57644d20cd2ada7c03c7ac0f3713b40e35a822871d51cb7215d` |
| 15 | `def` | [boolEquivPUnitSumPUnit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/boolequivpunitsumpunit.md) | 141 | `declaration-track:d443b785408d26d37b3937a584b4da04f0842a8bfdbebce80d18aa3b38de8756` |
| 16 | `def` | [sumComm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumcomm.md) | 147 | `declaration-track:7d8528eaae048971de81d0877f88d24da6bbba340446495ec4912d774c9bdc00` |
| 17 | `theorem` | [sumComm_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumcomm-symm.md) | 151 | `result-track:fc0b5bb919f5fb2e16a34bbd3f7e2a3093329dc9e1fe9ea90c8302c42a8f2ddf` |
| 18 | `def` | [sumAssoc](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumassoc.md) | 155 | `declaration-track:df3d29eaa70eea5a34f8eb14c8d015f2f1f2ea18dc1681d6f746237e92050455` |
| 19 | `theorem` | [sumAssoc_apply_inl_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumassoc-apply-inl-inl.md) | 162 | `result-track:8eea961ae41ce8c154bb20323ba39fe10d0d2ebbce9e03d67d5e85f21b0e2b7b` |
| 20 | `theorem` | [sumAssoc_apply_inl_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumassoc-apply-inl-inr.md) | 166 | `result-track:40f93c873ae9e7533e9e140e5ef410b869014108aaa38ba752680cd69d5da829` |
| 21 | `theorem` | [sumAssoc_apply_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumassoc-apply-inr.md) | 170 | `result-track:b95d1d1b259b189df50774c96e85dcf7c26671ef130a31d0a7fcf2acbbdf1443` |
| 22 | `theorem` | [sumAssoc_symm_apply_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumassoc-symm-apply-inl.md) | 174 | `result-track:5a96e47173a548a47f69a234577df6c74f6997ef478f3b99cd71d8e24164a0e2` |
| 23 | `theorem` | [sumAssoc_symm_apply_inr_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumassoc-symm-apply-inr-inl.md) | 178 | `result-track:b7e6e13f66a7cbd769a7582417a16e96b8790e3f3ef935b456ef53b36cecb338` |
| 24 | `theorem` | [sumAssoc_symm_apply_inr_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumassoc-symm-apply-inr-inr.md) | 183 | `result-track:becc3bbb8a0724192c2fd8f16aa5bd5cd6e617d121ddca04f5e45f2ff1aaaeaf` |
| 25 | `def` | [sumSumSumComm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumsumsumcomm.md) | 188 | `declaration-track:ffce3c8a6eaa8e1b0425d49174e17ecddc20c782171b77e60d221e517d12009e` |
| 26 | `theorem` | [sumSumSumComm_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumsumsumcomm-symm.md) | 203 | `result-track:b7d0365c6a708af89148f7d676c7342b6ba99f54f26cee02800d640400cae50e` |
| 27 | `def` | [sumEmpty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumempty.md) | 208 | `declaration-track:115f5b5ce8df18a4c71e17a0eb7b8e775fc5e425692e71b6ee092bda029459ef` |
| 28 | `theorem` | [sumEmpty_apply_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumempty-apply-inl.md) | 217 | `result-track:7bf0cd5b54ce840532133b52a351e8bf1a724919b953b539b811fc0943124190` |
| 29 | `def` | [emptySum](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/emptysum.md) | 222 | `declaration-track:8eced96e5ccc6a71d36d81f7c9fd8afd2681900722a22244d3f408e6d51442ab` |
| 30 | `theorem` | [emptySum_apply_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/emptysum-apply-inr.md) | 226 | `result-track:0c264b4f4c19f8a1e571083a3645278561fc74e300516c1c4b90bb2f7f167ef9` |
| 31 | `def` | [sumEquivSigmaBool](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumequivsigmabool.md) | 233 | `declaration-track:fe30e1e4f7208d77c6706b5b3e0764dc3d4adff960fa343f3c509498575f3c2d` |
| 32 | `def` | [sigmaFiberEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sigmafiberequiv.md) | 244 | `declaration-track:9eb5e683bec50e869c1dd8521cce9d642dc70e1fe27a570087ca44c1ca97c3bf` |
| 33 | `def` | [sigmaEquivOptionOfInhabited](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sigmaequivoptionofinhabited.md) | 249 | `declaration-track:30381042e93efc90ea985dfb5f76c59cdc8e2d0e59a82e3209a79704d81cbcec` |
| 34 | `def` | [sumCompl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumcompl.md) | 269 | `declaration-track:d264045e64280bfdc5fc1b72febf69df212a058e0e18c0086552a908c9c39ef6` |
| 35 | `theorem` | [sumCompl_apply_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumcompl-apply-inl.md) | 282 | `result-track:04a12a83403c2c9a91c308e0a8bc5293ea10a603b67740ea639f75183bbb0f0d` |
| 36 | `theorem` | [sumCompl_apply_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumcompl-apply-inr.md) | 287 | `result-track:272f18b7ed22b1546389dae6b2aaf6f4753d616e85bcca53c10f22ca625be3e6` |
| 37 | `theorem` | [sumCompl_symm_apply_of_pos](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumcompl-symm-apply-of-pos.md) | 292 | `result-track:113ff05b9bd2850330820a99167f92fb60043245fa839e3d0039983f09aa0c7a` |
| 38 | `theorem` | [sumCompl_symm_apply_of_neg](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumcompl-symm-apply-of-neg.md) | 297 | `result-track:8f2c4c80fecb3a9a42e337f9ec139090a1d4d2206bab36831b66567ce2fd5430` |
| 39 | `theorem` | [sumCompl_symm_apply_pos](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumcompl-symm-apply-pos.md) | 302 | `result-track:0f415a6dcbc8438df2fee71beb731f57c1be821da0c5f542b98253db64c36b4c` |
| 40 | `theorem` | [sumCompl_symm_apply_neg](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumcompl-symm-apply-neg.md) | 307 | `result-track:a5acd9bb81a8d140eceef7c5779ca65ed6b8c743199ef7a3dc21eaaf281a50b0` |
| 41 | `def` | [prodSumDistrib](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/prodsumdistrib.md) | 318 | `declaration-track:ff2e81476ad4efc0360214d5101f317b80f7fa1e341a47a457bf51663d757477` |
| 42 | `theorem` | [prodSumDistrib_apply_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/prodsumdistrib-apply-left.md) | 325 | `result-track:62d9e0d255d1c376e796ba5c8480a182aa03e8d3bf96952e081d2192383e4685` |
| 43 | `theorem` | [prodSumDistrib_apply_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/prodsumdistrib-apply-right.md) | 330 | `result-track:50374cd711e04609f03cf3ccba9d9ff28394bd93d148eecb1b860fa9836f70d1` |
| 44 | `theorem` | [prodSumDistrib_symm_apply_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/prodsumdistrib-symm-apply-left.md) | 335 | `result-track:276f94b7cca8e2b3edf81ba5f8e84b8db14faadb4ec085853e42313b9b20a6ad` |
| 45 | `theorem` | [prodSumDistrib_symm_apply_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/prodsumdistrib-symm-apply-right.md) | 340 | `result-track:fe35d88fcffc44affeeb2739684db3c1e84a06c4b06d690857ffded0aa7c6ff3` |
| 46 | `def` | [sigmaSumDistrib](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sigmasumdistrib.md) | 347 | `declaration-track:8768ce47eea8ea40c9ab9dd33067fa0d1de74d35fc84b28edc3c83c3827f6d64` |
| 47 | `def` | [sumSigmaDistrib](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumNamespacedPublic.lean/declarations/sumsigmadistrib.md) | 356 | `declaration-track:f41fd7e157b2cf3d73a8d8517e411fa5e6c1271223f96280ddb616dfb42a015f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf2d8f475ce04f7b5c37ca1764b24c126b30a10f963deb743cb0bbadb2e13824 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant8978d2e725e0c7e0b3738799964d2bc91acb32f977fd7434de0546079752634f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant8978d2e725e0c7e0b3738799964d2bc91acb32f977fd7434de0546079752634f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
