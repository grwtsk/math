# Verification target: Homogeneity Defect Statements

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37eb31cbc63dccff90bb330d65b9db98258c3d36",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefectStatements/Variant81e5233620828771deea5db3d2609f388ec21829e282ff2fbd2e24eb2a59b155.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/index.md) · [Full source](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37eb31cbc63dccff90bb330d65b9db98258c3d36`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefectStatements/Variant81e5233620828771deea5db3d2609f388ec21829e282ff2fbd2e24eb2a59b155.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HomogeneityDefectStatements/Variant81e5233620828771deea5db3d2609f388ec21829e282ff2fbd2e24eb2a59b155.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.RealThetaDerivative` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [correlationPrimeSample](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/correlationprimesample.md) | 17 | `declaration-track:2acceeb9a3181df82eacf400eba8150e5320c07983f19973305bbb74ff200ec4` |
| 2 | `theorem` | [correlationPrimeSample_eq](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/correlationprimesample-eq.md) | 22 | `result-track:a8751d13199fbe935adae04e1dd40478b10ab2a564dbc9fd2b994515f891550d` |
| 3 | `def` | [correlationPrimeTheta](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/correlationprimetheta.md) | 31 | `declaration-track:0afa5aaed11ca3150acde0c96f2c0d3ea20e59559c963bd006efbf9caaefcd3b` |
| 4 | `theorem` | [correlationPrimeTheta_eq](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/correlationprimetheta-eq.md) | 34 | `result-track:656e0d9b270b9bed8151bf39925839236ec85b4a527776307d3f7404a11c9135` |
| 5 | `theorem` | [homogeneity_defect_eq](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/homogeneity-defect-eq.md) | 40 | `result-track:ae0b6cd1f5c9b45e5001a8e321fe6469b651ec0651e99c14cf138192540ba013` |
| 6 | `def` | [negativePrimePrimitive](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/negativeprimeprimitive.md) | 49 | `declaration-track:012ccdfc23a248eaaea676fe19544a0f8e578a51625a60fd56ff4ba47a693d1f` |
| 7 | `theorem` | [negativePrimePrimitive_eq](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/negativeprimeprimitive-eq.md) | 52 | `result-track:0be3d84860533fac992ddcbdf236718d85c7fdbf5c65e8f157016b3206e6f578` |
| 8 | `theorem` | [negativePrimePrimitive_contDiff](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/negativeprimeprimitive-contdiff.md) | 57 | `result-track:2602ac3bb5ab53fb49fc5b1bb83478856d17efede446c5f2464d401c9c4dd17b` |
| 9 | `theorem` | [negativePrimePrimitive_compact](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/negativeprimeprimitive-compact.md) | 62 | `result-track:2a580fab0f2ae19e1711765e09a5b05aa2637c9e02b304a8f6a3bd1ba7a52ff0` |
| 10 | `theorem` | [negativePrimePrimitive_abs_le](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/negativeprimeprimitive-abs-le.md) | 72 | `result-track:7eb154c3218fb0fa1bcb791cbf5e598c63dd88f0aaf84dcff52cbcd929fa4769` |
| 11 | `theorem` | [negativePrimePrimitive_derivative_abs_le](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/negativeprimeprimitive-derivative-abs-le.md) | 77 | `result-track:45e050818a308110198f4583d8c740356708491c6fbd42e8afc2ec1b58a64615` |
| 12 | `theorem` | [negativePrimePrimitive_moments](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/negativeprimeprimitive-moments.md) | 95 | `result-track:643d638e99a03787a45fbe530b6abecf327897bebf3999ad1289fd8bfee92f78` |
| 13 | `theorem` | [negativePrimePrimitive_zero_right](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/negativeprimeprimitive-zero-right.md) | 121 | `result-track:49c4c42542ee1be95c322809e411bd9765f8633fae26a480f9d43ffe651c717f` |
| 14 | `def` | [primePrimitiveSample](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/primeprimitivesample.md) | 129 | `declaration-track:f8a39f19e8eaf5519e22890333dc5050b114854a914b989ce64e8e8f65547612` |
| 15 | `theorem` | [primePrimitiveSample_eq](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/primeprimitivesample-eq.md) | 133 | `result-track:392e6d8cd28bb097503b650a409f6ef470b82e0e62b809b05826da39f2d2b504` |
| 16 | `theorem` | [primeSample_rescaled_integrable](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/primesample-rescaled-integrable.md) | 142 | `result-track:572b3343c9b2e2362b688b0bf7160a136b3b9f84b050db71c84f469f5d2e5ca4` |
| 17 | `theorem` | [primeSample_integral_eq_primitive](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/primesample-integral-eq-primitive.md) | 151 | `result-track:e941ea42e909b1eb41f8dd5099b6fcb2e096875e7c711d01a7b80874fc4ba012` |
| 18 | `theorem` | [sampling_zero](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/sampling-zero.md) | 163 | `result-track:c4140cad798760bf0e1dfa63374509cbc5ef4a3e80a5857ba5fdd4ee17d47a9f` |
| 19 | `theorem` | [strict_sample_eq_padded](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/strict-sample-eq-padded.md) | 171 | `result-track:fbf820ec27aab822a0f143654065ece769169b9f202538e4ceb9376e861c8ba5` |
| 20 | `theorem` | [sampling_padded_endpoint_zero](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/sampling-padded-endpoint-zero.md) | 197 | `result-track:35cf3ba7f5681abf7f117809c58b22cf6cf559c7ebece5a74ef9fd4bae29a270` |
| 21 | `theorem` | [primePrimitiveSample_add_rankOne_abs_le](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/primeprimitivesample-add-rankone-abs-le.md) | 210 | `result-track:2e94a1b169e2eda1a17b2c77726f28ead4e16352b5392260383bb2aa184188ef` |
| 22 | `theorem` | [difference_derivative_eq](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/difference-derivative-eq.md) | 228 | `result-track:9fc619e572b24539fc116245bf0cc3fc877ebe5b58fcd7cbe5413012de4a41a6` |
| 23 | `theorem` | [difference_derivative_contDiff](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/difference-derivative-contdiff.md) | 234 | `result-track:8f6893d0252f060a108ee065264d319b47fcc5f306dd3df0151b195b7b5ad419` |
| 24 | `theorem` | [difference_second_derivative_abs_le](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/difference-second-derivative-abs-le.md) | 244 | `result-track:f0fc9840d9572763fdba6f76baac419f20a4f626c5e9d4a694d55278b6164844` |
| 25 | `theorem` | [difference_derivative_zero_right](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/difference-derivative-zero-right.md) | 271 | `result-track:585c5015f1d44d34c1c896b09822d8e572915ddf38863a885c016f341eddf68a` |
| 26 | `theorem` | [difference_derivative_sampling_abs_le](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/difference-derivative-sampling-abs-le.md) | 279 | `result-track:0ac18372c7ec18b640820b55bc1d26d1b1a1de827af243423a1c1a7de0fa47db` |
| 27 | `theorem` | [primeSample_hasDerivAt](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/primesample-hasderivat.md) | 301 | `result-track:5a584894811fd05101e529e19e986f58aae3847b7bf15df347114a52264af7ca` |
| 28 | `theorem` | [primeSample_derivative_abs_le](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/primesample-derivative-abs-le.md) | 317 | `result-track:a46710a7a19105bf15cf2909cd8ff12ee1ddc8848d19958273295ca3fbebfc1c` |
| 29 | `theorem` | [scaledPrimeSample_hasDerivAt](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/scaledprimesample-hasderivat.md) | 330 | `result-track:6c38d085d7d6092976d6be190afff49e3b12acf763db9997bacd7597054c3b30` |
| 30 | `theorem` | [scaledPrimeSample_derivative_integrable](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/scaledprimesample-derivative-integrable.md) | 338 | `result-track:0f984fbeb8b94b68857955572385bf18970dd998ef03e6ff11026e625b9b1b11` |
| 31 | `theorem` | [scaledPrimeSample_variation_le](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/scaledprimesample-variation-le.md) | 350 | `result-track:b4e3615a99b2d003f849dac0b301fe59c81024b674df6f8e81bbb12c42f65a87` |
| 32 | `theorem` | [primeSample_zero_of_exp_le](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/primesample-zero-of-exp-le.md) | 368 | `result-track:44fa6bf425fe362455909c8a77f028a1ddbea35afcf850e5990b2d69e21f8a6a` |
| 33 | `theorem` | [primeTheta_eq_padded_sum](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/primetheta-eq-padded-sum.md) | 378 | `result-track:3ce2656fb0816fddc13755feda8703e3cb5c2f1b1cd1a5e71bb74aa8941f8dc9` |
| 34 | `theorem` | [primeTheta_sub_integral_abs_le](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/primetheta-sub-integral-abs-le.md) | 399 | `result-track:a472acfad7e40d54bbb3fd67e2111de0405e88fe7ee28f56d744be7ab4d14c21` |
| 35 | `theorem` | [primeTheta_add_rankOne_abs_le](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/primetheta-add-rankone-abs-le.md) | 423 | `result-track:1f776599a25691c218e95e89f1ba8bc68728c2e818b86b1b837033b75f5a5624` |
| 36 | `theorem` | [homogeneity_defect_abs_le](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/homogeneity-defect-abs-le.md) | 447 | `result-track:b7a3e00ac040ed41da43a3ccb4fe6219b46ff1650dbe1a60ed65295f188cebde` |
| 37 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-34.md) | 468 | `declaration-track:e8c5e07a3fd3af5cc83ce362373705718d73506760920e1d38f4cb379e05ee16` |
| 38 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-23.md) | 472 | `declaration-track:8b0a7fe87922b8c5f05c975efebbfbc194182adb0948e5f13c836a525873d303` |
| 39 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-4.md) | 475 | `declaration-track:280aa8b8efa48102be11f500e045094a69bdbc041ae8bd60d9cc625e57817930` |
| 40 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-16.md) | 478 | `declaration-track:6e9b3f7ed5b68a8b087223b81bb2b875d8845b89d1b38eabcc26c8e99203cf44` |
| 41 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-18.md) | 482 | `declaration-track:7568c2082d739cc956a06523804181ad1df4c5cffa80009c779ec13bb55d6c79` |
| 42 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-31.md) | 486 | `declaration-track:c3cc2bb0e88f5534e074afacde5aaa91049e5c7e143d9ccb65ca0d6b932cb9cb` |
| 43 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-19.md) | 490 | `declaration-track:779c6caa16504b79b970ddf998efd16ff4ccc4839515df658ab3efb58f1192d3` |
| 44 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-7.md) | 495 | `declaration-track:33cc61503358149d42d9cc1c6fd1a552016da3af4ab92639c9a0f535bb000e6b` |
| 45 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-27.md) | 499 | `declaration-track:a06ca76bb27d27e8b3a0870cc8c5e1812eda3399b82ec19d685f750831cea9a8` |
| 46 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-24.md) | 503 | `declaration-track:903e544e80dc92e0cb4ceb179ea0357988bd2ec522888b71b146c51696a50e28` |
| 47 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-3.md) | 507 | `declaration-track:23f5808f685417ce50e4b4d6028969983d2a05e8b0ea4c307dc0eac934b1fc02` |
| 48 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-15.md) | 511 | `declaration-track:6cfa4255482ca3c90fe6d6aaa5238f031492995e5eeb6ffb68031e00071de7ca` |
| 49 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-25.md) | 515 | `declaration-track:9d5cbfa606813e91963c6ceb715df1927bb2203e74a1ccc1cf50a0f8969b7453` |
| 50 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-36.md) | 521 | `declaration-track:fd7cbaa67168bae98dce71ebda629802a3a37e90d7480d0ce83e15d9063c9b8a` |
| 51 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-35.md) | 525 | `declaration-track:ed111528b4976276db8bc2b8fc153e96627ae1a62c83138644336493b2764752` |
| 52 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-2.md) | 529 | `declaration-track:1de482cfc929ca303e2d985be42e6391b015ed0c3b15b58dcb99ab80d4cfcc35` |
| 53 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-28.md) | 533 | `declaration-track:a233a6351c4e36bea5cf5a38f7120f0029af86355a7c6b013e6e6ad70afd19f7` |
| 54 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-8.md) | 537 | `declaration-track:3e86c8ce88bc68d5b5eaecc6ba5da2a0e2661e000364d26677164304e2c407f9` |
| 55 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-10.md) | 542 | `declaration-track:42e47d7fe59b1f7e71ba6167afe5806b513b451492a6f762c2b3466eafee506e` |
| 56 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-22.md) | 549 | `declaration-track:8a4aedd89010fa29af6afe4501d9a6db05ed4d982dcffb1d858477286f1d4bac` |
| 57 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-17.md) | 555 | `declaration-track:703ddd619176a191dd625a4f065d29b1ed757b09ce5ac34546a87a70707bc02f` |
| 58 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-32.md) | 560 | `declaration-track:e28dcc46e31ee0fab706d9b365d8de4c394bdb51076cd3a5353734d78acde6cc` |
| 59 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-13.md) | 566 | `declaration-track:56c2227943c7dced853b28a572a6425e18fd1b06b3e4f79138d0f517edda6c85` |
| 60 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-30.md) | 570 | `declaration-track:c1b914ec903c1580abf5483678f79103a68b5bf38c113f032a4a03da016169f0` |
| 61 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-5.md) | 575 | `declaration-track:2b25002ea571a2709b01b8bdd9e3479c1d4cdd12790e8a797fe6582f032794d0` |
| 62 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-9.md) | 579 | `declaration-track:3eef644752fcdfd731261c0b0faee9f27facd305cb063ef740b43a303b7c7c46` |
| 63 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-20.md) | 586 | `declaration-track:83b8a7609ec42e67ab703c6340c6271ce2465b19a8e382c04260af28dbd3dc9e` |
| 64 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-26.md) | 592 | `declaration-track:9d5f0971abc99e7edb86007db8e2bc4cfafa231e2641296701c300366b80b3d7` |
| 65 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-29.md) | 598 | `declaration-track:be3fb66cad7b44545e9a2f5fa89b075e5646d608ccde81dfb745aec59ede52cc` |
| 66 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-14.md) | 603 | `declaration-track:61d46160ae33ed5cda82203c2a7eb7c31a0d35f34e9fc2faa6ea548d505d28ab` |
| 67 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example.md) | 607 | `declaration-track:04f678acaecd717358fc6f15151217737414b17f7a26a7cfcb32df618fd38118` |
| 68 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-11.md) | 613 | `declaration-track:46983bbe5b353d6bb6e3c35d9213885d04ea697d533036107302747c5f6ed83f` |
| 69 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-12.md) | 617 | `declaration-track:4d1ccb4f43ca0ad478a42ab0e9c67827fb843d31c192590073e736e3933c79a5` |
| 70 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-33.md) | 622 | `declaration-track:e794b8090f4bb474df3237526dd603d78c24cf0214bb59c258189a2b8a3afab8` |
| 71 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-6.md) | 629 | `declaration-track:2e62444680079bf8dd101a8df719328932a241c5c7161bc13e02213e98d441d8` |
| 72 | `example` | [(anonymous)](../../../../MeasureAndIntegration/HomogeneityDefectStatements.lean/declarations/example-source-edition-21.md) | 635 | `declaration-track:86830fcaf557e1c6a546c492aacc2e5648bbd40c9f49ebfb6b92c45ac804faa3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1be7d088f34c626883aed2fa58ab203ba968a90c3bf190f9d70aff742f719901 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefectStatements/Variant81e5233620828771deea5db3d2609f388ec21829e282ff2fbd2e24eb2a59b155.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/HomogeneityDefectStatements/Variant81e5233620828771deea5db3d2609f388ec21829e282ff2fbd2e24eb2a59b155.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
