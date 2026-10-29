# Verification target: Module Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c70350a94ff80dd45966f2a9e6abdd5d0a629e7",
  "lexical_observation_count": 94,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant07fe5050cc0ca220ce465b2c394471632dd4ef1beab08f3333a8f6a4c707c148.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c70350a94ff80dd45966f2a9e6abdd5d0a629e7`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant07fe5050cc0ca220ce465b2c394471632dd4ef1beab08f3333a8f6a4c707c148.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant07fe5050cc0ca220ce465b2c394471632dd4ef1beab08f3333a8f6a4c707c148.lean.json)

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
| 1 | `class` | [NormedSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/normedspace.md) | 40 | `declaration-track:c3519f92d950ae26375f166576f927675df9950e9eb2f7132f3f10b014d11775` |
| 2 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/instance-source-edition-19.md) | 50 | `declaration-track:d7e66a15fb0bd3e566f9643a6cb357538ebdc08b5386aba0978191f937f969db` |
| 3 | `instance` | [NormedSpace.toIsBoundedSMul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/normedspace-toisboundedsmul.md) | 58 | `declaration-track:e8fc1dace3465571ee4ae0186997772de6c957c65ad83f15f2c665c54b98995a` |
| 4 | `instance` | [NormedField.toNormedSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/normedfield-tonormedspace.md) | 60 | `declaration-track:2de8dfcbd47064e37315f29bb36c412b9aa53ab21bee23397979aec4c0e9fb85` |
| 5 | `theorem` | [norm_zsmul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/norm-zsmul.md) | 63 | `result-track:e36ba8a459d14d3f73c75cf8e70a1c963a866705705c97ee628cb581fb701eef` |
| 6 | `theorem` | [norm_intCast_eq_abs_mul_norm_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/norm-intcast-eq-abs-mul-norm-one.md) | 66 | `result-track:6be994c7f8d67e68e0d399cad932deaa2c77017ab9f48aff88e07eb98277952e` |
| 7 | `theorem` | [norm_natCast_eq_mul_norm_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/norm-natcast-eq-mul-norm-one.md) | 70 | `result-track:81668cf557ee2e0e00587cc3e99c303837a834dba790da17c7f00eb6922ec86d` |
| 8 | `lemma` | [norm_natCast](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/norm-natcast.md) | 75 | `result-track:2a6db48b3056f8e5bd544cd12a518fc537ccea9d76d992e8bacea553cc61c6cb` |
| 9 | `theorem` | [eventually_nhds_norm_smul_sub_lt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/eventually-nhds-norm-smul-sub-lt.md) | 79 | `result-track:f91cd70d312d629caa3996806e1dd66378f7a072ffa0694506a0b08c2128a8db` |
| 10 | `theorem` | [Filter.Tendsto.zero_smul_isBoundedUnder_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/filter-tendsto-zero-smul-isboundedunder-le.md) | 85 | `result-track:5f9e20bebe2371cd7fdea2f3e67899c9597d799627fc732844ac0814f5fd0446` |
| 11 | `theorem` | [Filter.IsBoundedUnder.smul_tendsto_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/filter-isboundedunder-smul-tendsto-zero.md) | 90 | `result-track:776a304b3836fa93518dbec4583220835ce80683344b3cc8cfdb5c8156f92202` |
| 12 | `instance` | [NormedSpace.discreteTopology_zmultiples](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/normedspace-discretetopology-zmultiples.md) | 96 | `declaration-track:7e2a778c2fe1f7fe07f0fd13ca135d07d2309b308472518631acda480ececddf` |
| 13 | `lemma` | [Metric.diam_sphere_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/metric-diam-sphere-eq.md) | 115 | `result-track:74a1d6d0330f2401206fc95a2574d5e0cc62236aa5122393319a18f943ac86ab` |
| 14 | `lemma` | [Metric.diam_closedBall_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/metric-diam-closedball-eq.md) | 125 | `result-track:7f55e771661c10b5942f7660de866d575489427f38dae1c4f8dbbdca8f220967` |
| 15 | `lemma` | [Metric.diam_ball_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/metric-diam-ball-eq.md) | 129 | `result-track:24f1584836141ecbf02630fa2d5f3e3dbaec8891bd8f76999d04d2803dc0a05f` |
| 16 | `instance` | [ULift.normedSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/ulift-normedspace.md) | 142 | `declaration-track:aa918ef7b95ecc9b4c235ce3b2ddb00c304cc130079185f7e7a45b025da9b1f0` |
| 17 | `instance` | [Prod.normedSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/prod-normedspace.md) | 148 | `declaration-track:5adb021cb21244a36294f2c4bc11a8a51f63f5dcd9768f9bc95b1cb848486ac4` |
| 18 | `instance` | [Pi.normedSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/pi-normedspace.md) | 154 | `declaration-track:8ee5845a6d6c034d3a9d12fd3a16526d6fe48cd46921c3ed6f1a4d519bfe2758` |
| 19 | `instance` | [SeparationQuotient.instNormedSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/separationquotient-instnormedspace.md) | 161 | `declaration-track:93ae50d39b2ed89bcf715f86edf558df705519bc6928956cfbda62e55cb0e7a4` |
| 20 | `instance` | [MulOpposite.instNormedSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/mulopposite-instnormedspace.md) | 164 | `declaration-track:a14f74bba50bdc7210dfb3fd99a44b24f272df499455db73ea00ed4a804cc4c9` |
| 21 | `instance` | [Submodule.normedSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/submodule-normedspace.md) | 168 | `declaration-track:4f41c4b3435240801d6710375103763dc2df520957d12678f5b51b0be02721f5` |
| 22 | `instance` | [ClosedSubmodule.normedSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/closedsubmodule-normedspace.md) | 175 | `declaration-track:60ff16fd0cb730ba04560a124eafcf62c47222f04ec6844bdeeb01c6a380c85e` |
| 23 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/instance-source-edition-5.md) | 184 | `declaration-track:41bcd486dafe991e39fb3f518113e963050b7f06034806c25ffe662eb29fa301` |
| 24 | `abbrev` | [NormedSpace.induced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/normedspace-induced.md) | 193 | `declaration-track:cc2df16573b06a048341682dced0f2f837db5926b59295f426deffcfdfa2ef73` |
| 25 | `theorem` | [NormedSpace.exists_lt_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/normedspace-exists-lt-norm.md) | 207 | `result-track:ae00df99e571f93dd48f5b8855914e32f606b08b7374cafb3222c132afade1f6` |
| 26 | `theorem` | [NormedSpace.unbounded_univ](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/normedspace-unbounded-univ.md) | 214 | `result-track:3430570c423e6453a2d0fe650475f1827f386b624b6c44859304ed45840a15c3` |
| 27 | `lemma` | [NormedSpace.cobounded_neBot](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/normedspace-cobounded-nebot.md) | 219 | `result-track:c85ed22bb105b3c5080f71184fdde5898fbef516d184a2e0574d9fdabce01e8f` |
| 28 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/instance-source-edition-8.md) | 223 | `declaration-track:58ec359f01b98e3779a51f36f295900b6b54b31e9f36d2e52460af5d3276f34e` |
| 29 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/instance-source-edition-2.md) | 226 | `declaration-track:0861809b107bcc341b12f886d293e17428d945adaaed9e128457634bb50d594b` |
| 30 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/instance-source-edition-10.md) | 229 | `declaration-track:76fe2b70f4ac8d0cd935759c70d92805f3c95d9c9a801110b5d601d95a27015b` |
| 31 | `theorem` | [NormedSpace.noncompactSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/normedspace-noncompactspace.md) | 244 | `result-track:5969c32160cc475acfb12293e31680c912d29317e198f9f26ebdd21370062f24` |
| 32 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/instance-source-edition-15.md) | 255 | `declaration-track:a72a75b1604506a31b380d09656df17706dacc8ef2092f833311bc4a61da51a8` |
| 33 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/instance-source-edition-18.md) | 258 | `declaration-track:c693571b94c340a569befa728d2d3f782cbfffa29768c8700b704249ee3611cd` |
| 34 | `class` | [NormedAlgebra](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/normedalgebra.md) | 274 | `declaration-track:f7a5adf36a509226ea4ae19999d2f868b271927a6c59f26f9f92a6b3b4d89d94` |
| 35 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/instance-source-edition-11.md) | 283 | `declaration-track:7f85e774e4e5747bb79c3baf101d08d7803e53f3ca003499fc45e88708d8fbeb` |
| 36 | `theorem` | [norm_algebraMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/norm-algebramap.md) | 287 | `result-track:366df570ec272f93f26bb45b1e51e6ec9769a2d0ecaf0fd9fb87ea77b9d7445a` |
| 37 | `theorem` | [nnnorm_algebraMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/nnnorm-algebramap.md) | 291 | `result-track:46ea2c1894a5c9656e2d10bc87be0dcc19be0b162ae34c6be389a2b394c06379` |
| 38 | `theorem` | [enorm_algebraMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/enorm-algebramap.md) | 294 | `result-track:4f0039a66997c09dd6af6a5b5566c2bee0f604ae8f6e5dde8bc6833525efec5d` |
| 39 | `theorem` | [dist_algebraMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/dist-algebramap.md) | 297 | `result-track:06d9a18c24fa16e3c091c81f3ea9faa9e161f944f5c9b31c092f0e9f3ba7b6c0` |
| 40 | `theorem` | [norm_algebraMap'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/norm-algebramap-source-edition-2.md) | 303 | `result-track:45d0cd7e111905cbe868d3bd329e6a7e82c8ec7606caf9a7216c84192527b6f9` |
| 41 | `theorem` | [Algebra.norm_smul_one_eq_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/algebra-norm-smul-one-eq-norm.md) | 307 | `result-track:ec7b6ee756a5b8d35f91c5129ae1fffb717654d6dc2adcb6fac3dcdb4f81625a` |
| 42 | `theorem` | [nnnorm_algebraMap'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/nnnorm-algebramap-source-edition-2.md) | 312 | `result-track:5a3b22471c4d584b975da76b2c33d52b1158ab2abfe4c1a677cbadb142b8685f` |
| 43 | `theorem` | [enorm_algebraMap'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/enorm-algebramap-source-edition-2.md) | 317 | `result-track:7de560e39a1644b01362be68c0f8899b7fd6d0630ed2cee7eedbd0c2f2f14cff` |
| 44 | `theorem` | [dist_algebraMap'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/dist-algebramap-source-edition-2.md) | 322 | `result-track:c1aa0c2340a9b39542501bcc885eca2a1c4f96af51ee00e606fbe29ffcb1ce40` |
| 45 | `theorem` | [norm_algebraMap_nnreal](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/norm-algebramap-nnreal.md) | 331 | `result-track:98186a116f10ff3b93cb55f26dd09a9d6839f4a5cca2d5e83138e682fadd84cf` |
| 46 | `theorem` | [nnnorm_algebraMap_nnreal](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/nnnorm-algebramap-nnreal.md) | 335 | `result-track:95e82bd00b19f70f230b4358a5f45e06356691878b25f6856df8cbfb3df37f6b` |
| 47 | `theorem` | [tendsto_algebraMap_cobounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/tendsto-algebramap-cobounded.md) | 345 | `result-track:30a5f50f15a209e10252706586e5ad3e9a83f6073d507231e3374a6690324779` |
| 48 | `theorem` | [algebraMap_isometry](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/algebramap-isometry.md) | 355 | `result-track:bf8e7d66d55ae8006165bcfb8bf879c19985c16a818d90208688822d99fb6e23` |
| 49 | `instance` | [NormedAlgebra.id](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/normedalgebra-id.md) | 359 | `declaration-track:e9cc08d4ee45cf3ed27b0d5c86297a23a36ca44f6020329c68b27ff4d31ef4fd` |
| 50 | `instance` | [normedAlgebraRat](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/normedalgebrarat.md) | 367 | `declaration-track:70f91a043b6c5f1d76be3b584136b0aa1afc85fe5255f8c70ff3787bc56a7374` |
| 51 | `instance` | [PUnit.normedAlgebra](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/punit-normedalgebra.md) | 372 | `declaration-track:7692349aba2992141dc1973b6edb93503586f7fc276a2ca668210bedf702059c` |
| 52 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/instance-source-edition-4.md) | 375 | `declaration-track:21edaf63129922c1fcca95090b66efc9baeb278a20a42b249f51de778b072f33` |
| 53 | `instance` | [Prod.normedAlgebra](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/prod-normedalgebra.md) | 379 | `declaration-track:e50e88b3d00f5d929fdc9575f03f4ca009b0cdf310906ab6aed007f4eec0a813` |
| 54 | `instance` | [Pi.normedAlgebra](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/pi-normedalgebra.md) | 384 | `declaration-track:d14cebabe1f65c9ca52ffeacde1445cfe665fa1f87d56b6ecd30360509b6954a` |
| 55 | `instance` | [SeparationQuotient.instNormedAlgebra](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/separationquotient-instnormedalgebra.md) | 390 | `declaration-track:f9790dc72583b2dabcddcb8a094cecc593458c1796293fa6be8f3aff7558bb6d` |
| 56 | `instance` | [MulOpposite.instNormedAlgebra](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/mulopposite-instnormedalgebra.md) | 394 | `declaration-track:c6c750e197dea150c897d886ba3694d137ebd3682a697993026664e47275e139` |
| 57 | `abbrev` | [NormedAlgebra.induced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/normedalgebra-induced.md) | 405 | `declaration-track:ada9c3387a60f4c89c7a40535889ce9b47b715884f5dbb8da3feb3a37a51ad66` |
| 58 | `instance` | [Subalgebra.toNormedAlgebra](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/subalgebra-tonormedalgebra.md) | 412 | `declaration-track:2ed9475322466292dc8d3c908076e2e377a608ed718913199775f46fec97fdb5` |
| 59 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/instance.md) | 421 | `declaration-track:04785a0d2c4cc225a2db9f7e82873eb18e815eae15706eaa66ae48f73bdcaf04` |
| 60 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/instance-source-edition-13.md) | 430 | `declaration-track:9161791f5aae7bd53da6ab50c84af86358c4261fe7b4468f2f59b1805a6b8770` |
| 61 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/instance-source-edition-16.md) | 434 | `declaration-track:a79cd0ecd9c0a349536c01ebd0592bcd9a8cf63888c8628d738a7bd3abbc743d` |
| 62 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/instance-source-edition-7.md) | 438 | `declaration-track:56e79e462135b33f00902d9a58652a2f7f4c285860c1b2001fd764bb132c2b2d` |
| 63 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/instance-source-edition-20.md) | 442 | `declaration-track:dea53c6cc362f9a1500b03acf8454a61bb67ab51241878b756890be6f0dc8788` |
| 64 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/instance-source-edition-12.md) | 446 | `declaration-track:8d7c0f1b6311f87d2799196bdf265f676e37fe97dd9d1f9f5286629607ce718d` |
| 65 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/instance-source-edition-3.md) | 450 | `declaration-track:1182ea607818e91fe31fcf4e34351de57ea69014c547c8a558110758c34b0c78` |
| 66 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/instance-source-edition-14.md) | 454 | `declaration-track:a5089c2cda67535ad629743b177c6b970fcf62ee9ab009764e5a78ce8f3616cc` |
| 67 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/instance-source-edition-6.md) | 458 | `declaration-track:4be3e3b824c9fea12a1d2ff1c5fb2103ddb31699ab3a47d26c0dc7e468afdd6b` |
| 68 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/instance-source-edition-17.md) | 462 | `declaration-track:aabb0907353414712faf433e12362db382a398fbf3a1215bd0438f8f964b91bd` |
| 69 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/instance-source-edition-9.md) | 466 | `declaration-track:619da28497b577fd4ff3fc8f1611003a98ea80e258ef5da1d9f82598410f74e0` |
| 70 | `def` | [NormedSpace.restrictScalars](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/normedspace-restrictscalars.md) | 488 | `declaration-track:4f12c16b27119e9ae45b09a0c8001450d83a6dea2ffa9cad00fe0f770639d882` |
| 71 | `theorem` | [NormedSpace.restrictScalars_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/normedspace-restrictscalars-eq.md) | 493 | `result-track:940047d3d82baa13953d436ef6c1747b771220834da010c1a42615b61af25521` |
| 72 | `instance` | [RestrictScalars.normedSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/restrictscalars-normedspace.md) | 501 | `declaration-track:602233e65725173fc7ec048f2d4a417fd42ad1143617c959af8c59d846d5655c` |
| 73 | `def` | [Module.RestrictScalars.normedSpaceOrig](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/module-restrictscalars-normedspaceorig.md) | 510 | `declaration-track:b183a232e0d8118c01a0dee50591e97e31ae4bc4d1f125efb4dacf92f8165a85` |
| 74 | `def` | [NormedAlgebra.restrictScalars](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/normedalgebra-restrictscalars.md) | 532 | `declaration-track:e664ea44fe91d8de81cadb58af7b125765914d45bb75879fde7efe6ee87c6879` |
| 75 | `instance` | [RestrictScalars.normedAlgebra](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/restrictscalars-normedalgebra.md) | 537 | `declaration-track:aee64cd6e14e6dc960b24e252df449f6a62eb23dbfdbc2852808e5849b6d416a` |
| 76 | `def` | [Module.RestrictScalars.normedAlgebraOrig](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/module-restrictscalars-normedalgebraorig.md) | 546 | `declaration-track:70aaa4b8bf544b3b3397a7c6b466b03f9581f0c8bb53329fc3c7de4df2157111` |
| 77 | `structure` | [SeminormedSpace.Core](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/seminormedspace-core.md) | 569 | `declaration-track:d0b3fb6fc1478c3cf3789233c422f2e76c5d1184cf77ae4e70686d248a807507` |
| 78 | `abbrev` | [PseudoMetricSpace.ofSeminormedSpaceCore](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/pseudometricspace-ofseminormedspacecore.md) | 578 | `declaration-track:8efa2a4eba9576eafb1b94faa62186f87626c2a4b827cf57121b63d6702007bd` |
| 79 | `abbrev` | [PseudoEMetricSpace.ofSeminormedSpaceCore](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/pseudoemetricspace-ofseminormedspacecore.md) | 603 | `declaration-track:9fd5e4e3b68ea09deffc65c6a74a3eae3e09ab6345c9d42fe84eda363f819d42` |
| 80 | `abbrev` | [PseudoMetricSpace.ofSeminormedSpaceCoreReplaceUniformity](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/pseudometricspace-ofseminormedspacecorereplaceuniformity.md) | 611 | `declaration-track:f063ce5566e2d8a8d5351653647ac271ab7eb423b79793e54ec4dbf7ea2b7a3e` |
| 81 | `abbrev` | [PseudoMetricSpace.ofSeminormedSpaceCoreReplaceTopology](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/pseudometricspace-ofseminormedspacecorereplacetopology.md) | 622 | `declaration-track:cbd39e6d7456d6b0e1ac036e4a7241c85bd078f7eb8cf4f2ff6e11788bfaac3c` |
| 82 | `abbrev` | [PseudoMetricSpace.ofSeminormedSpaceCoreReplaceAll](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/pseudometricspace-ofseminormedspacecorereplaceall.md) | 635 | `declaration-track:efd2b21a975e9686b08a3dff75d4acf568e65fa67a04c03e7b12032020abfcc5` |
| 83 | `abbrev` | [SeminormedAddCommGroup.ofCore](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/seminormedaddcommgroup-ofcore.md) | 649 | `declaration-track:fa07a3b4720878695f09224df7381e036256cff29c3fc9dc9738bb95f5299b07` |
| 84 | `abbrev` | [SeminormedAddCommGroup.ofCoreReplaceUniformity](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/seminormedaddcommgroup-ofcorereplaceuniformity.md) | 656 | `declaration-track:95e90d5551e61e8348095efbaa1c5791e740d07b8796da18d6a865fef5d11808` |
| 85 | `abbrev` | [SeminormedAddCommGroup.ofCoreReplaceTopology](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/seminormedaddcommgroup-ofcorereplacetopology.md) | 667 | `declaration-track:b9785f228a910db7a93b130ed51814c9a03d668b455dbbc11e011b42616e7389` |
| 86 | `abbrev` | [SeminormedAddCommGroup.ofCoreReplaceAll](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/seminormedaddcommgroup-ofcorereplaceall.md) | 680 | `declaration-track:f9cc22ab1628d828e02ef3b639f9aed6438c4033a69413f5d06d1cf2121a85df` |
| 87 | `structure` | [NormedSpace.Core](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/normedspace-core.md) | 693 | `declaration-track:680ccef2e6891291e41212cf377313a5e3c1d7ad6a20eefb0e604bc79684f158` |
| 88 | `abbrev` | [NormedAddCommGroup.ofCore](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/normedaddcommgroup-ofcore.md) | 704 | `declaration-track:3b4ee269ab5b016cffd190cbbe4eee49992ec776be1b22f67343a837e1ebfbf1` |
| 89 | `abbrev` | [NormedAddCommGroup.ofCoreReplaceUniformity](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/normedaddcommgroup-ofcorereplaceuniformity.md) | 715 | `declaration-track:818bb22fa9bbfad59986ed9a8e3fb98b96e64f9b7e50fd874ead8ba6142ca460` |
| 90 | `abbrev` | [NormedAddCommGroup.ofCoreReplaceTopology](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/normedaddcommgroup-ofcorereplacetopology.md) | 729 | `declaration-track:e6aabb3f405485a2ff9d8f20243ec963c10326bf608bbcf5e469117e22143ef9` |
| 91 | `abbrev` | [NormedAddCommGroup.ofCoreReplaceAll](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/normedaddcommgroup-ofcorereplaceall.md) | 746 | `declaration-track:738580998f26349057a42864234a88de36cbc37ce116edf65bffc75d74b0efbc` |
| 92 | `abbrev` | [NormedSpace.ofCore](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/normedspace-ofcore.md) | 763 | `declaration-track:ae8e81b351f12f1838f38c914dc9044795fa2f4d26bab465cb1dbd5bf481955b` |
| 93 | `lemma` | [AddMonoidHom.continuous_of_isBounded_nhds_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/addmonoidhom-continuous-of-isbounded-nhds-zero.md) | 774 | `result-track:7de4410a15ef32845fe79342b799090cc28ce623015f9ed1174cae1b75414016` |
| 94 | `abbrev` | [IsUnital.toNormedAlgebra](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicPublic.lean/declarations/isunital-tonormedalgebra.md) | 805 | `declaration-track:fbca2bdf79785ff198d8e643159b4cc9c155e91dd3dd9c418a219daf3553f2de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d3e63eeebc132c974dd2e9320425bb9685b17c7629f67515bb68c889e1db8ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant07fe5050cc0ca220ce465b2c394471632dd4ef1beab08f3333a8f6a4c707c148.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant07fe5050cc0ca220ce465b2c394471632dd4ef1beab08f3333a8f6a4c707c148.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
