# Verification target: Prismatic Shape Update ZKPNamespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6396686b643722db1295f2e7b251fdd0e0016d1b",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PrismaticShapeUpdateZKP/Variant0acba3169d094e660cebfec641862e2c3c79add11cc77318d0c1845aaab2edca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6396686b643722db1295f2e7b251fdd0e0016d1b`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PrismaticShapeUpdateZKP/Variant0acba3169d094e660cebfec641862e2c3c79add11cc77318d0c1845aaab2edca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PrismaticShapeUpdateZKP/Variant0acba3169d094e660cebfec641862e2c3c79add11cc77318d0c1845aaab2edca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.SpectralDeterminantBoundary` — import line 6; external provider; requires a separately pinned dependency.
- `Boolean.Cube.ProjectionDepth` — import line 7; external provider; requires a separately pinned dependency.
- `Boolean.Cube.TDARecoverabilityZKP` — import line 8; external provider; requires a separately pinned dependency.
- `Boolean.Cube.TorsionBlindDataHomology` — import line 9; external provider; requires a separately pinned dependency.
- `Boolean.Cube.FredholmDeterminantAuthority` — import line 10; external provider; requires a separately pinned dependency.
- `Boolean.Cube.ArithmeticAuthorities` — import line 11; external provider; requires a separately pinned dependency.
- `Boolean.Tree.Compile` — import line 12; external provider; requires a separately pinned dependency.
- `Boolean.Tree.CNF` — import line 13; external provider; requires a separately pinned dependency.
- `Boolean.Tree.ANF` — import line 14; external provider; requires a separately pinned dependency.
- `Boolean.Tree.MatrixEncoding` — import line 15; external provider; requires a separately pinned dependency.
- `Boolean.Matrix.Warshall` — import line 16; external provider; requires a separately pinned dependency.
- `Boolean.Matrix.Cycle` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ValuationBox](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/valuationbox.md) | 46 | `declaration-track:fac74feb3afdfe263292e2fe240e1262489fdee3d95c8e20050cd66c7dd7eb8e` |
| 2 | `abbrev` | [valuationMobius](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/valuationmobius.md) | 49 | `declaration-track:9debb2fbdf73492385e53cfe23473ba3fa56896f11497533a8781989bfc3053a` |
| 3 | `abbrev` | [PrismaticBoundaryData](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/prismaticboundarydata.md) | 52 | `declaration-track:bc9414e218f2c50b74ef4372b47488eb5d0c949799ccead791206a3f4465acfb` |
| 4 | `structure` | [BoundedValuationBox](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/boundedvaluationbox.md) | 58 | `declaration-track:a4b74fc3e76a67dc1576dd589b4581e99a4eedd9cee2f0618bf8067cbe785626` |
| 5 | `structure` | [BoundedMobiusReduction](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/boundedmobiusreduction.md) | 64 | `declaration-track:32884e27439caea74a11122292edc485693c47fce2f124635ea9217815fefee2` |
| 6 | `theorem` | [bounded_mobius_reduction_weight_sound](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/bounded-mobius-reduction-weight-sound.md) | 80 | `result-track:6d74b8c901cca8cb35d53e4949da4ecef6e5f99c072d6f8dcabe13cf7d8225df` |
| 7 | `theorem` | [bounded_mobius_reduction_support_sound](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/bounded-mobius-reduction-support-sound.md) | 86 | `result-track:cf70069874a33900b65cbdcaab8276eea305498a706802a226070e620c8a024e` |
| 8 | `theorem` | [bounded_mobius_reduction_primePowerFlag_sound](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/bounded-mobius-reduction-primepowerflag-sound.md) | 92 | `result-track:25abbe85ba25468b4476b18a5594c335073ae4d724b472c8423bd653e3d2d3c8` |
| 9 | `structure` | [BooleanTreeMatrixProjection](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/booleantreematrixprojection.md) | 106 | `declaration-track:013de69f9cea44764e601b7cd6e6fcaca7f271966e7fb832565cd30d8672aa62` |
| 10 | `def` | [TreeMatrixLoweringIsExternalAuthority](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/treematrixloweringisexternalauthority.md) | 119 | `declaration-track:36f6c6635b55b97f6ed180e69c91e2107e0badf6e92f4778d76b83c05bfddbae` |
| 11 | `def` | [ProjectionShadowIsHilbertSpace](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/projectionshadowishilbertspace.md) | 123 | `declaration-track:c657c24dc31f324531a318ef4b35ba34060f43f1500797ba93087a21ae6f1815` |
| 12 | `def` | [ProjectionShadowIsPrismaticGeometry](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/projectionshadowisprismaticgeometry.md) | 127 | `declaration-track:a089304a7746eceab9b5859cb719418a83e1c84ee77dd59ab1388f4f68a7a457` |
| 13 | `theorem` | [projection_shadow_not_hilbert_space](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/projection-shadow-not-hilbert-space.md) | 131 | `result-track:bf212da02a5a3b106da5f225362aee097165f75ae3eb80c031b72562deb391a2` |
| 14 | `theorem` | [projection_shadow_not_prismatic_geometry](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/projection-shadow-not-prismatic-geometry.md) | 137 | `result-track:f4e71f918cff45b10e33eadb1fa699b834f58dbe2e888d50d2e6e08e1a4031e5` |
| 15 | `theorem` | [tree_matrix_lowering_is_finite_execution_kernel](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/tree-matrix-lowering-is-finite-execution-kernel.md) | 143 | `result-track:8920a602e88c73639ad049ebf4f1c841641a188ac7c7270127e5177008d1eb20` |
| 16 | `structure` | [DyadicScale](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/dyadicscale.md) | 155 | `declaration-track:13656f45ba574c35e9605ce594c63970339cc1ca1e21c92e543d4edfc085e239` |
| 17 | `structure` | [DyadicProjectionStability](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/dyadicprojectionstability.md) | 159 | `declaration-track:529159fc69a0fcfff23adc310ed0560b92f719b3621512707ffde54ab3693e8c` |
| 18 | `def` | [AssumesExactRawForwardCycleFlatness](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/assumesexactrawforwardcycleflatness.md) | 166 | `declaration-track:91e5c8c8854e6e733b37952ef842506db793d02120a834a6965cda2a391fd844` |
| 19 | `theorem` | [dyadic_stability_does_not_assume_exact_raw_flatness](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/dyadic-stability-does-not-assume-exact-raw-flatness.md) | 170 | `result-track:63397faab14822c2ae33ba1a020a4075558de6cff7e335ce19895680c7836df6` |
| 20 | `structure` | [PrismaticShapeAuthority](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/prismaticshapeauthority.md) | 178 | `declaration-track:43ae367552d8d1c1852ee10e51d61e3b037cac1aa4bd44d5a84f7e74ca972465` |
| 21 | `structure` | [ConnesSpectralTraceAuthority](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/connesspectraltraceauthority.md) | 184 | `declaration-track:a64bc1b60b51af4f2fe3a335a3941f08fb06179ec8c673b682a36a071366908d` |
| 22 | `structure` | [DeterminantAuthority](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/determinantauthority.md) | 190 | `declaration-track:3a3eaef0409adcc6a69deb11e49e71dee98e391a91fd18774025cdd7c835812b` |
| 23 | `structure` | [ArithmeticTorsionAuthority](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/arithmetictorsionauthority.md) | 196 | `declaration-track:06d590b7a2e703b31db95c252abab9bb2c0be4cbb99b72ab1ec97036bc185761` |
| 24 | `def` | [KernelInternalizesGlobalConnesTrace](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/kernelinternalizesglobalconnestrace.md) | 201 | `declaration-track:65f07f8f37a30a96c0263974535d33b3bd971e22c6d97a6f4992f8560d17d65e` |
| 25 | `theorem` | [kernel_does_not_internalize_global_connes_trace](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/kernel-does-not-internalize-global-connes-trace.md) | 205 | `result-track:3168a2fb2863722342e8a3e3da01cb06d5b487e91bd1c7f2b89022ac9c2d5358` |
| 26 | `structure` | [ImportedShapeUpdateCertificateSemantics](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/importedshapeupdatecertificatesemantics.md) | 220 | `declaration-track:9c1fd1ee9327cb221028f85bedac990b704e24688a49421f300f30047549251f` |
| 27 | `structure` | [ZKPBackendAssumptions](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/zkpbackendassumptions.md) | 238 | `declaration-track:86f4a5b44762d37b49bf5e5fabf44f5f3535bd71681d6cfb926b3aade56b3921` |
| 28 | `theorem` | [imported_shape_update_certificate_boundary_matches](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/imported-shape-update-certificate-boundary-matches.md) | 247 | `result-track:5f1dc3935da45db161138bec6607b9befbc00a6189354012fd749bf5c74f4933` |
| 29 | `def` | [ZKPBackendSoundnessStatement](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/zkpbackendsoundnessstatement.md) | 252 | `declaration-track:f6f8aca6b4a4629a7ca81313a768aec21bf77a1954b050d4141dca8edea5f023` |
| 30 | `theorem` | [zkp_backend_assumptions_expose_soundness_statement](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/zkp-backend-assumptions-expose-soundness-statement.md) | 256 | `result-track:0318cb2ac4fefcb1c1c6146288d0a01a29a9e909f47b674e8a02c56091d4a542` |
| 31 | `structure` | [PrismaticShapeState](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/prismaticshapestate.md) | 263 | `declaration-track:75f815e1dfd03f8d7c84dcf92c20e96e612862724f0cf6e6a942eab38ed5d914` |
| 32 | `structure` | [PrismaticShapeUpdateInput](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/prismaticshapeupdateinput.md) | 274 | `declaration-track:2e5cf36cda8d5225027bf9a2833a24936f97375250f98df601b268f9385cd1b0` |
| 33 | `structure` | [ShapeUpdatePublicStatement](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/shapeupdatepublicstatement.md) | 289 | `declaration-track:28684def7007afdf124828da9be2bd6cf40c058a58e3e9fbab7bc059df543260` |
| 34 | `structure` | [DyadicNumeratorRepresentative](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/dyadicnumeratorrepresentative.md) | 319 | `declaration-track:c6d92a1f400be97a0d4d7e6b4d8531ad0bd080bc5c066eadaefbbfd4dc9239b7` |
| 35 | `structure` | [HashTransitionConstraint](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/hashtransitionconstraint.md) | 326 | `declaration-track:e9897ece3448a775a76277f8a63e9bdd241cdf74df6d71862365daed50210083` |
| 36 | `structure` | [CertificateDigests](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/certificatedigests.md) | 338 | `declaration-track:c64c6535d95d1bbc4c9fcf8b3864e3617860facdc0abc99bbdc14748309fe2c6` |
| 37 | `def` | [ShapeUpdatePublicStatement.certificateDigests](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/shapeupdatepublicstatement-certificatedigests.md) | 347 | `declaration-track:55dcf5b21631634bcabaaff5b2c1044756f828d151afea9ea9d02a6fbfd89be0` |
| 38 | `def` | [ShapeUpdatePublicStatement.stateHashTransition](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/shapeupdatepublicstatement-statehashtransition.md) | 356 | `declaration-track:b233a525ebb791eb5ef120e1155db87c055ab930de246cadcc4d225549cd7c86` |
| 39 | `structure` | [FiniteZKPRepresentativePolicy](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/finitezkprepresentativepolicy.md) | 370 | `declaration-track:34e452548470c3fd1ed621e0809017857c092f4dfd1983d963c14c628661e922` |
| 40 | `def` | [FiniteZKPRepresentativePolicy.matchesPublicStatement](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/finitezkprepresentativepolicy-matchespublicstatement.md) | 381 | `declaration-track:696cfead80c3d5a80aef07b89ba3795f1a6da10e5ebab2bb68a720ddab5d23f6` |
| 41 | `theorem` | [finite_zkp_representative_uses_public_kappa](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/finite-zkp-representative-uses-public-kappa.md) | 390 | `result-track:da3f8f25aeca826a05417579c85f994d3cc63b3f78304d171119bf808a389eda` |
| 42 | `theorem` | [finite_zkp_representative_matches_public_kappa](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/finite-zkp-representative-matches-public-kappa.md) | 399 | `result-track:b0a498b27500f3a47d4e03cb2bdb80e54cebf7ad819bae9cf29ffb03e6981958` |
| 43 | `theorem` | [finite_zkp_representative_matches_certificate_digests](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/finite-zkp-representative-matches-certificate-digests.md) | 408 | `result-track:4a7bfe19d4bdc52e6916a95e5ff041b9a94a90e61e59391a2dd81ace751610b3` |
| 44 | `theorem` | [finite_zkp_representative_carries_hash_transition](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/finite-zkp-representative-carries-hash-transition.md) | 417 | `result-track:17d3c0943f954e5a7b4967a524309a10e5ab895963d391844e3def6e9f62434b` |
| 45 | `structure` | [ShapeUpdatePrivateWitness](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/shapeupdateprivatewitness.md) | 425 | `declaration-track:f6441478f812c112eedcfc4afafeac9aa88e53890400e3066ee61d1426e3320d` |
| 46 | `structure` | [LocalShapeUpdateZKPRelation](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/localshapeupdatezkprelation.md) | 448 | `declaration-track:fdd27f2a08c8a6c2405d90b7faa5900920b51f64689453b7fad8fd5b5febb215` |
| 47 | `theorem` | [local_shape_update_verifies_finite_mobius](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/local-shape-update-verifies-finite-mobius.md) | 529 | `result-track:6888b379efec0e9102565f2542c48a14ede122c2d1540bd694a0e9b5e6dbc516` |
| 48 | `theorem` | [local_shape_update_verifies_tree_matrix_projection](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/local-shape-update-verifies-tree-matrix-projection.md) | 538 | `result-track:8b36698c5bd68eca5a5189490fe2fb5c1becd9886a0b48af8a1bd0b42cad2990` |
| 49 | `theorem` | [local_shape_update_uses_external_prismatic_authority](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/local-shape-update-uses-external-prismatic-authority.md) | 546 | `result-track:8d541ad64fa823489841d2bf77cc73e789404e03f104d37b366a1bf180019bc9` |
| 50 | `theorem` | [local_shape_update_routes_spectral_trace_externally](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/local-shape-update-routes-spectral-trace-externally.md) | 554 | `result-track:a22c78d389431d576a91785b0db523c652982d32872140c064a1903fab5417b2` |
| 51 | `theorem` | [local_shape_update_does_not_internalize_connes_trace](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/local-shape-update-does-not-internalize-connes-trace.md) | 562 | `result-track:26f5ff201015fe381dfc9d14b27a782fbb424b9eb5bbe08a87d9b1e922d0ac3f` |
| 52 | `theorem` | [local_shape_update_does_not_assume_raw_forward_cycle_flatness](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/local-shape-update-does-not-assume-raw-forward-cycle-flatness.md) | 570 | `result-track:e431cf809d70d06102a21f852b2d55a3563afd8430b9de9aecb68149cb5b8225` |
| 53 | `theorem` | [local_shape_update_torsion_not_from_field_homology](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/local-shape-update-torsion-not-from-field-homology.md) | 578 | `result-track:80a27331cc3a03188cca145b3af2551e979d38a1429d797d5c765ce94a36b083` |
| 54 | `theorem` | [local_shape_update_projection_flag_backed](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/local-shape-update-projection-flag-backed.md) | 586 | `result-track:c4f27b0367e5cb287a6b8beb7e6a51421a96944c38874ae2d95d6f9f2d2a4e61` |
| 55 | `theorem` | [local_shape_update_prismatic_flag_backed](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/local-shape-update-prismatic-flag-backed.md) | 595 | `result-track:e534de2069bd9b8711d0d98491fa94feeec3e348e8f7ce14eb90260374d0d44e` |
| 56 | `theorem` | [local_shape_update_spectral_flag_backed](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/local-shape-update-spectral-flag-backed.md) | 604 | `result-track:11892628fb635cd9cd14c03ef83bfb178d86cea3f5f7e6cb7915ae166f545e1e` |
| 57 | `theorem` | [local_shape_update_determinant_flag_backed](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/local-shape-update-determinant-flag-backed.md) | 613 | `result-track:c4a9b0137a344c270a7e397c6286f6f9a30e1ae602cdc3475b47d99585737c2a` |
| 58 | `theorem` | [local_shape_update_torsion_flag_backed](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/local-shape-update-torsion-flag-backed.md) | 622 | `result-track:60a2f4ddce5d8ec44ea0440c2cdf066e349244e027ddabd612a5c3b00a01dab7` |
| 59 | `def` | [PrismaticShapeUpdateInput.toBoundaryData](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/prismaticshapeupdateinput-toboundarydata.md) | 633 | `declaration-track:ceb64d571a94ff35d11e7b1be818cd6458783fcaf02dab0d48b74fade81e4986` |
| 60 | `theorem` | [toBoundaryData_preserves_mobius](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/toboundarydata-preserves-mobius.md) | 652 | `result-track:b0f15c7f06c54e4a697d31570ed2d95672c1e49edcb13df42acba02ce46abe9a` |
| 61 | `theorem` | [fieldOnly_recovery_blocked_by_collision](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/fieldonly-recovery-blocked-by-collision.md) | 660 | `result-track:7d83e84f809b74800188de14c869308dab2205124a7aaa2e0d7cff7cc4f14b30` |
| 62 | `def` | [exampleValuation](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/examplevaluation.md) | 669 | `declaration-track:2a0fe9e0ae5737531912f2aba92aaab6abf0906363f2420491953a5da6053d1a` |
| 63 | `def` | [exampleBounds](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/examplebounds.md) | 674 | `declaration-track:f5bb43e6abe8498543ca78e3431a636ca15cda0048f4903865a81b67df8875cf` |
| 64 | `def` | [exampleBoundedValuation](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/exampleboundedvaluation.md) | 679 | `declaration-track:3657d80ff3d667368ebf199efc1d8385f5ba0be26122531ed8d1bac1e18cb0d6` |
| 65 | `def` | [exampleMobiusReduction](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/examplemobiusreduction.md) | 685 | `declaration-track:fc10ec3f5e9457c01e43dcf5bd74a1edc560e565647d92091564670b42ea4a05` |
| 66 | `def` | [exampleProjection](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/exampleprojection.md) | 700 | `declaration-track:6d70ea372b096a9296fdb53f2a6cace77161e53307f594bcac1af5e53c43d79a` |
| 67 | `def` | [exampleDyadicScale](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/exampledyadicscale.md) | 713 | `declaration-track:d198b31ffbb3b1ad56c1f54d6e8b143bc4f312a8bed25cda8ba83a67556173aa` |
| 68 | `def` | [exampleDyadicStability](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/exampledyadicstability.md) | 717 | `declaration-track:a09fb47001026e9dd55f9e2b7e615a3745d9e7fbaf149fb9d86a1003dde70808` |
| 69 | `def` | [examplePrismaticAuthority](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/exampleprismaticauthority.md) | 724 | `declaration-track:72e08467cc8496398bc81761250adefd81500b3d2b7a2f3c01e2a52d070def47` |
| 70 | `def` | [exampleSpectralAuthority](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/examplespectralauthority.md) | 730 | `declaration-track:c0e3ede0c16c7afe7cb7971e4e87ced2c3aa6a87f2da9440719cc71bf6848d58` |
| 71 | `def` | [exampleDeterminantAuthority](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/exampledeterminantauthority.md) | 736 | `declaration-track:6316d3d7350f0663f15da7cda7e70a57e2b85bc52f246c598203f27b13e9ede2` |
| 72 | `def` | [exampleTorsionAuthority](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/exampletorsionauthority.md) | 742 | `declaration-track:01ed7402aaf02acbf2e63b770e2a4f976a0cb4ca6bd3964d0aabe3a23938e9ad` |
| 73 | `def` | [examplePriorState](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/examplepriorstate.md) | 747 | `declaration-track:3fcbb76206b40726b5047a66d2dc804388820b44060f208d99e1aa39f7a0f323` |
| 74 | `def` | [exampleNextState](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/examplenextstate.md) | 758 | `declaration-track:11b20a0721ab0ae61b71bebf324315d174bacc256112467e2e212dbda24dd2b3` |
| 75 | `def` | [exampleInput](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/exampleinput.md) | 769 | `declaration-track:fc209b2b93281784b1118b42da86748125c53e7e8ddee9da94b3daa742678e4f` |
| 76 | `def` | [examplePublic](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/examplepublic.md) | 782 | `declaration-track:3ec00de3406960edad51e40efd11f6caa593d0031b394d1a5579665cb50b97b0` |
| 77 | `def` | [exampleWitness](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/examplewitness.md) | 802 | `declaration-track:33086ed5dfbb6afa2765855e7b58e711e376fe49232257584082f430f9cac7b9` |
| 78 | `def` | [exampleRelation](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/examplerelation.md) | 819 | `declaration-track:6eab83897a4bb35d71e5b07b932e07852fabaeedffb3c29a7cc52c0c259eefd1` |
| 79 | `theorem` | [example_update_verifies_projection](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/example-update-verifies-projection.md) | 867 | `result-track:47f428f4225b2bb4b267010d577e7ca3ebfee9b39655d75363d598544d1f5180` |
| 80 | `theorem` | [example_update_does_not_internalize_connes_trace](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/example-update-does-not-internalize-connes-trace.md) | 873 | `result-track:b74a5d554d368357c7317d8d5f164ffca751dbf7422f4d7fdccb5ac0a9b0f65c` |
| 81 | `theorem` | [example_update_does_not_assume_raw_forward_cycle_flatness](../../../../FunctionalAnalysis/PrismaticShapeUpdateZKPNamespaced.lean/declarations/example-update-does-not-assume-raw-forward-cycle-flatness.md) | 879 | `result-track:f7a0b4439d0f7a56c225e4d0cedfb77c3d041912f4b131af0360eb6070209b47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a11b25db047b39311e36cd14d5821402b6d2688946556acff5ee1fb68f29f4b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/PrismaticShapeUpdateZKP/Variant0acba3169d094e660cebfec641862e2c3c79add11cc77318d0c1845aaab2edca.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/PrismaticShapeUpdateZKP/Variant0acba3169d094e660cebfec641862e2c3c79add11cc77318d0c1845aaab2edca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
