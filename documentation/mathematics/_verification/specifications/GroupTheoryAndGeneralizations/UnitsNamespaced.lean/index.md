# Verification target: Units Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1e6f0ca0aa1726c564c4812e096fc5896550357",
  "lexical_observation_count": 107,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Units/Variant0413b02ef9f0b9304e53713d9bac9adccbd7b0444809a538d9202ec3a83db038.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1e6f0ca0aa1726c564c4812e096fc5896550357`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Units/Variant0413b02ef9f0b9304e53713d9bac9adccbd7b0444809a538d9202ec3a83db038.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Units/Variant0413b02ef9f0b9304e53713d9bac9adccbd7b0444809a538d9202ec3a83db038.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Unique` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Nontriviality` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Units](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/units.md) | 53 | `declaration-track:caf0e0a4515d49d8fa56f8c27a4649cbe7264826bab19a472f42b0a613cbdaf4` |
| 2 | `structure` | [AddUnits](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/addunits.md) | 79 | `declaration-track:7b5e536f27faec6496a662c1385a9bf3538558681a567af87ed178a7965d5001` |
| 3 | `theorem` | [unique_one](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/unique-one.md) | 100 | `result-track:0be080f216becfc158897bf452ead558014d7c0fa1d9bd6822bd263b97c005c5` |
| 4 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/instance-source-edition-9.md) | 114 | `declaration-track:cee47588f6063740eb2171cbf798957b7250e4d82db8569d388dadd86cae6b4b` |
| 5 | `instance` | [instInv](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/instinv.md) | 119 | `declaration-track:244f5f4762b7f76b5749bdb0aa4f01e08de87af3d9b50b67cbc138c0756c8843` |
| 6 | `def` | [Simps.val_inv](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/simps-val-inv.md) | 130 | `declaration-track:feceb38527e045bedafe50e5610ee36001ea867eb9a9b215a26b6c644482e5a9` |
| 7 | `theorem` | [val_mk](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/val-mk.md) | 141 | `result-track:de8622ebed89dba4ae37cd8a1e6794fc25fc222451a0e17d5d3d2be64ad90a46` |
| 8 | `theorem` | [ext](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/ext.md) | 147 | `result-track:5e33d08bb5523213a143bc0cfcca6f4e1799e9c8a337fed9b60e44e97105cdb3` |
| 9 | `theorem` | [eq_iff](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/eq-iff.md) | 155 | `result-track:13509d336e777f02b851b727b0f69c873180391165cec39044a2992b8da15ccb` |
| 10 | `theorem` | [ext_iff](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/ext-iff.md) | 161 | `result-track:a876a80d2ad2a01719269d1b784af3352ccc18d8acaf530f47d729ada8334e6c` |
| 11 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/instance-source-edition-5.md) | 169 | `declaration-track:70b8afb610716556937fb8eb43d53d68a133499dc1c1970b23cc37a1f82f7c0d` |
| 12 | `theorem` | [mk_val](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/mk-val.md) | 172 | `result-track:102126ebc8c2c426752c3953207b9a210a65c3b5487a7b41b0ff45642aac971e` |
| 13 | `def` | [copy](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/copy.md) | 179 | `declaration-track:70103bbf0a22835630c48cfe7e1677ebd58074c5aab0eac2026f6d8a07d96842` |
| 14 | `theorem` | [copy_eq](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/copy-eq.md) | 189 | `result-track:1cfa20c2fafd97a7a4551026fbe6f81527ccda802256646478f8702c27efeb71` |
| 15 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/instance.md) | 196 | `declaration-track:112e3b3a5afca32c1abf1d50b96fdbcb5e4231bcdbc522e8dc98b05cf15cc121` |
| 16 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/instance-source-edition-8.md) | 207 | `declaration-track:c974286ae867675c4f78760c7bd1174308ec2314b84ca49cdced56c4e3c070ea` |
| 17 | `instance` | [instCommGroupUnits](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/instcommgroupunits.md) | 216 | `declaration-track:95490312509acb45ebc7e6ba266cd5453b3cce5923457ab6050983ca7d873b7e` |
| 18 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/instance-source-edition-7.md) | 225 | `declaration-track:afb85e55b27341aa7266ceca1f34e3d4f7865dfd7fc24fa46373ca95f933a299` |
| 19 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/instance-source-edition-4.md) | 232 | `declaration-track:5c40c518bc45b7490716ac7ed392b1be355b712ce06e2a4b22f35907e80d9705` |
| 20 | `theorem` | [val_mul](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/val-mul.md) | 238 | `result-track:f43cad1ec107467156365524fa662ce434cc45100e5f592a1e607ca176df3984` |
| 21 | `theorem` | [val_one](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/val-one.md) | 244 | `result-track:f5db4552fb8e1e09e461f77c98dd13c245b57a291c295b4960e1ba8477774670` |
| 22 | `theorem` | [val_eq_one](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/val-eq-one.md) | 250 | `result-track:f766116e53e56226ef99dd378a5c95ff3f7651f65903ced49f9c3d20ddbcd76c` |
| 23 | `theorem` | [inv_mk](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/inv-mk.md) | 255 | `result-track:9f28fb03dba588437548ccd668469edb7137cb74129fcb306f2ba167d06a65af` |
| 24 | `theorem` | [inv_eq_val_inv](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/inv-eq-val-inv.md) | 265 | `result-track:174bc1e367d34cf87db829e56d6bbf784e8479b944cdf0f9d28efbe61c127ed5` |
| 25 | `theorem` | [inv_mul](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/inv-mul.md) | 271 | `result-track:52a5cfea13e85257d698480c667a3e9932a63a26e79fc211804c07fabf511bb8` |
| 26 | `theorem` | [mul_inv](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/mul-inv.md) | 277 | `result-track:ddace499b78cd04043442dd45c92c504e6b303201f1bcdd7756e42e4280cb8a1` |
| 27 | `theorem` | [inv_mul_of_eq](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/inv-mul-of-eq.md) | 283 | `result-track:65366f1368d00ae7d47a78ccb654e0672acec4e5c4987de8fbe146553a99b25a` |
| 28 | `theorem` | [mul_inv_of_eq](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/mul-inv-of-eq.md) | 288 | `result-track:f6c9b55a8f8d2984bdec93573662aba06be3a4166a7fe909f9fbfd26910b8d1b` |
| 29 | `theorem` | [mul_inv_cancel_left](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/mul-inv-cancel-left.md) | 293 | `result-track:d3377d9c0893366a3d5db6d0ae35be5c3481c6191791d750831cca0a9a0a72ad` |
| 30 | `theorem` | [inv_mul_cancel_left](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/inv-mul-cancel-left.md) | 299 | `result-track:9f1acc982c080ddd1d9af503ce8820af153295b1c43025e43a853e699c73e101` |
| 31 | `theorem` | [mul_inv_cancel_right](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/mul-inv-cancel-right.md) | 305 | `result-track:6279518c841e87007d780545b7206c85c72c17da78ee7c5b1534b7a7ec40936b` |
| 32 | `theorem` | [inv_mul_cancel_right](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/inv-mul-cancel-right.md) | 311 | `result-track:e01740e99e0541c162369e19a0124704734f883b4958031f73742c0106f43bef` |
| 33 | `theorem` | [mul_right_inj](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/mul-right-inj-source-edition-2.md) | 317 | `result-track:e7129446647bd46ddd7c6c738ebe7b5569781ed18638d133566b271540b8cea8` |
| 34 | `theorem` | [mul_left_inj](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/mul-left-inj-source-edition-2.md) | 324 | `result-track:f71ee95e2f0e467c1a3a73760b4a4329e1b08bfa5a0c9b9f49d3b144ecf743d9` |
| 35 | `theorem` | [eq_mul_inv_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/eq-mul-inv-iff-mul-eq.md) | 331 | `result-track:ab569e1e46cd95b439f612e10e39c3e11577fda3e614fa5fe65d2791a836ef70` |
| 36 | `theorem` | [eq_inv_mul_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/eq-inv-mul-iff-mul-eq.md) | 337 | `result-track:dfda8a66b3464034de9fbbefed1c6e8016a0a77f9589c97b2f0880bcc16e324b` |
| 37 | `theorem` | [inv_mul_eq_iff_eq_mul](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/inv-mul-eq-iff-eq-mul.md) | 343 | `result-track:909c1e8a3f9a7d40ef5d3679394b65ed93bdcbe1a6178785807a83a51a377190` |
| 38 | `theorem` | [mul_inv_eq_iff_eq_mul](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/mul-inv-eq-iff-eq-mul.md) | 349 | `result-track:d3713ce544cbbfc68fe0c9acb3b85975998512771d517522cf254d2bb88b0d52` |
| 39 | `theorem` | [inv_eq_of_mul_eq_one_left](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/inv-eq-of-mul-eq-one-left.md) | 356 | `result-track:230a368388fca8beab759a51a9041377ec49278a71b1a1d8bb1e9d052e09eafd` |
| 40 | `theorem` | [inv_eq_of_mul_eq_one_right](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/inv-eq-of-mul-eq-one-right.md) | 366 | `result-track:dfa74a0fe34270072a597fcbe1761c226eb16c73c07f33970042d7214ca64635` |
| 41 | `theorem` | [eq_inv_of_mul_eq_one_left](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/eq-inv-of-mul-eq-one-left.md) | 375 | `result-track:a08d37c7d8b83be0461230c941ecf0557abdf1e43e34502c3fb51a37a8fe0831` |
| 42 | `theorem` | [eq_inv_of_mul_eq_one_right](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/eq-inv-of-mul-eq-one-right.md) | 381 | `result-track:3241953a038040018e93918adc898686a0a75935adacae5a9db258f02ec7956f` |
| 43 | `theorem` | [mul_inv_eq_one](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/mul-inv-eq-one.md) | 387 | `result-track:c84c1409ac62ff8ec5cad32f35cfbbcc835bcafa31ad3c7034150d7e6681e554` |
| 44 | `theorem` | [inv_mul_eq_one](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/inv-mul-eq-one.md) | 393 | `result-track:118276189c1b79921996a7c7b1b43bcabe99e2c3b7eb5780dd9ce67b326f504c` |
| 45 | `theorem` | [mul_eq_one_iff_eq_inv](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/mul-eq-one-iff-eq-inv.md) | 399 | `result-track:ddd61c512adb2f2d3ee69d3a9e730a4df77b7e464c46583f570cb95b1e7b9408` |
| 46 | `theorem` | [mul_eq_one_iff_inv_eq](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/mul-eq-one-iff-inv-eq.md) | 404 | `result-track:ca790149ecb2e1ab9e16307264d2fb0a5f4b1d4594341701eab8cdd0cb3d4873` |
| 47 | `theorem` | [inv_unique](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/inv-unique.md) | 409 | `result-track:3e1fcf158db699ee84a9173c1b33c7c9007d4f251f40b347b88e85645fb5b676` |
| 48 | `theorem` | [val_inv_eq_inv_val](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/val-inv-eq-inv-val.md) | 415 | `result-track:dc7207ea31e4fe9da34433dd8a9fc8800d3f68d58907c6cddc3e322300d3c97f` |
| 49 | `def` | [Units.mkOfMulEqOne](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/units-mkofmuleqone.md) | 424 | `declaration-track:9e97c75a442e4210c28498e2a1e9aab4c1e28794f515c0f71c85d08a9f5d1dfc` |
| 50 | `theorem` | [Units.val_mkOfMulEqOne](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/units-val-mkofmuleqone.md) | 430 | `result-track:d74eee5de0d3a5f73962f1a15253fb352a848edd860e653fdbad24514647ad32` |
| 51 | `def` | [divp](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/divp.md) | 443 | `declaration-track:b4584e2b72a7c0a2d3a22824472220105c61bf7d201696f0412f852e0866ef1e` |
| 52 | `theorem` | [divp_self](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/divp-self.md) | 451 | `result-track:1402f83b62e00e9f0616b846510b063c1f11e9d524b72efd995335ae7e7a3c26` |
| 53 | `theorem` | [divp_one](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/divp-one.md) | 456 | `result-track:4a3b4392850e1fb8e527731710750c8133f633d307f1ef3375e407c437ea5785` |
| 54 | `theorem` | [divp_assoc](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/divp-assoc-source-edition-2.md) | 460 | `result-track:7ecf1e5bb937b6b789200e57fe22d72c3e1e7ea054f442585861993eddbd7fa2` |
| 55 | `theorem` | [divp_assoc'](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/divp-assoc.md) | 466 | `result-track:295a3564495c512dfb6d59c590cbbf116d177a2047cf023a104d79fc5af25a18` |
| 56 | `theorem` | [divp_inv](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/divp-inv.md) | 471 | `result-track:35748b84e336547c15a6b10105e7e722c3a3070d2f77045469552c17812dd8b3` |
| 57 | `theorem` | [divp_mul_cancel](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/divp-mul-cancel.md) | 476 | `result-track:1015cbe4620924199be1e0854f263af19d5d588d59e761bbf3d340838c2245d0` |
| 58 | `theorem` | [mul_divp_cancel](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/mul-divp-cancel.md) | 481 | `result-track:8a9b7b7bd622de203c0facce0172834c64d358b3ad0403836102e4148717a880` |
| 59 | `theorem` | [divp_left_inj](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/divp-left-inj.md) | 486 | `result-track:7bd7340dc8cde4930857489a61e51a466cd993077b6155121111a798eb28342b` |
| 60 | `theorem` | [divp_divp_eq_divp_mul](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/divp-divp-eq-divp-mul.md) | 491 | `result-track:6b1ad77669cca7c14fa16eb4bec0d1f871a3717a14153155b007b3bb83751780` |
| 61 | `theorem` | [divp_eq_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/divp-eq-iff-mul-eq.md) | 498 | `result-track:730d7c1c85c0a271e9013470f1ba8ead278cdfe7ecc0238e3194f83c82323770` |
| 62 | `theorem` | [eq_divp_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/eq-divp-iff-mul-eq.md) | 503 | `result-track:31f84990b66b6a0e04a37414d7d916bc67553031cff37b6a6e1ad757b1324d67` |
| 63 | `theorem` | [divp_eq_one_iff_eq](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/divp-eq-one-iff-eq.md) | 507 | `result-track:b70478313d50dab6224668a6501adeb0b4ca2e02914bb7ffdb14e4e86c6d2020` |
| 64 | `theorem` | [one_divp](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/one-divp.md) | 512 | `result-track:db44182ce0f98ce813ec4cedf3a7ed405c26bcfd7b3d6ee2802d5643cf402fd0` |
| 65 | `theorem` | [inv_eq_one_divp](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/inv-eq-one-divp.md) | 518 | `result-track:6142be80293825bcf25db16b97ac312ffa50bd4cc91a66aeae15e97dc1dc2653` |
| 66 | `theorem` | [inv_eq_one_divp'](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/inv-eq-one-divp-source-edition-2.md) | 526 | `result-track:c8caa641e37f128a33079baec2e83226f0456e9ea13627ab431f583d10accd7f` |
| 67 | `theorem` | [val_div_eq_divp](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/val-div-eq-divp.md) | 534 | `result-track:4230a1d7d9588e0089dcfc1bd3535e0efe5221bcebbf4be95670bf12600c6634` |
| 68 | `theorem` | [divp_mul_eq_mul_divp](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/divp-mul-eq-mul-divp.md) | 545 | `result-track:db1cdb6747b08aa5856965b58dd8c7f40669faaf1ff64a9185f4b8ebffe3374b` |
| 69 | `theorem` | [divp_eq_divp_iff](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/divp-eq-divp-iff.md) | 551 | `result-track:a0c07855de9a6a42a1ffc42f28a187fb7520d7613153eb40e60d5b339365489c` |
| 70 | `theorem` | [divp_mul_divp](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/divp-mul-divp.md) | 557 | `result-track:dc26a3b6125ffaab85d962ebba46223c671030115c3f3cf1cc8d2fffdd356d89` |
| 71 | `theorem` | [eq_one_of_mul_right](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/eq-one-of-mul-right.md) | 564 | `result-track:4efde0046a667ee4083d89b47a74839bd00f7599873457be37ab09c1374b9a58` |
| 72 | `theorem` | [eq_one_of_mul_left](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/eq-one-of-mul-left.md) | 570 | `result-track:7c371638db8bbb3432345da3e0f2c5359d2459ff8a56cb761ffc12887f5a92eb` |
| 73 | `theorem` | [mul_eq_one](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/mul-eq-one.md) | 576 | `result-track:e8d901a26fada1eee8b76df514da6f64749c6a22cd897f48c2c8b2ba277462cc` |
| 74 | `def` | [IsUnit](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/isunit.md) | 601 | `declaration-track:70b33dc832afbad298713d7941b6b4a9e2985e307ba97cdd3836ada0a7cd6264` |
| 75 | `theorem` | [isUnit_of_subsingleton](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/isunit-of-subsingleton.md) | 607 | `result-track:c605df7ce680702cbabf922f84439f57974f0a74a877ec5d67ea6b8057d7c21b` |
| 76 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/instance-source-edition-6.md) | 613 | `declaration-track:7cad016087aa0025e0c5884fe2626e849c61ffef0837a011ba7937c797a991af` |
| 77 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/instance-source-edition-3.md) | 618 | `declaration-track:42b0b1d199ddf51bd8cee7d5ad5e5554865f5ff21120e96d7d8a665973c8d419` |
| 78 | `theorem` | [Units.isUnit](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/units-isunit.md) | 624 | `result-track:b0c4ad4c0ac0938cced6477098e9ec0d367ec58914873b4907d247c31b31fc57` |
| 79 | `theorem` | [isUnit_one](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/isunit-one.md) | 630 | `result-track:90c01262c4c261016e1770b7308de315c95e2a5237ca6c4c2d26d200dcc1fa96` |
| 80 | `theorem` | [isUnit_of_mul_eq_one](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/isunit-of-mul-eq-one.md) | 636 | `result-track:ebee087f8da4c90eea99decc444877aa095e851f9392a9cedf0c560e6ed1fa49` |
| 81 | `theorem` | [IsUnit.exists_right_inv](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/isunit-exists-right-inv.md) | 642 | `result-track:d349b47840d1ac3719583b4318a6bd35dcb263cfa9ef309bb60dcd3049adde17` |
| 82 | `theorem` | [IsUnit.exists_left_inv](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/isunit-exists-left-inv.md) | 649 | `result-track:e341c80cb55a073b09335db05f8dbcf2873d196057c34b45ddd4a9b46bb14c75` |
| 83 | `theorem` | [isUnit_iff_exists_inv](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/isunit-iff-exists-inv-source-edition-2.md) | 656 | `result-track:cea116ebd584407f75f16458871ded11e6b078655b55d01f307af373f6152178` |
| 84 | `theorem` | [isUnit_iff_exists_inv'](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/isunit-iff-exists-inv.md) | 662 | `result-track:85749a332322ba0404b17de55dcc3ae029795b97d9b0aa1e624a31fadd5ccf18` |
| 85 | `theorem` | [IsUnit.mul](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/isunit-mul.md) | 668 | `result-track:ff212da111b1ce945973c521273f14cdc5273f11cdf3de5b2899b665a55ac438` |
| 86 | `theorem` | [Units.isUnit_mul_units](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/units-isunit-mul-units.md) | 677 | `result-track:abaca845268270662511e5efb5a696477a5f462f96254019a111443222c71312` |
| 87 | `theorem` | [Units.isUnit_units_mul](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/units-isunit-units-mul.md) | 689 | `result-track:684ec65c304ac99bde8ca3ae6b0eba41688d1146f12f48e350d82ce22ee2ae8e` |
| 88 | `theorem` | [isUnit_of_mul_isUnit_left](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/isunit-of-mul-isunit-left.md) | 700 | `result-track:3d93a17edfa60e8bc97caa7807d80dea3095f266a1eb4252c46d52f795055891` |
| 89 | `theorem` | [isUnit_of_mul_isUnit_right](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/isunit-of-mul-isunit-right.md) | 707 | `result-track:3bd23c433c04952ae67d41874cb179dffa8a5e7fc9a2d40f535f14cafa0179a0` |
| 90 | `theorem` | [mul_iff](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/mul-iff.md) | 715 | `result-track:c52712dbef1e5d2d1ed85322681e3458aacf87a8eb51f49c00d7ef247b99e868` |
| 91 | `def` | [unit](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/unit.md) | 727 | `declaration-track:b11969e71fa565a1254210e3ce3a47c4145230ac6fdc5df504d2abceb71154f2` |
| 92 | `def` | [Units Namespaced](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-units-varian.md) | 735 | `declaration-track:a2eece9923bf758cb0d19cc3340daafb4c9966a2399d6833c210757315c9c5b8` |
| 93 | `theorem` | [unit_of_val_units](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/unit-of-val-units.md) | 742 | `result-track:2f98dcb281e6aeff9638f5b66ad39d4723d6a158d97f23137cc195ea1a87d8be` |
| 94 | `theorem` | [unit_spec](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/unit-spec.md) | 748 | `result-track:5c931633aceebbcba8bbd657c61441e085e6e86e60be1122af3bae136d6d5e1c` |
| 95 | `theorem` | [val_inv_mul](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/val-inv-mul.md) | 754 | `result-track:99971b392b4fa057c5d8a15ec818d4d620706b15e277037b14a47c4e2380d35c` |
| 96 | `theorem` | [mul_val_inv](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/mul-val-inv.md) | 760 | `result-track:7f5e664ff45d98683748a9582f7c9bf07db79fe5846b18a5fa2efaa0f04edeaf` |
| 97 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/instance-source-edition-2.md) | 767 | `declaration-track:26b7868ecd91ff88f9913b4c9605f7a8cf17009789126a088ec66f0784092af1` |
| 98 | `theorem` | [mul_left_inj](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/mul-left-inj.md) | 771 | `result-track:5246da4904de732ee610ee50c4edd86ac6911bb0acf165ac8a24251db599a5bc` |
| 99 | `theorem` | [mul_right_inj](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/mul-right-inj.md) | 778 | `result-track:4aa1a19d3daed89b33bfffecce86245c17ad4f48d791eeff571c8b4cdb20a5f6` |
| 100 | `theorem` | [mul_left_cancel](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/mul-left-cancel.md) | 785 | `result-track:c1a0276a3d21c213e4b27abdb5e23d51bebe2d37fc9e7d61222ea15cdad3d8d6` |
| 101 | `theorem` | [mul_right_cancel](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/mul-right-cancel.md) | 791 | `result-track:5e475337112bc2451daf46f2a0ed926cd400eff8b8a65fe3ce380e9673321881` |
| 102 | `theorem` | [mul_right_injective](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/mul-right-injective.md) | 797 | `result-track:ab062bf6bbf93303eb98f975a59261bd97062e5ef96f9f4f2a83d7add015bb81` |
| 103 | `theorem` | [mul_left_injective](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/mul-left-injective.md) | 803 | `result-track:d430f2df0368524f30162439e8a35a90ae86907b231da1e5ddc9dcbdd4ba10f4` |
| 104 | `theorem` | [inv_mul_cancel](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/inv-mul-cancel.md) | 813 | `result-track:96ea806bd811a74ca8ded59b1a74ca82bc26c2778d1ddee91aa48669a2dc7cc3` |
| 105 | `theorem` | [mul_inv_cancel](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/mul-inv-cancel.md) | 820 | `result-track:4bed5da0915b9b3d00abc73fa7f89fb53fa65c7b876f00b9ee69325c6db23fe7` |
| 106 | `def` | [groupOfIsUnit](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/groupofisunit.md) | 837 | `declaration-track:9f9123ccd942585ad64598b71247afb7f7616cea99e0468c56f2fef1f512e6ed` |
| 107 | `def` | [commGroupOfIsUnit](../../../../GroupTheoryAndGeneralizations/UnitsNamespaced.lean/declarations/commgroupofisunit.md) | 846 | `declaration-track:b2bdb181bae20167b3e6cc38b7fb65163590d348e7729f37ac85b7e7f52e9de3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47591fea3644fd3388b5469f180aa660220c5fd672c731d2f07b7d137b10cb9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Units/Variant0413b02ef9f0b9304e53713d9bac9adccbd7b0444809a538d9202ec3a83db038.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Units/Variant0413b02ef9f0b9304e53713d9bac9adccbd7b0444809a538d9202ec3a83db038.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
