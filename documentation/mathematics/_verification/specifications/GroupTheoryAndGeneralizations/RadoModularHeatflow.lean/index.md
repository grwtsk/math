# Verification target: Rado Modular Heatflow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7f59ed55948fcdef5e4037fa96f5f4a362e3adc",
  "lexical_observation_count": 103,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616/Variantb7aec810ffc331b1d6a5e46b80e06c53c4f08b4a6913c3992c3bafdaed4585cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7f59ed55948fcdef5e4037fa96f5f4a362e3adc`.

Source path: `GRWTSK/Algebra/GroupTheory/M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616/Variantb7aec810ffc331b1d6a5e46b80e06c53c4f08b4a6913c3992c3bafdaed4585cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616/Variantb7aec810ffc331b1d6a5e46b80e06c53c4f08b4a6913c3992c3bafdaed4585cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit0.Bit0.Bit0.Bit0.Bit1.Bit1.Bit1.Bit0.Bit0.Bit0.M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e` — import line 1; external provider; requires a separately pinned dependency.
- `Think.Bit1.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit1.M506970656c696e652f43656e7465722f5261646f457874656e73696f6e2e6c65616e` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SubsetMode](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/subsetmode.md) | 27 | `declaration-track:3c2e78d9cc0b404eb2bafc5c9e2a32cf3c5513d1fffa82bcec3fe1d5adfbf233` |
| 2 | `inductive` | [ProjectionOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/projectionoption.md) | 37 | `declaration-track:fd664c8bd9f899620bdc8a670c988b085e2dc7306af914a7c716efb89036329e` |
| 3 | `inductive` | [HeatKernelOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/heatkerneloption.md) | 53 | `declaration-track:2d4478ec875477683ff386ab7b4d52888990cf1e9afda55ca5d698748d59fde7` |
| 4 | `inductive` | [HeatGraphOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/heatgraphoption.md) | 62 | `declaration-track:8c126a59d5c0f6f315069c7f0b7d2836157fd78acc3eb12afe33308acf4ae090` |
| 5 | `inductive` | [GroupOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/groupoption.md) | 69 | `declaration-track:bb8b63814a2f9c5c762675ad82dfa937388bd10d9bba8b23caeb7844dc17e2e3` |
| 6 | `inductive` | [ModularRepresentationOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/modularrepresentationoption.md) | 81 | `declaration-track:d66b7e1c9a6cc5114d1b338549e7337cf6e189d8ae780c03b0edda002221b286` |
| 7 | `inductive` | [WeightRuleOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/weightruleoption.md) | 91 | `declaration-track:fe6f27f3af61a2e95818c1a09a443a3aea713d84af5678e462cda913245c979b` |
| 8 | `inductive` | [QCoefficientOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/qcoefficientoption.md) | 104 | `declaration-track:16b2335af71d1977a5c9dd871f801437147ac44d6ef6284e405465d3bb15cd0d` |
| 9 | `inductive` | [ResidueModelOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/residuemodeloption.md) | 115 | `declaration-track:5b83ee2016a961552684ed48c331dbbf0c6a34063d94ae1646ca4a7fec50f9f8` |
| 10 | `inductive` | [PairCorrelationOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/paircorrelationoption.md) | 125 | `declaration-track:1d4497ac6a4df0823b86c79f91d75f16ea724317cfb8c5ea2fa9e8929a4003ad` |
| 11 | `inductive` | [LayoutOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/layoutoption.md) | 133 | `declaration-track:884e7cf1e9b9d71969b89341b49a0406a0f2174da3286c4ae81d8ff97ad96656` |
| 12 | `inductive` | [WitnessPolicyOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/witnesspolicyoption.md) | 143 | `declaration-track:8a4453de2e4791b5102ce39ff9d1229839a7e8c82a52417a239923c050b02e4f` |
| 13 | `inductive` | [WitnessAttachmentOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/witnessattachmentoption.md) | 152 | `declaration-track:d876b6ab1be106cf25be47b61332ef0cdd3cf9ef211538524869e56217e07583` |
| 14 | `inductive` | [CoordinateOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/coordinateoption.md) | 162 | `declaration-track:3490d224b56376362b447dcf7ae61c43fa10b351679195948689074574e9a602` |
| 15 | `structure` | [Options](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/options.md) | 171 | `declaration-track:7494d46769930264d00e6fb3b6489735b8fc5a64ba6fc5e87a7924d480cbd4b9` |
| 16 | `def` | [defaultOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/defaultoptions.md) | 192 | `declaration-track:35b881537edc7eb36e996fe5aa577d484f8d1c3012435b9874ba330f7512aab0` |
| 17 | `def` | [allSubsetModes](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allsubsetmodes.md) | 212 | `declaration-track:2548dd13b1ef330e42efb494d695a228501829ab9ac13336214bf29bb87d8597` |
| 18 | `def` | [allProjectionOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allprojectionoptions.md) | 222 | `declaration-track:e163b1e7de816ea249383bb37dccc036d27981d5c45801e4f7a58026ffbae837` |
| 19 | `def` | [allWitnessPolicies](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allwitnesspolicies.md) | 238 | `declaration-track:2695f944a8161d66f850a280dec28c99c0a07d82f74a89bb38d04f8bf3988667` |
| 20 | `def` | [allHeatKernelOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allheatkerneloptions.md) | 247 | `declaration-track:847733b3e1760bc2231a6c1eef348a7345d9dff394acb6417773eff7cdbe965f` |
| 21 | `def` | [allHeatGraphOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allheatgraphoptions.md) | 256 | `declaration-track:f12c36584a359209cf8e2929108f048c90d4ddb7a3122e480cb4677aef2b682e` |
| 22 | `def` | [allGroupOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allgroupoptions.md) | 263 | `declaration-track:19828c1b26d601e21578ec56c6c9ae2093165f653de06861b13a933e45c20757` |
| 23 | `def` | [allModularRepresentationOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allmodularrepresentationoptions.md) | 275 | `declaration-track:c9f80dfae9a34b7376a56b822d5a236d22840d29db9256bbe4fb22cc4ad4d935` |
| 24 | `def` | [allWeightRuleOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allweightruleoptions.md) | 285 | `declaration-track:39de4820efb0960e5c28b97c4c9895a025ba74e4ab553f4b5c2f8f2dc4379960` |
| 25 | `def` | [allQCoefficientOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allqcoefficientoptions.md) | 298 | `declaration-track:ea4ba874bbeacd7b354c493d828629681932a752909ba40db544e62b0d8275d4` |
| 26 | `def` | [allResidueModelOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allresiduemodeloptions.md) | 309 | `declaration-track:2362aeaa2cb6d3f7aee0c3e38b5cfe049cb82bcd47bf7ee04fb96e72aec8bec5` |
| 27 | `def` | [allPairCorrelationOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allpaircorrelationoptions.md) | 319 | `declaration-track:ccf7439258a8b2e24c85f1a8079e821880256a15d4078dd5f85327780ac7fd43` |
| 28 | `def` | [allLayoutOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/alllayoutoptions.md) | 327 | `declaration-track:9a51a482af6e33bd38a3eba053f17939a7595206383f4b87d5f76188ea1ce6a4` |
| 29 | `def` | [allWitnessAttachmentOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allwitnessattachmentoptions.md) | 337 | `declaration-track:65cf71cc955b1c9531de2358a105534bb7c89ce3bf1caf8586f17ccb93a7ba34` |
| 30 | `def` | [allCoordinateOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allcoordinateoptions.md) | 347 | `declaration-track:45b9a0986b245560080beb3376312bb74f2b6b8bf3274466c47ed84cc1b3daad` |
| 31 | `structure` | [RadoGraph](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/radograph.md) | 356 | `declaration-track:404fb15da5f0b6021a3ebf6aedeb108804538f1ec3af4947b2dc42261c1d31b6` |
| 32 | `def` | [centerBitRadoGraph](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/centerbitradograph.md) | 362 | `declaration-track:122fbf76a3c1741e31f298a2e78773758324a0b4acf8f10d5ec43c5d6f02588a` |
| 33 | `theorem` | [centerBitRadoGraph_symmetric](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/centerbitradograph-symmetric.md) | 374 | `result-track:4e2bcf137f964f209afe8dcb266471a88b35d2283a5708b79dd031c4aa9d9dde` |
| 34 | `theorem` | [centerBitRadoGraph_irreflexive](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/centerbitradograph-irreflexive.md) | 379 | `result-track:e5f0f3cea7f46004a927e54397176aa6b12394d9ed2aeb2504e8706c46b4b04e` |
| 35 | `theorem` | [centerBitRadoGraph_extensionProperty](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/centerbitradograph-extensionproperty.md) | 383 | `result-track:46741719a9c3ed578ba2c8c1d20c41441f05633094c38b454b510bf84e74a9a7` |
| 36 | `theorem` | [centerBitRadoExtension_has_no_residue](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/centerbitradoextension-has-no-residue.md) | 387 | `result-track:e1e116f6753662287b40e995077573a08b21f44ea3b74674d154ff1d65bd3214` |
| 37 | `structure` | [RootedTree](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/rootedtree.md) | 393 | `declaration-track:49d3b43c6a6afe0b5343cc3a2d8238e1c321e7f39cade831f51dcb3fc2d2d792` |
| 38 | `structure` | [Projection](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/projection.md) | 400 | `declaration-track:f9415b8e9974c36bd3a6e2fee7aea984302c839e6938fb61a4b694ddc8b66249` |
| 39 | `def` | [sameFiber](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/samefiber.md) | 406 | `declaration-track:8b5189be3943a33e2356fa2a485c04f6327876e85b86d700b38f5c74f6757103` |
| 40 | `structure` | [WeightedHybridGraph](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/weightedhybridgraph.md) | 412 | `declaration-track:db29cdd21b356fab33338a511d7f2dd4a2943575eddad01a36c3aeebbc51a298` |
| 41 | `structure` | [HeatState](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/heatstate.md) | 425 | `declaration-track:a8ecd488f9a8530559435a29031df0849e30fef4a89d03b9178a2b113b5a0e62` |
| 42 | `structure` | [Embedding](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/embedding.md) | 433 | `declaration-track:96ef30f43abd17a6941079314d0b3a9dabae9b28e23b8530d8c92973034df871` |
| 43 | `structure` | [HeatCentroid](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/heatcentroid.md) | 438 | `declaration-track:1bd92f40016f4c11eaf7053a0a287efcf32551e258aba0725cdb47ff41cc3306` |
| 44 | `structure` | [UpperHalfPlanePoint](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/upperhalfplanepoint.md) | 450 | `declaration-track:30b13cedd93460fa81da4cc6443e78fb7954e3eedbb8ef36f6e110f1eebb954c` |
| 45 | `structure` | [EvenWeight](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/evenweight.md) | 456 | `declaration-track:d979fd00b490ce8c0ae2242dae48441a61fb1cd5a1ac6dbe1572bf2793abc817` |
| 46 | `def` | [EvenWeight.value](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/evenweight-value.md) | 460 | `declaration-track:1d7fc66d32f5193565b33ce02b55eae4b9357a6e432d409cdc00a998ad4fb489` |
| 47 | `theorem` | [EvenWeight.value_mod_two](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/evenweight-value-mod-two.md) | 463 | `result-track:2d5a76878165bb5b7aa9c1cfe08e3d0a21a519125f43ba53b92be09e67adefaf` |
| 48 | `structure` | [QExpansion](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/qexpansion.md) | 468 | `declaration-track:7cffe4cf343a6e249bfc9d3bc3006d3b5d8571c14ecc33fa8afa023c5dbba6ed` |
| 49 | `structure` | [SL2ZLabel](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/sl2zlabel.md) | 473 | `declaration-track:e9d0eca8d4369b6cd374ef7dc31225fa4a63ef942cd4cacbfc182a42b6a8c9dc` |
| 50 | `structure` | [GroupAction](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/groupaction.md) | 480 | `declaration-track:399c6196f7b171aa3142c03355beb3f1dd06d2f4976e889b63a478502583111f` |
| 51 | `structure` | [ModularData](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/modulardata.md) | 490 | `declaration-track:d728f991d6dd0d5a8937c46378bcc722d3fccc820b4482f19553fcf45db43bab` |
| 52 | `structure` | [ParentResidue](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/parentresidue.md) | 500 | `declaration-track:a79f37c12182766621767f22ccaa0868374f497a7a6cc3df5587ca12d8ad1e2b` |
| 53 | `structure` | [RadoWitnessRequest](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/radowitnessrequest.md) | 511 | `declaration-track:c3392e9d75f268a507d3c2d95e617a73033f638b852c845817d5bfb00e7e1197` |
| 54 | `structure` | [RadoWitness](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/radowitness.md) | 520 | `declaration-track:105f2c026af38eb5c0125ecd52e3f47d08fee535896176a171a21c8709e7c3da` |
| 55 | `structure` | [PairCorrelationRegularizer](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/paircorrelationregularizer.md) | 531 | `declaration-track:b09edf29d75fe7c63086df9764c49d905431e82c51b1d6f36b81403adf3db430` |
| 56 | `structure` | [EllipticCurveShadow](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/ellipticcurveshadow.md) | 541 | `declaration-track:b2332d5bb36095f9620180783d1270fc561fa3e32cc68e022917a63542bcaf90` |
| 57 | `structure` | [ObjectiveComponents](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/objectivecomponents.md) | 550 | `declaration-track:4a1201cdb21f82c86cc163e22ed552ec5d2f7e3151bef78b74e8a0a1c046a019` |
| 58 | `structure` | [AlgorithmState](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/algorithmstate.md) | 563 | `declaration-track:26e1b1b4e962a2f8283a5ae1a9ae779782ae4a55f409e4c5a12fed9ea8aa9872` |
| 59 | `inductive` | [TerminationCriterion](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/terminationcriterion.md) | 589 | `declaration-track:5b18aeda1da4747951ead6b3603033ba18a1de4e102a77f69dbf510b778640cf` |
| 60 | `structure` | [CountableExhaustionReceipt](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/countableexhaustionreceipt.md) | 596 | `declaration-track:343be5ec5d8fdced52849cfb512dfff20f2e6f8da68f89b8f2796ea90f6ea4c4` |
| 61 | `structure` | [AlgorithmOutput](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/algorithmoutput.md) | 605 | `declaration-track:4b1b404054be0b52048a6c6745b918283656fd67e6c0a3539de9f979cb7b55f3` |
| 62 | `inductive` | [Atom](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/atom.md) | 625 | `declaration-track:2eccfa00598806f1f5a82752fede023bfd6e5eee0c86e2ef0de303f6e7b37d52` |
| 63 | `def` | [Atom.id](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/atom-id.md) | 649 | `declaration-track:35273a64f32c3b080e577625f68c7211b3a11250a3f937624ee207f0a7f4a3f8` |
| 64 | `def` | [Atom.kind](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/atom-kind.md) | 672 | `declaration-track:884eae1f43d9a065166ac3a9083717c824cca16ab288cb34ec3ec8bfa778362d` |
| 65 | `def` | [Atom.blocks](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/atom-blocks.md) | 698 | `declaration-track:412be010e39de51fd83974b2fc506042a0cb93b943e70fcf20d7bd7e277e709c` |
| 66 | `def` | [Atom.clearsBy](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/atom-clearsby.md) | 742 | `declaration-track:b82cb333d076c0044f4ca53b4462e58d0ff51d42177ed4b949519c68dcb1cc7c` |
| 67 | `def` | [atomResidue](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/atomresidue.md) | 786 | `declaration-track:adbda671886ea267d58e0aae3ad9de8b0ab2f08722cdc7b23a99a551bf745d40` |
| 68 | `def` | [allAtoms](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allatoms.md) | 793 | `declaration-track:3ead305448e0d26802824bc7872c4a681c9c00d1c6b6a92c094121536e7d133a` |
| 69 | `structure` | [Context](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/context.md) | 817 | `declaration-track:9c0c5411cfb3751c9f1534fedac63c86909669f61ef285b69443915ee3115788` |
| 70 | `def` | [finalClaim](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/finalclaim.md) | 840 | `declaration-track:a12d630d366099f3b17464abc371291485df7ea2d377dec44bee90a9565f2d13` |
| 71 | `def` | [finalResidues](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/finalresidues.md) | 869 | `declaration-track:33fa54a93eb3a7001fe13a306b16359eca6a302795a7206881aa4498c55185ba` |
| 72 | `def` | [finalWitness](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/finalwitness.md) | 872 | `declaration-track:e68edc7f3705c862d2d7165af714fad726a7a4af0a59d4eca802ba7275cb7782` |
| 73 | `theorem` | [finalWitness_hasResidue](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/finalwitness-hasresidue.md) | 875 | `result-track:078d28c7da7fdecba1ebfd3b757e7b79916771dfb2bb290323cb0f55a14b6399` |
| 74 | `theorem` | [finalResidue_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/finalresidue-count.md) | 879 | `result-track:2239b3d516d3be7828c500dcbd25fb245d2485b03827ba9eb91bd6a4cefe5e90` |
| 75 | `theorem` | [allAtoms_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allatoms-count.md) | 883 | `result-track:fa490c14aa18d652e15145a288bcdc493b6a1a8df817cef17397cd49bf3c4996` |
| 76 | `theorem` | [allSubsetModes_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allsubsetmodes-count.md) | 887 | `result-track:cfa164a2ca8fc74afbdef09b35bdea5283b38a5d8816ead75183e066c1f6d0c9` |
| 77 | `theorem` | [allProjectionOptions_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allprojectionoptions-count.md) | 891 | `result-track:01b966bf598192194091ba18fd2b2269342fe12fe805b745cc6cd96f3153cf46` |
| 78 | `theorem` | [allWitnessPolicies_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allwitnesspolicies-count.md) | 895 | `result-track:d2779a1795d120f177ca437aa49ec04ccd1ee8e3872c553f4937fe5dc79b4999` |
| 79 | `theorem` | [allHeatKernelOptions_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allheatkerneloptions-count.md) | 899 | `result-track:cd489a5676b80fcafa707f3253d189ee99630cb57c2751b54a6ef98a0c6e44ec` |
| 80 | `theorem` | [allHeatGraphOptions_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allheatgraphoptions-count.md) | 903 | `result-track:f552945e738b78983cda66beeb7a1dacf98623ca666849a07b706cf9ee2cf0cd` |
| 81 | `theorem` | [allGroupOptions_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allgroupoptions-count.md) | 907 | `result-track:36d4e48a05f87e0e4f5ecbb861c7f09037862851a3a70ce830092a8e488d7dc8` |
| 82 | `theorem` | [allModularRepresentationOptions_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allmodularrepresentationoptions-count.md) | 911 | `result-track:bc41bd7e56413e0b85498729c17fc68dd02d0cb42fae440bc332e7d72167c6db` |
| 83 | `theorem` | [allWeightRuleOptions_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allweightruleoptions-count.md) | 915 | `result-track:7a6aa4b353d5e95a85d570d670b3587e40bcecc8dd2425aed086b8dc106ab917` |
| 84 | `theorem` | [allQCoefficientOptions_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allqcoefficientoptions-count.md) | 919 | `result-track:98b5c1f441d5fb5747f3c48aa9b7137d1a5d964a76f252af8701f2a64dd8b080` |
| 85 | `theorem` | [allResidueModelOptions_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allresiduemodeloptions-count.md) | 923 | `result-track:655c5e8c05e1df7c508ce95cba8d0c3f594d3d621e2fa7f0defbbdee74461bbb` |
| 86 | `theorem` | [allPairCorrelationOptions_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allpaircorrelationoptions-count.md) | 927 | `result-track:bea93c15258d3536ccd5ee33d5f78a275709c65b6189d4788a1bdb1067883909` |
| 87 | `theorem` | [allLayoutOptions_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/alllayoutoptions-count.md) | 931 | `result-track:56cc593a68c205bbf82b95f43735961270def9ba3d05a35eb81cef5e7d7fec4f` |
| 88 | `theorem` | [allWitnessAttachmentOptions_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allwitnessattachmentoptions-count.md) | 935 | `result-track:c34f9e63ec31f30f41026cc365633c28ace81cabebdd82e3369f0ccf418e6d78` |
| 89 | `theorem` | [allCoordinateOptions_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/allcoordinateoptions-count.md) | 939 | `result-track:73e3f33530ac3626f3f8f9f7e210c7310fc1006fbee9188a22ade482a4c6a474` |
| 90 | `structure` | [JepaHeatflowSeed](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/jepaheatflowseed.md) | 943 | `declaration-track:72cde2895a7bf895d339293105abe12cf27a691c70232d942af512b99d279e6c` |
| 91 | `def` | [JepaHeatflowSeed.statusAllowed](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/jepaheatflowseed-statusallowed.md) | 953 | `declaration-track:d7dee74b579f0a5dc56f468ec6cc93aaf3473f82a10c4e5b7dbc2c0f0d8229c9` |
| 92 | `def` | [JepaHeatflowSeed.nonclaimsPresent](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/jepaheatflowseed-nonclaimspresent.md) | 959 | `declaration-track:3a9bcdcbba113d81e7a33947f49be4bf4521755acffda410d4507622727e8d1f` |
| 93 | `def` | [JepaHeatflowSeed.acceptedForJepa](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/jepaheatflowseed-acceptedforjepa.md) | 962 | `declaration-track:e3a63bc7031102cb98615b9983e8bd9f577f2f59192a0470259218582e14e7dd` |
| 94 | `def` | [JepaHeatflowSeed.toResidue](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/jepaheatflowseed-toresidue.md) | 967 | `declaration-track:908e9b1aa4bf736c6375506f17cfe5c651b612d08bdee7ab19a90486bdd5814d` |
| 95 | `def` | [JepaHeatflowSeed.admissionResidue](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/jepaheatflowseed-admissionresidue.md) | 977 | `declaration-track:60a29a7e9668ebd88dfbfaee1cdcbc89983bbc276c0232f10ab6575b083914fc` |
| 96 | `def` | [JepaHeatflowSeed.residues](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/jepaheatflowseed-residues.md) | 987 | `declaration-track:1caee327e355f5862e1cfacf62a8fb3f008a57e8f5d1db04925655857793866e` |
| 97 | `def` | [jepaSeedClaim](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/jepaseedclaim.md) | 994 | `declaration-track:b22ecb792404d565fc65ec3d31654e4fddc815f1010a54759780148cfbb8da85` |
| 98 | `def` | [checkedJepaSeed](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/checkedjepaseed.md) | 997 | `declaration-track:50e9225297458e6aaa95fc2187eb964d5142d52f9c5299671bf7a879f9fbee07` |
| 99 | `theorem` | [checkedJepaSeed_hasResidue](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/checkedjepaseed-hasresidue.md) | 1001 | `result-track:142ba1bf1f2b96f733ede03c969bc23067716850e1ef3ce74e6e1b3242ca8b18` |
| 100 | `def` | [sampleSeed](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/sampleseed.md) | 1010 | `declaration-track:b04d008c089208c4fe73ebfd5acd67187b92f2333ab7a3faa2b663e0016f2b14` |
| 101 | `theorem` | [sampleSeed_acceptedForJepa](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/sampleseed-acceptedforjepa.md) | 1031 | `result-track:488f5beb3f9736cb0615535dbebdbf40f7c4353924f7a2b571f4167c79fa1490` |
| 102 | `theorem` | [sampleSeed_checked_hasResidue](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/sampleseed-checked-hasresidue.md) | 1035 | `result-track:034d256953348e0210d67e218ec076e35195f1a7abd49308a79a48edb9648907` |
| 103 | `theorem` | [sampleSeed_residue_target](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflow.lean/declarations/sampleseed-residue-target.md) | 1039 | `result-track:af3b16c77e076d82a80fc462eaf962de9ed2f565c5626a61f720409d31803f91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=452a2a0773ab01dcd75b26b5ac7ab47d78ad3baf1ab5914895ee21ce7004b8d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616/Variantb7aec810ffc331b1d6a5e46b80e06c53c4f08b4a6913c3992c3bafdaed4585cf.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616/Variantb7aec810ffc331b1d6a5e46b80e06c53c4f08b4a6913c3992c3bafdaed4585cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
