# Verification target: Torsion Blind Data Homology Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e3177b557702afd2c3fec722ca0eceb5c3de608",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TorsionBlindDataHomology/Variantc9518e2665e5aae2f19a54401b9760ae2e7948addeb44ae253837526f97cf016.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e3177b557702afd2c3fec722ca0eceb5c3de608`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TorsionBlindDataHomology/Variantc9518e2665e5aae2f19a54401b9760ae2e7948addeb44ae253837526f97cf016.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TorsionBlindDataHomology/Variantc9518e2665e5aae2f19a54401b9760ae2e7948addeb44ae253837526f97cf016.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.ListTools` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TorsionFactor](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/torsionfactor.md) | 61 | `declaration-track:71146dd6994843f04ebe7380305fee569ccc10bc818237c7c050827939391cd9` |
| 2 | `def` | [forgetExponent](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/forgetexponent.md) | 69 | `declaration-track:31509cd6723e3410fd4552182143ab43b69412b80d9c31875da1a09d8090b5ec` |
| 3 | `def` | [countByPrime](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/countbyprime.md) | 74 | `declaration-track:e49ffb772060c3355197cddf151468fae4c77f3f0ad6de03d877c6a80714efa9` |
| 4 | `theorem` | [countByPrime_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/countbyprime-nil.md) | 79 | `result-track:92e725256465894eb2deb60164328eca081b97da843accbf1b238dd11dfa1edb` |
| 5 | `theorem` | [countByPrime_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/countbyprime-cons.md) | 82 | `result-track:888f851841f48fc0d8548b95d56f4fa46349acdbfeb71f5dfe68976e9f1f45b2` |
| 6 | `theorem` | [countByPrime_map_forgetExponent](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/countbyprime-map-forgetexponent.md) | 88 | `result-track:2b25b6510d1b00ca36589c1ad6329f06c037ded344b904f48eec93e758a0d14d` |
| 7 | `structure` | [IntegralHomology](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/integralhomology.md) | 99 | `declaration-track:94ff0dd71f3280348f843cb2233a6f92a3dd0e13fc26371b863a23faa0e0a0c1` |
| 8 | `def` | [zero](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/zero.md) | 107 | `declaration-track:b172d6c2932f8bc6053d6aa7dac4669afca28bce1004490457fe18af98cd2a6e` |
| 9 | `def` | [forgetExponents](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/forgetexponents.md) | 112 | `declaration-track:1577946ee3bbe7a121c8c0a979b75c870323a6ef5f7e3a9f7ebbd6799d93c1dd` |
| 10 | `def` | [pPrimaryCount](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/pprimarycount.md) | 117 | `declaration-track:2c0ff353081f463fc35e7cd350c5312efd0ea03c73268085f4c28e4938e5b260` |
| 11 | `theorem` | [zero_rank](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/zero-rank.md) | 120 | `result-track:1193adc77d2cd6a73a74e6255b8b21b55b0a8f763048cee57c5802fdf77b6316` |
| 12 | `theorem` | [zero_torsion](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/zero-torsion.md) | 122 | `result-track:dbff6d7e246243419623a5ce0413cf984ccfbd3497fb30500ec332ac3fcc992f` |
| 13 | `theorem` | [pPrimaryCount_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/pprimarycount-zero.md) | 124 | `result-track:c68006f7ca142e394b077244f24f25ef3703567c3183a6ea54f4e64713d5b48d` |
| 14 | `theorem` | [forgetExponents_rank](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/forgetexponents-rank.md) | 127 | `result-track:9971166f856472f3d3884ac02069f7900f4a02f287b0d85d774b0c47391b5869` |
| 15 | `theorem` | [pPrimaryCount_forgetExponents](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/pprimarycount-forgetexponents.md) | 131 | `result-track:ba2d7634dc1e2f299c511c1440f01da45bde3eb397095b1ca72a153ef2559181` |
| 16 | `def` | [cyclicPTorsion](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/cyclicptorsion.md) | 138 | `declaration-track:57789fd7b4de3a91bec586dd245d86ebabef2a8fa4267aff486878ad5fb17112` |
| 17 | `def` | [HasExactPrimePowerFactor](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/hasexactprimepowerfactor.md) | 143 | `declaration-track:ce4db1b50b046a4d3a5cd2f7d58bf96b766bd283b0dbc0fd7ea9baa8f736310e` |
| 18 | `theorem` | [pPrimaryCount_cyclic_same](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/pprimarycount-cyclic-same.md) | 147 | `result-track:aa98cc10c3cd7041034f6a30d33e81b21799e1f2c9e15a4487e1d5a825c9516b` |
| 19 | `theorem` | [pPrimaryCount_cyclic_exponent_blind](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/pprimarycount-cyclic-exponent-blind.md) | 152 | `result-track:aa9d6d12b4e9be9abaafac2d9c13c2f7faa90168617c458471513eb90e850f05` |
| 20 | `theorem` | [cyclic_has_exact_factor](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/cyclic-has-exact-factor.md) | 158 | `result-track:989622adfdf18fb507573c2e616949066ac7afa57b97d1fa3242d579b9883385` |
| 21 | `theorem` | [cyclic_not_has_other_exact_factor](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/cyclic-not-has-other-exact-factor.md) | 163 | `result-track:6256352079727963131a21a9f57992b75f73e54e8886a0d4b8626b1fb8c4524b` |
| 22 | `structure` | [IntegralHomologyProfile](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/integralhomologyprofile.md) | 172 | `declaration-track:e04860964645b008c4a6daf30601e3193377e76039cc474e3c918b96587f1eeb` |
| 23 | `def` | [forgetExponents](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/forgetexponents-source-edition-2.md) | 178 | `declaration-track:ed51880d2897f2ccb3a166b0559281b6efd2454e7045c683229b4377ab52838e` |
| 24 | `def` | [previousGroup](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/previousgroup.md) | 183 | `declaration-track:a2f807ad348d232aced26ff3703e8a42677367ab73e750a39e238113864be6e7` |
| 25 | `structure` | [UCTSummary](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/uctsummary-source-edition-2.md) | 188 | `declaration-track:e263ee243cb5a645df65a3a16114870903ac8fd94d51faddd7fb350b51f624f9` |
| 26 | `def` | [modPDimension](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/modpdimension.md) | 196 | `declaration-track:319129344f5cc0cecf700ac14c7762731d2136e8d7fb60a7d430646c1346796a` |
| 27 | `def` | [uctSummary](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/uctsummary.md) | 202 | `declaration-track:35c60ffa33bc850e7529ac176183dbc119023abc98e4e3a4684217f51f1f5905` |
| 28 | `theorem` | [uctSummary_totalDimension](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/uctsummary-totaldimension.md) | 208 | `result-track:6f93187a10a4abb9911afdf35672a3ea1e7536d71c1e3c7ec646d2274f823156` |
| 29 | `theorem` | [previousGroup_forgetExponents](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/previousgroup-forgetexponents.md) | 213 | `result-track:979856bbea22688924c423fb214d237ee8f1c3b4bd7e656e631a02c494e36165` |
| 30 | `theorem` | [modPDimension_forgetExponents](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/modpdimension-forgetexponents.md) | 220 | `result-track:c43f995525fd518e25f130ca1280447d853652b138ea1719572da0dc6bcfe11b` |
| 31 | `structure` | [FieldCoefficientObservation](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/fieldcoefficientobservation.md) | 234 | `declaration-track:dc2b4b06211fcbbe475e061bed21f647d0c3748d9e878190cedd0a559a42c4b3` |
| 32 | `theorem` | [extensional](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/extensional.md) | 240 | `result-track:d779beca1d41bb3291eaefbf9d07894af083cb5f58320e434820f20c66bbd6b2` |
| 33 | `def` | [Equivalent](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/equivalent.md) | 254 | `declaration-track:f45ce133090feaceddf377603f32a374aa6ad68d71d5c0a77bc6d1d7cd4e8c43` |
| 34 | `def` | [fieldObservation](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/fieldobservation.md) | 260 | `declaration-track:d3729a8fd8fd912604aa30be34ce9dbbbf4dfe7ad59eead2bb13e5bd40ca5fe2` |
| 35 | `theorem` | [fieldObservation_dim](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/fieldobservation-dim.md) | 264 | `result-track:2325f836e576e61f0c1ee71c6b83eeccdfec43d0a17033def9970c20fb48e784` |
| 36 | `theorem` | [fieldObservation_forgetExponents_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/fieldobservation-forgetexponents-eq.md) | 269 | `result-track:0d57ffb674a4b59c50a700a004b31c5904ecd0e31bbb5f7dc6b977c24780da4e` |
| 37 | `structure` | [FiniteFieldSchedule](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/finitefieldschedule.md) | 277 | `declaration-track:9d6029c97420c53489930a5ad1940c29ac9d7751566e348e08b60fc235a9e4c3` |
| 38 | `def` | [scheduledObservation](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/scheduledobservation.md) | 282 | `declaration-track:b74e529a2cc56fe825364f9cd9eb24dfcf3902a57c2ecb9650e7b2c5ad23273d` |
| 39 | `theorem` | [scheduledObservation_forgetExponents](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/scheduledobservation-forgetexponents.md) | 290 | `result-track:937a5d540a3b447a46e8ad81818e19e686966b5c5b9cc7fe0259c4ab3b0e0058` |
| 40 | `structure` | [MetricData](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/metricdata.md) | 299 | `declaration-track:8fbfa5459a007372f74af02eee4ec93e9386d66af6e9bd47923fb085dd17295d` |
| 41 | `structure` | [SimplicialComplex](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/simplicialcomplex.md) | 304 | `declaration-track:435fdcc9cafcfcb6f42863ea5eb8733e3242e0e14fe33de937e0c8d9342b098e` |
| 42 | `structure` | [DataHomologyPipeline](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/datahomologypipeline.md) | 309 | `declaration-track:fc39f2e89a95708257c7f2e8e2401bac5300a31c6e003b473d655b777e3c7311` |
| 43 | `theorem` | [DataHomologyPipeline.fieldProfile_forgetExponent_equivalent](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/datahomologypipeline-fieldprofile-forgetexponent-equivalent.md) | 317 | `result-track:ec7906ba9d73c3de9bdfa0840485f2f8184a335de9a2cfa68bfda13410c83b57` |
| 44 | `structure` | [MordellWeilTorsion](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/mordellweiltorsion.md) | 327 | `declaration-track:12f86aed6997ad3a7403857be4d31d5490215af7ccb96ce2380bb3d2dbfd5f2c` |
| 45 | `structure` | [EllipticArithmeticModel](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/ellipticarithmeticmodel.md) | 332 | `declaration-track:2eb4441a0569539ad57c39015f092be74f6e2382aed10291d2a55c94c3b6e719` |
| 46 | `def` | [fieldTDAObservation](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/fieldtdaobservation.md) | 339 | `declaration-track:bc82a9e49c05339580fc2b0a39dc74cc6498928da660235505003ba3b9568e32` |
| 47 | `abbrev` | [FieldOnlyArithmeticAlgorithm](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/fieldonlyarithmeticalgorithm.md) | 346 | `declaration-track:ed920319de1cc7a12f0b9af990e85ebfc093491d268d9c7f256dfc5486f5feb6` |
| 48 | `def` | [CorrectArithmeticRecovery](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/correctarithmeticrecovery.md) | 350 | `declaration-track:384e431c7fbbacb1b3fb53f1a1463702d2ec347016742a923b323d8403e130a1` |
| 49 | `structure` | [ArithmeticCollision](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/arithmeticcollision.md) | 356 | `declaration-track:59fc8e8842ad983a71b2e68ef5ef86a4d1c44d13301c919b933f1d5b6fd5c4d0` |
| 50 | `theorem` | [no_field_only_recovery_from_collision](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/no-field-only-recovery-from-collision.md) | 366 | `result-track:2e39862d29e9139fb55760cc12c50740552ff4cae529a675b181f663a1539d61` |
| 51 | `def` | [ArithmeticTorsionNonIdentifiable](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/arithmetictorsionnonidentifiable.md) | 381 | `declaration-track:6bb4de4923eb39087037ac608692aa55fdf2d122113f137861021e90d5ae8a85` |
| 52 | `def` | [UniversalFieldOnlyRecovery](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/universalfieldonlyrecovery.md) | 385 | `declaration-track:30c5e3910fba3fea808d6b4270c69b795c02aad34a9f48c484644f7cd7bab602` |
| 53 | `theorem` | [collision_refutes_universal_field_only_recovery](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/collision-refutes-universal-field-only-recovery.md) | 389 | `result-track:0c512513316a7e2df0798df4d10e6d6e6e0ed2147bbaaad997c0655604649597` |
| 54 | `theorem` | [torsion_blindness_summary](../../../../../ComputerScience/AlgorithmsInComputerScience/TorsionBlindDataHomologyNamespaced.lean/declarations/torsion-blindness-summary.md) | 397 | `result-track:ff7230202a6f481da5f7b46c44b4302c9dc032c89bcb9f9640abc78b85f04085` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=945d1ccd6f44c171e2a1c9e0e9ab450d9be46ff12525767c600a119022349b83 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TorsionBlindDataHomology/Variantc9518e2665e5aae2f19a54401b9760ae2e7948addeb44ae253837526f97cf016.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TorsionBlindDataHomology/Variantc9518e2665e5aae2f19a54401b9760ae2e7948addeb44ae253837526f97cf016.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
