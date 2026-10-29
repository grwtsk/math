# Verification target: Tactic Compute Degree Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1df57ee8aca3403ebe07cdd32bea7113830bb7b1",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantd43f519b7895d696b6c6aab2ad2f45f5193be79ff5c15c3814bc70bb1676e6eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1df57ee8aca3403ebe07cdd32bea7113830bb7b1`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantd43f519b7895d696b6c6aab2ad2f45f5193be79ff5c15c3814bc70bb1676e6eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/ComputeDegree/Variantd43f519b7895d696b6c6aab2ad2f45f5193be79ff5c15c3814bc70bb1676e6eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_C_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/natdegree-c-le.md) | 104 | `result-track:61ac92bc007fa6925193ec91890727fa4494f4d6ef6d94c6e771f3a0fae2193e` |
| 2 | `theorem` | [natDegree_natCast_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/natdegree-natcast-le.md) | 106 | `result-track:b19d3f1bf1c7987fa98764b72b551bb34678b42141420d75f7b6410ede4f53c7` |
| 3 | `theorem` | [natDegree_zero_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/natdegree-zero-le.md) | 107 | `result-track:be6c7798cd28b7b2eaa1b6bfb501cbcda827470dec55a05eca8705a36a318c57` |
| 4 | `theorem` | [natDegree_one_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/natdegree-one-le.md) | 108 | `result-track:204f2cf54c8f945c7b3d95230ae68531bf845c95f073a60b0ab25c71f9c56ccb` |
| 5 | `theorem` | [coeff_add_of_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/coeff-add-of-eq.md) | 110 | `result-track:9add9dab1a68cd954a84b5a9f9fa78f5f0073545badc2a906b4426dc2b5788b5` |
| 6 | `theorem` | [coeff_mul_add_of_le_natDegree_of_eq_ite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/coeff-mul-add-of-le-natdegree-of-eq-ite.md) | 114 | `result-track:3167efaac91a0b249e4571e4ffca93a76834a5decc6eb41004b73d517d22f92d` |
| 7 | `theorem` | [coeff_pow_of_natDegree_le_of_eq_ite'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/coeff-pow-of-natdegree-le-of-eq-ite.md) | 126 | `result-track:a7653571c564c3a6936c699d7f38f378dc1dabebb22395d3557a303cbb05ea13` |
| 8 | `theorem` | [natDegree_smul_le_of_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/natdegree-smul-le-of-le.md) | 141 | `result-track:032044fd0f39d299f5761dd45ef348027ddb9c6a15063723c01ffbcc55df6e22` |
| 9 | `theorem` | [degree_smul_le_of_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/degree-smul-le-of-le.md) | 145 | `result-track:1c3eb8bb04b27cbf1849e3f1f16964dd5e8b6321f4cd885659a154433daf07c7` |
| 10 | `theorem` | [coeff_smul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/coeff-smul.md) | 149 | `result-track:ed32c30ddee5f10a842de92cdf32d1ee3c7214b50488925dfde2d61f57116e94` |
| 11 | `theorem` | [natDegree_eq_of_le_of_coeff_ne_zero'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/natdegree-eq-of-le-of-coeff-ne-zero.md) | 165 | `result-track:65fa685667ab8471edee076bc09e7293482fe643b8fc2321d52f7fd3e0115d32` |
| 12 | `theorem` | [degree_eq_of_le_of_coeff_ne_zero'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/degree-eq-of-le-of-coeff-ne-zero.md) | 172 | `result-track:42cc77ccc6ca1d6b66626ec540f9c1373323c453777138f00d4dca7437c144db` |
| 13 | `theorem` | [coeff_congr_lhs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/coeff-congr-lhs.md) | 184 | `result-track:585eb81e1fc131bd10892bafa752b9bb41e57b9470adc0230339a7337c04a3a3` |
| 14 | `theorem` | [coeff_congr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/coeff-congr.md) | 186 | `result-track:bb791a6869f33a42eb64bc8b4bbc539cfb4b485a805fee3afd416e6b2373aa4b` |
| 15 | `theorem` | [natDegree_intCast_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/natdegree-intcast-le.md) | 197 | `result-track:4667acfaf0e9495bd5cbd8c78445aa5c5f9fccdaeeb56f2387442eaf2d7ee9d7` |
| 16 | `theorem` | [coeff_sub_of_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/coeff-sub-of-eq.md) | 199 | `result-track:76f550828a8e150bb2ff18f0b11b0c5b1e681d3bfd80fa2c39e0b430515bafa9` |
| 17 | `theorem` | [coeff_intCast_ite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/coeff-intcast-ite.md) | 202 | `result-track:e4cb4a4869ed9879a1e25759a3431f64337e8020b96b73808f0b383c6be0d468` |
| 18 | `def` | [twoHeadsArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/twoheadsargs.md) | 235 | `declaration-track:075ef47bd0131c77c50625bd32010bd44886f0f0b523c3b5a98d3dee6d49fd47` |
| 19 | `def` | [getCongrLemma](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/getcongrlemma.md) | 290 | `declaration-track:65a6bd94acc15fcabcd486701746b05b696b228c572f5f205f56328636b72c8f` |
| 20 | `def` | [dispatchLemma](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/dispatchlemma.md) | 320 | `declaration-track:a130e8ca028da87cfa7c963366270d524cff5cec6daf55833b4756abd662ef80` |
| 21 | `def` | [tryRfl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/tryrfl.md) | 386 | `declaration-track:59b742c24310b17e08924032be113119dca82160533257e3d85d9e97f3d02686` |
| 22 | `def` | [splitApply](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/splitapply.md) | 414 | `declaration-track:b41959cdf6017259832fecaad5ee69a717d89222d10794c8c6a6aed3ab2b485c` |
| 23 | `def` | [miscomputedDegree?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/miscomputeddegree.md) | 443 | `declaration-track:cb8438860b757ddc951c2a66fa1d96933e57b21a0677acb458f7fee8b213db24` |
| 24 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/syntax.md) | 472 | `declaration-track:275abd69e1a012d22fad074115c993e9066f75418d02e7530f022a2700aab58d` |
| 25 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/initialize.md) | 474 | `declaration-track:a05f61792d1c3ce4d1cb55c3230c2909eae74ddca66caa785e59037e09cda3d9` |
| 26 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/macro-source-edition-2.md) | 477 | `declaration-track:7f2dc40266d4faa6ab29509852b1861d45356c304d08ad7d73689e08ea82677d` |
| 27 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/elab-rules.md) | 479 | `declaration-track:066d7ac69b2e134caad4f31af16442b401127afd3a8cc505b587101bc9386069` |
| 28 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/macro-source-edition-3.md) | 526 | `declaration-track:9a0cf254ede088ff615ff7753c5990e1fc2ce025a0f2313a73d48d0db6dc424b` |
| 29 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/declarations/macro.md) | 530 | `declaration-track:6b4f745f475301090c808acc0aae6189548d56bb02193988a3578a9944b09b60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=852ff311f6ecaa565f3be5bd31e398229faf851ba346633fa193c9102583dd5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantd43f519b7895d696b6c6aab2ad2f45f5193be79ff5c15c3814bc70bb1676e6eb.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/ComputeDegree/Variantd43f519b7895d696b6c6aab2ad2f45f5193be79ff5c15c3814bc70bb1676e6eb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
