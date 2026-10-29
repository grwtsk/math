# Verification target: EMLCompression

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38430e2eabf6df2f3602cf73f627a45f71bb9731",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e/Variantf701f06d40802b1c280f692f99f97c1eaeb4b005465f05e23b8cab55f84c7dcc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38430e2eabf6df2f3602cf73f627a45f71bb9731`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e/Variantf701f06d40802b1c280f692f99f97c1eaeb4b005465f05e23b8cab55f84c7dcc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e/Variantf701f06d40802b1c280f692f99f97c1eaeb4b005465f05e23b8cab55f84c7dcc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit1.Bit1.Bit1.Bit0.Bit0.Bit1.Bit0.Bit1.M506970656c696e652f43656e7465722f526f756e647472697053746162696c697a65722e6c65616e` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ResidueAtomClass](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/residueatomclass.md) | 27 | `declaration-track:b31caa657401f72d858e72dd46a0a036776614738083c174b00500d88c95c02e` |
| 2 | `inductive` | [ResidueAlgebraMode](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/residuealgebramode.md) | 33 | `declaration-track:c45c0a97bc8b910c3ecfcce25ec965b7c6d661dedb909ac3b4d51b171a9762fc` |
| 3 | `def` | [ResidueAlgebraMode.semantic](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/residuealgebramode-semantic.md) | 39 | `declaration-track:453de4258062473b192bec0423ffc42404e7fe2ddeac20f2413eb08cef175589` |
| 4 | `structure` | [ResidueAtom](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/residueatom.md) | 44 | `declaration-track:92030d2035ab770ef97361ca0e66c321f92f6793e2663ca2a7c7c9ce8b2ae7cc` |
| 5 | `abbrev` | [ResidueMonomial](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/residuemonomial.md) | 51 | `declaration-track:913a78352e27d94d047d8244fc3ac08a5ffa77e8210cdd6f8f665bfec958ebc6` |
| 6 | `structure` | [ResidueExpr](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/residueexpr.md) | 53 | `declaration-track:085138cf090860c3d55d51d60f5e248899e9e8f20d138af818bbb3cdd2287844` |
| 7 | `def` | [flattenAtoms](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/flattenatoms.md) | 59 | `declaration-track:f30fc5ea4a92c1dc1c2162e9c816d52f2acec791fcc5b77239e8ddeff3a0b693` |
| 8 | `def` | [appendRight](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/appendright.md) | 63 | `declaration-track:169b550098f961fe0659778b848e9082ec57311dfc85b149ea83a04ca46a34cb` |
| 9 | `def` | [multiplyAlternatives](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/multiplyalternatives.md) | 69 | `declaration-track:7355c81f07a782ced6bd46e99fbca5daa0ff231f09aaaaac4688239078098b87` |
| 10 | `def` | [zero](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/zero.md) | 75 | `declaration-track:992d46c6ec0605a245651e398f244dca92f65fd05f39439b5ba5e8cf9281bbc0` |
| 11 | `def` | [one](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/one.md) | 78 | `declaration-track:c6dcade372c8960f5bc4993abe79e81e16647882e66d212d06484eb753e9bd57` |
| 12 | `def` | [add](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/add.md) | 81 | `declaration-track:2aee6366fda059b55b7e3844e78f4fa982ae754426bfcdc70ec0aa469d68bdce` |
| 13 | `def` | [mul](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/mul.md) | 84 | `declaration-track:bfcd472e11d21172de1b7ac7ce29fbf3012070eec432c44cb9ae2ab9bc1c475e` |
| 14 | `def` | [support](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/support.md) | 87 | `declaration-track:8d816728271d99396570d010f6c9962b1664afa9a9e57c5233b30bf7a0f8992f` |
| 15 | `theorem` | [zero_support](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/zero-support.md) | 90 | `result-track:a14dcea76164948dbab74a744f1abb77e475991e20ab0601074975599504c571` |
| 16 | `theorem` | [one_support](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/one-support.md) | 94 | `result-track:20db6a98b92c2b8404fa8c4d3eb7623e53e0de9415446bca3341ce474ae32fc7` |
| 17 | `structure` | [ProofArtifact](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/proofartifact.md) | 100 | `declaration-track:f20b24a6559d0176a2f0d22b0fa542f79d09674b7aef9e20777476ada2850941` |
| 18 | `structure` | [EMLInterface](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/emlinterface.md) | 108 | `declaration-track:af90d260252d4f82e55958d42d851ffd386c064ec4913d5e0dd9336880529e28` |
| 19 | `def` | [encodingAllowed](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/encodingallowed.md) | 117 | `declaration-track:4835ca74cedf1d8fa58f0a85501469dd3292a74dabf83b6c3a9214f9e5679eac` |
| 20 | `def` | [maximallyCompressed](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/maximallycompressed.md) | 123 | `declaration-track:fc7e630d52cef16cc0f6b9eeb06c5455353dbdd14c1e486c34d09118fa7e04e2` |
| 21 | `def` | [compressesNoWorse](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/compressesnoworse.md) | 128 | `declaration-track:6414e529d04579422d4a05dbb2db78f7c2078ea7c6b505f9fc55c2c5eeb72f1b` |
| 22 | `theorem` | [lower_encoding_allowed](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/lower-encoding-allowed.md) | 132 | `result-track:4f55b15eba0c864e13464366428cf3d6045b4b0cede3c9764efe0633ae187e11` |
| 23 | `inductive` | [MoveKind](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/movekind.md) | 141 | `declaration-track:9decc67d2c04e9dab016bd532c90557073c916596281f42366eefd3b9fde62bc` |
| 24 | `inductive` | [ProofFlowPole](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/proofflowpole.md) | 154 | `declaration-track:c81ef648beef3670c4e50e1db83041d99753da7e802a732ee7316d2c69aea690` |
| 25 | `def` | [MoveKind.invertible](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/movekind-invertible.md) | 166 | `declaration-track:6739e6faec19992d6952cbaef84003426f0324c4467dfb8f8687255fad02fe82` |
| 26 | `def` | [MoveKind.reducing](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/movekind-reducing.md) | 178 | `declaration-track:bf6c8567cfcad295beb9aff83f83c49d164522790ecabedcbad292b8ba189519` |
| 27 | `theorem` | [quotientMove_not_invertible](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/quotientmove-not-invertible.md) | 181 | `result-track:239b57bdfb7840b65ce67eb157e845b9777ddd379873c8894a4557b535703c9b` |
| 28 | `theorem` | [canonicalizeMove_reducing](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/canonicalizemove-reducing.md) | 185 | `result-track:771da389ebfa70aab0a4f1adf71f5f9cef171c298f5b97aa9d57c507999c2917` |
| 29 | `def` | [allInvertibleMoves](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/allinvertiblemoves.md) | 189 | `declaration-track:ce8459f0d4e3deb693efc5f7dcd2599b281b6fae8d32b92980109ccea31ed0a2` |
| 30 | `def` | [allReducingMoves](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/allreducingmoves.md) | 192 | `declaration-track:d677f66716d8e1db8e3c7f1e02ae7d6e20b289b57b724fa72f1ac63617a0ac5e` |
| 31 | `structure` | [TransportMove](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/transportmove.md) | 195 | `declaration-track:cf31415ac3338d5a5685d303a36c0b76e7c6c02785484028f866e1b3bdfd9a77` |
| 32 | `structure` | [WeightedMove](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/weightedmove.md) | 200 | `declaration-track:3a4a5e87e3709916b1237a9173d32eb433102ecbf941fb73f5f4967e23f0fa3a` |
| 33 | `structure` | [MultinomialSourceNode](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/multinomialsourcenode.md) | 204 | `declaration-track:a097b37b32ec2cf9f11598351a1514592ceb68af5988e42b7a8c1e0b72dc28fb` |
| 34 | `def` | [branchWeightTotal](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/branchweighttotal.md) | 210 | `declaration-track:9aaca38a2d9e562eec1ed0392ddf9d1979021e7e1c3991b65351ff13632a1481` |
| 35 | `structure` | [CanonicalizationPolicy](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/canonicalizationpolicy.md) | 214 | `declaration-track:8cf53a43fc95a085716c795e18409617aa836a58584832071a944cfba5afff71` |
| 36 | `structure` | [ResidueExtractor](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/residueextractor.md) | 221 | `declaration-track:d2407f5cd91d47be3b874247a3c4c17ee4acafec73fda6230eac085c38d5e9e0` |
| 37 | `def` | [atomSurvivesEvery](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/atomsurvivesevery.md) | 226 | `declaration-track:30877cb9ba7296d8cf4feb420deedc1f407149efe524f38de80c1cabac3e8243` |
| 38 | `structure` | [ResidueInvariantTrace](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/residueinvarianttrace.md) | 236 | `declaration-track:6ef0d7b68f850eb62932b01b4cf122664d276a140247cd5c6c44e8ddb6cc81dc` |
| 39 | `structure` | [StableCompressionState](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/stablecompressionstate.md) | 246 | `declaration-track:cca37123961155a27e4834350867d15844a246562c2922b99a4f3481db4c3e1e` |
| 40 | `def` | [StableCompressionState.isStable](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/stablecompressionstate-isstable.md) | 258 | `declaration-track:d845f7d61f512a5dea9460eb0997f1e094016515025b50b4dc08707910323989` |
| 41 | `def` | [StableCompressionState.usesPositiveResidueSemantics](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/stablecompressionstate-usespositiveresiduesemantics.md) | 262 | `declaration-track:139297edf1e3e7b828ba9ff25e8737d2b3e9803a6f7fcceec15965d9e5781928` |
| 42 | `def` | [stableStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/stablestatus.md) | 267 | `declaration-track:3f683bc6c883187ae1799d3ae777e3d0f92e5e08c28cd89459c3de596d97ef6b` |
| 43 | `structure` | [JepaConjectureSeed](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/jepaconjectureseed.md) | 273 | `declaration-track:e895bd83df8b6cc172cd3335f68de1ef964da3ec1c5bb9bbf732c139330e4e5b` |
| 44 | `def` | [JepaConjectureSeed.moveLanesWellFormed](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/jepaconjectureseed-movelaneswellformed.md) | 292 | `declaration-track:e591e6096ffc9dd03932ee11e2b4145040303e65a0b5b01db47730c7b5fe26fe` |
| 45 | `def` | [JepaConjectureSeed.statusResidueConsistent](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/jepaconjectureseed-statusresidueconsistent.md) | 297 | `declaration-track:da6d6c9614a32d5f5f1d523dfb2fd59d206a18a470ed1ce68d1bceb4aef2f935` |
| 46 | `def` | [JepaConjectureSeed.statusResidueConsistentBool](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/jepaconjectureseed-statusresidueconsistentbool.md) | 306 | `declaration-track:2c6fec50a9950369a27b0fecd51e7945c8a09588e0adcf27dbca8b6672044f3b` |
| 47 | `def` | [JepaConjectureSeed.acceptedForJepa](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/jepaconjectureseed-acceptedforjepa.md) | 313 | `declaration-track:9770a1e26f90def38451b051c0679ba8375d1d230bf1d59769fbcbd9c3803ecf` |
| 48 | `def` | [JepaConjectureSeed.toResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/jepaconjectureseed-toresidue.md) | 320 | `declaration-track:552d215f7819accc7376da6f111a77f44294e63e235c63510a8aff89f64254ba` |
| 49 | `def` | [JepaConjectureSeed.admissionResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/jepaconjectureseed-admissionresidue.md) | 330 | `declaration-track:9e800133c9e0e7a96e6e00eeb8f05c805ceb734bcf27ccee196f9143d93a803c` |
| 50 | `def` | [JepaConjectureSeed.residues](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/jepaconjectureseed-residues.md) | 340 | `declaration-track:b3055f93c7427440f88c8bcca97d5c10d4e149eea0ce9230445b08641c6225fa` |
| 51 | `def` | [seedFromStableState](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/seedfromstablestate.md) | 347 | `declaration-track:0bfab825a59194d0eb7961bf4558ef16428524ea89b028fab336f58ce2aa07ee` |
| 52 | `def` | [conjectureSeedBoundaryClaim](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/conjectureseedboundaryclaim.md) | 374 | `declaration-track:c6e7c367801dce5a1f91b794c55bd3b5d6a4c29da59d7b33220ab6903708e80b` |
| 53 | `def` | [checkedConjectureSeed](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/checkedconjectureseed.md) | 384 | `declaration-track:1c0dab1f7082b4a225514eb722713c06909547725e168d2b4223d73446bfbaa3` |
| 54 | `theorem` | [checkedConjectureSeed_hasResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/checkedconjectureseed-hasresidue.md) | 388 | `result-track:08bd5ce5e742f77c2b52cf6a8f2a113d897b1509063828f740c8542dce81f7f4` |
| 55 | `def` | [sampleResidueAtom](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/sampleresidueatom.md) | 398 | `declaration-track:02cee674d8b35c80d94b4af649dc895669149aec4e72e601b6a3cb24ffb84540` |
| 56 | `def` | [sampleStableState](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/samplestablestate.md) | 404 | `declaration-track:f8761b442a39bdc8ca9cba290313b40e8fcc8106de32ff9f286051465e1a5297` |
| 57 | `def` | [sampleSeed](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/sampleseed.md) | 418 | `declaration-track:d0cdb231292c7d8ccd66d1fa00ed72a987a228659f2b0ad47faaca2eef999945` |
| 58 | `theorem` | [sampleSeed_hasResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/sampleseed-hasresidue.md) | 428 | `result-track:ed421a54e61e5515fb2e7133fa505397a7488c39408b20fc3c4adda81698c85d` |
| 59 | `theorem` | [sampleStableState_usesPositiveResidueSemantics](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/samplestablestate-usespositiveresiduesemantics.md) | 432 | `result-track:dd0f237d41e4d19bcc1deae22239671f9d3fcb3c1b4346a90da2db3789c16d34` |
| 60 | `theorem` | [sampleSeed_moveLanesWellFormed](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/sampleseed-movelaneswellformed.md) | 436 | `result-track:44471dd92e633c13f81e86f2b0d2f4fc6ead0199081fe72ab1895378b079ebc8` |
| 61 | `theorem` | [sampleSeed_acceptedForJepa](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/sampleseed-acceptedforjepa.md) | 440 | `result-track:e8963cad544f5707d0c23d31aa44f6b7adab9279d367fff330fb5c4cc7cd02ac` |
| 62 | `theorem` | [sampleSeed_statusResidueConsistent](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/sampleseed-statusresidueconsistent.md) | 444 | `result-track:f116d3c8f85cff2b4f06f429faf1d7f8a1e0ae94a9cd66ac5481bb4ca0f7393b` |
| 63 | `def` | [malformedMoveLaneSeed](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/malformedmovelaneseed.md) | 452 | `declaration-track:a6f11e38a477cbc9ee0fa3fae1c75045be57102f900b7b3946c486d35a648916` |
| 64 | `theorem` | [malformedMoveLaneSeed_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/malformedmovelaneseed-rejected.md) | 460 | `result-track:3758a4aa0f9e610226033d4983d6d93d879cc56b076d08e8e488597d3be726af` |
| 65 | `theorem` | [malformedMoveLaneSeed_residueCount](../../../../../ComputerScience/AlgorithmsInComputerScience/EMLCompression.lean/declarations/malformedmovelaneseed-residuecount.md) | 464 | `result-track:ad00b4b2c51a845b95b5e1b909ca340a26edfd950fb3e55128aaa1fb183a5a1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8a950031802b61d535d3ac76b6c3cc8a0c645b7580c7959cc57ce941857de7cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e/Variantf701f06d40802b1c280f692f99f97c1eaeb4b005465f05e23b8cab55f84c7dcc.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e/Variantf701f06d40802b1c280f692f99f97c1eaeb4b005465f05e23b8cab55f84c7dcc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
