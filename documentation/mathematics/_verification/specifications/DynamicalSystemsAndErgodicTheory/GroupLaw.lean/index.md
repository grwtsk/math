# Verification target: Group Law

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "761140093e66cc83e6c64f13f018ada1046a2f3d",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `761140093e66cc83e6c64f13f018ada1046a2f3d`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.EllipticCurve` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GroupLawCertificate](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/grouplawcertificate.md) | 20 | `declaration-track:8b9152ca49e6f46e0b5e2de9e7875113b4733e78b9cf3e3b06fdff77ff8303d2` |
| 2 | `def` | [neg](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/neg.md) | 34 | `declaration-track:65b6bb6748fc91360723e0f7e4f34794aa32e8849633cb952cdaafad711054d4` |
| 3 | `def` | [add](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/add.md) | 38 | `declaration-track:cba99d70365f473630a3d2fc63f42fbce4a632a8e5ce6e81fa001b9286a1b0df` |
| 4 | `theorem` | [zero_add](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/zero-add.md) | 41 | `result-track:2c8a2d6304194077fcc610b174da61dcab19c8077988207e06b7ac29ca75eecb` |
| 5 | `theorem` | [add_zero](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/add-zero.md) | 47 | `result-track:ce85981ed95f7bbda9480728327d65ea5a3419ed6ebe93b40d2b2990b956814f` |
| 6 | `theorem` | [add_comm](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/add-comm.md) | 53 | `result-track:5fe0ce79bbebeaff8b92095c590ee8d64ffcd9667f93ebe501f742b285386e87` |
| 7 | `theorem` | [add_assoc](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/add-assoc.md) | 59 | `result-track:ebbc48e9e635c805dc889c80376efd4a62b07ba0b3574c931ddd3fad762873ce` |
| 8 | `structure` | [LawfulGroupLawCertificate](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/lawfulgrouplawcertificate.md) | 82 | `declaration-track:4fffe81b31dc6d30c1f26dd7b81763d0cac0147aa95107150839f7ad20e175e8` |
| 9 | `theorem` | [LawfulGroupLawCertificate.charNeTwoThree](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/lawfulgrouplawcertificate-charnetwothree.md) | 88 | `result-track:cb420a6fa3abdeda4c58b5f55dda26d6e2b63b89660713246ec5e41cce8a7b8a` |
| 10 | `theorem` | [LawfulGroupLawCertificate.zero_ne_one](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/lawfulgrouplawcertificate-zero-ne-one.md) | 95 | `result-track:8b44abbc7bec00f1e58a121ab882d7506f52e60637cf03f3bb6973606d32490f` |
| 11 | `def` | [LawfulGroupLawCertificate.add](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/lawfulgrouplawcertificate-add.md) | 102 | `declaration-track:3f475bffdf349c852cc00785fac234fde895eb1536ea6374a29644d8dcf14a6c` |
| 12 | `theorem` | [LawfulGroupLawCertificate.add_comm](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/lawfulgrouplawcertificate-add-comm.md) | 109 | `result-track:b9a37685210566af66d511a1d27418a07e08e8de34e2f6a32a46557047aaf4eb` |
| 13 | `theorem` | [LawfulGroupLawCertificate.add_assoc](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/lawfulgrouplawcertificate-add-assoc.md) | 117 | `result-track:5ac95a13b48bf502986e7701ac6e61c2f8ede1d976b71104079e8f3724771750` |
| 14 | `structure` | [ProjectiveWeierstrassModelData](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/projectiveweierstrassmodeldata.md) | 132 | `declaration-track:eda572f7e7c95b07d5f7f7c36d4b38ba79ff38697c7f9f6355aa34b2f5d75a86` |
| 15 | `structure` | [ProjectiveWeierstrassClosureCertificate](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/projectiveweierstrassclosurecertificate.md) | 151 | `declaration-track:bed86ac8f8667c7f3b0d483c3a5844c16f5f38c11bf4f96957c5f7449bcdbef5` |
| 16 | `def` | [ProjectiveWeierstrassClosureCertificate.certifiedForBSD](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/projectiveweierstrassclosurecertificate-certifiedforbsd.md) | 164 | `declaration-track:90c210e91a3c9a536099b2a2e38d40674cd9be042785e6a0034619a00970256e` |
| 17 | `theorem` | [ProjectiveWeierstrassClosureCertificate.certifiedForBSD_of_fields](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/projectiveweierstrassclosurecertificate-certifiedforbsd-of-fields.md) | 174 | `result-track:0f2d62a9cf5e2604e9f8c73ccc8e33f000c0faf1839509f37bfa0ef8baff3479` |
| 18 | `theorem` | [ProjectiveWeierstrassClosureCertificate.curvePoint_on_projectiveModel](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/projectiveweierstrassclosurecertificate-curvepoint-on-projectivemodel.md) | 186 | `result-track:e0a3d150b5dd6fd54e1863fddbc6ba26b77959ab2c67059f3028c544b9aa025c` |
| 19 | `theorem` | [ProjectiveWeierstrassClosureCertificate.infinity_on_projectiveModel](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/projectiveweierstrassclosurecertificate-infinity-on-projectivemodel.md) | 195 | `result-track:c15e2e003b09853cafb4c126c8aefdeb2b350fd0ab2afd316a6a84228ebf11f5` |
| 20 | `theorem` | [ProjectiveWeierstrassClosureCertificate.curveInfinity_maps_to_pointAtInfinity](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/projectiveweierstrassclosurecertificate-curveinfinity-maps-to-pointatinf.md) | 202 | `result-track:0eab469547c75dd0c2ab440f146327360a03e43ddba44e630260ce03cc565003` |
| 21 | `structure` | [ProjectiveLineCubicIntersectionData](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/projectivelinecubicintersectiondata.md) | 217 | `declaration-track:4eb6b052f93eac58a11b6fc2851593cb1b2af9c86484f5c36ca5d83d67ccb461` |
| 22 | `structure` | [ProjectiveIntersectionMultiplicityData](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/projectiveintersectionmultiplicitydata.md) | 247 | `declaration-track:80dd84554827e73ac0ec1713089fc513716eac0143ff14c219536b5854fc9ca9` |
| 23 | `structure` | [ProjectiveLineCubicIntersectionCertificate](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/projectivelinecubicintersectioncertificate.md) | 277 | `declaration-track:bfa9d81dda089c851e3d0b5eb5acb2bdb17447f6b5b7040c4216de569fc39e48` |
| 24 | `def` | [ProjectiveLineCubicIntersectionCertificate.certifiedForBSD](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/projectivelinecubicintersectioncertificate-certifiedforbsd.md) | 298 | `declaration-track:09d14e86802550199029adb526892e42b2de0b6b8f2687ea4161eef7d35559b6` |
| 25 | `theorem` | [ProjectiveLineCubicIntersectionCertificate.certifiedForBSD_of_fields](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/projectivelinecubicintersectioncertificate-certifiedforbsd-of-fields.md) | 321 | `result-track:3ba80c853e460a5019ca35439fe0fc47296bab147eb2681ed78a2cf9d2355304` |
| 26 | `theorem` | [ProjectiveLineCubicIntersectionCertificate.intersection_on_line](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/projectivelinecubicintersectioncertificate-intersection-on-line.md) | 342 | `result-track:97a57d489a3fa8847b9be1243f7791beba3535898b7bfb8c0fe517b9c8e372c7` |
| 27 | `theorem` | [ProjectiveLineCubicIntersectionCertificate.intersection_on_cubic](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/projectivelinecubicintersectioncertificate-intersection-on-cubic.md) | 352 | `result-track:6bd83f68d9a4a53c8662e3051bb7ca7f6c84686e36b5c510aefb06ec29e80e59` |
| 28 | `theorem` | [ProjectiveLineCubicIntersectionCertificate.lineIntersectionCount_eq_three](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/projectivelinecubicintersectioncertificate-lineintersectioncount-eq-thre.md) | 361 | `result-track:ff96ae973367e81474dea7a54314e838c978e1fd4afd045e0c1bbfab09589dcc` |
| 29 | `theorem` | [ProjectiveLineCubicIntersectionCertificate.multiplicityPositive](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/projectivelinecubicintersectioncertificate-multiplicitypositive.md) | 369 | `result-track:e4e647a3de6d9a9f01826f1ecade6a9d02ed7598b2d7a1995dae3c357979a3b4` |
| 30 | `theorem` | [ProjectiveLineCubicIntersectionCertificate.tangentMultiplicityPositive](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/projectivelinecubicintersectioncertificate-tangentmultiplicitypositive.md) | 377 | `result-track:5b503366c2fac9de7583a0f7c11c390b6ac8a50314c2e6c3362aac4262aa23ad` |
| 31 | `structure` | [ChordTangentAssociativityData](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentassociativitydata.md) | 394 | `declaration-track:bc13bd2a53c30c7fff3b914482b786e6a1e0d8f49468dfc14ae4867b4e0eceb8` |
| 32 | `structure` | [ChordTangentAssociativityCertificate](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentassociativitycertificate.md) | 436 | `declaration-track:5a86ea3a851eacd7b710962164254471aa27660d5f5d15c6f53e1ca50396f160` |
| 33 | `def` | [ChordTangentAssociativityCertificate.certifiedForBSD](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentassociativitycertificate-certifiedforbsd.md) | 461 | `declaration-track:9072a8ba3fd9c20bfb996d6eea15320c8d23b6ef1c0cdf4a285b721275a3074f` |
| 34 | `theorem` | [ChordTangentAssociativityCertificate.certifiedForBSD_of_fields](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentassociativitycertificate-certifiedforbsd-of-fields.md) | 484 | `result-track:41b2954444420e16d281e747b2848db5c384d9587c567cf4a361bab3091c6fb4` |
| 35 | `theorem` | [ChordTangentAssociativityCertificate.divisorLinearEquivalenceWitness](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentassociativitycertificate-divisorlinearequivalencewitness.md) | 509 | `result-track:9f3b9f006a3e8bab7e227cd7fba084741bc6695777f33ce68ecd7c29d05451c3` |
| 36 | `theorem` | [ChordTangentAssociativityCertificate.principalDivisorLineWitness](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentassociativitycertificate-principaldivisorlinewitness.md) | 521 | `result-track:d31c66f8269a3647bde828293011f67b54989f76c90acc0c12914202a4072e27` |
| 37 | `theorem` | [ChordTangentAssociativityCertificate.cayleyBacharachWitness](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentassociativitycertificate-cayleybacharachwitness.md) | 531 | `result-track:d76b82b9418869b88aab66f42b3df9c780f1bf66796511110657802ebbeaaa31` |
| 38 | `theorem` | [ChordTangentAssociativityCertificate.associativityConfigurationWitness](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentassociativitycertificate-associativityconfigurationwitness.md) | 541 | `result-track:fd9b516460f0704cb6e40a67de948fa78ac703a131ef5f9e45f0f40734bb4a95` |
| 39 | `structure` | [ChordTangentIdentityInverseCommutativityData](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentidentityinversecommutativitydata.md) | 559 | `declaration-track:83fbed21df8478ebcb7e7c1229a8c40b92ae6f3917bd8a1b69330f8a3e7f7262` |
| 40 | `structure` | [ChordTangentIdentityInverseCommutativityCertificate](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentidentityinversecommutativitycertificate.md) | 612 | `declaration-track:49f0a21a586a15c116299d09fdf9dad41ec8787c994c76a87691de678c2dcd6f` |
| 41 | `def` | [ChordTangentIdentityInverseCommutativityCertificate.certifiedForBSD](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentidentityinversecommutativitycertificate-certifiedforbsd.md) | 647 | `declaration-track:fd4b770efaf56dd4bb9dbbdf3a79dbfcac680da4cfe1990b7c2c290045c9a99c` |
| 42 | `theorem` | [ChordTangentIdentityInverseCommutativityCertificate.certifiedForBSD_of_fields](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentidentityinversecommutativitycertificate-certifiedforbsd-of-f.md) | 695 | `result-track:354c28f2cb1d7e62ff29347337c82da969d4fe0fc9b48ac8161a52f142907688` |
| 43 | `theorem` | [ChordTangentIdentityInverseCommutativityCertificate.pointAtInfinityIdentity](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentidentityinversecommutativitycertificate-pointatinfinityident.md) | 736 | `result-track:39d22ee729319768fc2130e53b74cf25ceb42394c4c07154b938255670805c1c` |
| 44 | `theorem` | [ChordTangentIdentityInverseCommutativityCertificate.inverseReflection](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentidentityinversecommutativitycertificate-inversereflection.md) | 747 | `result-track:8f0d5bdc9785de31db410646424f3eb754f684a12e26606928bd749630cc9d1b` |
| 45 | `theorem` | [ChordTangentIdentityInverseCommutativityCertificate.chordSymmetry](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentidentityinversecommutativitycertificate-chordsymmetry.md) | 757 | `result-track:3c193464c21693de5882def9503376cb366717bb9bbac93a89ffe434f557e4cc` |
| 46 | `structure` | [DegreeZeroDivisorClassData](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/degreezerodivisorclassdata.md) | 774 | `declaration-track:59399bcc783b773f4e2a306e3adae734c2335dbd7d0c826ad536b6f43f2e40a8` |
| 47 | `structure` | [DegreeZeroDivisorClassCertificate](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/degreezerodivisorclasscertificate.md) | 812 | `declaration-track:95deca103fd7c74091575e3c28d54aac48ba10314d916cb350d1cfaa24109c5d` |
| 48 | `def` | [DegreeZeroDivisorClassCertificate.certifiedForBSD](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/degreezerodivisorclasscertificate-certifiedforbsd.md) | 824 | `declaration-track:7cb06a0cd54da325b1893171195e13ab78b61f3b2049a2b198c00a18b77b0f83` |
| 49 | `theorem` | [DegreeZeroDivisorClassCertificate.certifiedForBSD_of_fields](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/degreezerodivisorclasscertificate-certifiedforbsd-of-fields.md) | 848 | `result-track:a3970b0cd7a8358817e4d7168b4616b2b76ec214ec77b40eb2daf0b7636ee4d8` |
| 50 | `theorem` | [DegreeZeroDivisorClassCertificate.principalDivisor_class_zero](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/degreezerodivisorclasscertificate-principaldivisor-class-zero.md) | 865 | `result-track:1b118bfdebab8360a674b3748e3432cb8bea8d5188ce63777a774a81ae076aa2` |
| 51 | `theorem` | [DegreeZeroDivisorClassCertificate.pointClass_eq_classOfDivisor](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/degreezerodivisorclasscertificate-pointclass-eq-classofdivisor.md) | 875 | `result-track:ca77908a00f719452f9d7cea4f1398ff544c4592b63eed5b944e956312ea27e4` |
| 52 | `theorem` | [DegreeZeroDivisorClassCertificate.pointDivisor_degreeZero](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/degreezerodivisorclasscertificate-pointdivisor-degreezero.md) | 885 | `result-track:df61899b120f70516f1b65b70c47bfeb3488cd91f20f71c5d764efb035a16085` |
| 53 | `theorem` | [DegreeZeroDivisorClassCertificate.pointAtInfinityClass_eq_zero](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/degreezerodivisorclasscertificate-pointatinfinityclass-eq-zero.md) | 894 | `result-track:93728448d4f877fae7fdc64823c92a1c735269841937521c12fdf08ff5b3a1f7` |
| 54 | `structure` | [ChordTangentPicardProvenanceCertificate](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentpicardprovenancecertificate.md) | 909 | `declaration-track:1e22bd9051cf9a8839ed18ee73569cfdeef245765613f4b73c89dcb8228f645a` |
| 55 | `def` | [ChordTangentPicardProvenanceCertificate.certifiedForBSD](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentpicardprovenancecertificate-certifiedforbsd.md) | 945 | `declaration-track:3279313600700e193a8d7daead45a328727d83f63bd18156f6ccbbb14de20aa5` |
| 56 | `theorem` | [ChordTangentPicardProvenanceCertificate.certifiedForBSD_of_fields](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentpicardprovenancecertificate-certifiedforbsd-of-fields.md) | 962 | `result-track:929706ee757e7d205709ed09a07a12a34905716d7c48869537ecd7f8d9df1731` |
| 57 | `structure` | [ChordTangentOperationData](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentoperationdata.md) | 995 | `declaration-track:0bba3a538568bea3c679d30a08f25ae3545fb90516aaae046d0391e80420bdec` |
| 58 | `structure` | [ChordTangentGroupLawCertificate](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentgrouplawcertificate.md) | 1058 | `declaration-track:4149d9f1432ef780bf83c91b74bc89c7a8d612e27c236fa0f7bbabddd89394a9` |
| 59 | `def` | [ChordTangentGroupLawCertificate.certifiedForBSD](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentgrouplawcertificate-certifiedforbsd.md) | 1102 | `declaration-track:c4d3b728ae6bdda152f19e296d7d6e962b5e3c6bfd1b86bb6a024d2e685f836f` |
| 60 | `theorem` | [ChordTangentGroupLawCertificate.certifiedForBSD_of_fields](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentgrouplawcertificate-certifiedforbsd-of-fields.md) | 1151 | `result-track:05e8bc9cf635443911e73bc119e862bb1ab96c68ad907e11cb7395e956670c3f` |
| 61 | `theorem` | [ChordTangentGroupLawCertificate.chordLine_contains_left](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentgrouplawcertificate-chordline-contains-left.md) | 1194 | `result-track:b64f55f2be8ed307b3858ddb7d0cad4071a4e1d91245d2c04955f5332857198c` |
| 62 | `theorem` | [ChordTangentGroupLawCertificate.tangentLine_tangentAt](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentgrouplawcertificate-tangentline-tangentat.md) | 1204 | `result-track:8ea7caa9d3e9d07e77b4357c36429b1a5a0881c979bec798ff38a84907f242d7` |
| 63 | `theorem` | [ChordTangentGroupLawCertificate.add_eq_reflected_chord_third](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentgrouplawcertificate-add-eq-reflected-chord-third.md) | 1213 | `result-track:44c97c98140d38a89e3e700228fe86c819194fb2920a8b4ca383b9ca59682f60` |
| 64 | `theorem` | [ChordTangentGroupLawCertificate.reflection_eq_negPoint](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentgrouplawcertificate-reflection-eq-negpoint.md) | 1224 | `result-track:ef7a61134bb0c76c82db13768e01d5af6a2204fac2abc0e5ba6817aee77d2135` |
| 65 | `theorem` | [ChordTangentGroupLawCertificate.intersectionTheory_certifiedForBSD](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentgrouplawcertificate-intersectiontheory-certifiedforbsd.md) | 1233 | `result-track:e7a6a438b2df51094b6c9585fda9f42a33b62c405bc48765838b5e8e62c663c6` |
| 66 | `theorem` | [ChordTangentGroupLawCertificate.associativityGeometry_certifiedForBSD](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentgrouplawcertificate-associativitygeometry-certifiedforbsd.md) | 1242 | `result-track:63719d57f9847eeb23b0a25f683cae11f44ed7d7bbac121a214766a126254b5a` |
| 67 | `theorem` | [ChordTangentGroupLawCertificate.identityInverseCommutativityGeometry_certifiedForBSD](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentgrouplawcertificate-identityinversecommutativitygeometry-cer.md) | 1251 | `result-track:3d132e1feac7c7f03f823ec81f3d18721d3485458204971a68146e3633cd2b53` |
| 68 | `theorem` | [ChordTangentGroupLawCertificate.picardProvenance_certifiedForBSD](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/chordtangentgrouplawcertificate-picardprovenance-certifiedforbsd.md) | 1260 | `result-track:cdca060c23eb013f6a6d975a7d969f675a9fbd31f4a4fadd4351b4bacf1afac7` |
| 69 | `structure` | [SmoothGroupLawCertificate](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/smoothgrouplawcertificate.md) | 1276 | `declaration-track:25e49fcbc127628898b015c52a04aa55fc225bb32c94ced8ab095404067a679f` |
| 70 | `theorem` | [SmoothGroupLawCertificate.chordTangent_certifiedForBSD](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/smoothgrouplawcertificate-chordtangent-certifiedforbsd.md) | 1287 | `result-track:7ced175682ee613d8050cab0417048b414876507f1851b43a5a4af04a1d3bb62` |
| 71 | `theorem` | [SmoothGroupLawCertificate.intersectionTheory_certifiedForBSD](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/smoothgrouplawcertificate-intersectiontheory-certifiedforbsd.md) | 1294 | `result-track:fe2217f9731af5a09a3f3080f372ff60fb48cd13919935726bb277bfbae026d6` |
| 72 | `theorem` | [SmoothGroupLawCertificate.associativityGeometry_certifiedForBSD](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/smoothgrouplawcertificate-associativitygeometry-certifiedforbsd.md) | 1303 | `result-track:2f9b329fec5efff394c277c1d024180fda5db8d0a218486c8f5465ba7614be11` |
| 73 | `theorem` | [SmoothGroupLawCertificate.identityInverseCommutativityGeometry_certifiedForBSD](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/smoothgrouplawcertificate-identityinversecommutativitygeometry-certified.md) | 1312 | `result-track:ee9504a041e7d83c884e0ec024c65a63ea5d5cb355878292692d4bcf97f29d3c` |
| 74 | `theorem` | [SmoothGroupLawCertificate.picardProvenance_certifiedForBSD](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/smoothgrouplawcertificate-picardprovenance-certifiedforbsd.md) | 1321 | `result-track:e81ea3f3b17f48e055b33cf45415ac83a279e1c2e88cafe243934748eb8a9ab3` |
| 75 | `theorem` | [SmoothGroupLawCertificate.groupLaw_matches_picard_transport](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/smoothgrouplawcertificate-grouplaw-matches-picard-transport.md) | 1330 | `result-track:ce8c221856581b3180df608251748e412de40326e351c64d68e02d47d6df3edd` |
| 76 | `theorem` | [SmoothGroupLawCertificate.chordTangent_matches_picard_addition](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/smoothgrouplawcertificate-chordtangent-matches-picard-addition.md) | 1339 | `result-track:f53f75823f94441516df508e05b0199f40a70a6d13f30a2b35366f0aeee06453` |
| 77 | `theorem` | [SmoothGroupLawCertificate.add_assoc_matches_geometric_associativity](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/smoothgrouplawcertificate-add-assoc-matches-geometric-associativity.md) | 1351 | `result-track:bbf17a9d9139c645c5bdab7eea9578209d98f9fa86ff69ba7dad15d701e45fba` |
| 78 | `theorem` | [SmoothGroupLawCertificate.add_comm_matches_chord_symmetry](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/smoothgrouplawcertificate-add-comm-matches-chord-symmetry.md) | 1360 | `result-track:9cb5608ebbcbfd1718cf7c1258fabf70a7336b5052e05d886ae1467ac765ea62` |
| 79 | `theorem` | [SmoothGroupLawCertificate.neg_matches_geometric_inverse](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/smoothgrouplawcertificate-neg-matches-geometric-inverse.md) | 1369 | `result-track:f550850a1ea71d8ccab6efea9b13d8ac1c6fd8b1ade88a47653b32169fd763e5` |
| 80 | `theorem` | [SmoothGroupLawCertificate.zero_laws_match_point_at_infinity](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/smoothgrouplawcertificate-zero-laws-match-point-at-infinity.md) | 1378 | `result-track:f2ad0de1af059606ebf237ecb7538a825f80d5a5915b3d63123b826b2da161b6` |
| 81 | `theorem` | [SmoothGroupLawCertificate.add_matches_chord_tangent](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/smoothgrouplawcertificate-add-matches-chord-tangent.md) | 1393 | `result-track:828583bfa37c6a7c05d964994f368a1478267bc60cdcfbfb42f583b027e4f314` |
| 82 | `theorem` | [SmoothGroupLawCertificate.zero_matches_point_at_infinity](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/smoothgrouplawcertificate-zero-matches-point-at-infinity.md) | 1400 | `result-track:236099361187e706e27a36e64f2941f6eda43f55600f8ab03be42f8e12a69a3d` |
| 83 | `theorem` | [SmoothGroupLawCertificate.discriminant_ne_zero](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/smoothgrouplawcertificate-discriminant-ne-zero.md) | 1407 | `result-track:594c9e6fb81c11cce9ef7c14f3195766f579739c9a09a56789c440f2f50a05b2` |
| 84 | `theorem` | [SmoothGroupLawCertificate.no_affine_singular_point](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/smoothgrouplawcertificate-no-affine-singular-point.md) | 1414 | `result-track:9cd302b56cb5d02386ee507e39e5a8c25a93513e73b8c38617e3f9edbd6f8b0c` |
| 85 | `theorem` | [SmoothGroupLawCertificate.charNeTwoThree](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/smoothgrouplawcertificate-charnetwothree.md) | 1421 | `result-track:849b0e0401ce3d83c76883f5101107ad5fa0fa6a817debf2575997f2c657df19` |
| 86 | `def` | [SmoothGroupLawCertificate.add](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/smoothgrouplawcertificate-add.md) | 1428 | `declaration-track:8478a05edd11158eae58feefab8e5297745cb59f7d3e58715bae4555735b3be8` |
| 87 | `theorem` | [SmoothGroupLawCertificate.add_comm](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/smoothgrouplawcertificate-add-comm.md) | 1435 | `result-track:35e7c984e4bb0279275f7b894676902f67ef3f566d400eef37566a223f531b69` |
| 88 | `theorem` | [SmoothGroupLawCertificate.add_assoc](../../../../DynamicalSystemsAndErgodicTheory/GroupLaw.lean/declarations/smoothgrouplawcertificate-add-assoc.md) | 1443 | `result-track:f94daca312ebddb5a551b434bc98b7e083da50689dc02bb5c5920334e963a924` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f34d19058dded70fb7539ee6dd5f60540ca9e2a27624984d23928be12182ab2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean","GRWTSK/_verification/specifications/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
