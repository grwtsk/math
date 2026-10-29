# Verification target: Rado Modular Heatflow Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28a6cca751fa4377a4945d4006349b1063e73970",
  "lexical_observation_count": 103,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616/Variant821e3f12acc5d047df2fb512c5c5d0400f8a90bcb4b8988078cc15c96ec73fe1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28a6cca751fa4377a4945d4006349b1063e73970`.

Source path: `GRWTSK/Algebra/GroupTheory/M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616/Variant821e3f12acc5d047df2fb512c5c5d0400f8a90bcb4b8988078cc15c96ec73fe1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616/Variant821e3f12acc5d047df2fb512c5c5d0400f8a90bcb4b8988078cc15c96ec73fe1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit0.Bit0.Bit0.Bit0.Bit1.Bit1.Bit1.Bit0.Bit0.Bit0.M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e` — import line 6; external provider; requires a separately pinned dependency.
- `Think.Bit1.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit1.M506970656c696e652f43656e7465722f5261646f457874656e73696f6e2e6c65616e` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SubsetMode](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/subsetmode.md) | 35 | `declaration-track:25e741011f4ca495a23e0cfbb1c4eb4a069a7016c4ab2fd0b5c42f962d9c5efd` |
| 2 | `inductive` | [ProjectionOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/projectionoption.md) | 45 | `declaration-track:e9652344f968f94478be24917bee91968516b611f50fc9835c359ee6d39315d5` |
| 3 | `inductive` | [HeatKernelOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/heatkerneloption.md) | 61 | `declaration-track:185e4aa7a6e90aeea550c3b51c06d675cbf9295435e78f05ed6a567a42059843` |
| 4 | `inductive` | [HeatGraphOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/heatgraphoption.md) | 70 | `declaration-track:77d7b014e5b2218c02ba2bcc0c5c785415dc973d400bb1db8ec9d4c773404c23` |
| 5 | `inductive` | [GroupOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/groupoption.md) | 77 | `declaration-track:a8770ab96ae8815b1c21594390780b6d981a4fb1e92cb4259744b120f5cbf833` |
| 6 | `inductive` | [ModularRepresentationOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/modularrepresentationoption.md) | 89 | `declaration-track:269dbf713627f2a354b2ed5a7848583d9ae39f46e58665794b965ae442ef052d` |
| 7 | `inductive` | [WeightRuleOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/weightruleoption.md) | 99 | `declaration-track:ba552d08ace3ab1fbb13356fb59f8c3806020913cec75b0d0a5a2d1c8488de8b` |
| 8 | `inductive` | [QCoefficientOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/qcoefficientoption.md) | 112 | `declaration-track:7a4f8be64bf91b00c788318f2f76c3923e466191607a4fd84b7ec943b7e6947a` |
| 9 | `inductive` | [ResidueModelOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/residuemodeloption.md) | 123 | `declaration-track:f890a35a38807de6d627e30992374c39d64f6fa47615f1f296295bee3dd111f7` |
| 10 | `inductive` | [PairCorrelationOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/paircorrelationoption.md) | 133 | `declaration-track:ea02af6964d0546dd0314d6fece2c5f29cf1a8a5c419f076acede9831c4b7a3f` |
| 11 | `inductive` | [LayoutOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/layoutoption.md) | 141 | `declaration-track:89d002525481c557ac6cebe9d15c1c7f7c5ff77abd310f6377bfbaf59a2b6ac8` |
| 12 | `inductive` | [WitnessPolicyOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/witnesspolicyoption.md) | 151 | `declaration-track:127d8bed7519313fe5d85a88c9e93c05d03ce3c83702c16920a06f70a3a38f88` |
| 13 | `inductive` | [WitnessAttachmentOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/witnessattachmentoption.md) | 160 | `declaration-track:226baf9d73c4b4aa37de6dc79534cd625cf3cf0e57fe8e7371fa09f8a2087a0f` |
| 14 | `inductive` | [CoordinateOption](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/coordinateoption.md) | 170 | `declaration-track:30e5944467b775f4d8bf90675953a23c96fdb05933b5fda00011daa6216eaaf9` |
| 15 | `structure` | [Options](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/options.md) | 179 | `declaration-track:c3b8aa21bcb1180d882d3beb0e6c68427af0c05c155f7682329638d8753493d1` |
| 16 | `def` | [defaultOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/defaultoptions.md) | 200 | `declaration-track:b60b78cc4a052bb37e34a9368bd72ecf45c0514deb528fe21bb7c6e4d3814d50` |
| 17 | `def` | [allSubsetModes](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allsubsetmodes.md) | 220 | `declaration-track:9b344e37cad9821160ab6e80576c15fda68ba1800f0a713111dbe6f9caf40555` |
| 18 | `def` | [allProjectionOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allprojectionoptions.md) | 230 | `declaration-track:2ea4ed7e9dd0b9340dc3f92d7ba2404abc0ebf98d9c48a298442ac80b0e32ee4` |
| 19 | `def` | [allWitnessPolicies](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allwitnesspolicies.md) | 246 | `declaration-track:bf7f65e47e5b2d92a9f5698fddff5b6df5b918e0e18901e38c1be48efb7531b5` |
| 20 | `def` | [allHeatKernelOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allheatkerneloptions.md) | 255 | `declaration-track:2de81c1d559297acdf4bec58ea99784da47599954d1c09bcb8ed9a6f522409ca` |
| 21 | `def` | [allHeatGraphOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allheatgraphoptions.md) | 264 | `declaration-track:bc8170eac84ba70bd05678c809b4de191b9e78dd396659d420b819d60c4d5c45` |
| 22 | `def` | [allGroupOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allgroupoptions.md) | 271 | `declaration-track:f4db1e48501cd91530f932a9e04297132a0c0dc2f7ffb5411756fb4896803e41` |
| 23 | `def` | [allModularRepresentationOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allmodularrepresentationoptions.md) | 283 | `declaration-track:664543d3a5be28dc6db9733f8b513e01eff8c279ce625e23935c091110df78fe` |
| 24 | `def` | [allWeightRuleOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allweightruleoptions.md) | 293 | `declaration-track:72dd6ad31074e5499f0ad1e579b6a5808d0a709594da515a079ceca8ba1b31bb` |
| 25 | `def` | [allQCoefficientOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allqcoefficientoptions.md) | 306 | `declaration-track:fb4e755c2d9ba2c86616935e1c12137d753508ff0eb51ec97a8d62c308e13c73` |
| 26 | `def` | [allResidueModelOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allresiduemodeloptions.md) | 317 | `declaration-track:a1e015e624f27292685bc130dc10a45e5438ff3432cff1eafc7115df4936a4a1` |
| 27 | `def` | [allPairCorrelationOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allpaircorrelationoptions.md) | 327 | `declaration-track:4270af8818a807a78972daf82970bf2d6ac7f4d9b420584266eb55bbce3eb637` |
| 28 | `def` | [allLayoutOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/alllayoutoptions.md) | 335 | `declaration-track:f6174bae6ea917fe502851e31987eedf0550125bf8c6226d7bb687f3fc7bed26` |
| 29 | `def` | [allWitnessAttachmentOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allwitnessattachmentoptions.md) | 345 | `declaration-track:0f02da44dfcc7483906ee85fd7d824faef2322f0b91b987b81ac2d595628ec70` |
| 30 | `def` | [allCoordinateOptions](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allcoordinateoptions.md) | 355 | `declaration-track:6545b03b5e21d1f7876eb16c0212c82c94307fe264f1438bbc83f0f3c1616cd5` |
| 31 | `structure` | [RadoGraph](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/radograph.md) | 364 | `declaration-track:594cf94ad2e4d2e52cf0f1116aa42d54258816693999f915043ee529f0594fe0` |
| 32 | `def` | [centerBitRadoGraph](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/centerbitradograph.md) | 370 | `declaration-track:f3f1f2bc4937ac73783f285fa99bdb4226fe81ff99b2b6a3f5f035a03155fec3` |
| 33 | `theorem` | [centerBitRadoGraph_symmetric](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/centerbitradograph-symmetric.md) | 382 | `result-track:c614882dae8ebf3ea416a838c266837aaaa0abd9cb2763efb996d249623b876c` |
| 34 | `theorem` | [centerBitRadoGraph_irreflexive](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/centerbitradograph-irreflexive.md) | 387 | `result-track:f41dff01d32018925160f31f4cc679b64efe38239932c129436f988e00052acd` |
| 35 | `theorem` | [centerBitRadoGraph_extensionProperty](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/centerbitradograph-extensionproperty.md) | 391 | `result-track:d6e648fa769523c7e100956c4ddb888575a2ba7c6761d6e84c0db6b4765c9b2f` |
| 36 | `theorem` | [centerBitRadoExtension_has_no_residue](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/centerbitradoextension-has-no-residue.md) | 395 | `result-track:108dbcafb9fbb64fb0e5840c54fa312f2773f909f679a884ef97a79ab3dfaa6f` |
| 37 | `structure` | [RootedTree](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/rootedtree.md) | 401 | `declaration-track:cf3da03c70acc0e90f593c716661a3ebb2b72eb59f775d8e43302687e23b0690` |
| 38 | `structure` | [Projection](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/projection.md) | 408 | `declaration-track:1221a028fe083555acc0fcab06497d52e5be55457a60856167da0abc10dbe742` |
| 39 | `def` | [sameFiber](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/samefiber.md) | 414 | `declaration-track:da85a1695274b03ee7d9f0fd0671c0f83a15bf233404e4c547b018faf93e8992` |
| 40 | `structure` | [WeightedHybridGraph](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/weightedhybridgraph.md) | 420 | `declaration-track:9e775550aba910f4aee714815cc1ebfcd5bb262053546142369e2d18551bbd5c` |
| 41 | `structure` | [HeatState](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/heatstate.md) | 433 | `declaration-track:74922de5b8281cbb23dfe94d9560874d8fd0d9e53219fbc8914471b0b293d3d2` |
| 42 | `structure` | [Embedding](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/embedding.md) | 441 | `declaration-track:8f3ce45fa78907be5f0b6ef4f975759c2d656768886715135954a5803cb76f3e` |
| 43 | `structure` | [HeatCentroid](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/heatcentroid.md) | 446 | `declaration-track:b9c02715479a8cc777a266e5e7618a220dd8bb5e28acd7fd2894d12a1720fb70` |
| 44 | `structure` | [UpperHalfPlanePoint](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/upperhalfplanepoint.md) | 458 | `declaration-track:f5f286a50480482bc81b2f7d73983b84a6ef7c039e893db5201d45549fba29b8` |
| 45 | `structure` | [EvenWeight](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/evenweight.md) | 464 | `declaration-track:07e94ffd1372088932dd8285008a3c909942a7f8c80bcc28643b6eaa84bda19a` |
| 46 | `def` | [EvenWeight.value](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/evenweight-value.md) | 468 | `declaration-track:dff99e4e8fc848fe06afbdb1669442973cd260d7fe3861e194fe980f2e262892` |
| 47 | `theorem` | [EvenWeight.value_mod_two](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/evenweight-value-mod-two.md) | 471 | `result-track:920eb7c6858c6e214be6fdd90f4620299ee4673e31e1e640c072ff640edf1a75` |
| 48 | `structure` | [QExpansion](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/qexpansion.md) | 476 | `declaration-track:3829f9c4373e6244b420572f392310fdd099d357ad81e19e4d2884291a62401e` |
| 49 | `structure` | [SL2ZLabel](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/sl2zlabel.md) | 481 | `declaration-track:777d1e36d0e68488c33a6c43b42a3ef6a1ff1d43fecda499e137fdb95b2daef9` |
| 50 | `structure` | [GroupAction](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/groupaction.md) | 488 | `declaration-track:dec59fc26737cd0d9cf76938b649744ca3fd85f0982cc4425fa959c7bd965d2a` |
| 51 | `structure` | [ModularData](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/modulardata.md) | 498 | `declaration-track:586dd3e8b1911c1ebc4ed36b7f46b93ed0e6f97a03b076251dbbf8d84a4a6dfb` |
| 52 | `structure` | [ParentResidue](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/parentresidue.md) | 508 | `declaration-track:2e89610cd910361d0d44ac5e219481a2b10b3f42cc8d392735bc754049e5d0c4` |
| 53 | `structure` | [RadoWitnessRequest](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/radowitnessrequest.md) | 519 | `declaration-track:d3ac1cf0f73438511c6f065c95b1096e5ea7d7522e62219fb504c81d9ad5e000` |
| 54 | `structure` | [RadoWitness](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/radowitness.md) | 528 | `declaration-track:59f82e26945f2d1c6b7ad5653915dee045ac38bfb2852544507c1dee9f4fd683` |
| 55 | `structure` | [PairCorrelationRegularizer](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/paircorrelationregularizer.md) | 539 | `declaration-track:7e56dba455143ef32de8c453634689aaa33caf673506c9abd7c152a105dd5aec` |
| 56 | `structure` | [EllipticCurveShadow](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/ellipticcurveshadow.md) | 549 | `declaration-track:ff1c41fdd6d564fd674ca9945c288fb050e338ee93b04ecd5177be1ae5ac2973` |
| 57 | `structure` | [ObjectiveComponents](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/objectivecomponents.md) | 558 | `declaration-track:bad9da7941d050c55d3e64ad0ea486c1fc10506a4640a1adc6f768cb2597cb6b` |
| 58 | `structure` | [AlgorithmState](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/algorithmstate.md) | 571 | `declaration-track:76930d9c65c45ed1f666ee3913f51927bf06ba5236bb7ef2cd0401d99290ac40` |
| 59 | `inductive` | [TerminationCriterion](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/terminationcriterion.md) | 597 | `declaration-track:3c5911e5081cbcb18ebdc07ae6beb02764b8f523f4a2199b5156253a5e40cc77` |
| 60 | `structure` | [CountableExhaustionReceipt](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/countableexhaustionreceipt.md) | 604 | `declaration-track:ada289cccc7fb88d7b906512e887cb5b1f3a59ccd590d58c2f87ef2aef96f221` |
| 61 | `structure` | [AlgorithmOutput](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/algorithmoutput.md) | 613 | `declaration-track:f13cc2aa543a0f9459ad93867801e9f765d16ae888185872abdbcbd3fc43e051` |
| 62 | `inductive` | [Atom](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/atom.md) | 633 | `declaration-track:498342410b4950a86f1b0e49e449bafcf7b7e7bc2e9f9dc88eb73bc20a69e251` |
| 63 | `def` | [Atom.id](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/atom-id.md) | 657 | `declaration-track:0d1847b85b306732b77fce0e4125646b3a17d2e3ddbbc0ef752c5126635afe64` |
| 64 | `def` | [Atom.kind](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/atom-kind.md) | 680 | `declaration-track:431b3a9848491aca411bf92972f8b981063268c750f3f8a94a94df6641e04a46` |
| 65 | `def` | [Atom.blocks](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/atom-blocks.md) | 706 | `declaration-track:58823d27e44201111ba2dbba66b5af507718115128bd5b1ec2f8bc6399e87ec4` |
| 66 | `def` | [Atom.clearsBy](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/atom-clearsby.md) | 750 | `declaration-track:133e18fc44dc9c99edd852289fe07e28d69348cdef078036b95c7276830b8411` |
| 67 | `def` | [atomResidue](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/atomresidue.md) | 794 | `declaration-track:7dc1a944edc862ae01d095249dc0c2154db832dfedc523c7d6c4f48f43162622` |
| 68 | `def` | [allAtoms](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allatoms.md) | 801 | `declaration-track:4e0eb90a0ff89cedbf1cca902f5ac6774bb583cf520bbbb9bed6b9b22ccb88e3` |
| 69 | `structure` | [Context](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/context.md) | 825 | `declaration-track:5d72094ffe1cda97938a6f901777d7d8c81c6cc1d81127b7db68665db06f5fcd` |
| 70 | `def` | [finalClaim](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/finalclaim.md) | 848 | `declaration-track:5153d17485fba834d5118e5cccb4a1a09c52e5f7dfc252fad1eb93fde673b962` |
| 71 | `def` | [finalResidues](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/finalresidues.md) | 877 | `declaration-track:7ebee69280f21d03b0048c45510e57892440504ca62f2f10da4af01a18d74c22` |
| 72 | `def` | [finalWitness](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/finalwitness.md) | 880 | `declaration-track:790d187d597cae4d1f8415993500e6dcbd14a6ce6b2484d36611d2d9a0ddd7e3` |
| 73 | `theorem` | [finalWitness_hasResidue](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/finalwitness-hasresidue.md) | 883 | `result-track:34a4474a89559663f20f65c4461bd384a9c4b6c19eb8d43dce4553ba618e357f` |
| 74 | `theorem` | [finalResidue_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/finalresidue-count.md) | 887 | `result-track:be676c2397f35b61ffad3838bef2917d74410f3fb55ecf312e4006049a1fdf53` |
| 75 | `theorem` | [allAtoms_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allatoms-count.md) | 891 | `result-track:bcee5d663933d2edce41143d6f06d2fe7bdb4e7623e89fe0217ec8f34f2d1d79` |
| 76 | `theorem` | [allSubsetModes_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allsubsetmodes-count.md) | 895 | `result-track:8245d9f216b4ac2b73ef615640d6139e565938253c039da0701f312b1bbfe590` |
| 77 | `theorem` | [allProjectionOptions_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allprojectionoptions-count.md) | 899 | `result-track:e1f90cddecaa80e4b3c1bc3713109e3c91ca392f733d6cba8cdee9b205cd353e` |
| 78 | `theorem` | [allWitnessPolicies_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allwitnesspolicies-count.md) | 903 | `result-track:06f891c31d93fd0e31bb728a8a84fe1522d2dea3762b21e4f18476418c5adf0d` |
| 79 | `theorem` | [allHeatKernelOptions_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allheatkerneloptions-count.md) | 907 | `result-track:bd82756311b4ca55ac088f5a830699118458cf00794a4dd8378de26e68339868` |
| 80 | `theorem` | [allHeatGraphOptions_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allheatgraphoptions-count.md) | 911 | `result-track:bb957acc3d3cc3f57fcb94091edb4e623653db714e0727c80f7db9954b31c0dd` |
| 81 | `theorem` | [allGroupOptions_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allgroupoptions-count.md) | 915 | `result-track:0237a0d56219deb37f891e6f93fe3ee7627817c739fdf4b4dcacd6d04ecfc689` |
| 82 | `theorem` | [allModularRepresentationOptions_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allmodularrepresentationoptions-count.md) | 919 | `result-track:13e97acf7f8a21d11eecaef286270dc6f29fc77c0e61129bc2af7bf4af135858` |
| 83 | `theorem` | [allWeightRuleOptions_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allweightruleoptions-count.md) | 923 | `result-track:cc65590659c1e46e164a6c5624e3055c514510d1adaad32e245432084eb9738c` |
| 84 | `theorem` | [allQCoefficientOptions_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allqcoefficientoptions-count.md) | 927 | `result-track:593bc189b1fab09514903754bcbb2b9ece7f6aecfe71d3bc61e61bf187b475f0` |
| 85 | `theorem` | [allResidueModelOptions_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allresiduemodeloptions-count.md) | 931 | `result-track:de58d83d4bf96b3ee09f4e8826d02fd7fe149db85b92aa5ddc3131e13460ca4e` |
| 86 | `theorem` | [allPairCorrelationOptions_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allpaircorrelationoptions-count.md) | 935 | `result-track:50bd7266ce8cbb6dd0c2def42d8dbf9b29036bc622bafa4fb5e61e1c4678d909` |
| 87 | `theorem` | [allLayoutOptions_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/alllayoutoptions-count.md) | 939 | `result-track:dd1f021f6a74d4d8f698d0624355b3555724416622c79df7a29d71b4c66a8bab` |
| 88 | `theorem` | [allWitnessAttachmentOptions_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allwitnessattachmentoptions-count.md) | 943 | `result-track:c3fe0b0ffa95287c8a95666321737d2849f6a520095e0c093829b8e2a14aa59c` |
| 89 | `theorem` | [allCoordinateOptions_count](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/allcoordinateoptions-count.md) | 947 | `result-track:fb9ee749ae8694660f055270621352f0c487f46c452f69d372824165383b18f0` |
| 90 | `structure` | [JepaHeatflowSeed](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/jepaheatflowseed.md) | 951 | `declaration-track:c27f7ab57219fc6be079939c37b776d6f134676be1bf1ca2b8f2205b88a690f3` |
| 91 | `def` | [JepaHeatflowSeed.statusAllowed](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/jepaheatflowseed-statusallowed.md) | 961 | `declaration-track:3d4c5e67426ed0a3f8327fd85ba4d9581f95e30b407ceaddd8bf4d58664a32e2` |
| 92 | `def` | [JepaHeatflowSeed.nonclaimsPresent](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/jepaheatflowseed-nonclaimspresent.md) | 967 | `declaration-track:4abb76abe3b7bcac047b454cf516e75794cba7b5adab71ca3ed0a53b4cef32db` |
| 93 | `def` | [JepaHeatflowSeed.acceptedForJepa](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/jepaheatflowseed-acceptedforjepa.md) | 970 | `declaration-track:d056aaf1132f926fee92b06250b3bcbafcc0e382d2c1d77f9840744032bbe33b` |
| 94 | `def` | [JepaHeatflowSeed.toResidue](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/jepaheatflowseed-toresidue.md) | 975 | `declaration-track:0f887190879c5959c46fa4514f51a138c843dae32f9cc5a5f3027883622bbfcc` |
| 95 | `def` | [JepaHeatflowSeed.admissionResidue](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/jepaheatflowseed-admissionresidue.md) | 985 | `declaration-track:d5317e99283536bdc150b5d695b507f765da5abcd976399c7f3603b1855119cd` |
| 96 | `def` | [JepaHeatflowSeed.residues](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/jepaheatflowseed-residues.md) | 995 | `declaration-track:b65bdf7426014ad73fb6a38c05cd48efa231e437ebfe20a19c1832774122cf6b` |
| 97 | `def` | [jepaSeedClaim](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/jepaseedclaim.md) | 1002 | `declaration-track:94813ef5aeec92213eb4f9d4413dd7f15f87d7b10545e01cd1bec2683947e4e2` |
| 98 | `def` | [checkedJepaSeed](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/checkedjepaseed.md) | 1005 | `declaration-track:21ba7185ca6f3598850a6f0a437eb997acf3b768484e4334255f6b897f3c9c3e` |
| 99 | `theorem` | [checkedJepaSeed_hasResidue](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/checkedjepaseed-hasresidue.md) | 1009 | `result-track:07181ed8725caf013a1367a27c9fbbb3d575b928ec5b4206ecc417bb2b0cb357` |
| 100 | `def` | [sampleSeed](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/sampleseed.md) | 1018 | `declaration-track:c1135b653b297a1bb190644a0ee9cc5a3e246015994f1bb07289f985582c3aff` |
| 101 | `theorem` | [sampleSeed_acceptedForJepa](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/sampleseed-acceptedforjepa.md) | 1039 | `result-track:7149616629e320aae42a91ca4a7a52098bf2ccfd57b1c74dadac2fae32868dbf` |
| 102 | `theorem` | [sampleSeed_checked_hasResidue](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/sampleseed-checked-hasresidue.md) | 1043 | `result-track:ba02c7db5256e71d4c61511ef13439a8d48c08ef54f4aea2cc59a4a647e57c31` |
| 103 | `theorem` | [sampleSeed_residue_target](../../../../GroupTheoryAndGeneralizations/RadoModularHeatflowNamespaced.lean/declarations/sampleseed-residue-target.md) | 1047 | `result-track:1d5331afe6b12f0b67690ed8c27ef3db484f27a711b8d0a5d109a11528ab4add` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f1981a13662a51088acc82c713e5789e876973245f41295f47723e219b6e255 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616/Variant821e3f12acc5d047df2fb512c5c5d0400f8a90bcb4b8988078cc15c96ec73fe1.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616/Variant821e3f12acc5d047df2fb512c5c5d0400f8a90bcb4b8988078cc15c96ec73fe1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
