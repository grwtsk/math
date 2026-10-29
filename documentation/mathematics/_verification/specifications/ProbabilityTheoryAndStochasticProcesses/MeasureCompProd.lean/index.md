# Verification target: Measure Comp Prod

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9860f1861ebbe367c9ae65fd453bb66db0e247ad",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MeasureCompProd/Variant17873fd9fc1c2b3b833983561355663f29215fa3ab246db63f533f426aa21338.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9860f1861ebbe367c9ae65fd453bb66db0e247ad`.

Source path: `GRWTSK/Analysis/MeasureTheory/MeasureCompProd/Variant17873fd9fc1c2b3b833983561355663f29215fa3ab246db63f533f426aa21338.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MeasureCompProd/Variant17873fd9fc1c2b3b833983561355663f29215fa3ab246db63f533f426aa21338.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Decomposition.Lebesgue` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.CompProd` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compProd](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/compprod.md) | 39 | `declaration-track:974728b933a8b8c2c997f51eedffbcf9752d5d381835b4f96f20d48d995dc207` |
| 2 | `lemma` | [compProd_of_not_sfinite](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/compprod-of-not-sfinite.md) | 46 | `result-track:cf3283514bbb4dccbddc1d88a9198d570ee1b8e8004344f1bc15f2c05034414b` |
| 3 | `lemma` | [compProd_of_not_isSFiniteKernel](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/compprod-of-not-issfinitekernel.md) | 52 | `result-track:f31171a4f5cd1a20ea2116dac7192c0815804b08bbd49f22999a6f596ee042f5` |
| 4 | `lemma` | [compProd_apply](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/compprod-apply.md) | 57 | `result-track:dbbf109a8d4f5441395710b9abbd8993c0c36edf6d5e79ab5aa8c50f47b07d5b` |
| 5 | `lemma` | [compProd_apply_univ](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/compprod-apply-univ.md) | 62 | `result-track:dc258207857d02af3229ca022e8fe1066b4469dcf2fdb636bc41dbb01b1f3248` |
| 6 | `lemma` | [compProd_apply_prod](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/compprod-apply-prod.md) | 65 | `result-track:65c4ad647174b4311b8774211679239c4d7fda343f473c8ca5fe83b25793b1a3` |
| 7 | `lemma` | [compProd_congr](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/compprod-congr.md) | 70 | `result-track:069a48173732312d3945df80fb5f5733263db66282fb761635520aa44fb448d3` |
| 8 | `lemma` | [compProd_zero_left](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/compprod-zero-left.md) | 77 | `result-track:21af1de01defc85e17900b3d6ca99b3231c895c0508e7e1c9bddc725ec9ec996` |
| 9 | `lemma` | [compProd_zero_right](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/compprod-zero-right.md) | 79 | `result-track:ddb495f4530c1914156d5251d3b6c808b2ecf0d01e77d09fab89816c269e590f` |
| 10 | `lemma` | [compProd_eq_zero_iff](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/compprod-eq-zero-iff.md) | 81 | `result-track:de58d30e8944c359a82c1d005e445d6a15f6eadac19514b57d0a2dc86dbe3017` |
| 11 | `lemma` | [_root_.ProbabilityTheory.Kernel.compProd_apply_eq_compProd_sectR](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/root-probabilitytheory-kernel-compprod-apply-eq-compprod-sectr.md) | 91 | `result-track:dada10d2e96e320b1633c2862cfb0e0f8e7f996bcb978a5e12fac210aeab49b0` |
| 12 | `lemma` | [compProd_id](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/compprod-id.md) | 98 | `result-track:59b010415b405d575720cdedf601728f2a055a7f926c1f92d31f4330fc99dba1` |
| 13 | `lemma` | [ae_compProd_of_ae_ae](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/ae-compprod-of-ae-ae.md) | 109 | `result-track:d7366fce5a5d3c4c3f54f66a120177d9d2b2ba7436fd8676bc064b4732bfb0ae` |
| 14 | `lemma` | [ae_ae_of_ae_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/ae-ae-of-ae-compprod.md) | 114 | `result-track:3fad1f746a16dab55ff7068d6e609221173dc38fccaf0f45519d511ce41b6f2c` |
| 15 | `lemma` | [ae_compProd_iff](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/ae-compprod-iff.md) | 119 | `result-track:b76e059b419e225a004652507223eada8b96c089d6c0caa118efa1b4d3132281` |
| 16 | `lemma` | [compProd_const](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/compprod-const.md) | 127 | `result-track:94049213dcf95708cc846478f62f2a35fe67f23eacb8bf37c9ceae38983ed6b9` |
| 17 | `lemma` | [compProd_add_left](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/compprod-add-left.md) | 132 | `result-track:e1c28302236542a825aa0221ab70225072d7a200467f15648a8a2cc5ebdadd8b` |
| 18 | `lemma` | [compProd_add_right](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/compprod-add-right.md) | 138 | `result-track:950734ed285644e3077e22e68ce247b0dd4a032cab8d28078af411012181463c` |
| 19 | `lemma` | [compProd_sum_left](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/compprod-sum-left.md) | 145 | `result-track:df3175ef1d5d4b1d0abd2922906be8a6e7e69c1cddaede177659d3a259265710` |
| 20 | `lemma` | [compProd_sum_right](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/compprod-sum-right.md) | 150 | `result-track:cf9d78eb7caa0bc7e50b5b3ce046b6f049d6141ebc45a3a8d3eb7c38b3083028` |
| 21 | `lemma` | [fst_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/fst-compprod.md) | 157 | `result-track:bcf21ba78eb38d41d2002c6a5a58cf277dba9e3175b6498489e1f46e2bee8009` |
| 22 | `lemma` | [compProd_smul_left](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/compprod-smul-left.md) | 162 | `result-track:cca2f6d978b8ace59361868f9d5470ff276840af7a00c88d75e0769db171006b` |
| 23 | `lemma` | [lintegral_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/lintegral-compprod.md) | 169 | `result-track:7a82175a6c30ce9cd27e725e7370ac0a9e7490cd570cda7a5c8f90f57ac32e8a` |
| 24 | `lemma` | [setLIntegral_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/setlintegral-compprod.md) | 175 | `result-track:873be7da199bc896e6da124d7079bb511fd0ca1ba93a99a611066c9106cc38b6` |
| 25 | `lemma` | [dirac_compProd_apply](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/dirac-compprod-apply.md) | 184 | `result-track:e779554c4f8d829b6aca41ce439e7d496aaf59d8a7292cfd33cd6eab4fbeeed5` |
| 26 | `lemma` | [dirac_unit_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/dirac-unit-compprod.md) | 189 | `result-track:d8291a20d39bdb36afbce886fb55ed92826f3a631b2aa074e80cb7a4007727d6` |
| 27 | `lemma` | [dirac_unit_compProd_const](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/dirac-unit-compprod-const.md) | 193 | `result-track:b220c9156b016827ffc9e90c27d1c1691c19661375489e927c996e98a59ee5d5` |
| 28 | `lemma` | [snd_dirac_unit_compProd_const](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/snd-dirac-unit-compprod-const.md) | 197 | `result-track:63930c109cddf10c4bf614cc5f581a36b124a787b84b8cf6a482fd27901dbc8f` |
| 29 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/instance-source-edition-4.md) | 200 | `declaration-track:c88a36fd9977c7748b4d89c5fe0c1c5e3511be0d2aa63b7f5ca372503eed33d6` |
| 30 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/instance-source-edition-2.md) | 202 | `declaration-track:2d674f3124257155172af4e8790da25d0a4881b646091abcbdcc15697fb308fe` |
| 31 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/instance-source-edition-3.md) | 205 | `declaration-track:b770bcefeafd8a0c3b890679f0132068a1fd86a49472c6a9287c44628243c65a` |
| 32 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/instance.md) | 208 | `declaration-track:205e6fa57392f56047a240293c49993cbc1753460303b3f8ddba263331caf20a` |
| 33 | `lemma` | [AbsolutelyContinuous.compProd_left](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/absolutelycontinuous-compprod-left.md) | 221 | `result-track:cc64fb9235a001358935c32e57ff9fa0ae0b9edacc25e9c2f68621f5ec14187c` |
| 34 | `lemma` | [AbsolutelyContinuous.compProd_right](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/absolutelycontinuous-compprod-right.md) | 234 | `result-track:7ee5a0267e8d10a74dc8d4a0bd07878325c0eab7a92f68f133920758fda5a880` |
| 35 | `lemma` | [AbsolutelyContinuous.compProd](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/absolutelycontinuous-compprod.md) | 247 | `result-track:eecd6735f1da5db13e17e67423fe87ff4d1c522430c40d87a8bb47dbc7957071` |
| 36 | `lemma` | [absolutelyContinuous_of_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/absolutelycontinuous-of-compprod.md) | 256 | `result-track:1a6aad42bebd064d62e7fda98c4e9499a84397198f9129c05c8d3180c4f8da26` |
| 37 | `lemma` | [absolutelyContinuous_compProd_left_iff](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/absolutelycontinuous-compprod-left-iff.md) | 277 | `result-track:eef0b0fe1ea72b80a715f5080cbd4b50a167afca86801211936e207452c073a8` |
| 38 | `lemma` | [AbsolutelyContinuous.compProd_of_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/absolutelycontinuous-compprod-of-compprod.md) | 282 | `result-track:417de3814a0f6938cd44253d325aa471ac4942a4f21a6d97bf704c3ee7d0c9ff` |
| 39 | `lemma` | [MutuallySingular.compProd_of_left](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/mutuallysingular-compprod-of-left.md) | 296 | `result-track:5c3b951b6a91e70ac95c6c82444b7e433b2fbdbb18cf51b557d8438cfe8fa5b4` |
| 40 | `lemma` | [mutuallySingular_of_mutuallySingular_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/mutuallysingular-of-mutuallysingular-compprod.md) | 313 | `result-track:dd2e1b7350d93036fcb7e37297e5f1550ecbc0c7696223fc54ed40496f9f2d19` |
| 41 | `lemma` | [mutuallySingular_compProd_left_iff](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/mutuallysingular-compprod-left-iff.md) | 328 | `result-track:0eae87bf79d1b41ce07d2e6f3422014d221afb756cd60d2c7abbbf14fb87f34a` |
| 42 | `lemma` | [AbsolutelyContinuous.mutuallySingular_compProd_iff](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/absolutelycontinuous-mutuallysingular-compprod-iff.md) | 341 | `result-track:d6c8c3760630a184c701c8622ce1816bfecfa37b3e31448210c1f27d0e8b0f02` |
| 43 | `lemma` | [mutuallySingular_compProd_iff](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/mutuallysingular-compprod-iff.md) | 351 | `result-track:b41072638057e9ecfcdbf687ac2141eea8e898c0c6b73afa70b0dbbedd554eba` |
| 44 | `lemma` | [absolutelyContinuous_compProd_of_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/absolutelycontinuous-compprod-of-compprod-source-edition-2.md) | 367 | `result-track:58b4e3b4dde1e682b5fd3fbbc3c0150da6a0336b7f905eb053f52f4b26c07b7a` |
| 45 | `lemma` | [absolutelyContinuous_compProd_iff](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProd.lean/declarations/absolutelycontinuous-compprod-iff.md) | 376 | `result-track:db85ab87ec1a5efb431f44900d0abaab6c207daeb1f23550d2c18b2b7b57a343` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=372101cfbd3b873836e8c3f6f50c7e1218e495b2e0453ce222f7a16461dd673d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/MeasureCompProd/Variant17873fd9fc1c2b3b833983561355663f29215fa3ab246db63f533f426aa21338.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/MeasureCompProd/Variant17873fd9fc1c2b3b833983561355663f29215fa3ab246db63f533f426aa21338.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
