# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightIntegerizedPsiSourceRule

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b38b9d6436983921e3687a4d154a8b90c700bec",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightIntegerizedPsiSourceRule.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b38b9d6436983921e3687a4d154a8b90c700bec`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightIntegerizedPsiSourceRule.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PinnedPrimeWeightIntegerizedPsiSourceRule.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightPsiSourceRule`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightPsiSourceRule.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pinnedPrimeWeightPsiGridIndex](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightpsigridindex.md) | 32 | `declaration-track:92484287d69e29c1af523fa0ed956cdf7031d178a3194765e7739f6ae016d231` |
| 2 | `theorem` | [psi_eq_psi_gridIndex](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/psi-eq-psi-gridindex.md) | 34 | `result-track:88964385cd187409d38270ef4f465330014d1a9366d9b812e167fe313ebd6e33` |
| 3 | `theorem` | [pinnedPrimeWeightPsiGridIndex_cast_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightpsigridindex-cast-le.md) | 39 | `result-track:cb8c95d09f6282f3addb0b814d8c9a0770b4ea06f47633454c56abc516539258` |
| 4 | `theorem` | [pinnedPrimeWeightPsiFloorCorrection_abs_le_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightpsifloorcorrection-abs-le-one.md) | 44 | `result-track:9972260172b5e2fa2b662535c5f0f7d63117170b9809f26f5e4ed48e28c73cd9` |
| 5 | `theorem` | [pinnedPrimeWeightPsiGridIndex_natCast](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightpsigridindex-natcast.md) | 53 | `result-track:3e4ea587fad83db3fd28302206da3a300927b1e3ac2dfd32670cd0f218b948fe` |
| 6 | `def` | [pinnedPrimeWeightIntegerPsiResponse](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightintegerpsiresponse.md) | 58 | `declaration-track:0552ae05b4ca691b027d81c12ecd2799c8b314c42a7fb7d5d5e5392e8e52708b` |
| 7 | `def` | [pinnedPrimeWeightIntegerPsiSignedResidual](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightintegerpsisignedresidual.md) | 63 | `declaration-track:fd337b470baf74ed646ef0e7a42805fe9a0448abeb3e274be2e1d04f47e6ccfc` |
| 8 | `theorem` | [thetaError_eq_integerPsiResponse_div_add_signedResidual](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/thetaerror-eq-integerpsiresponse-div-add-signedresidual.md) | 66 | `result-track:0af8ed02331fd7e33cf62703e4dd62ae9fb5a7c59473e753a49447f0a86f06fe` |
| 9 | `def` | [pinnedPrimeWeightIntegerPsiSourceRule](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightintegerpsisourcerule.md) | 81 | `declaration-track:f8b1ea0c4fd206ee0b378f3b00f90de85ec1b82c338ae46b1fd9f3cfeace7c91` |
| 10 | `theorem` | [pinnedPrimeWeightIntegerPsiSourceRule_response](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightintegerpsisourcerule-response.md) | 94 | `result-track:ca323e7171c8e6b61dbe93908d7de6eb578c0cfc07fcc72809ebc200ed12e59c` |
| 11 | `theorem` | [pinnedPrimeWeightIntegerPsiSourceRule_signedResidual](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightintegerpsisourcerule-signedresidual.md) | 100 | `result-track:e47965e27f3bb295346a8b5a8dc069027cd04e87dab0e68ed5d717d5bad5445c` |
| 12 | `theorem` | [pinnedPrimeWeightIntegerPsiSourceRule_response_abs](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightintegerpsisourcerule-response-abs.md) | 105 | `result-track:93b17729a0b52270ed853b82aa83444ad0dcc829bc512e53bbcc9a64fba7cfba` |
| 13 | `theorem` | [pinnedPrimeWeightNextOctave_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightnextoctave-nonnegative.md) | 113 | `result-track:475bc18688a21bceba79b17f1233f2beccc0ffe0f1dd73e0a179c480a729d3ad` |
| 14 | `theorem` | [pinnedPrimeWeightIntegerPsiResidual_abs_le_parent_add_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightintegerpsiresidual-abs-le-parent-add-one.md) | 120 | `result-track:10719177981bc11f70e727eece5934804c35188ee1f588db6256272ab7dc01de` |
| 15 | `theorem` | [pinnedPrimeWeightPsiResponse_eq_integerResponse_add_floorCorrection](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightpsiresponse-eq-integerresponse-add-floorcorrection.md) | 136 | `result-track:b7f844f2704ce3d7623e48ddb52db082a50b5846ec277be8b994dd40ca8710c3` |
| 16 | `theorem` | [pinnedPrimeWeightPsiGridIndex_nat_add_half](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightpsigridindex-nat-add-half.md) | 148 | `result-track:0da0371c96f5909a720a896feffbfe6b5c1153230354e5261802f3d3dbdf6b12` |
| 17 | `theorem` | [pinnedPrimeWeightPsiResponse_at_halfInteger](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightpsiresponse-at-halfinteger.md) | 154 | `result-track:e08b6432c1acc56503c865f334d078ec284a805202f5c19aacf98e23f6f9fda8` |
| 18 | `theorem` | [pinnedPrimeWeightIntegerResponse_at_halfInteger_eq_parent_at_nat](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightintegerresponse-at-halfinteger-eq-parent-at-nat.md) | 162 | `result-track:d854c98349993702b1c4e30bc75ccfae57c729d9a45ff58bbd3ad5016a5b4390` |
| 19 | `theorem` | [pinnedPrimeWeightParentPsiPairBounds_force_sawtoothFloor](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightparentpsipairbounds-force-sawtoothfloor.md) | 172 | `result-track:94f454e3e1766b722345af2ed744f6ad8897967f2998aaad941302d7d54200c2` |
| 20 | `theorem` | [pinnedPrimeWeightPsiGridIndex_mem_nextOctaveNat](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightpsigridindex-mem-nextoctavenat.md) | 203 | `result-track:86078c87d3b0ee44734059b7436d47be668e82db5be2f4b42332bc284b21796e` |
| 21 | `theorem` | [natCast_mem_pinnedPrimeWeightNextOctave](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/natcast-mem-pinnedprimeweightnextoctave.md) | 214 | `result-track:e5b198763f03462cdb688766d5cf941f0e656760245539cbef66d73860fe5b8c` |
| 22 | `def` | [PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightintegerpsiquadraticresponsecapacitywithbudget.md) | 222 | `declaration-track:61fda4c9e9434de2d41c8751bc8ebd115cddd11f9198c2aa7dba9a906d413a59` |
| 23 | `def` | [PinnedPrimeWeightIntegerPsiQuadraticResponseCapacity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightintegerpsiquadraticresponsecapacity.md) | 230 | `declaration-track:829e24e0aba1a8067f1a5fa1888979b373fa4568fb6162634cdd6aae5348c2c3` |
| 24 | `def` | [PinnedPrimeWeightIntegerPsiRuleResponseCapacityWithBudget](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightintegerpsiruleresponsecapacitywithbudget.md) | 235 | `declaration-track:59d7096e5217b147041a05decfe695fe8a7f198479905cac5fdc3e1c18f1647e` |
| 25 | `theorem` | [pinnedPrimeWeightIntegerPsiCapacity_iff_ruleResponseCapacity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightintegerpsicapacity-iff-ruleresponsecapacity.md) | 241 | `result-track:bba8c9b6b25c50b16239241d66fcfad93ed8300e2fb5a341197d151cd314c5dc` |
| 26 | `theorem` | [pinnedPrimeWeightPsiCapacity_to_integerPsiCapacity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightpsicapacity-to-integerpsicapacity.md) | 260 | `result-track:80dc3fea3db097f42e774752a344415ed96cfaff87ed6bfe0dbd32eaf982afa2` |
| 27 | `theorem` | [pinnedPrimeWeightIntegerPsiSourceRule_signedResidual_stageEnvelope](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightintegerpsisourcerule-signedresidual-stageenvelope.md) | 274 | `result-track:b01905d77a8e11fb771222e42852682ba4f83df1609b031c7f62f80cad9ea908` |
| 28 | `theorem` | [pinnedPrimeWeightIntegerPsiCapacityWithBudget_to_fixedSignedSourceCoupling](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightintegerpsicapacitywithbudget-to-fixedsignedsourcecoupli.md) | 311 | `result-track:7fd32fd8ee01a972bb91317d6b84b217f81617255e4f10b460d3c2d9c0e282a3` |
| 29 | `theorem` | [pinnedPrimeWeightIntegerPsiCapacityWithBudget_to_recurrence](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightintegerpsicapacitywithbudget-to-recurrence.md) | 328 | `result-track:ad61fce1917348fe1b7ac232908dfc9a906deec16a50953b755cec6237f3db41` |
| 30 | `theorem` | [pinnedPrimeWeightIntegerPsiCapacityWithBudget_to_descent](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightintegerpsicapacitywithbudget-to-descent.md) | 336 | `result-track:ad6949902ecbf9ce105bb1cbcf2c23f00f8f69451edb16fa990319d45ee918f1` |
| 31 | `theorem` | [pinnedPrimeWeightIntegerPsiCapacity_to_twoRecurrences](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightintegerpsicapacity-to-tworecurrences.md) | 344 | `result-track:a8d613c1ecf5d57e52a0a8356e5a679b5403300c9f94690edc4d5d3aa55ad329` |
| 32 | `theorem` | [pinnedPrimeWeightPsiGridIndex_lt_add_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightpsigridindex-lt-add-one.md) | 369 | `result-track:4127f44294edb9145b284eb3251e5c3185705ce4e1bd877f61f5ffc4eea34663` |
| 33 | `theorem` | [pinnedPrimeWeightPsiFloorCorrection_nonpositive](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightpsifloorcorrection-nonpositive.md) | 373 | `result-track:c9231db16a5f0951c8d9de1ff8f62f255b606da51c1afeb1168abcc4d19a944c` |
| 34 | `theorem` | [pinnedPrimeWeightPsiFloorCorrection_abs_lt_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightpsifloorcorrection-abs-lt-one.md) | 378 | `result-track:ae2231989fe88ecc97ada65a3bd2b924236eb2cb17b76b731284699509bf7ebf` |
| 35 | `theorem` | [pinnedPrimeWeightIntegerPsiSourceRule_signedResidual_nonpositive](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightintegerpsisourcerule-signedresidual-nonpositive.md) | 384 | `result-track:dd433d704ebed4617c1bffaf4aefa86ae67c0d05bbd32f03c2b63a3be0185cea` |
| 36 | `theorem` | [pinnedPrimeWeightIntegerPsiSourceRule_signedResidual_abs](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightintegerpsisourcerule-signedresidual-abs.md) | 395 | `result-track:0ef7cb6c182b750ce565cd89b6e26ddd6e6fd5790fb93a906301ce230c7143bb` |
| 37 | `theorem` | [pinnedPrimeWeightIntegerPsiSourceRule_signedResidual_abs_le_parent_add_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightintegerpsisourcerule-signedresidual-abs-le-parent-add-o.md) | 404 | `result-track:615d7a67ebafaa4014d8a947b078d3b5424e73fab1397a5b3779d3f73ec6187b` |
| 38 | `theorem` | [pinnedPrimeWeightPsiResponses_eq_at_nat](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightpsiresponses-eq-at-nat.md) | 416 | `result-track:a4471670d3bb9ed5f6bf88b62423e569229c2bc54c3fc87da08a584b83d56158` |
| 39 | `theorem` | [pinnedPrimeWeightIntegerPsiCapacity_to_descentProgram](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/declarations/pinnedprimeweightintegerpsicapacity-to-descentprogram.md) | 422 | `result-track:50bdd637861c9ce7fd703d4265cf4bcbd622bc793f557563974ec1fe259a7385` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a05b7322d4b5ea2173e652b147da2e6aea00740def7b620053199a5b3b5d6336 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightIntegerizedPsiSourceRule.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/PinnedPrimeWeightIntegerizedPsiSourceRule.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
