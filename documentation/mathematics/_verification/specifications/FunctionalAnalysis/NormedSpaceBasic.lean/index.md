# Verification target: Normed Space Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a769baec052fefdfb172eaa92c85cfb7d9cfbe84",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant4333f436fc9a3617c3a0a2a9b04ffec7363013807a9772c88b4ca4007602f93b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a769baec052fefdfb172eaa92c85cfb7d9cfbe84`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant4333f436fc9a3617c3a0a2a9b04ffec7363013807a9772c88b4ca4007602f93b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant4333f436fc9a3617c3a0a2a9b04ffec7363013807a9772c88b4ca4007602f93b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.RestrictScalars` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.MulAction` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Sqrt` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NormedSpace](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/normedspace.md) | 43 | `declaration-track:275c5188d3ec48d5ccca223f91c425859b99e19b8015def16e838f9079857edc` |
| 2 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/instance-source-edition-5.md) | 55 | `declaration-track:8c01236c9cff84a15329326a86f2b97efec48a5b157431384ff1b587cac111a4` |
| 3 | `instance` | [NormedField.toNormedSpace](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/normedfield-tonormedspace.md) | 59 | `declaration-track:eaf0f71de4b4db20d61d2780dbd651d58c245566dd7a6be07c3227d831f49380` |
| 4 | `instance` | [NormedField.to_boundedSMul](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/normedfield-to-boundedsmul.md) | 63 | `declaration-track:6743681add69327dab6112ccee96979702bfb51df3e18d0c104f648e9f8b4a22` |
| 5 | `theorem` | [norm_zsmul](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/norm-zsmul.md) | 67 | `result-track:daeaf9d266789b343d2f74798a0eda75fbc30f470e5699b39ebc3b087e45aaae` |
| 6 | `theorem` | [abs_norm](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/abs-norm.md) | 72 | `result-track:47c7538cdc8452f97ebc711ddfb12c6778f4a015ac3e92a61f5e9c5ea845ff7d` |
| 7 | `theorem` | [inv_norm_smul_mem_closed_unit_ball](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/inv-norm-smul-mem-closed-unit-ball.md) | 75 | `result-track:6fa4844f2fce03411733b5f1c94672e70559361da14f8816abe8c5d9584ae2c5` |
| 8 | `theorem` | [norm_smul_of_nonneg](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/norm-smul-of-nonneg.md) | 81 | `result-track:32d7e7d5ef21ae6e4acb4843033dd4ef1c89a8c30225dd71c4938c9b927fc0ee` |
| 9 | `theorem` | [eventually_nhds_norm_smul_sub_lt](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/eventually-nhds-norm-smul-sub-lt.md) | 89 | `result-track:bbef241a829fc13d132d2bf030d306807e2742fa7cee1b87e3b1c76676709818` |
| 10 | `theorem` | [Filter.Tendsto.zero_smul_isBoundedUnder_le](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/filter-tendsto-zero-smul-isboundedunder-le.md) | 96 | `result-track:55856722209284537357c1a884eccca79be01f09ee901130b76b960490590203` |
| 11 | `theorem` | [Filter.IsBoundedUnder.smul_tendsto_zero](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/filter-isboundedunder-smul-tendsto-zero.md) | 102 | `result-track:5d4106c47a5b52745a8eb4cbf347c91f9fc88d9e1b02edbf27b920da284ee066` |
| 12 | `theorem` | [closure_ball](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/closure-ball.md) | 109 | `result-track:6f4449c746aa1e2a4039edd81391455681db5c782d599b9de0dca33588eacf59` |
| 13 | `theorem` | [frontier_ball](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/frontier-ball.md) | 125 | `result-track:b9ab7cc71d965f3993f7e57beb66d782a072dc11f077fc732ad4a26bdd4652e7` |
| 14 | `theorem` | [interior_closedBall](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/interior-closedball-source-edition-2.md) | 130 | `result-track:64bc633ea50352c04f4befcab84f12b229e731fd5e164c1c772a83670cffe015` |
| 15 | `theorem` | [frontier_closedBall](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/frontier-closedball.md) | 151 | `result-track:579af2aea3193089cee481b43bda7b1fc3a8fa553a49e1d6a154b1b0a50ca701` |
| 16 | `theorem` | [interior_sphere](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/interior-sphere-source-edition-2.md) | 156 | `result-track:f19cfab21e83b900a9f185d3dc6d9a18a5e8b55e1284bae65404afebd7007118` |
| 17 | `theorem` | [frontier_sphere](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/frontier-sphere-source-edition-2.md) | 161 | `result-track:acc0f9d894b8d8180a84370b819cddfa68f74c23fa6d83825ba5cf52d15d6a18` |
| 18 | `instance` | [NormedSpace.discreteTopology_zmultiples](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/normedspace-discretetopology-zmultiples.md) | 166 | `declaration-track:59a382664dd728d252589aed04c7302b5e708d13fcdd185de67ef4976a990508` |
| 19 | `instance` | [ULift.normedSpace](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/ulift-normedspace.md) | 183 | `declaration-track:7a825d97c6e4278bae0e4a5f3ccb9e3333f323567f7cf848de5f445a14e1d13e` |
| 20 | `instance` | [Prod.normedSpace](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/prod-normedspace.md) | 188 | `declaration-track:797f3f7ffa5ffd2c75340ab980ce61c2a38b1c29a20106acbd9d8305d5a8f987` |
| 21 | `instance` | [Pi.normedSpace](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/pi-normedspace.md) | 196 | `declaration-track:80a3ecca2c8f912e6380e4df0715c14ace9d71e9dabee6057eaa1f45188e4daf` |
| 22 | `instance` | [MulOpposite.normedSpace](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/mulopposite-normedspace.md) | 204 | `declaration-track:6909d2aa5d4797a0976c000c7358054f693a76ba1ac3f529918499a1f5db9911` |
| 23 | `instance` | [Submodule.normedSpace](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/submodule-normedspace.md) | 210 | `declaration-track:26c514975094309da6c4cdffb506669f194a8dd1e05a428d180d1faccd01a06e` |
| 24 | `def` | [NormedSpace.induced](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/normedspace-induced.md) | 222 | `declaration-track:4c05946b1a690184482e966fa58b685d9a639c5496f2883b75d1744e48a91915` |
| 25 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/instance-source-edition-4.md) | 258 | `declaration-track:84994e7c78dbd96e8363e1551929aeee660139b1347dd8d3d2c0e1c0084df5f2` |
| 26 | `theorem` | [exists_norm_eq](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/exists-norm-eq.md) | 268 | `result-track:54ed59d3fdda23f318a865f010b25e6c742fc1398ec1a12c9c61593d35179ed4` |
| 27 | `theorem` | [range_norm](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/range-norm.md) | 276 | `result-track:c1673f77c0860b42a70f25eccd4cfaf4d4dc8f98cbc315e6a376186d84f6418f` |
| 28 | `theorem` | [nnnorm_surjective](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/nnnorm-surjective.md) | 280 | `result-track:4635bf233f2d994d2a6420259c4345fd0af333f249fb14aa6f647c56a6b5cb1c` |
| 29 | `theorem` | [range_nnnorm](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/range-nnnorm.md) | 285 | `result-track:2119d0cc3f4929488e5e999659954bf0adffc4dd7b85a97e7e590970cc0420e9` |
| 30 | `instance` | [Real.punctured_nhds_module_neBot](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/real-punctured-nhds-module-nebot.md) | 293 | `declaration-track:b1a2297b86687d549e1161b56454ce658253514825fb9ae71639cf6092ced212` |
| 31 | `theorem` | [interior_closedBall'](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/interior-closedball.md) | 298 | `result-track:4327b2021d6b0d7a79fb39c9597b74ef4617a6feda3b26b293b8ee6ae2f1bf76` |
| 32 | `theorem` | [frontier_closedBall'](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/frontier-closedball-source-edition-2.md) | 305 | `result-track:f0727a77829876c178c8c09a45c83393e4b58c9c19fddb968ab85c710d3f30df` |
| 33 | `theorem` | [interior_sphere'](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/interior-sphere.md) | 311 | `result-track:9cb3a39eb447e60055ab5d352984efc8805c6775a0a385823b24434a2600f4a9` |
| 34 | `theorem` | [frontier_sphere'](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/frontier-sphere.md) | 316 | `result-track:78084f1180e257d91173552950274980f88545e666bedc1d8ca17e3136046cd0` |
| 35 | `theorem` | [NormedSpace.exists_lt_norm](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/normedspace-exists-lt-norm.md) | 330 | `result-track:cef9ea07bfc952fe48bf232239e0c77867cb2399867e67cfc4d29c76192dcb59` |
| 36 | `theorem` | [NormedSpace.unbounded_univ](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/normedspace-unbounded-univ.md) | 338 | `result-track:a33a9c82636a6263fe0ca236c58d4dd86eaf390f44f6f807e8c456ef4f96b48b` |
| 37 | `theorem` | [NormedSpace.noncompactSpace](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/normedspace-noncompactspace.md) | 347 | `result-track:dfe8a148e144a86ec74f2bf0f26d765d7e02ffca720e2fb1893da222b9dfd38e` |
| 38 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/instance-source-edition-7.md) | 351 | `declaration-track:fc7542779141f96af1d0bfc38fe2d6df9d7c6d17ecc51bdccdb79eb81655ba50` |
| 39 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/instance-source-edition-9.md) | 355 | `declaration-track:ff01a3813485c4308af80361569b21682a9b9a0a8f66b7eae5281d8d41aca63f` |
| 40 | `class` | [NormedAlgebra](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/normedalgebra.md) | 372 | `declaration-track:be75de9e4cd3ffdaaa25ebe50b9561c53f53c5d9600fc2832ac7c4fba092bbc3` |
| 41 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/instance.md) | 381 | `declaration-track:2e36e65fa2502c541699308111631a315664796ccccb4fda79bb78e78e6f36fd` |
| 42 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/instance-source-edition-3.md) | 399 | `declaration-track:3c29a7d714e18cf88a30a1b43e1ab39406d52e3b3defe4325c087f2b2e1ca540` |
| 43 | `theorem` | [norm_algebraMap](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/norm-algebramap.md) | 403 | `result-track:2dae75179ebe2e367344c917b478c9dbed06fb53e3b92d76196b00cbbd906a0f` |
| 44 | `theorem` | [nnnorm_algebraMap](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/nnnorm-algebramap-source-edition-2.md) | 408 | `result-track:d68020a2a843be0c8b44b2d902f82604aa63495ec50f99fd70bd0668b392789a` |
| 45 | `theorem` | [norm_algebraMap'](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/norm-algebramap-source-edition-2.md) | 413 | `result-track:49169fcd0331be8ca3d399c6c11d2a5b9ef5604662048e363331b2fdacff465d` |
| 46 | `theorem` | [nnnorm_algebraMap'](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/nnnorm-algebramap.md) | 418 | `result-track:9c0a56e8734b282cf418955253d71362e8e4d3f9583a9272f2d9477ef173829e` |
| 47 | `theorem` | [norm_algebraMap_nNReal](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/norm-algebramap-nnreal.md) | 427 | `result-track:1bd8e3c018212f5c52a69bc04fc0e206b577e55e8f95329c444dcbae67c26dcd` |
| 48 | `theorem` | [nnnorm_algebraMap_nNReal](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/nnnorm-algebramap-nnreal.md) | 432 | `result-track:01687f7b82c58bb9cf2e59c45d2b4ad96203a73a11a2bbb8a12700de1254caba` |
| 49 | `theorem` | [algebraMap_isometry](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/algebramap-isometry.md) | 441 | `result-track:fbf8d35d497b06a83fc1ef8129a577dc8ca54f57cbbc6e146403e280906b485a` |
| 50 | `instance` | [NormedAlgebra.id](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/normedalgebra-id.md) | 446 | `declaration-track:66e6582dfc45f807461e1514251b2e2e7eb7129f166a16c8ce3d7c9b1bc23ff9` |
| 51 | `instance` | [normedAlgebraRat](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/normedalgebrarat.md) | 456 | `declaration-track:b4a654ff2e5b3a655df52105e3d1b505df71ae2c772829f88fd53e2385d103b3` |
| 52 | `instance` | [PUnit.normedAlgebra](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/punit-normedalgebra.md) | 462 | `declaration-track:964cf2469e0692908ae57e90bd4db49fe0ec51c99a1fbb8b9e0548e5035e596d` |
| 53 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/instance-source-edition-8.md) | 466 | `declaration-track:fe346083ef956962a513d7731ae519f11a8b9af1ace747a5858884e6236ef4a9` |
| 54 | `instance` | [Prod.normedAlgebra](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/prod-normedalgebra.md) | 470 | `declaration-track:aefd42bda3934f0469daa7cf328327e4ce3c1aae0b496b94026fa370e0487100` |
| 55 | `instance` | [Pi.normedAlgebra](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/pi-normedalgebra.md) | 477 | `declaration-track:f1aee4e6cf0638e188689835e72f3371f5d866f30bf470e7240f2fe6deadc7a1` |
| 56 | `instance` | [MulOpposite.normedAlgebra](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/mulopposite-normedalgebra.md) | 484 | `declaration-track:80e7696b237357f02f4fd70882d3974e45d686f4b9cc2f78825573acb80fec0e` |
| 57 | `def` | [NormedAlgebra.induced](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/normedalgebra-induced.md) | 497 | `declaration-track:25e4690bcf1d7eb9fca3104f5b7518535dc46778870449c4b421e746bce3a5c0` |
| 58 | `instance` | [Subalgebra.toNormedAlgebra](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/subalgebra-tonormedalgebra.md) | 509 | `declaration-track:0d8d6cc2b344202ad2ea7e83c78cf39bef14564c6e1f6acc0e12b67c13dcc1ff` |
| 59 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/instance-source-edition-6.md) | 519 | `declaration-track:dc6bf6737350403692c118cfde5ffdc2072e1436d3a33d8020fabc99037af081` |
| 60 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/instance-source-edition-2.md) | 523 | `declaration-track:3b4b7d5a0ba37dab0f33b8a6a165d371244fa2043743ed382cd3ecd3442916d7` |
| 61 | `instance` | [RestrictScalars.normedSpace](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/restrictscalars-normedspace.md) | 529 | `declaration-track:3b33d79026625cc7bbbeb40617a6662b07303e730cd25189c51b08d501577110` |
| 62 | `def` | [Module.RestrictScalars.normedSpaceOrig](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/module-restrictscalars-normedspaceorig.md) | 539 | `declaration-track:952d75a6930293418a0f1a645095ba57e3a1eb28caab7dd0e767756c3e013fa4` |
| 63 | `def` | [NormedSpace.restrictScalars](../../../../FunctionalAnalysis/NormedSpaceBasic.lean/declarations/normedspace-restrictscalars.md) | 551 | `declaration-track:afe6b33b4a0f2a90143375f6747d213fddd04d4294274ee42e36d54c90c2cf03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4bc0442fa37b3f81f03be42f8e5fcb0ac7364b3b54e4bf65b95e827750eb1973 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant4333f436fc9a3617c3a0a2a9b04ffec7363013807a9772c88b4ca4007602f93b.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant4333f436fc9a3617c3a0a2a9b04ffec7363013807a9772c88b4ca4007602f93b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
