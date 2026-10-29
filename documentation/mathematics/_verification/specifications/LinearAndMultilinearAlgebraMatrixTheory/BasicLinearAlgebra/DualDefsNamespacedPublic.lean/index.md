# Verification target: Dual Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2b4b99b42a78c3acd78514799a65d7d57c3bd02",
  "lexical_observation_count": 78,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant4eecdc839a1ef270105034f6d72dcdf89c1f450e97df626d87ce0f4a4d36563f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2b4b99b42a78c3acd78514799a65d7d57c3bd02`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant4eecdc839a1ef270105034f6d72dcdf89c1f450e97df626d87ce0f4a4d36563f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant4eecdc839a1ef270105034f6d72dcdf89c1f450e97df626d87ce0f4a4d36563f.lean.json)

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
| 1 | `abbrev` | [Dual](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dual.md) | 70 | `declaration-track:f45e5cba929c31afee2f12b006bcbc5990298e3797268693c443227891f6dbf0` |
| 2 | `def` | [dualPairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dualpairing.md) | 75 | `declaration-track:a49c1d6744ba984685d6e45d5f110363d50bf961afd1f1109d0f19b3612e8fd5` |
| 3 | `theorem` | [dualPairing_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dualpairing-apply.md) | 80 | `result-track:96579eb1323220bc5e30ac573a695ffa0caae5accbd49f7667f74a0be511f173` |
| 4 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/instance.md) | 84 | `declaration-track:42a2a887bb3edd761945dab3f72adaebf11c4f04480c1ce04dbdeb0067973486` |
| 5 | `def` | [eval](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/eval.md) | 88 | `declaration-track:bf7a85c62acf91d8c39ac15c403ced5446d01e2e777382840cd72b58ac2f1a33` |
| 6 | `theorem` | [eval_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/eval-apply.md) | 92 | `result-track:7b2c68d3c6ead70dfd6b1ec24e361e63b8691f807ebd77d3fc9763b0f3779c19` |
| 7 | `def` | [transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/transpose.md) | 100 | `declaration-track:ecd2b3a363917f040a8b6155a2a1cbe37b30cae9611b9b39b3340965b0fbb98b` |
| 8 | `theorem` | [transpose_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/transpose-apply.md) | 103 | `result-track:2f48552f1398286eeb01bc0447c1817d22e0e59b4780e109a90d662b393ab1da` |
| 9 | `theorem` | [transpose_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/transpose-comp.md) | 108 | `result-track:bd801a85c2927d0f3e3b1cb963a585611497364217d0030abe806c834767a74b` |
| 10 | `def` | [LinearMap.dualMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/linearmap-dualmap.md) | 125 | `declaration-track:80093eb929ba82dd8095c94f55aabf4ba67de481e58d1b6ebbee2fd3f13ae81b` |
| 11 | `lemma` | [LinearMap.dualMap_eq_lcomp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/linearmap-dualmap-eq-lcomp.md) | 128 | `result-track:d34dc8c74d1b1a5a7b4a5ac3291a0faa8d6ee52518453f763e4c031c82ef79d8` |
| 12 | `theorem` | [LinearMap.dualMap_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/linearmap-dualmap-def.md) | 130 | `result-track:6a844cb7a62417d24840c12b62d15c8cbf154336480c1ca6ff3888afb918e683` |
| 13 | `theorem` | [LinearMap.dualMap_apply'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/linearmap-dualmap-apply.md) | 133 | `result-track:7019b9e4def2386f051bba3d517230dcecd06862c2bf82b6cc55e3d0c83897ac` |
| 14 | `theorem` | [LinearMap.dualMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/linearmap-dualmap-apply-source-edition-2.md) | 137 | `result-track:88e6055b0ae77632d162dfce167cbd51ccc881c291b678deea6fa020defb4088` |
| 15 | `theorem` | [LinearMap.dualMap_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/linearmap-dualmap-id.md) | 142 | `result-track:ddc6a3cf5b85e5a33bc6b2eb38b17581ce4f8e3a71c09140b23d10ac6b5c1eb4` |
| 16 | `theorem` | [LinearMap.dualMap_comp_dualMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/linearmap-dualmap-comp-dualmap.md) | 146 | `result-track:f947929434a77bd0a720051d97227d278ef2fc281491e4b6464d4fd7096075f5` |
| 17 | `theorem` | [LinearMap.dualMap_injective_of_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/linearmap-dualmap-injective-of-surjective.md) | 151 | `result-track:93c3b57af6fbc6182693918774868fc6dbe655f3b6212ef35be6c3e11690f17f` |
| 18 | `def` | [LinearEquiv.dualMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/linearequiv-dualmap.md) | 159 | `declaration-track:3142cefa285e88437be98c85676c275f9f88a137ba6e17085a11a3bf7f23a827` |
| 19 | `theorem` | [LinearEquiv.dualMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/linearequiv-dualmap-apply.md) | 166 | `result-track:953bb73a4b736b74d50b0bf445859f67212ae91787e7dbf2f90223908edaa67e` |
| 20 | `theorem` | [LinearEquiv.dualMap_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/linearequiv-dualmap-refl.md) | 171 | `result-track:087ed9baa6ae665180b5ee509f1e5c6e58226361f58d31440c856eb7c94d41da` |
| 21 | `theorem` | [LinearEquiv.dualMap_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/linearequiv-dualmap-symm.md) | 177 | `result-track:aecb7ce573debffcf03818339c674011053ba2ef16264dd278c5f7c4fbe4fcb6` |
| 22 | `theorem` | [LinearEquiv.dualMap_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/linearequiv-dualmap-trans.md) | 181 | `result-track:d06d2f489009ea73a7023a175215e8ac62d3bffc645b4bef001f8d18f12cee15` |
| 23 | `theorem` | [Module.Dual.eval_naturality](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/module-dual-eval-naturality.md) | 185 | `result-track:848f66aa49e00e288409217706f6798626729b00bad4e979869c3ff703a778c8` |
| 24 | `lemma` | [Dual.apply_one_mul_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dual-apply-one-mul-eq.md) | 190 | `result-track:8620d5f88685b67f3ea41f66e80a71ed39d24fdfa6bca8956811c774912bab5c` |
| 25 | `lemma` | [LinearMap.range_dualMap_dual_eq_span_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/linearmap-range-dualmap-dual-eq-span-singleton.md) | 196 | `result-track:f26147c84f1ed33b5e109ef4480d931918cfa7c878c0e52819b6e7aba21c2302` |
| 26 | `class` | [IsReflexive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/isreflexive.md) | 221 | `declaration-track:5dbc92e36bb214c5359b42efb11633f8a5b1bf9eabe3137a56f315abd3d8a620` |
| 27 | `lemma` | [bijective_dual_eval](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/bijective-dual-eval.md) | 225 | `result-track:be9764a7a0c0ecf78c62c7b700d426dc72dbbe0c7f7d81808c32814fb3afd109` |
| 28 | `theorem` | [erange_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/erange-coe.md) | 230 | `result-track:8f2db679557a18b6abd9a95bb2e1cac579919a137c1bb6e9bb9257a3549ccfbb` |
| 29 | `def` | [evalEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/evalequiv.md) | 234 | `declaration-track:320b4390a50cc66c66b2df75c7cb7d723cf7922310d70ce5f0f85d3a533e9718` |
| 30 | `lemma` | [evalEquiv_toLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/evalequiv-tolinearmap.md) | 237 | `result-track:c0920ca029b9f92433437244c8318ff2916cee6bf857848592fab7a5cde2732a` |
| 31 | `lemma` | [evalEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/evalequiv-apply.md) | 239 | `result-track:ef4276c4bbe7897d8278d804cfde1c69b87c48fbb5ed963c008653b5412e1c2d` |
| 32 | `lemma` | [apply_evalEquiv_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/apply-evalequiv-symm-apply.md) | 241 | `result-track:4bab0405ff0f4003164fb4471b7897118ac148687405a5c409827b03dacab2d1` |
| 33 | `lemma` | [symm_dualMap_evalEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/symm-dualmap-evalequiv.md) | 246 | `result-track:d6d29cf596d8bcc26f5cbbeb7e01e288a8f27ec98b94b96514a86c6b621ed698` |
| 34 | `lemma` | [Dual.eval_comp_comp_evalEquiv_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dual-eval-comp-comp-evalequiv-eq.md) | 250 | `result-track:a4d9a0fe2ebdfe58ba107206099f01106e60f2b112ec8912b6b20e1fc60d4182` |
| 35 | `lemma` | [dualMap_dualMap_eq_iff_of_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dualmap-dualmap-eq-iff-of-injective.md) | 256 | `result-track:9e2b041e904d7127b3a0d8702f6f55b007897205f5b90e98904f21dcaabbbd7b` |
| 36 | `lemma` | [dualMap_dualMap_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dualmap-dualmap-eq-iff.md) | 266 | `result-track:dbdb423ffb349187d56bf2a52fd89d4c02fdbbc12b2bd9e8eb2c352ecf835110` |
| 37 | `instance` | [Dual.instIsReflecive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dual-instisreflecive.md) | 272 | `declaration-track:55d323ca58b0e2db497cc6980b668b90b265b97845b6ddcc3ff7091289136054` |
| 38 | `lemma` | [IsReflexive.of_split](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/isreflexive-of-split.md) | 277 | `result-track:9a0a156c097a8f70249e464a5603c6555e319bf5b4572e23d1f80e562f931de4` |
| 39 | `def` | [mapEvalEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/mapevalequiv.md) | 286 | `declaration-track:29e3ec2cddab054f423fef2f9b64dab1a517ce0fe3b9656fa1978f799c51ae9f` |
| 40 | `theorem` | [mapEvalEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/mapevalequiv-apply.md) | 290 | `result-track:19e249283433b426cc0068fc4d6b5fc370e175b68d58fafa030009b6546fd22b` |
| 41 | `theorem` | [mapEvalEquiv_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/mapevalequiv-symm-apply.md) | 295 | `result-track:42ed6397d1558de973d9c81d24a4cf9590fc55c6d60b14806bedd71fca352aac` |
| 42 | `lemma` | [equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/equiv.md) | 300 | `result-track:37bb290d25e79228401aa29b8f2005ae12bb94fb961e17f2e4de97dbce3e9c53` |
| 43 | `instance` | [Dual Defs Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/instmoduleisreflexive.md) | 310 | `declaration-track:4bd34129d6634611abed80743de72edd1b67c6de0ecb405a2ae5a339c126306e` |
| 44 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 314 | `declaration-track:60d41ded413c4f89d78fe6a299a17f80936797831889b3ed519fa1f62e507648` |
| 45 | `def` | [dualRestrict](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dualrestrict.md) | 330 | `declaration-track:b61656a0a420849736dbc86e45774cce0365b94f31511719b1bf6205c025385f` |
| 46 | `theorem` | [dualRestrict_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dualrestrict-def.md) | 333 | `result-track:a3ed41f450665c1b097bdf6763288935ab430d3d3d1fdc2c2aba7f4bb589fb99` |
| 47 | `theorem` | [dualRestrict_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dualrestrict-apply.md) | 337 | `result-track:3e5d70451d30d784cb9d4cbe3903da1f7c5b72d60188d574638b61a8122fda25` |
| 48 | `def` | [dualAnnihilator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dualannihilator.md) | 343 | `declaration-track:a949311805739ab359b2f2228962698d59eb16d39235d9f5baebbbd39d1ec708` |
| 49 | `theorem` | [mem_dualAnnihilator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/mem-dualannihilator.md) | 348 | `result-track:c63fd2f9c0bcaa60f8d3fe6f47098aa133d799fd3751016f8105b8cda4a47723` |
| 50 | `theorem` | [dualRestrict_ker_eq_dualAnnihilator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dualrestrict-ker-eq-dualannihilator.md) | 354 | `result-track:58963062bc1a403cf36123c667858066533a10858be4deadc98499b3dc2e2032` |
| 51 | `def` | [dualCoannihilator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dualcoannihilator.md) | 360 | `declaration-track:87bdd697b1cadf9dff10e6ab8ac6ce4a61e9bf269f3adf077a259907c31dbfe0` |
| 52 | `theorem` | [mem_dualCoannihilator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/mem-dualcoannihilator.md) | 364 | `result-track:14bcda51f955ad926abaf7ae29e06b0af835a975cf3208b8f713f979334c7a23` |
| 53 | `lemma` | [dualAnnihilator_map_dualMap_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dualannihilator-map-dualmap-le.md) | 368 | `result-track:38d1681486a4a103ee62287cba575e525117f9ca1ef0d3a2c76683a50387d634` |
| 54 | `theorem` | [comap_dualAnnihilator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/comap-dualannihilator.md) | 373 | `result-track:226dc3b3091e13730a4d5e723aefc56af5d30220b644aa0648d8047c275da86a` |
| 55 | `theorem` | [map_dualCoannihilator_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/map-dualcoannihilator-le.md) | 376 | `result-track:0d4bbcac47b201659ed80fc07c5ccd6320b118e70961b1b38dc02b7dc5125987` |
| 56 | `theorem` | [dualAnnihilator_gc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dualannihilator-gc.md) | 381 | `result-track:96a23411ea5131b1029e9f85bac13a936b8334698955ed81a5247f9e28ac2771` |
| 57 | `theorem` | [le_dualAnnihilator_iff_le_dualCoannihilator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/le-dualannihilator-iff-le-dualcoannihilator.md) | 391 | `result-track:1e07cc9c17b63ff6e391590d0708a6bae0661fc5d4cd4a40b2b03b087d419059` |
| 58 | `theorem` | [dualAnnihilator_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dualannihilator-bot.md) | 396 | `result-track:48244cd8bb173adda0714cb3f3fbbd34df7121da45c826eac9093e41652c53b9` |
| 59 | `theorem` | [dualAnnihilator_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dualannihilator-top.md) | 400 | `result-track:68ec4b344770f554b6aad98f7d1df9d7c870dc07fc859f9ce5a93477aaacb5d6` |
| 60 | `theorem` | [dualCoannihilator_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dualcoannihilator-bot.md) | 404 | `result-track:ba1d5768da75d6bc2320af5e0a6af92ca0991d5f965a83df7f21c9c798497a6a` |
| 61 | `theorem` | [dualAnnihilator_anti](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dualannihilator-anti.md) | 408 | `result-track:e3002406a5fe88c0cadc39fdf6a65cab0a3555a5416f1cf0a43f4889d66d4822` |
| 62 | `theorem` | [dualCoannihilator_anti](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dualcoannihilator-anti.md) | 413 | `result-track:ec3d2aebf7ca88226199d4c8537f1bf71f1df3b1c8edc648bd6c96e09f5bd2f2` |
| 63 | `theorem` | [le_dualAnnihilator_dualCoannihilator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/le-dualannihilator-dualcoannihilator.md) | 417 | `result-track:122e3cd0ba2d1fe31c2a6080ab66f99777089dfdef89f823e2aaa69c3b744b26` |
| 64 | `theorem` | [le_dualCoannihilator_dualAnnihilator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/le-dualcoannihilator-dualannihilator.md) | 421 | `result-track:9b2a75212981168c5e178d6dbc0c596bdc886d318b6052addfdebb381eda85c7` |
| 65 | `theorem` | [dualAnnihilator_dualCoannihilator_dualAnnihilator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dualannihilator-dualcoannihilator-dualannihilator.md) | 425 | `result-track:391aed116e3d55719ff71e6c0cbbee3355b3877c8aa120feb9085af8726e9f3a` |
| 66 | `theorem` | [dualCoannihilator_dualAnnihilator_dualCoannihilator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dualcoannihilator-dualannihilator-dualcoannihilator.md) | 429 | `result-track:0668592a904df45574507dbbac6d3aca8592faa6e3444d27715d419ba32eab20` |
| 67 | `theorem` | [dualAnnihilator_sup_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dualannihilator-sup-eq.md) | 433 | `result-track:63349a895aa89108f77fecc6d6e1a43b070ca5b9d96ee230b85f6e91514dbfd3` |
| 68 | `theorem` | [dualCoannihilator_sup_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dualcoannihilator-sup-eq.md) | 437 | `result-track:53d19396680baab51329a93934ec09d4354b903924144878fcaf9b483b84179e` |
| 69 | `theorem` | [dualAnnihilator_iSup_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dualannihilator-isup-eq.md) | 441 | `result-track:20dcfc5dbc17d3c7931931699252e1bc73c85e38ff730bf2a92e4e3037c4d4ac` |
| 70 | `theorem` | [dualCoannihilator_iSup_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dualcoannihilator-isup-eq.md) | 445 | `result-track:5d345c533b08899969694d9e251aff7bc861bcc7747b2065b301cfaf5f7f0e4a` |
| 71 | `theorem` | [sup_dualAnnihilator_le_inf](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/sup-dualannihilator-le-inf.md) | 450 | `result-track:4ff475b2aa9efc5e03897956768e1516982376cdd567a8e7c69bbaf4532c1c5a` |
| 72 | `theorem` | [iSup_dualAnnihilator_le_iInf](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/isup-dualannihilator-le-iinf.md) | 456 | `result-track:d4173007118b04ee506a358689cb25b2980497627bde1af24ea9967988880e52` |
| 73 | `lemma` | [coe_dualAnnihilator_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/coe-dualannihilator-span.md) | 463 | `result-track:a4db54986a1dbf831a15ff66ba7c52d80111597a3406a33d9cb29cd2d23ae24b` |
| 74 | `lemma` | [coe_dualCoannihilator_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/coe-dualcoannihilator-span.md) | 470 | `result-track:0e5b2bd45c3dcec43c23d105a797955a98997ccd96f6d429e02cfc944caed74f` |
| 75 | `theorem` | [ker_dualMap_eq_dualAnnihilator_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/ker-dualmap-eq-dualannihilator-range.md) | 487 | `result-track:e8c94f59c633f9e2d852b5f706604373afe15f0c9963f4301bce809f7af78306` |
| 76 | `theorem` | [range_dualMap_le_dualAnnihilator_ker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/range-dualmap-le-dualannihilator-ker.md) | 493 | `result-track:2954a94b919f9bceaebda5b5ae4f5bdd04f2272e38e03517afc7da65a653e34c` |
| 77 | `theorem` | [ker_dualMap_eq_dualCoannihilator_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/ker-dualmap-eq-dualcoannihilator-range.md) | 509 | `result-track:c32a9cb602e503ea497463e567830f41831c45c91eb28ac34b5185029d0ff015` |
| 78 | `lemma` | [dualCoannihilator_range_eq_ker_flip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualDefsNamespacedPublic.lean/declarations/dualcoannihilator-range-eq-ker-flip.md) | 514 | `result-track:cd62035affb3f985097d687c9e5919f794ff5e33148aeeb426d30cbfdf5ff41f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c756c349a1a08341d7abc4b5b45b5be38ac586d2fc678123edcd574605d382e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variant4eecdc839a1ef270105034f6d72dcdf89c1f450e97df626d87ce0f4a4d36563f.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Variant4eecdc839a1ef270105034f6d72dcdf89c1f450e97df626d87ce0f4a4d36563f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
