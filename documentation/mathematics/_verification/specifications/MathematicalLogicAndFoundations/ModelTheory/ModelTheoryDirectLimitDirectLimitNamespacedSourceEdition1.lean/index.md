# Verification target: Model Theory Direct Limit Direct Limit Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "665bb197c4fd955fb43a7c0e13287472d455a730",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variant26d205e6b0fa4eb4105669a2dc075e9bb36f1081e95f9633b2596668d23bd955.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `665bb197c4fd955fb43a7c0e13287472d455a730`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variant26d205e6b0fa4eb4105669a2dc075e9bb36f1081e95f9633b2596668d23bd955.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variant26d205e6b0fa4eb4105669a2dc075e9bb36f1081e95f9633b2596668d23bd955.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Sum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.FinitelyGenerated` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Quotients` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.DirectedInverseSystem` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [natLERec](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/natlerec.md) | 60 | `declaration-track:d14df40ba5ea2807166c999eeb5cb28452b87ea5f5ca18607028291f9dbdd33a` |
| 2 | `theorem` | [coe_natLERec](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/coe-natlerec.md) | 64 | `result-track:52e19adac0fadc49e3612a30801ac2905ead99cc5d731566afede444215c91b4` |
| 3 | `instance` | [natLERec.directedSystem](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/natlerec-directedsystem.md) | 77 | `declaration-track:0caf68bd5c61f16273ff9e2697833afc538b660c8d706ae9f9e85974be1b44ba` |
| 4 | `abbrev` | [Structure.Sigma](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/structure-sigma.md) | 93 | `declaration-track:2ae0c43abf0ef2338b2cd6f1d8cbfb29e13e26513a927e707cf9be4d53e73663` |
| 5 | `abbrev` | [Structure.Sigma.mk](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/structure-sigma-mk.md) | 98 | `declaration-track:88bd803569a36ee7e3a60e33e72d5bb1324afc6d0a603f1b98d8d3902e004f28` |
| 6 | `def` | [unify](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/unify.md) | 103 | `declaration-track:0999109c0777f11bbac0e5b2116442638408c272e90c0e3932bc8d3ec8098210` |
| 7 | `theorem` | [unify_sigma_mk_self](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/unify-sigma-mk-self.md) | 110 | `result-track:7f0e79345a07766b89888c4b5e1f50c853b697e69577e196a3e7c9014ae3943c` |
| 8 | `theorem` | [comp_unify](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/comp-unify.md) | 117 | `result-track:8b92177ead0522d8a459549c33c459c870242f69692fb0ac114c87cb0c9ec148` |
| 9 | `def` | [setoid](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/setoid.md) | 131 | `declaration-track:fb0bf870f025d9a177eda60e5062d4add592da5bea969796d63590e2a5492555` |
| 10 | `def` | [sigmaStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/sigmastructure.md) | 147 | `declaration-track:077d80c9841296681d735d03eb349584e87d659340fed48fbf14e654f81170ad` |
| 11 | `def` | [DirectLimit](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/directlimit.md) | 161 | `declaration-track:90ad2177655cef2aab1ee7c6ae876a9f465365c96fb7c32c73ebb12162cb6842` |
| 12 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/instance-source-edition-2.md) | 166 | `declaration-track:979ead7ab5a977d3e7799b2a3f72450bb581b6c2707f125930a6bbaf61e86104` |
| 13 | `theorem` | [equiv_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/equiv-iff.md) | 174 | `result-track:d50045c66c2b5dce9904cdc5a6be41868f633ad72f0c442667e1a6201cb48c6a` |
| 14 | `theorem` | [funMap_unify_equiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/funmap-unify-equiv.md) | 186 | `result-track:a843b3fb9741fdf0a54766ef8ae6f2b5a75bbb676f41e1ac9df16b12321edaf0` |
| 15 | `theorem` | [relMap_unify_equiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/relmap-unify-equiv.md) | 193 | `result-track:a2b6be8637e8a278ec2d5296a99cc81d73a0967215a2b13cad0db8f59e2e4d6e` |
| 16 | `theorem` | [exists_unify_eq](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/exists-unify-eq.md) | 201 | `result-track:4719c6d3b14ebd1e732f89556a76054a650c1a539540eef0d7138c9263e9ecec` |
| 17 | `theorem` | [funMap_equiv_unify](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/funmap-equiv-unify.md) | 209 | `result-track:4433378a276cd2ae8ebb2c73931c429f9f5154aec1e809db306f5ffbb3c9ed04` |
| 18 | `theorem` | [relMap_equiv_unify](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/relmap-equiv-unify.md) | 214 | `result-track:8c98cfc3f5739685058da824f428a839349e7fc87b98b34edcc6a778acf7f10d` |
| 19 | `instance` | [prestructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/prestructure.md) | 221 | `declaration-track:9d1524d5bfbe3b155e743684662780dd829759d23f4c5c58b734659c5c657588` |
| 20 | `instance` | [instStructureDirectLimit](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/inststructuredirectlimit.md) | 236 | `declaration-track:a8ca0aa3721887ef2fb5d532ea6d6fc2ccd6ea371e5f0030cb72642e333d9b90` |
| 21 | `theorem` | [funMap_quotient_mk'_sigma_mk'](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/funmap-quotient-mk-sigma-mk.md) | 240 | `result-track:2c325518b86fccfbbba3d795563837842c918971830eff7c7fc1eb557d3152f9` |
| 22 | `theorem` | [relMap_quotient_mk'_sigma_mk'](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/relmap-quotient-mk-sigma-mk.md) | 250 | `result-track:49a6cabf44577d1eeb9f2d2be3480b986818c7ef0c8302e845b0b357d1a1439f` |
| 23 | `theorem` | [exists_quotient_mk'_sigma_mk'_eq](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/exists-quotient-mk-sigma-mk-eq.md) | 258 | `result-track:8f5c29dccaf56716e87332a1ed64f5b2a0f52c6155f1f7427e24a10d91e34fba` |
| 24 | `def` | [of](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/of.md) | 275 | `declaration-track:9648598aa84d008f55d850b863b87078b04c974d572c21af4681edb24ea5fcce` |
| 25 | `theorem` | [of_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/of-apply.md) | 294 | `result-track:81b226b25c1e37ce0f20c872d8787c1dd2fd31b44b9e7f4a864bea960c01f5ff` |
| 26 | `theorem` | [of_f](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/of-f.md) | 299 | `result-track:049c4a993a783dbd006870e19228f8a26aab1bb1adb2e4418a0eeb5a2e09595a` |
| 27 | `theorem` | [exists_of](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/exists-of.md) | 306 | `result-track:7c19505ca80d4365125d6963dfee32f75478619583eb71350b752a703f7e9590` |
| 28 | `theorem` | [inductionOn](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/inductionon.md) | 310 | `result-track:394701843cc0ec0b11ba0208c337cba931a3f1fa0adfcda8fb963a5cdbbef2d8` |
| 29 | `theorem` | [iSup_range_of_eq_top](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/isup-range-of-eq-top.md) | 315 | `result-track:8ad9d3b2b69c31cbcde752a3955903cf6ca47c4e91bc1a568de02eabfc6a2e68` |
| 30 | `theorem` | [exists_fg_substructure_in_Sigma](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/exists-fg-substructure-in-sigma.md) | 321 | `result-track:6b1e9a9fa5d5e62583865f5895f881e9e3a6e7ee2d7e3a827835c65db9097d07` |
| 31 | `def` | [lift](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/lift.md) | 338 | `declaration-track:ba082716d5f4f102b87a599ed64da45e83407b99d2a9fc9219459cd5c0860f6c` |
| 32 | `theorem` | [lift_quotient_mk'_sigma_mk'](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/lift-quotient-mk-sigma-mk.md) | 368 | `result-track:40925f6f10c0e6417b5ae138e732286213d03e0f3141f89254ab1b2f31f9c9c9` |
| 33 | `theorem` | [lift_of](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/lift-of.md) | 372 | `result-track:8b6d986128c26c17163bd7a6607eeb74fd3337c5e05853291f4292f67c165209` |
| 34 | `theorem` | [lift_unique](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/lift-unique.md) | 374 | `result-track:a165b2cc126c62952ee43fb31158226df2450fd923109bf1ab0d9691f9933eab` |
| 35 | `lemma` | [range_lift](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/range-lift.md) | 380 | `result-track:c8fb793e2b35b41a14affe15894c4f6281f67cf8c6a83375dae2cb1ec05485f0` |
| 36 | `def` | [equiv_lift](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/equiv-lift.md) | 393 | `declaration-track:ec70d599503ae6d65953ab4064ac44129d46358d93a6496cc3c1ba0490d570fe` |
| 37 | `theorem` | [equiv_lift_of](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/equiv-lift-of.md) | 409 | `result-track:2b115506eb688afe98a0179ca0530502a606ebeefc792f36506180d2aa5c1a9c` |
| 38 | `theorem` | [cg](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/cg.md) | 415 | `result-track:052e60cf3c925506e74864f23726c1f826bb0168c74fa56f3c8a6e79a304995d` |
| 39 | `instance` | [cg'](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/cg-source-edition-2.md) | 431 | `declaration-track:521eda5e185b8f0ba7ba9d2a0383a26504a04a4828ebce2547f1c5cd4cd2c144` |
| 40 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/instance.md) | 444 | `declaration-track:8fc6a1db4aa7b81a43d9b9e15767a2f47809a56d79e1235035779d30bb67662c` |
| 41 | `def` | [liftInclusion](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/liftinclusion.md) | 451 | `declaration-track:0031b3fdde3565cc62e928e49a0cadda23a20659f45bce4dc8a01ed98434a079` |
| 42 | `theorem` | [liftInclusion_of](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/liftinclusion-of.md) | 456 | `result-track:07a64b45c747e7cfdefbfa9decc1fcf796844493000f5c9a48957c54b9b82057` |
| 43 | `lemma` | [rangeLiftInclusion](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/rangeliftinclusion.md) | 460 | `result-track:d9f24808f67fdb635ec1a6920d9b3989cfb2f2b5f742a31a4c28ef9866b29adc` |
| 44 | `def` | [Equiv_iSup](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/equiv-isup.md) | 464 | `declaration-track:40ce5a2d44df24328516bdf3c53b2c32e03245067e957a12745f6702fc36c3bd` |
| 45 | `theorem` | [Equiv_isup_of_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/equiv-isup-of-apply.md) | 478 | `result-track:4144cb942bb62f816fb7397290f4b256f117ba32215d33156cb708472a388dbc` |
| 46 | `theorem` | [Equiv_isup_symm_inclusion_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/equiv-isup-symm-inclusion-apply.md) | 482 | `result-track:8f58118a2f64577ad8b26f11cccdf55ea9eae3767292b0ebd80bb045ecb7c898` |
| 47 | `theorem` | [Equiv_isup_symm_inclusion](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDirectLimitDirectLimitNamespacedSourceEdition1.lean/declarations/equiv-isup-symm-inclusion.md) | 490 | `result-track:8f0db1870615aad1c3bc1cbdb889234ddce673f4a87b5a5cc2b89ab8e61b7219` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76a4010f53f2b72a6d2d46ae635bc9ecad6a6c1793c74c851cb9e022ac922f7a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variant26d205e6b0fa4eb4105669a2dc075e9bb36f1081e95f9633b2596668d23bd955.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variant26d205e6b0fa4eb4105669a2dc075e9bb36f1081e95f9633b2596668d23bd955.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
