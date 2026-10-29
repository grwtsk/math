# Verification target: Import Plan

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4363f049fe9ab47f5467f1d333f536437456af7",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f496d706f7274506c616e2e6c65616e/Variant84d2ac831632bdfdf0b8c270ea1f4b731621b95e0e10cc2735dcd0307463bac5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4363f049fe9ab47f5467f1d333f536437456af7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f496d706f7274506c616e2e6c65616e/Variant84d2ac831632bdfdf0b8c270ea1f4b731621b95e0e10cc2735dcd0307463bac5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f496d706f7274506c616e2e6c65616e/Variant84d2ac831632bdfdf0b8c270ea1f4b731621b95e0e10cc2735dcd0307463bac5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit1.Bit0.Bit1.Bit1.Bit0.Bit1.Bit0.Bit1.M496d706f7274732f417574686f726974794c6576656c2e6c65616e` — import line 1; external provider; requires a separately pinned dependency.
- `Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit0.Bit1.Bit1.M4b65726e656c2f526573696475652e6c65616e` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ImportCandidateStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/importcandidatestatus.md) | 11 | `declaration-track:391ee93a556dc54f938f3dbeee3ac649a043a8ee4a7c679c85ee724f06772a16` |
| 2 | `structure` | [TargetImportCandidate](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/targetimportcandidate.md) | 20 | `declaration-track:4ec77a95b01f120301494442a276e26ea8adf4e37b84d2834437d199dc45b4b3` |
| 3 | `def` | [rhImportCandidates](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/rhimportcandidates.md) | 30 | `declaration-track:c8ee9bee90425d6acd1978ff0f3fdd04585aec286af9b8b4e6c600d529648d91` |
| 4 | `def` | [primeGapImportCandidates](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/primegapimportcandidates.md) | 68 | `declaration-track:eac7e3ffeebf8da5009b9d29070f50b71130622b49fe39dbf51b01f16ded50f4` |
| 5 | `def` | [kakeyaImportCandidates](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/kakeyaimportcandidates.md) | 106 | `declaration-track:9c7eda23d4bcd070aa1486ebac0b37e53753281eb72d780d7c7205536156422b` |
| 6 | `def` | [navierStokesImportCandidates](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/navierstokesimportcandidates.md) | 137 | `declaration-track:83d85af48b0890a78c1ead3af98fcc1a849d8b9cdb61539f79015186c325f7b7` |
| 7 | `def` | [modularityImportCandidates](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/modularityimportcandidates.md) | 175 | `declaration-track:ae6505b4918a494f3340fe8cb236ab0740161a2ae13100eb8723016eb7216f27` |
| 8 | `def` | [finiteToAsymptoticImportCandidates](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/finitetoasymptoticimportcandidates.md) | 199 | `declaration-track:b5fd52cf41e46ae721091136c76b6f82b2a0823bf4a43b5a46bbfbb0e39a40c4` |
| 9 | `def` | [allCandidates](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/allcandidates.md) | 223 | `declaration-track:9d9972846785225553ad87e3f0fea05a87f003acfd8e9af48eab9178cc271255` |
| 10 | `theorem` | [allCandidates_retain_finalTargets](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/allcandidates-retain-finaltargets.md) | 231 | `result-track:4c44ef68d2d78ba087703924d09f6b3c203e44fbe54bc37cbc90cf36e045c251` |
| 11 | `theorem` | [rhImportCandidates_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/rhimportcandidates-count.md) | 235 | `result-track:2ee00d542d209c0c1780686154cffb17363ba96eb6c690ddcb94fb17c9e6edef` |
| 12 | `theorem` | [primeGapImportCandidates_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/primegapimportcandidates-count.md) | 239 | `result-track:d8900b3576556530cfdfcebba78e2491896193d66bce58e2fc05a649bf4211a4` |
| 13 | `theorem` | [kakeyaImportCandidates_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/kakeyaimportcandidates-count.md) | 243 | `result-track:498eda851847e51dca518d6da1c0fa852de002d7b0298b42aff8006543586df6` |
| 14 | `theorem` | [navierStokesImportCandidates_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/navierstokesimportcandidates-count.md) | 247 | `result-track:a3550fc249f8823f1725edcc9a029e71fcf802829161cacbcf7af773a12a90ec` |
| 15 | `theorem` | [modularityImportCandidates_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/modularityimportcandidates-count.md) | 251 | `result-track:242ea5bd10810bf0d10772d6ae72e858d07767ac61457f5e7891b629ad5d0099` |
| 16 | `theorem` | [finiteToAsymptoticImportCandidates_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/finitetoasymptoticimportcandidates-count.md) | 255 | `result-track:e92a500aa180d61711f8c0b630823908dcb0ffea6926754f11dde1542cecbe26` |
| 17 | `theorem` | [allCandidates_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/allcandidates-count.md) | 259 | `result-track:9d00801adce57e0d7603fb71a1dd51cfdfcc350cbe8469ae50313cd53a1322f4` |
| 18 | `def` | [openConjectureCandidateMetadataCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/openconjecturecandidatemetadatacheck.md) | 263 | `declaration-track:a6cc04ce42040018b50c80ec8f3ad9c4f43eca9519ed6819ff3f54960eedbd19` |
| 19 | `theorem` | [openConjectureCandidateMetadataCheck_all](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/openconjecturecandidatemetadatacheck-all.md) | 271 | `result-track:9cdb84aa57bbf58ec15cb3be9279ee9dae38d1526978d4cba5029186c8bd1e0a` |
| 20 | `theorem` | [openConjectureCandidates_are_metadata](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/openconjecturecandidates-are-metadata.md) | 275 | `result-track:9ac3072828da4b88f71d2c51527e802cdf5192bf41a5ecd2ebfcfc1b64614863` |
| 21 | `def` | [conjecturalAtomCandidateNotImportedTheoremCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/conjecturalatomcandidatenotimportedtheoremcheck.md) | 286 | `declaration-track:f3945970144d591a27e866b68a74ae19385133ba6b79ed045beb71bd10262b90` |
| 22 | `theorem` | [conjecturalAtomCandidateNotImportedTheoremCheck_all](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/conjecturalatomcandidatenotimportedtheoremcheck-all.md) | 295 | `result-track:c743588006b4fbca7e739b981af2a28d14f04bf84948e3ff5428b59cdcc06879` |
| 23 | `theorem` | [conjecturalAtom_candidates_not_importedTheorem](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/conjecturalatom-candidates-not-importedtheorem.md) | 300 | `result-track:9ab5cced3a5c0dc005e35670b3596910563ec904b0111394e27d619a760d5d91` |
| 24 | `def` | [transferRequiredCandidateRetainsFinalTargetCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/transferrequiredcandidateretainsfinaltargetcheck.md) | 313 | `declaration-track:162726808e723e524067da835a84bbbf26e9e981f89c12f2e5715f2608ab3222` |
| 25 | `theorem` | [transferRequiredCandidateRetainsFinalTargetCheck_all](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/transferrequiredcandidateretainsfinaltargetcheck-all.md) | 320 | `result-track:851bba69ee84ba9d5f11d09727744930d8e01bbe8f16c575a1b5c97246d297b8` |
| 26 | `theorem` | [transferRequired_candidates_retain_final_target](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/transferrequired-candidates-retain-final-target.md) | 325 | `result-track:d4fd8bfba317a4fb7ef851056e68197bedd329f3c25d4ae43de20e7ff4f600a5` |
| 27 | `def` | [separatedKnownExternalNoTargetSettlementCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/separatedknownexternalnotargetsettlementcheck.md) | 337 | `declaration-track:7f0543a6d6f7971b8b024490ee5f181bed87e7b6d287edec264cf41af474f177` |
| 28 | `theorem` | [separatedKnownExternalNoTargetSettlementCheck_all](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/separatedknownexternalnotargetsettlementcheck-all.md) | 344 | `result-track:7da2d85d22d50b52551ab51c48ba031f860e0dab17b05fd8cc27fb530efc7056` |
| 29 | `theorem` | [separatedKnownExternal_does_not_imply_target_settlement](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/separatedknownexternal-does-not-imply-target-settlement.md) | 349 | `result-track:3a77f584c4125b95ada53510bde1fd47627de0ef5a615e822192a97fe8f34497` |
| 30 | `theorem` | [rh_final_retained](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/rh-final-retained.md) | 361 | `result-track:9232b2973bf799e396aae8dc5327d2b94714cd33e7a996df04b553e6adf32586` |
| 31 | `theorem` | [finiteToAsymptotic_transfer_required](../../../../../ComputerScience/AlgorithmsInComputerScience/ImportPlan.lean/declarations/finitetoasymptotic-transfer-required.md) | 368 | `result-track:51c9abe2f1857364903da7de65d98b00b6e229bba3240cb6e23b2317bc34d29f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad9573c079c9c5486c657df2639504592492835b21399dad6aa0290eb110aab9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f496d706f7274506c616e2e6c65616e/Variant84d2ac831632bdfdf0b8c270ea1f4b731621b95e0e10cc2735dcd0307463bac5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f496d706f7274506c616e2e6c65616e/Variant84d2ac831632bdfdf0b8c270ea1f4b731621b95e0e10cc2735dcd0307463bac5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
