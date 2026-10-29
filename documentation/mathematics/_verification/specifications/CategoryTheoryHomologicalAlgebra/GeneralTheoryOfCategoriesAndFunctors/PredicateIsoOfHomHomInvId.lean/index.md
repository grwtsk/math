# Verification target: Predicate Iso Of Hom Hom Inv Id

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "acf2bade256672a3aea8912bfb9343557234ad43",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variantb66438632ed3399a8eace0f69537e6cfce78550fdcbc946a092019e95af21c03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `acf2bade256672a3aea8912bfb9343557234ad43`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variantb66438632ed3399a8eace0f69537e6cfce78550fdcbc946a092019e95af21c03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variantb66438632ed3399a8eace0f69537e6cfce78550fdcbc946a092019e95af21c03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.Construction` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsLocalization](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/islocalization.md) | 48 | `declaration-track:f204a433d03f41d71498b7e26fef3fec41088feb8ed7e988b3fdce15bfff9fa7` |
| 2 | `instance` | [q_isLocalization](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/q-islocalization.md) | 54 | `declaration-track:f5396a5de8270946cc524abcbd5f9e8cd33aaf867c108b9b2abb6b69a54d4b38` |
| 3 | `structure` | [StrictUniversalPropertyFixedTarget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/strictuniversalpropertyfixedtarget.md) | 71 | `declaration-track:5a890e0da4e457eb84f98bf95a69155c0f74091cf022f7aa4ba3a787a5b8a2a9` |
| 4 | `def` | [strictUniversalPropertyFixedTargetQ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/strictuniversalpropertyfixedtargetq.md) | 84 | `declaration-track:f170f4bd6b321c04da280e8b517abcf210ff2edb9316b9be1141c375a9dd1a13` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/instance-source-edition-8.md) | 90 | `declaration-track:deff7909134744dd3d4e91c7afd1ef5e6d4cde57d23637dd969d3817d864cf4a` |
| 6 | `def` | [strictUniversalPropertyFixedTargetId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/strictuniversalpropertyfixedtargetid.md) | 96 | `declaration-track:359084401723544183c5516d489df71d52148bd0604622bed1e49f08c5af0d1d` |
| 7 | `theorem` | [IsLocalization.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/islocalization-mk.md) | 112 | `result-track:5205c4927c25cc42bf6b719eb30bbb662829d72a53effd1be6db145c32e89069` |
| 8 | `theorem` | [IsLocalization.for_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/islocalization-for-id.md) | 122 | `result-track:a7a9f32ea6045629d428aaddb0f955bffa7fb8a8fe1a98a0a795aaed30b0b79c` |
| 9 | `theorem` | [inverts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/inverts.md) | 132 | `result-track:24be3c94d953a2446fde4f7214d0f69bd06a4a57749696a767fc9897166f0ae1` |
| 10 | `def` | [isoOfHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/isoofhom.md) | 138 | `declaration-track:c4e68f84e409d1ee5d42403ef0a2fee4bdeb49b2e12d928fce14ce485dd77835` |
| 11 | `lemma` | [isoOfHom_hom_inv_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/isoofhom-hom-inv-id.md) | 143 | `result-track:5824e5cfe028b7eb1b52b7b1d88684db5f541c8312e7afb923465b3affdad2c1` |
| 12 | `lemma` | [isoOfHom_inv_hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/isoofhom-inv-hom-id.md) | 148 | `result-track:761a55043bcfe4da644ca63df56950e7af7ab38384e919a9f277ebef78e822f0` |
| 13 | `lemma` | [isoOfHom_id_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/isoofhom-id-inv.md) | 153 | `result-track:63874e1a814b809eb7e8d297bbbc78c6d89239b1cc9d12e46f6bbc5af0256d8f` |
| 14 | `lemma` | [Construction.wIso_eq_isoOfHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/construction-wiso-eq-isoofhom.md) | 160 | `result-track:fb27a7a6dbd5e7024c8273c3b113915c110ffc6b331c5c60f104a7c9881d4cc7` |
| 15 | `lemma` | [Construction.wInv_eq_isoOfHom_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/construction-winv-eq-isoofhom-inv.md) | 163 | `result-track:089558ae62a13954827c0e508ba4de7115c08b40f6e57a5f8fba5f0d3dbffb41` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/instance-source-edition-2.md) | 167 | `declaration-track:2fd4580d0aad44735cb2e6ac08f0c79ea49cfd1d923bcc5e8bc154c086de1ffa` |
| 17 | `def` | [equivalenceFromModel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/equivalencefrommodel.md) | 175 | `declaration-track:0cdf6a98d7dca768d7986c34bdd822d5873807aff24e0aca564021d82602f742` |
| 18 | `def` | [qCompEquivalenceFromModelFunctorIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/qcompequivalencefrommodelfunctoriso.md) | 180 | `declaration-track:453f957b55062c43e1ef5d5ba9e466e27a65c53ecd0ae74b7e80241441062350` |
| 19 | `def` | [compEquivalenceFromModelInverseIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/compequivalencefrommodelinverseiso.md) | 185 | `declaration-track:7ed1991fb380f7ac9c454c910e0f4b16fa5c9ed74e484d68772ee5789878236d` |
| 20 | `theorem` | [essSurj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/esssurj.md) | 194 | `result-track:d1ad14240a47e7f9bc176948c728ee61734b38d2e66bc3ad138b1222d91caebc` |
| 21 | `def` | [whiskeringLeftFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/whiskeringleftfunctor.md) | 203 | `declaration-track:2db22500977b5bb0f4dc17440ece2babeb3244fd7fc205e55eccda33c4d66382` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/instance-source-edition-5.md) | 207 | `declaration-track:a556c3084cd37f33f30d50a8b1720af9e78fbb3a9a50f4f00a744ba8af6c6055` |
| 23 | `def` | [functorEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/functorequivalence.md) | 228 | `declaration-track:0325adc0232681dcf1d5a7f7bea239018f713eec464f86dd479aad9af25161ca` |
| 24 | `def` | [whiskeringLeftFunctor'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/whiskeringleftfunctor-source-edition-2.md) | 234 | `declaration-track:abd1a21b25930b2b6f4b9580bf69c54bffc4417404813b253105656f1233217e` |
| 25 | `theorem` | [whiskeringLeftFunctor'_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/whiskeringleftfunctor-eq.md) | 238 | `result-track:ab1f472811306a7784ffe3d6d0169f326ab91e2a71cc531bc9ffb3a847138ae0` |
| 26 | `theorem` | [whiskeringLeftFunctor'_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/whiskeringleftfunctor-obj.md) | 244 | `result-track:609efd50d1ec1d58eada4f9e08ecba8e80d2d004d1532fac2d7892d72a826ac7` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/instance-source-edition-6.md) | 247 | `declaration-track:de019194de516c92edfcf2185cdbafedb4218bcada0f5d96b6791bc10f7be593` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/instance.md) | 253 | `declaration-track:2e366952b37ee34c89a9a6243b778308b6bf1e619d87966d9b347990481668c7` |
| 29 | `lemma` | [full_whiskeringLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/full-whiskeringleft.md) | 259 | `result-track:6dcd5325480901ea04b52b34688047cee0e091b17870b4f158ea10ca4f055875` |
| 30 | `lemma` | [faithful_whiskeringLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/faithful-whiskeringleft.md) | 263 | `result-track:55954f83618b700b3c44870b77df753840242e4b509c6399857ade9bfd63b89b` |
| 31 | `theorem` | [natTrans_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/nattrans-ext.md) | 269 | `result-track:c40c1e036c098820172359e673841a8980529facf3dd3317353eca2f9bdc17f0` |
| 32 | `class` | [Lifting](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/lifting.md) | 280 | `declaration-track:1f5309cb28514d626c4720950d5d1ba4a2b994487d18dbd208f7c33b2bea3a99` |
| 33 | `def` | [Lifting.iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/lifting-iso.md) | 285 | `declaration-track:c84b5b95a383f667dca42d1466c29044e5a6bdce35f739c8be400b8ddecd5bab` |
| 34 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/lift.md) | 294 | `declaration-track:b506931c27aa19293ae685cccf49e7705970def1f4815f7afb34fb636e30baf1` |
| 35 | `instance` | [liftingLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/liftinglift.md) | 297 | `declaration-track:1ed5391ca433a8583ac376f96a4d482eb75e9cafc144b844811575ad08aa8e9a` |
| 36 | `def` | [fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/fac.md) | 304 | `declaration-track:d65725a78062dd758e4cc05c59c1ade8f7307d22df4801d7c19e83716e722f0e` |
| 37 | `instance` | [liftingConstructionLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/liftingconstructionlift.md) | 308 | `declaration-track:2fe58cfe83856b8f93b06bde9ac591eb2186830840247cda61a66da36ea5b27b` |
| 38 | `def` | [liftNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/liftnattrans.md) | 317 | `declaration-track:c1c28058ff22ad6c4731f92470aa3c6de8241fb2324c0a382d50cade8b98dd18` |
| 39 | `theorem` | [liftNatTrans_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/liftnattrans-app.md) | 323 | `result-track:d991b26720409c8b21233f02aa346644edd0baea41e1f6bfc34cd8e6d8ebc5e6` |
| 40 | `theorem` | [comp_liftNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/comp-liftnattrans.md) | 330 | `result-track:5789df4de1d3727059433a9c9bd268e1a88bd09a4e9007132e796c51a04d7bef` |
| 41 | `theorem` | [liftNatTrans_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/liftnattrans-id.md) | 338 | `result-track:cf6f9af1002a16e7bf9457674497ebe4d932a6c08a0a2dd64c764234c5c32035` |
| 42 | `def` | [liftNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/liftnatiso.md) | 348 | `declaration-track:d868c279047d62861f149b1da76420d19d55cdf49a3dc0416c97e420454937b5` |
| 43 | `instance` | [compRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/compright.md) | 356 | `declaration-track:70b4901545d86269dc066e512a59cc6557d700f8f15ba0bece075cb357020042` |
| 44 | `instance` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/id.md) | 361 | `declaration-track:8ac6fa48560e6c45f4dfe11dd05aff714d0d816e790b1c4defe5001d92510cee` |
| 45 | `instance` | [compLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/compleft.md) | 365 | `declaration-track:1770937421aec8c18534d4739ab41de0051c1d9ea02fd54e76199e9dc963f1c5` |
| 46 | `lemma` | [compLeft_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/compleft-iso.md) | 368 | `result-track:6bc6e08f4b042fa236a0a0c93cde8898b0b1cdca62e536b16cec783b8aa288f6` |
| 47 | `def` | [ofIsos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/ofisos.md) | 374 | `declaration-track:679078307fa59fb0ca61e9669e120df4d96f8c49a616c20f5b5db8bc81aea1fa` |
| 48 | `theorem` | [of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/of-iso.md) | 388 | `result-track:e8fde5baf1314b26902cade4b4ee822c96ba1b8715e0e5c8aa60dc9ede21ab81` |
| 49 | `theorem` | [of_equivalence_target](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/of-equivalence-target.md) | 399 | `result-track:c4fcbbb41f13c47b4bd54750802798b5d66b9c0e5140d8af1006bc940d6e76ad` |
| 50 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/instance-source-edition-7.md) | 411 | `declaration-track:de9e687cb8e9ec3f9812efce69b844c37a2af92f5f05cf3d6c6c39488f13fb12` |
| 51 | `lemma` | [of_isEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/of-isequivalence.md) | 415 | `result-track:2acba09580a5247e6e2e6a6f41e61b9f19c239042a90653b33e1307a19fa3690` |
| 52 | `def` | [uniq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/uniq.md) | 432 | `declaration-track:26f556c89a6916286b9cd86bbc67e0aa8b83f748d1d8c14e0bd24eaee52f642e` |
| 53 | `lemma` | [uniq_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/uniq-symm.md) | 435 | `result-track:e5d1a30ed2c943faa891981f907bc0f82453a06b3fe9e9b0a6891cb684dc9a64` |
| 54 | `def` | [compUniqFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/compuniqfunctor.md) | 441 | `declaration-track:8a17a468ba12a90e41e18f1c4bee44fd8f134b682c6508b627677632ef692997` |
| 55 | `def` | [compUniqInverse](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/compuniqinverse.md) | 451 | `declaration-track:b0c2de1818f776c383d370b6b872095848d13c80f6b2ac92ece0f40bb5c0002e` |
| 56 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/instance-source-edition-4.md) | 453 | `declaration-track:43ac0d0050c482eb453ee46b7e573f238f6a508fa4013b50c37e028248b3e684` |
| 57 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/instance-source-edition-3.md) | 454 | `declaration-track:30eda5b6dc85f72b2c0f67d651dff52ea9c9eb7c9482178981be558921bcf899` |
| 58 | `def` | [isoUniqFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/isouniqfunctor.md) | 459 | `declaration-track:ce5192f27161a3fbc2d36a2b1dc1af021bcbb6f86f5454c8ad3999cf344ac276` |
| 59 | `def` | [AreEqualizedByLocalization](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/areequalizedbylocalization.md) | 471 | `declaration-track:130c1984a484934b5ce8ecdd9bf8de6a6b91045eea3a5a23b9445cb99e04ca09` |
| 60 | `lemma` | [areEqualizedByLocalization_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/areequalizedbylocalization-iff.md) | 473 | `result-track:7a612913523901d9b5589cf942522eace987d69b6ab3be82fb637048146bc762` |
| 61 | `lemma` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/mk.md) | 490 | `result-track:37837fc5c15aa88a60b1e2f9fc4df51442d147e188befc38cd99a4c84700d660` |
| 62 | `lemma` | [map_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PredicateIsoOfHomHomInvId.lean/declarations/map-eq.md) | 496 | `result-track:be67151f3f88db95138619248589634165063729bf252a6b5703a73cd22d5cf1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6639ea1702f7f34d25ef639477543638df2829283e625210f2c58d17252880b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variantb66438632ed3399a8eace0f69537e6cfce78550fdcbc946a092019e95af21c03.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variantb66438632ed3399a8eace0f69537e6cfce78550fdcbc946a092019e95af21c03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
