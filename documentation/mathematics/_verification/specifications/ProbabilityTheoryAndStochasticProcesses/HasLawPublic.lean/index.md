# Verification target: Has Law Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69037c1c1f65abaf7d0ac9dd12ea55fe5abdf27d",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/HasLaw/Variant7c8d6e2fc09e6d8a17148c1c32435a6826e6426f7127f16d76e1d964ad38ee2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69037c1c1f65abaf7d0ac9dd12ea55fe5abdf27d`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/HasLaw/Variant7c8d6e2fc09e6d8a17148c1c32435a6826e6426f7127f16d76e1d964ad38ee2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/HasLaw/Variant7c8d6e2fc09e6d8a17148c1c32435a6826e6426f7127f16d76e1d964ad38ee2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HasLaw](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw.md) | 39 | `declaration-track:9f85f072705d54ac42f72472ebe25ec904d7b1038655917fbe630d7cedcf0760` |
| 2 | `lemma` | [hasLaw_map](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-map.md) | 45 | `result-track:00682b429ebfbea106f23d09014d4c56d42aed6b53aad41a8d6b298a4d535e3a` |
| 3 | `lemma` | [HasLaw.measure_eq](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-measure-eq.md) | 48 | `result-track:18a21cca91e63086c63e6a913cbb43beba5828fee4c1460c71f89197c8c8ad1a` |
| 4 | `lemma` | [HasLaw.measureReal_eq](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-measurereal-eq.md) | 53 | `result-track:08c489d6557dfbc29022d35f9c962600f0a3d7bf2534f8c78349b1423a14771f` |
| 5 | `lemma` | [HasLaw.comp_of_hasLaw_comp](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-comp-of-haslaw-comp.md) | 60 | `result-track:4d0240334ef4a77f9eaa4d8fd6f8ab7a6fd74c1b72fc5899f59ff75c0456f864` |
| 6 | `lemma` | [HasLaw.congr](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-congr.md) | 71 | `result-track:636b83ee7a4180038b9a40a7f6177df0568f5159fe10594ca34e4c77cbbfe634` |
| 7 | `lemma` | [hasLaw_congr](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-congr-source-edition-2.md) | 75 | `result-track:a15ed6ff42939fa5b2ffea788978203f52dc1cd9e291fa35b86657d408181408` |
| 8 | `lemma` | [_root_.MeasureTheory.MeasurePreserving.hasLaw](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/root-measuretheory-measurepreserving-haslaw.md) | 79 | `result-track:c19e5c6fcc102746c2faa23a9172b7c4063318052877fc2898d56a237ecbf50e` |
| 9 | `lemma` | [HasLaw.measurePreserving](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-measurepreserving.md) | 84 | `result-track:7d7dc4a734c0679f31ad85938576317a3173f1055cbbdccbb71cc94adc07ffce` |
| 10 | `lemma` | [HasLaw.id](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-id.md) | 90 | `result-track:3d205ca206d1bcaf5270aa390aaebbc9f85c5545702a4ae1f861edc2042fdc6b` |
| 11 | `lemma` | [HasLaw.ae_iff](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-ae-iff.md) | 93 | `result-track:f3402617fd1993c890d2518d8f7239d65317904421d4a8ef563e0c461da35acb` |
| 12 | `theorem` | [HasLaw.isFiniteMeasure_iff](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-isfinitemeasure-iff.md) | 97 | `result-track:bc6b4761f6d9a5107462e091fc31b94b2957ba0d9f5b7addda80f53f191fa9f4` |
| 13 | `theorem` | [HasLaw.isProbabilityMeasure_iff](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-isprobabilitymeasure-iff.md) | 101 | `result-track:8b29e32cf568398affbd7866465cc3db96016b1252464b8ff466ca1799d907fb` |
| 14 | `lemma` | [HasLaw.isFiniteMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-isfinitemeasure.md) | 105 | `result-track:595ae058dc330ee1d1d62093b7b6655e1bf504c48585fc2ae67f8b1c6e821c33` |
| 15 | `lemma` | [HasLaw.isProbabilityMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-isprobabilitymeasure.md) | 108 | `result-track:5f0f0ea70c3933a241eee424c95fac6f451e3592a7bbd39ec9a27b2f761fa083` |
| 16 | `lemma` | [HasLaw.comp](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-comp.md) | 112 | `result-track:08ce72ede77a73c4fda1bb9d3c587fc79388b71c20ae7d27108133cc301b820a` |
| 17 | `lemma` | [HasLaw.fun_comp](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-fun-comp.md) | 120 | `result-track:2a2302e64f2c97c084f7ca05af308098af53006d66a59bdc5721bedbebc70bb0` |
| 18 | `lemma` | [_root_.MeasureTheory.MeasurePreserving.comp_hasLaw](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/root-measuretheory-measurepreserving-comp-haslaw.md) | 124 | `result-track:31d9bb4110d60ee7e1320c95e9ec4879d06dec764a9be2f3d7b4404341c9f542` |
| 19 | `lemma` | [_root_.MeasureTheory.MeasurePreserving.fun_comp_hasLaw](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/root-measuretheory-measurepreserving-fun-comp-haslaw.md) | 129 | `result-track:a797c514374c240fe493e6e29cb5a2711158e417b348cf7803f9471dfc479ad2` |
| 20 | `lemma` | [IndepFun.hasLaw_mul](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/indepfun-haslaw-mul.md) | 135 | `result-track:51a38138cf5800e1e851136d342f732c546324d5573aa3ff3a8b4377bd080045` |
| 21 | `lemma` | [IndepFun.hasLaw_fun_mul](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/indepfun-haslaw-fun-mul.md) | 145 | `result-track:8ebca26bd8e4397639fb004c363483727414e370f4dd5e559ef482fe76622ca0` |
| 22 | `lemma` | [HasLaw.memLp_comp](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-memlp-comp.md) | 151 | `result-track:a5f51277bea1ab2f3e72ed73705fa8bfb1aef1867201c519dd801f919085be09` |
| 23 | `lemma` | [HasLaw.memLp](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-memlp.md) | 157 | `result-track:729d5b19ca2e3a3af755fdafa4988e89286ec4fc4a7ed20c24bbba97420971e5` |
| 24 | `lemma` | [HasLaw.integrable_comp](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-integrable-comp.md) | 162 | `result-track:123b59193e5b73f3a2b61dd456a31dbab9f437331345ce3b60f49bdc6aefb114` |
| 25 | `lemma` | [HasLaw.integrable](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-integrable.md) | 167 | `result-track:7291e11ab09f25e59565a090af4f724c27a14b01d4ec6a953d1b61138567f9df` |
| 26 | `lemma` | [HasLaw.integral_comp](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-integral-comp.md) | 171 | `result-track:0d84166d3557c6e6f06ea5da74b253116c825a08663f60072c27be58c88af887` |
| 27 | `lemma` | [HasLaw.lintegral_comp](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-lintegral-comp.md) | 177 | `result-track:90371595dad9008bda57f13491ccc27dee1850b2445f328afd729fe3a4114874` |
| 28 | `lemma` | [HasLaw.integral_eq](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-integral-eq.md) | 182 | `result-track:bd9e79b52b170748ae04f97cb7a1f817820cf10906626517dfe4ec66a0ce04e9` |
| 29 | `lemma` | [HasLaw.covariance_comp](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-covariance-comp.md) | 188 | `result-track:332228b48e83e9be1d074d416db2c11ed5621cabd5f2a2a90ad5b5a4ee4a5d39` |
| 30 | `lemma` | [HasLaw.covariance_fun_comp](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-covariance-fun-comp.md) | 198 | `result-track:03728de5bf62904b56b43c779ae97ccdde7db287490045fd0e92f672f3bb667b` |
| 31 | `lemma` | [HasLaw.variance_eq](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-variance-eq.md) | 203 | `result-track:6bd207abed5cdcbf7c18b3a3bcaf280f725728ab4c8d12f6caeaa5e8a7f3f7ac` |
| 32 | `lemma` | [HasPDF.hasLaw](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haspdf-haslaw.md) | 207 | `result-track:e58f8b503d8cb0450d9b4c0d1ca62a8a2d0fdf922051b32a9a8f6fd6a65fa88e` |
| 33 | `lemma` | [HasLaw.ae_eq_of_smul_dirac](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-ae-eq-of-smul-dirac.md) | 211 | `result-track:67a7801b8c0c2ec585a63b238c98a24fed1fa42ca66ef57c7aba112d26e07fb9` |
| 34 | `lemma` | [HasLaw.ae_eq_of_dirac](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-ae-eq-of-dirac.md) | 218 | `result-track:430193b317c3dde56dcf29020732120769ab726cb08919555835d3c66484c614` |
| 35 | `lemma` | [hasLaw_smul_dirac_of_ae_eq](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-smul-dirac-of-ae-eq.md) | 222 | `result-track:0ba357720fe9d2d2836e49c49d426bf6619b6cae1a5b151eeeae90d98bf27ce6` |
| 36 | `lemma` | [hasLaw_dirac_of_ae_eq](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-dirac-of-ae-eq.md) | 229 | `result-track:fda3f062fe6e6cb0563694a012039083e783d52b2a173d3f1e6c979380c2927f` |
| 37 | `lemma` | [hasLaw_smul_dirac_iff](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-smul-dirac-iff.md) | 233 | `result-track:963635ac70a54c25cea71c63ee24e337b3810a9a926daf0da9e81c0ee68fd158` |
| 38 | `lemma` | [hasLaw_dirac_iff](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/haslaw-dirac-iff.md) | 238 | `result-track:f512cc3fc88b5de205b163d1c9197be68208533519b196272a29717d2d3f4fab` |
| 39 | `lemma` | [indepFun_iff_hasLaw_prodMk_prod](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/indepfun-iff-haslaw-prodmk-prod.md) | 243 | `result-track:6a72e330fff3678749afe448ce987e7775b2ccc484922201b8d17e1e192221b7` |
| 40 | `lemma` | [iIndepFun.hasLaw_pi](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/iindepfun-haslaw-pi.md) | 256 | `result-track:33d45d4f777de634fa302045ccf6dad09887995e178679d63fe692c3c35c1fd0` |
| 41 | `lemma` | [iIndepFun_iff_hasLaw_pi_pi](../../../../ProbabilityTheoryAndStochasticProcesses/HasLawPublic.lean/declarations/iindepfun-iff-haslaw-pi-pi.md) | 264 | `result-track:7b2bb499751139f193c3b5ea823d55f3460848e5504b1df5883444715736b1dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db024387f9e7c336c40aad6b4a8924a219995624a917593148b3bdd6aece2171 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/HasLaw/Variant7c8d6e2fc09e6d8a17148c1c32435a6826e6426f7127f16d76e1d964ad38ee2c.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/HasLaw/Variant7c8d6e2fc09e6d8a17148c1c32435a6826e6426f7127f16d76e1d964ad38ee2c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
