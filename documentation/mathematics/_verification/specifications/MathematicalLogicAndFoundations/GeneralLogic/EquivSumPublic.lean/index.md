# Verification target: Equiv Sum Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "684c759195ec1f47d7fb18b156a10aa6aeabdd3c",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantdf604983467488d4bc91a59822530bc04cad0ec59a0ca7831e08c5932d9cb791.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `684c759195ec1f47d7fb18b156a10aa6aeabdd3c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantdf604983467488d4bc91a59822530bc04cad0ec59a0ca7831e08c5932d9cb791.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantdf604983467488d4bc91a59822530bc04cad0ec59a0ca7831e08c5932d9cb791.lean.json)

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
| 1 | `def` | [psumEquivSum](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/psumequivsum.md) | 52 | `declaration-track:8ea8d07bed9b95da3811b5f85254d6daa625ca6b369cfc58a5621235ac243e75` |
| 2 | `def` | [sumCongr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumcongr-source-edition-2.md) | 60 | `declaration-track:a91ce80084a8b3f5ebe6cdc86c83ecb8448815a254a59a72d45b853686af0612` |
| 3 | `theorem` | [sumCongr_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumcongr-trans.md) | 64 | `result-track:1aaee4c9547e3df8e730e2db0cc5c4ab93970771948fb2bce58ef936a0fa125a` |
| 4 | `theorem` | [sumCongr_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumcongr-symm.md) | 70 | `result-track:aa2e96c0b844dcb6a5e2fb4b87e8a06bd5b14e15119bea37d016b650669f4cdf` |
| 5 | `theorem` | [sumCongr_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumcongr-refl-source-edition-2.md) | 75 | `result-track:f7ebea16d6031d926c63477bedcd4240bc9bc8cd107ed7eed9810696bf4ad135` |
| 6 | `def` | [psumCongr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/psumcongr.md) | 81 | `declaration-track:24073145141fbdb30ab7a2827cc1e6c31de93ac19f674dab82053efa5dbda510` |
| 7 | `def` | [psumSum](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/psumsum.md) | 88 | `declaration-track:d5615261aa91b267d003695ed30a27094a9fd38d1c84a878059611e992fd535e` |
| 8 | `def` | [sumPSum](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumpsum.md) | 93 | `declaration-track:af31f5f525824c76ee8f28e0b28595c8f5c8783feba68b6e2b31ac5339b122e2` |
| 9 | `def` | [subtypeSum](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/subtypesum.md) | 98 | `declaration-track:8d2055c970a74d3cceb99081af3660be7a21fd305713d9900bc01424daa1c819` |
| 10 | `abbrev` | [sumCongr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumcongr.md) | 112 | `declaration-track:5bbdbaeaa6e165b6bdce95997a568affc3f3ae0d5c3131512ce3e69832917550` |
| 11 | `theorem` | [sumCongr_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumcongr-apply.md) | 116 | `result-track:3ae35941cce43a0be4e38071ff68bb19b6c0db692857b1e39801a60028ed19b0` |
| 12 | `theorem` | [sumCongr_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumcongr-trans-source-edition-2.md) | 119 | `result-track:c96fa93f6baa0c6a49932d14ad235a36ed8a0275d45fa1ac28a7484ed6de7e77` |
| 13 | `theorem` | [sumCongr_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumcongr-symm-source-edition-2.md) | 123 | `result-track:ccf35aa8d2b9593d2e11e77964ccbc56fccce4cfe46594437092b03d1cee713a` |
| 14 | `theorem` | [sumCongr_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumcongr-refl.md) | 127 | `result-track:460dcc28b71c615724460fe466d3dd00ca354df14ac9340562ad7da77f52391b` |
| 15 | `def` | [boolEquivPUnitSumPUnit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/boolequivpunitsumpunit.md) | 133 | `declaration-track:036e4ee7c37d3abc9c0d8522f2170bff97edf764d476e660cc1b975f75a6771f` |
| 16 | `def` | [sumComm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumcomm.md) | 139 | `declaration-track:b0fa9b5605272cdabcf603cf4a3d0f75418cb4de4b7b51cde94820739472a06e` |
| 17 | `theorem` | [sumComm_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumcomm-symm.md) | 143 | `result-track:69b571f86e8165f1376893461ff118b629b95b42320434f259b989347c7d8d63` |
| 18 | `def` | [sumAssoc](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumassoc.md) | 147 | `declaration-track:b68ce9fecec8695655fc0f69d3cbdd2fc5fe2620cf10810fbb0ba8ead4b7ac23` |
| 19 | `theorem` | [sumAssoc_apply_inl_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumassoc-apply-inl-inl.md) | 154 | `result-track:7edab21e9306f41d9297af57ae02f6d9ad3d492edb823cb17a47caa0ac4ab949` |
| 20 | `theorem` | [sumAssoc_apply_inl_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumassoc-apply-inl-inr.md) | 158 | `result-track:406a1ed62d95f626d96c270e00853087262ad2f4126dd7b74df7941f86c391dd` |
| 21 | `theorem` | [sumAssoc_apply_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumassoc-apply-inr.md) | 162 | `result-track:6e02c7d083f235683b639ef9f4ca797aed991dd6a85316999fda6dc97684d616` |
| 22 | `theorem` | [sumAssoc_symm_apply_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumassoc-symm-apply-inl.md) | 166 | `result-track:0333b3b89e88f5b9866792faf521a84cb0f6617152cb5dd7d7427f8f8b979d2d` |
| 23 | `theorem` | [sumAssoc_symm_apply_inr_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumassoc-symm-apply-inr-inl.md) | 170 | `result-track:1cdf933b87a69fe58d73c45226a53adea71b7b5dee7f46d8320241452b3b26e2` |
| 24 | `theorem` | [sumAssoc_symm_apply_inr_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumassoc-symm-apply-inr-inr.md) | 175 | `result-track:190930092eefa96f3f52cedfdd87ea0fca162cd64e7ca0d53685731c72ba0723` |
| 25 | `def` | [sumSumSumComm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumsumsumcomm.md) | 180 | `declaration-track:5b5b0e4e064710f6af4891c7765f8ef63c001b8cb9eddba36c5c7cc7785972c4` |
| 26 | `theorem` | [sumSumSumComm_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumsumsumcomm-symm.md) | 195 | `result-track:d95e19810999f69a037a06b14bb5f86fe85c5502722bbd75d1025863283d80eb` |
| 27 | `def` | [sumEmpty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumempty.md) | 200 | `declaration-track:158941406560f5f11ba9af77ffa3336b9a229b522bcae1cb77e1487599c5836d` |
| 28 | `theorem` | [sumEmpty_apply_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumempty-apply-inl.md) | 209 | `result-track:6994a7b24e9a6e3d4e86328f24317bd15a197a063764bfdd241e94041361344f` |
| 29 | `def` | [emptySum](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/emptysum.md) | 214 | `declaration-track:b224bed33317e16c3e75633295bfe9a3c957b89a048cdcbaae6ee01c089ed3cf` |
| 30 | `theorem` | [emptySum_apply_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/emptysum-apply-inr.md) | 218 | `result-track:058361b2c38c64caf40e1a2ca7794b4835e480fb5aa9a92ae8c51efc4490bfa0` |
| 31 | `def` | [sumEquivSigmaBool](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumequivsigmabool.md) | 225 | `declaration-track:d7aa34a05af80402752001dbe4c1ed26cb2ec3e86509ff2348088d5fbe6669b4` |
| 32 | `def` | [sigmaFiberEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sigmafiberequiv.md) | 236 | `declaration-track:b8ae79b913036edba9814697a9b37d5f05c6333cc3e434c1bfd77eebf439b507` |
| 33 | `def` | [sigmaEquivOptionOfInhabited](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sigmaequivoptionofinhabited.md) | 241 | `declaration-track:d0afffde54b04f5a190ae42d897e7f65b260a6576a278aa010e445d893dae8ed` |
| 34 | `def` | [sumCompl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumcompl.md) | 261 | `declaration-track:bfc4e19768ff8a0662d39fd4052e1d452a1e8c81510f55d10f21bd8c11836869` |
| 35 | `theorem` | [sumCompl_apply_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumcompl-apply-inl.md) | 274 | `result-track:49539650e5873cf112f6818a813e28cdc6efcda49d90f687229f1835bc177ab3` |
| 36 | `theorem` | [sumCompl_apply_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumcompl-apply-inr.md) | 279 | `result-track:0e77e42b3569d7f30075fe753dab28165ce54bccfcb64a97269f90d1be970987` |
| 37 | `theorem` | [sumCompl_symm_apply_of_pos](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumcompl-symm-apply-of-pos.md) | 284 | `result-track:40a56691b6f83a32c3277ded777ace64d6bd17f8a7bccc2adc3820e62136e482` |
| 38 | `theorem` | [sumCompl_symm_apply_of_neg](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumcompl-symm-apply-of-neg.md) | 289 | `result-track:7ce8cc60c389054ea562900c1bda010497811b4d755d45daf9fe355d803bf2cd` |
| 39 | `theorem` | [sumCompl_symm_apply_pos](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumcompl-symm-apply-pos.md) | 294 | `result-track:5ab9d932f5038e0c49205de54a990d27edc6eea2a430057ae11cd180a81826f2` |
| 40 | `theorem` | [sumCompl_symm_apply_neg](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumcompl-symm-apply-neg.md) | 299 | `result-track:bad12664aaf255de9c061cae202a247efa10cfbd8e3dc905595eac77e976060f` |
| 41 | `def` | [prodSumDistrib](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/prodsumdistrib.md) | 310 | `declaration-track:1227cccd1ff9141e694343ed64fadea57d5d483fa72d345fda283909d90e8ba1` |
| 42 | `theorem` | [prodSumDistrib_apply_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/prodsumdistrib-apply-left.md) | 317 | `result-track:a550fc103b5b8948da1147cb34cf3ab40d1ce04eb8934f3d31e7bb346bf60b34` |
| 43 | `theorem` | [prodSumDistrib_apply_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/prodsumdistrib-apply-right.md) | 322 | `result-track:2d14cf37e13fff0e109a3ddba8413f3e1dc0fac908923e71137303773a54d4dd` |
| 44 | `theorem` | [prodSumDistrib_symm_apply_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/prodsumdistrib-symm-apply-left.md) | 327 | `result-track:bfc51f652376e21d2ce88ff670d80c8e1c9e445f61abe084829c3f746907b006` |
| 45 | `theorem` | [prodSumDistrib_symm_apply_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/prodsumdistrib-symm-apply-right.md) | 332 | `result-track:8b367ce9e93b4fe52df3fa6d22e90d595498c28365a45c1a5a4b0e8fbd722b65` |
| 46 | `def` | [sigmaSumDistrib](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sigmasumdistrib.md) | 339 | `declaration-track:b82716ebfbf4abf886ab558d4c72d9a970b5a2bd36bfd6b190458902f530af51` |
| 47 | `def` | [sumSigmaDistrib](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivSumPublic.lean/declarations/sumsigmadistrib.md) | 348 | `declaration-track:d09b089e484a89197ce9e31d74bc133d1b3b48395a67a639834388d88ded8d1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c10a756581ae5cd9f21509f73e354331b8d31d893eed4193d6dbf6c09e097377 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantdf604983467488d4bc91a59822530bc04cad0ec59a0ca7831e08c5932d9cb791.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantdf604983467488d4bc91a59822530bc04cad0ec59a0ca7831e08c5932d9cb791.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
