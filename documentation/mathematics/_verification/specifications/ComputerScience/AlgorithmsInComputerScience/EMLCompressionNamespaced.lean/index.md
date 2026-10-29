# Verification target: EMLCompression Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "048a145793732d9afe9c5f66934a7dcc3581cc4f",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e/Variant5ac67a0e4b37b777ad11ebf9d8fccb8fea23b53b1c05294af2999c58edf218a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `048a145793732d9afe9c5f66934a7dcc3581cc4f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e/Variant5ac67a0e4b37b777ad11ebf9d8fccb8fea23b53b1c05294af2999c58edf218a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e/Variant5ac67a0e4b37b777ad11ebf9d8fccb8fea23b53b1c05294af2999c58edf218a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit1.Bit1.Bit1.Bit0.Bit0.Bit1.Bit0.Bit1.M506970656c696e652f43656e7465722f526f756e647472697053746162696c697a65722e6c65616e` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ResidueAtomClass](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/residueatomclass.md) | 35 | `declaration-track:30245be2522354d99f448a11f5455aeab70fb14ee650066685cc945c0ea9400c` |
| 2 | `inductive` | [ResidueAlgebraMode](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/residuealgebramode.md) | 41 | `declaration-track:796ea9883bf7536ea2ed84120d84c6f2cf9740c1ac97e2a01c759ae43a219e9e` |
| 3 | `def` | [ResidueAlgebraMode.semantic](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/residuealgebramode-semantic.md) | 47 | `declaration-track:00b973cf897e6535d6c75a448e7d11404ada8948c9ccc66fa13752c42a205d4e` |
| 4 | `structure` | [ResidueAtom](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/residueatom.md) | 52 | `declaration-track:f2e03b3e5e7c6c80c634f9cbcb867549178d3dfbca3681343c3a02e480b34e91` |
| 5 | `abbrev` | [ResidueMonomial](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/residuemonomial.md) | 59 | `declaration-track:c483d0853467e63404166f91ac7d134db51537f3d12d156217d6e13648edf0ba` |
| 6 | `structure` | [ResidueExpr](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/residueexpr.md) | 61 | `declaration-track:b94ba99cd9e4dd14f0086c360400858a993fa50ab2c95516519ef74efb2df9f2` |
| 7 | `def` | [flattenAtoms](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/flattenatoms.md) | 67 | `declaration-track:c064892515648de5a8b478f984b2dbec1c54fb98f860dd1edfb1e79015d3aacc` |
| 8 | `def` | [appendRight](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/appendright.md) | 71 | `declaration-track:f361b9d91d843c37ab00b729343590c231c3692b35d46625dae70410d4c67555` |
| 9 | `def` | [multiplyAlternatives](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/multiplyalternatives.md) | 77 | `declaration-track:93a466c09fe247e7e9bd5467e19bf584457d074351464b4ebf96aaa5a055073f` |
| 10 | `def` | [zero](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/zero.md) | 83 | `declaration-track:39477a37c46b66c99fc95bb550f882ad5932fb83e7d694fecf441e9eb020604d` |
| 11 | `def` | [one](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/one.md) | 86 | `declaration-track:816a877dab20b363b6bcf4b655962483e079a03f58f2a1dd0259987e2988d61b` |
| 12 | `def` | [add](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/add.md) | 89 | `declaration-track:139c9b48c5e1083288ea04f6e7be3803b59a50f57565730dc22888d16a6718c3` |
| 13 | `def` | [mul](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/mul.md) | 92 | `declaration-track:e364b73cf514b5e374240ec035d365106689c6170f8b4473c46801ffba3c5947` |
| 14 | `def` | [support](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/support.md) | 95 | `declaration-track:b779804f10220e6d575a274c3614e972ad8a4ce3efd33bbc59a733a98f711386` |
| 15 | `theorem` | [zero_support](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/zero-support.md) | 98 | `result-track:7edae19ce264e1b3220f1b1d42148662fa11ebcdb7ad4c925532564aed66b8c1` |
| 16 | `theorem` | [one_support](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/one-support.md) | 102 | `result-track:a45f82a4d37227c63996aff0a705db7f2d5928a56e0b11a26db2a4cd90a46876` |
| 17 | `structure` | [ProofArtifact](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/proofartifact.md) | 108 | `declaration-track:1cfda7f3e7a760ca5a5f89491bb9e8252fef1f3ce0205ff192417626f4c4d236` |
| 18 | `structure` | [EMLInterface](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/emlinterface.md) | 116 | `declaration-track:faba2b63400cdaf744a67104d934b90833b738d9c45f2c34bdf165a4b230fa20` |
| 19 | `def` | [encodingAllowed](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/encodingallowed.md) | 125 | `declaration-track:66ef1078dcc18d28e0d93e99e7098b736cc082776ecece5dd74ca003fead6b97` |
| 20 | `def` | [maximallyCompressed](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/maximallycompressed.md) | 131 | `declaration-track:eb55dd1a37f0930cb705e43c32ee2306fc5a7a640e581c785dff4f82efad01b2` |
| 21 | `def` | [compressesNoWorse](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/compressesnoworse.md) | 136 | `declaration-track:aa9113dab6f224b02dffcc2e7b3fca021c9109eff303f08f899d58e9f65d4192` |
| 22 | `theorem` | [lower_encoding_allowed](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/lower-encoding-allowed.md) | 140 | `result-track:8b0ab4eea055f3d7d41159663524abc88b06d51ae82fd26c9bc1b1cd12e6cb98` |
| 23 | `inductive` | [MoveKind](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/movekind.md) | 149 | `declaration-track:096fe205bd27108e0b28196d71b72028bcd9a0cff0cf336bdb3fd83afd2dcea3` |
| 24 | `inductive` | [ProofFlowPole](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/proofflowpole.md) | 162 | `declaration-track:e7cb9b67914eceb7aebce3202e68e8e9ec2c852f40dbb0223b61e4a35fae9941` |
| 25 | `def` | [MoveKind.invertible](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/movekind-invertible.md) | 174 | `declaration-track:cfe2760adb77a58eac06ccf1b47abb395a9cf74a3de51305d855d70bc042ec0d` |
| 26 | `def` | [MoveKind.reducing](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/movekind-reducing.md) | 186 | `declaration-track:1e2b410ed34140d6ff816e86997f7abf80d26827e4a6319693ae9b38c2c6c900` |
| 27 | `theorem` | [quotientMove_not_invertible](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/quotientmove-not-invertible.md) | 189 | `result-track:0234fe5c6ee5803b72bc5050afedb0270e220773c7fba780726371b09bd85d25` |
| 28 | `theorem` | [canonicalizeMove_reducing](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/canonicalizemove-reducing.md) | 193 | `result-track:6ca088bb63137b90a1a637f767d86a20ebb210b583f4d885e529006a94c9b241` |
| 29 | `def` | [allInvertibleMoves](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/allinvertiblemoves.md) | 197 | `declaration-track:e4f4d0ee4ecb3f544619bad0666fcf7366a9d569d078c2187732bb612ba29222` |
| 30 | `def` | [allReducingMoves](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/allreducingmoves.md) | 200 | `declaration-track:f64851a33203a13efec8ce42d4bcd7be7ac90225049f41aefa3205c68d7ce613` |
| 31 | `structure` | [TransportMove](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/transportmove.md) | 203 | `declaration-track:2acad626875eb15bae19b241ffe356e55869878c8d9c6c07c5b93657696c501e` |
| 32 | `structure` | [WeightedMove](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/weightedmove.md) | 208 | `declaration-track:effea0a0c95055caffb7e4f66751dd4371f6cd2f56b7ff7523e881a21d805ee5` |
| 33 | `structure` | [MultinomialSourceNode](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/multinomialsourcenode.md) | 212 | `declaration-track:b0df998f4f8c6ae18a9a3fc03dfcfed70ef50ed46cf07351883baac8a447a559` |
| 34 | `def` | [branchWeightTotal](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/branchweighttotal.md) | 218 | `declaration-track:5f1e5e8703c76290e1c7131c335f6af35816362e288f95d179114ac81488ad33` |
| 35 | `structure` | [CanonicalizationPolicy](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/canonicalizationpolicy.md) | 222 | `declaration-track:6935c218c9c987ac95486be3d30abb4665c420dd4d01a15cecf52001916f5891` |
| 36 | `structure` | [ResidueExtractor](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/residueextractor.md) | 229 | `declaration-track:08245058dda33c5c469c78d521e38c558de0984970fe0119245597bdd05844cf` |
| 37 | `def` | [atomSurvivesEvery](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/atomsurvivesevery.md) | 234 | `declaration-track:835ee3e1bc0fb287b90dfc1052217666ea5dab2656f389a5552fac29fd8de3ab` |
| 38 | `structure` | [ResidueInvariantTrace](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/residueinvarianttrace.md) | 244 | `declaration-track:ac5df222a0961238b8c5880170a89fb9c0dcce5ed495027530cf6f0997ada670` |
| 39 | `structure` | [StableCompressionState](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/stablecompressionstate.md) | 254 | `declaration-track:d73b38180a37d78776be57d18e96dfa0c52ef3678a5109d45f4ee71f052d31e3` |
| 40 | `def` | [StableCompressionState.isStable](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/stablecompressionstate-isstable.md) | 266 | `declaration-track:b30f2befcc3e54539ed7d2d37d377528a9a98fd9b50a3d7c9b70708e1dca2ff9` |
| 41 | `def` | [StableCompressionState.usesPositiveResidueSemantics](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/stablecompressionstate-usespositiveresiduesemantics.md) | 270 | `declaration-track:002ef861ac399e816c75505c73b64aad358a257741d5e6a4b71e912ae7c190cc` |
| 42 | `def` | [stableStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/stablestatus.md) | 275 | `declaration-track:02fdc70016a297c29afacb051973c4e9593b403f7521bb34c84f72943d6a052c` |
| 43 | `structure` | [JepaConjectureSeed](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/jepaconjectureseed.md) | 281 | `declaration-track:d745738c6a920d6b26a5ab0d3295e00c2c8af64d1b951fa3e262792ca88f4fd7` |
| 44 | `def` | [JepaConjectureSeed.moveLanesWellFormed](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/jepaconjectureseed-movelaneswellformed.md) | 300 | `declaration-track:2407a50975016404acb07a2e0df2d833a75354fb771c54683b13680ecb3111b8` |
| 45 | `def` | [JepaConjectureSeed.statusResidueConsistent](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/jepaconjectureseed-statusresidueconsistent.md) | 305 | `declaration-track:825c24f720b79b62506a76a8bdeb89e8a73c5bd85300427a6123d8fa497da415` |
| 46 | `def` | [JepaConjectureSeed.statusResidueConsistentBool](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/jepaconjectureseed-statusresidueconsistentbool.md) | 314 | `declaration-track:70f7f2b0ba1f0a3beea121b6647e8b86e8aea79292a7abfcbef8a1fceb433ba2` |
| 47 | `def` | [JepaConjectureSeed.acceptedForJepa](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/jepaconjectureseed-acceptedforjepa.md) | 321 | `declaration-track:2499b10e93a443908d8621a644c75a735cf0ac3eba2237f403056736cb0554db` |
| 48 | `def` | [JepaConjectureSeed.toResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/jepaconjectureseed-toresidue.md) | 328 | `declaration-track:b7b5560c89a5255182d38c870cf3ee40739a907ee9a177ebf11c21d8984241d0` |
| 49 | `def` | [JepaConjectureSeed.admissionResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/jepaconjectureseed-admissionresidue.md) | 338 | `declaration-track:1a246190838157d1498fd32fe622f06e35087d70cf54ad8a9c96ca43ad714867` |
| 50 | `def` | [JepaConjectureSeed.residues](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/jepaconjectureseed-residues.md) | 348 | `declaration-track:0491e87fa33cfd7a9eec004a0fd63bb7f4bcfa40b03128f53b07d0851369aae6` |
| 51 | `def` | [seedFromStableState](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/seedfromstablestate.md) | 355 | `declaration-track:4f78c6761fba0bf6b3dccc85ca1ff6cb5f5dbadd9aa33378db3ca1f4f822cdc5` |
| 52 | `def` | [conjectureSeedBoundaryClaim](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/conjectureseedboundaryclaim.md) | 382 | `declaration-track:0344917dcc1982e478978aa13e3a957916e963be00f611b9f4ecc6c5ed51e8ca` |
| 53 | `def` | [checkedConjectureSeed](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/checkedconjectureseed.md) | 392 | `declaration-track:51c557136a6eaaf469a892799a6396b01dd3750276efcfea8c6d4ef09275ae52` |
| 54 | `theorem` | [checkedConjectureSeed_hasResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/checkedconjectureseed-hasresidue.md) | 396 | `result-track:e5227a785ecb3e86256027f6fc58e79af6e250c1342df7db9d91e5324dca0bc0` |
| 55 | `def` | [sampleResidueAtom](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/sampleresidueatom.md) | 406 | `declaration-track:001e6f1434ded6d3255520bcd6b51b54ef4871c48602a4f6184dee70afc0a1b5` |
| 56 | `def` | [sampleStableState](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/samplestablestate.md) | 412 | `declaration-track:4f027a900a4588d4a984aa084f7d987a3a0056216101fe9fc629ca9bff2a35e7` |
| 57 | `def` | [sampleSeed](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/sampleseed.md) | 426 | `declaration-track:fb672f5b046e40774af24dd92f4fe7f2adf6d3f229734e04ced670fef0a9c21d` |
| 58 | `theorem` | [sampleSeed_hasResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/sampleseed-hasresidue.md) | 436 | `result-track:6878ae2d6aaa051f4bddf85c956d56d469aaff34103a60fe1305620940096107` |
| 59 | `theorem` | [sampleStableState_usesPositiveResidueSemantics](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/samplestablestate-usespositiveresiduesemantics.md) | 440 | `result-track:b76c1f1fa17ca1b3d49accd081bc2b36e24f18026bfc9df76e1b9ed654e9511e` |
| 60 | `theorem` | [sampleSeed_moveLanesWellFormed](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/sampleseed-movelaneswellformed.md) | 444 | `result-track:a8f88bc342df018b7662e6b28fca15f832ee6b0d75b5bf1ba9cca6c03b8747ac` |
| 61 | `theorem` | [sampleSeed_acceptedForJepa](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/sampleseed-acceptedforjepa.md) | 448 | `result-track:cb5bd93bd7d4fc6beeef5983acc484b3c0cd02db068568d48418fead06a08c33` |
| 62 | `theorem` | [sampleSeed_statusResidueConsistent](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/sampleseed-statusresidueconsistent.md) | 452 | `result-track:ca37530c4045de5d2c075d326a7f9c01179f806c1c0b3c26c6d095b04bd3286f` |
| 63 | `def` | [malformedMoveLaneSeed](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/malformedmovelaneseed.md) | 460 | `declaration-track:11ab29e29aec1537a818806a656cd0753b8d043daeeaf89977579fcae896995d` |
| 64 | `theorem` | [malformedMoveLaneSeed_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/malformedmovelaneseed-rejected.md) | 468 | `result-track:0622b3772d800cdf6c4f2fdd6f02e4a7c02aa5660316aff95e7639a53ec98e64` |
| 65 | `theorem` | [malformedMoveLaneSeed_residueCount](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompressionNamespaced.lean/declarations/malformedmovelaneseed-residuecount.md) | 472 | `result-track:9e3a82a83e2263bd6d3e28df54f1c57e7abe1935f3e55b1c3b0c86a637134b24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5ad034d494c0d58075b08ca48fa8b75498ed79bcd8fd19cde1c679206fc8b50 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e/Variant5ac67a0e4b37b777ad11ebf9d8fccb8fea23b53b1c05294af2999c58edf218a6.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e/Variant5ac67a0e4b37b777ad11ebf9d8fccb8fea23b53b1c05294af2999c58edf218a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
