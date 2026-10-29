# Verification target: Condexp L1 Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da7bcf32a2f3298ad53b79d3a81ebddd9fe25d13",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/CondexpL1/Variant28b060713bcae5c6143fab3952af14105f82e83b1bd2d844f52324223ddc7201.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da7bcf32a2f3298ad53b79d3a81ebddd9fe25d13`.

Source path: `GRWTSK/Analysis/MeasureTheory/CondexpL1/Variant28b060713bcae5c6143fab3952af14105f82e83b1bd2d844f52324223ddc7201.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/CondexpL1/Variant28b060713bcae5c6143fab3952af14105f82e83b1bd2d844f52324223ddc7201.lean.json)

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
| 1 | `def` | [condExpIndL1Fin](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpindl1fin.md) | 75 | `declaration-track:176d864d119e9fe17aa4eada793f2807a3dee0e22d08beb3628c919d770587ca` |
| 2 | `theorem` | [condExpIndL1Fin_ae_eq_condExpIndSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpindl1fin-ae-eq-condexpindsmul.md) | 79 | `result-track:dda6cf1519844be8ced14194ecc3a4e945ccd78422a21f0164e3cddff532779e` |
| 3 | `theorem` | [q](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/q.md) | 88 | `result-track:0180c08e5ee8ee1e0e0b916bd82d3ac53a81d8fa0256c0dca7dbe146d97673ad` |
| 4 | `theorem` | [condExpIndL1Fin_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpindl1fin-add.md) | 92 | `result-track:7504ae13469f474a8b17468e005739c6e9c7a9b5118181468a98ba701500c8fb` |
| 5 | `theorem` | [condExpIndL1Fin_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpindl1fin-smul-source-edition-2.md) | 100 | `result-track:8b0c8acffe2ace41b8a9037b628e771969d042337293f21468de9e56e31c4d64` |
| 6 | `theorem` | [condExpIndL1Fin_smul'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpindl1fin-smul.md) | 106 | `result-track:5d2a72e932ebc6f3097c4a300b174b6983cfb20763f9bd9609d5b102948f4c30` |
| 7 | `theorem` | [norm_condExpIndL1Fin_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/norm-condexpindl1fin-le.md) | 113 | `result-track:ce0ec2b3758d636cbcafdfe25deccd95717f188c424744c6faa28fa289d1cbf0` |
| 8 | `theorem` | [condExpIndL1Fin_disjoint_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpindl1fin-disjoint-union.md) | 128 | `result-track:b9f6ec25b956e48ccacea6615776e71a6e5c2b89d1c7852155265e0d87bb3c23` |
| 9 | `def` | [condExpIndL1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpindl1.md) | 152 | `declaration-track:b12d04ba246c8ea80a1ff8c0a8b4a5a3448286637e7a54e69ed7b619f9c69a4f` |
| 10 | `theorem` | [condExpIndL1_of_measurableSet_of_measure_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpindl1-of-measurableset-of-measure-ne-top.md) | 158 | `result-track:4ecfde11294193ba82fa07e73ecabb1fe0bd23c77e3f64b28f3353158cf1980a` |
| 11 | `theorem` | [condExpIndL1_of_measure_eq_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpindl1-of-measure-eq-top.md) | 162 | `result-track:cabeb049f45a2662b0685236746f3c74d821a36919e303a998f84dd6a137f9d1` |
| 12 | `theorem` | [condExpIndL1_of_not_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpindl1-of-not-measurableset.md) | 166 | `result-track:ca21c099dc61e34a46cea35fe1a578f288153027339a4d78908c4f87badddf54` |
| 13 | `theorem` | [condExpIndL1_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpindl1-add.md) | 170 | `result-track:3fa646b1e0e20823a75028cc66b7351bb3276bedd8bdd1d76fff32386603aacf` |
| 14 | `theorem` | [condExpIndL1_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpindl1-smul-source-edition-2.md) | 179 | `result-track:dd18dbdc55a2b07d9003610eb5ef9c6f4587bdddeca6882e4816f4103a197662` |
| 15 | `theorem` | [condExpIndL1_smul'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpindl1-smul.md) | 188 | `result-track:5d9e43221fb5150e09a9b4bb9187963539c574bbc915723872931baa30825f76` |
| 16 | `theorem` | [norm_condExpIndL1_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/norm-condexpindl1-le.md) | 197 | `result-track:c69ed474628a1a6363bb21510696b3bce6557b406223ad6c9aaa646406414987` |
| 17 | `theorem` | [continuous_condExpIndL1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/continuous-condexpindl1.md) | 208 | `result-track:c28f0848e52de31b3db4ad9ea079b8f083e5ac9ab218fe880ca9bab04e2ba2c9` |
| 18 | `theorem` | [condExpIndL1_disjoint_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpindl1-disjoint-union.md) | 211 | `result-track:8a2719ad2b3b2652d7562c845bad6ee53b4d287d25217723aaba9ef77c32a782` |
| 19 | `def` | [condExpInd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpind.md) | 226 | `declaration-track:3dfa867370b17b14e9c68c889714a1d9a54658d29c377dbc1d641a9f78a4bfc2` |
| 20 | `theorem` | [condExpInd_ae_eq_condExpIndSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpind-ae-eq-condexpindsmul.md) | 235 | `result-track:03b35bbc3aa1d7412863eab4424c65315e9df412b93c16148269551f789567fc` |
| 21 | `theorem` | [aestronglyMeasurable_condExpInd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/aestronglymeasurable-condexpind.md) | 243 | `result-track:e327e092c511440f8b877d0525eee39569037670fd420a89ac6d9508c7bf04e5` |
| 22 | `theorem` | [condExpInd_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpind-empty.md) | 249 | `result-track:fd5003681d6bb3340e31523b73ee0dabb96d31c9d07e59125fe62086b24c2005` |
| 23 | `theorem` | [condExpInd_smul'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpind-smul.md) | 254 | `result-track:2033fe5eaa091b17a7956e0beb6bca4d97a5b59d3733056d0a60d604e327e13c` |
| 24 | `theorem` | [norm_condExpInd_apply_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/norm-condexpind-apply-le.md) | 258 | `result-track:c6abd71d9bfdcdfcb3273e7618f9744458532331d4727b9f1f7e497e6e264a44` |
| 25 | `theorem` | [norm_condExpInd_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/norm-condexpind-le.md) | 261 | `result-track:1a8585488a6dfe8aedff7cd81a8a4ccf670d0d4ab9542363dd9bdf4509c471af` |
| 26 | `theorem` | [condExpInd_disjoint_union_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpind-disjoint-union-apply.md) | 264 | `result-track:f9bcd29d846ddee4586652838a6c7b15e6eb071968d8a7b5846a1a64ec1e1ba1` |
| 27 | `theorem` | [condExpInd_disjoint_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpind-disjoint-union.md) | 269 | `result-track:1974794b65ec5867469447938631bbfd118c6b805f9ea9872ae66bcd47a0d2a4` |
| 28 | `theorem` | [dominatedFinMeasAdditive_condExpInd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/dominatedfinmeasadditive-condexpind.md) | 276 | `result-track:e0fdc8ab299891d8262d13237739609b2b115439f58f70125144571e770eb5ab` |
| 29 | `theorem` | [setIntegral_condExpInd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/setintegral-condexpind.md) | 283 | `result-track:5fdbdf43857c25b5a659e94e985edbec3e580c5ff8112bf041a1f4130e2e25b3` |
| 30 | `theorem` | [condExpInd_of_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpind-of-measurable.md) | 291 | `result-track:a077b59accf07748f1bc69e90eb2de37c6cab9fbacb02f569bbfa28677b0840f` |
| 31 | `theorem` | [condExpInd_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpind-nonneg.md) | 301 | `result-track:8d7a27ff9fc9c75fd81bd227b26dc8d3ecab737d5d77916db9d7ec5f571e5fa9` |
| 32 | `def` | [condExpL1CLM](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpl1clm.md) | 321 | `declaration-track:6a2733a21acdac57abdf42fd892bd81a53d784d102cac0f760cd262d534a66d6` |
| 33 | `theorem` | [condExpL1CLM_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpl1clm-smul.md) | 329 | `result-track:dfcc69cc817dad34c70651a303eb0a649ec6a0889f672e2955c1a04e0c284261` |
| 34 | `theorem` | [condExpL1CLM_indicatorConstLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpl1clm-indicatorconstlp.md) | 334 | `result-track:0d551940bcb9bb6574c92d140c2ca6753aa90e529f48fadcfe256dc0f6d6e7ff` |
| 35 | `theorem` | [condExpL1CLM_indicatorConst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpl1clm-indicatorconst.md) | 338 | `result-track:4b2e5fcb3505f0a21d1c12838ff03b21799908efcbf0d70fb481fed1f6b557f0` |
| 36 | `theorem` | [setIntegral_condExpL1CLM_of_measure_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/setintegral-condexpl1clm-of-measure-ne-top.md) | 343 | `result-track:21f90060412119fe54820c986f53a27a7d89c01c6d6775c06bfbb45b73115dd4` |
| 37 | `theorem` | [setIntegral_condExpL1CLM](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/setintegral-condexpl1clm.md) | 368 | `result-track:5c304f19548242a84c53aec30ba5d4f2888a6cc12e98233457a2ef974d815218` |
| 38 | `theorem` | [aestronglyMeasurable_condExpL1CLM](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/aestronglymeasurable-condexpl1clm.md) | 402 | `result-track:c1e22263f56fcf8b40b5ad7b3c4763d665082f44e875184315ac35b7ae57609d` |
| 39 | `theorem` | [condExpL1CLM_lpMeas](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpl1clm-lpmeas.md) | 418 | `result-track:21528dd090496fb959f6dfe7f221d722fa6d4f3802cb92167c93232ad1af10db` |
| 40 | `theorem` | [condExpL1CLM_of_aestronglyMeasurable'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpl1clm-of-aestronglymeasurable.md) | 441 | `result-track:c708039c7e0491dc4df994f07b34936139ef84d6782d220c7d9731f0d387d51a` |
| 41 | `def` | [condExpL1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpl1.md) | 450 | `declaration-track:bfb441d6c243196d19b57a2d3cf66eaef2be256b95f853ad2354fc44a67f1951` |
| 42 | `theorem` | [condExpL1_undef](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpl1-undef.md) | 454 | `result-track:40b374957c5a39ac83964b9ac522dfc887fd4455657b92abf7b0e310717bba88` |
| 43 | `theorem` | [condExpL1_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpl1-eq.md) | 457 | `result-track:fe877b440e22f35cb9e8e0852b05a81e11eb8e43b985d4a152a57ad272766f6e` |
| 44 | `theorem` | [condExpL1_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpl1-zero.md) | 462 | `result-track:44af909779f771372505427363113ec077c766eb9604e4ece0a307884efc88b4` |
| 45 | `theorem` | [condExpL1_measure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpl1-measure-zero.md) | 466 | `result-track:121a39061ae55c5a674acd4e450647a41797c8cd78109ab83452cdbc94113501` |
| 46 | `theorem` | [condExpL1_congr_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpl1-congr-ae.md) | 469 | `result-track:ee54449de40174656079a83cc3036b64675a85ac2b68837d358659658f1dd0df` |
| 47 | `theorem` | [aestronglyMeasurable_condExpL1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/aestronglymeasurable-condexpl1.md) | 473 | `result-track:e2167286b55d47905cb8818d19c07794f6f92d4885cfc8b6e0c2e48c3e74634b` |
| 48 | `theorem` | [integrable_condExpL1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/integrable-condexpl1.md) | 495 | `result-track:92ba7f4d56575fe70e75473ecc0895648e927a85bc1ec32c1f53e909a57790eb` |
| 49 | `theorem` | [setIntegral_condExpL1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/setintegral-condexpl1.md) | 501 | `result-track:09e1efb929f470ab43e9fddfc6e03871c39984081b85b3a229a933174605e560` |
| 50 | `theorem` | [condExpL1_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpl1-add.md) | 507 | `result-track:2a995e1309bdd741f95a37d3bdab9f49c37e8c3814018561f94472310c75e348` |
| 51 | `theorem` | [condExpL1_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpl1-neg.md) | 511 | `result-track:a976253a3af0c4d21d46dd6fd43e3bac1d1350f3431368190a0b20406cec86df` |
| 52 | `theorem` | [condExpL1_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpl1-smul.md) | 514 | `result-track:40d806fd32f3492f75c9d3613d69094672368dcfe3566e60724240c8e63d4bd3` |
| 53 | `theorem` | [condExpL1_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpl1-sub.md) | 518 | `result-track:f1303973de88b52f9f03e302104e7c3d979f7676c002a81bd6569227b4e78596` |
| 54 | `theorem` | [condExpL1_of_aestronglyMeasurable'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpl1-of-aestronglymeasurable.md) | 522 | `result-track:0acf70a7def1ecd0c5b3b2a2d6422b06b73ad6f6bce1622a3fe1031970b8a191` |
| 55 | `theorem` | [condExpL1_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CondexpL1Public.lean/declarations/condexpl1-mono.md) | 529 | `result-track:bc4918a34e4dcd9a0aab4e85547a3821df7095bf8b6f0654fc0fe2f8b841c86d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=454b6b3b10647573d7cca32c7126910eee5d0efbd822c688760ab1ea055de91a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/CondexpL1/Variant28b060713bcae5c6143fab3952af14105f82e83b1bd2d844f52324223ddc7201.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/CondexpL1/Variant28b060713bcae5c6143fab3952af14105f82e83b1bd2d844f52324223ddc7201.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
