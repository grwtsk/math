# Verification target: Order Closure Mk

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc69afe7916138f6b54f0bb6ad28dd1b4bb6cf72",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variant4e425fc6333627e617499146db5d6573144709fdd918e685ecc7200734266c39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc69afe7916138f6b54f0bb6ad28dd1b4bb6cf72`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variant4e425fc6333627e617499146db5d6573144709fdd918e685ecc7200734266c39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variant4e425fc6333627e617499146db5d6573144709fdd918e685ecc7200734266c39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.GaloisConnection` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ClosureOperator](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closureoperator.md) | 60 | `declaration-track:b6b5f19d0d50be881d50d4586d5c2cfdcf78098b2d265cbca1b926d8c7b1d5bb` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/instance.md) | 69 | `declaration-track:01f888f435311975e229a5b1fc60378c5c485215cacc518fa5e8f4cd74fdde54` |
| 3 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/id.md) | 82 | `declaration-track:50f2a45cc91eb464d160a95e1647ac1a67377b5f81959a52595d87a25e6adb12` |
| 4 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/instance-source-edition-2.md) | 89 | `declaration-track:49a156c3de977c14687abbbdf5990732af5a8721649fa019366d937a168fe794` |
| 5 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/ext-source-edition-2.md) | 95 | `result-track:f5f053f795a2c6f082fcd46dd668db33f6cb4a40b8c2346e86a709b35303ac8f` |
| 6 | `def` | [mk'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/mk-source-edition-2.md) | 102 | `declaration-track:59ca9032c45ed707902a3a2a08a2aef885e463e5a5ff34d1fa365bb2329171f9` |
| 7 | `def` | [mk₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/mk.md) | 114 | `declaration-track:2b96417b285f11b25355562ce3d809adde5cee5644b456c142ae4c0c14d4b99d` |
| 8 | `def` | [mk₃](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/mk-source-edition-3.md) | 127 | `declaration-track:a41ac0268a9350ae40bbd719b1ad59ffb590f65a5dc7aba318676433f01bac19` |
| 9 | `theorem` | [closure_mem_mk₃](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-mem-mk.md) | 135 | `result-track:01412d6479f709474f6c69f7ffa3baaa07526a325fcb6c2d28e5bb4c41e29472` |
| 10 | `theorem` | [closure_le_mk₃_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-le-mk-iff.md) | 142 | `result-track:24c807e5d08239be2a922e0ae907e6620892ea47b4d5eea7813433525bb2fda1` |
| 11 | `theorem` | [monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/monotone-source-edition-2.md) | 149 | `result-track:a4ee779f717dcbfa4e9c776b56d359878aa6ee5893f2080deefbb568fecfe7e4` |
| 12 | `theorem` | [le_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/le-closure-source-edition-2.md) | 155 | `result-track:8f3e9de71d1329a90090bf3d3782cbc20b6ef0a99e34fe1a35938fed6474bfb2` |
| 13 | `theorem` | [idempotent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/idempotent-source-edition-2.md) | 160 | `result-track:aa546a3f89cbdbd67a57f77a76ae3d61242e9b9b392351acea6ee9e22027871a` |
| 14 | `theorem` | [le_closure_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/le-closure-iff.md) | 164 | `result-track:5c82d9d6b2c1fdb8a64c9e0e6ef2a4d425e46e4553ab24917b3fdf094827cad4` |
| 15 | `def` | [closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closed-source-edition-2.md) | 169 | `declaration-track:eb2eb183f5b45a6676661a081d29458745149f9cc7492ad8c932e8669e546e2c` |
| 16 | `theorem` | [mem_closed_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/mem-closed-iff-source-edition-2.md) | 172 | `result-track:bb61feb9cc00458f7d230f3faa9b238f4fa01199d73a6ed5c837a20ddae3df71` |
| 17 | `theorem` | [mem_closed_iff_closure_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/mem-closed-iff-closure-le-source-edition-2.md) | 176 | `result-track:d97ff1dcdbab9858f475329773f7569229f0565b9cb277b7488fd6b54de1b467` |
| 18 | `theorem` | [closure_eq_self_of_mem_closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-eq-self-of-mem-closed.md) | 180 | `result-track:6650030d1dd37691547a2ff58e67ed4d24bcb37c2ea3c6635016b35a83703573` |
| 19 | `theorem` | [closure_is_closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-is-closed.md) | 185 | `result-track:9367743cf688da7406f7922a6dc66bff76889d131b47b7bec98359714becfabd` |
| 20 | `theorem` | [closed_eq_range_close](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closed-eq-range-close-source-edition-2.md) | 190 | `result-track:f0f2826b8709636fe913f5f5a966bbe3619be607fd5fdfd48605bda161d17241` |
| 21 | `def` | [toClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/toclosed-source-edition-2.md) | 198 | `declaration-track:9f7b5400de0ddfd07533e5e27fb7773ff188381a64470df905ce0e1b2b979ceb` |
| 22 | `theorem` | [closure_le_closed_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-le-closed-iff-le.md) | 203 | `result-track:674324aa3cb3081a8ac0c5432376b1ea4f796ecc6720006704eee7a99283db4c` |
| 23 | `theorem` | [eq_mk₃_closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/eq-mk-closed.md) | 209 | `result-track:92b96ce870d90a8aada9ec7875d09dc829447d55f753453f6f1dcd4095867369` |
| 24 | `theorem` | [mem_mk₃_closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/mem-mk-closed.md) | 218 | `result-track:c44a38d7936468c5005432a9424ef48403f66b7cd79a20a8c0c30bd0e43d6697` |
| 25 | `theorem` | [closure_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-top.md) | 232 | `result-track:ceef6631c70d1389f42f95ef6426553552c21832c4d9d74c2ee8e0d3f032f307` |
| 26 | `theorem` | [top_mem_closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/top-mem-closed.md) | 236 | `result-track:94d3154b4e4853389542614ab824a9cf1c163d3da32df9c77eb3f63d59d1621d` |
| 27 | `theorem` | [closure_inf_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-inf-le-source-edition-2.md) | 242 | `result-track:ab03dde41c9f76a528cb0e02f289cb07a449fe58eaefaf191bad917eef2f429a` |
| 28 | `theorem` | [closure_sup_closure_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-sup-closure-le-source-edition-2.md) | 251 | `result-track:a93db4fcbbaf1d5fb26db3e5991cc7acb2f682df3366fcefd1c695561c35b9a0` |
| 29 | `theorem` | [closure_sup_closure_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-sup-closure-left.md) | 255 | `result-track:89735717e947b5fea59389e6528a90cf106cec6128594fd427e6f15f94349941` |
| 30 | `theorem` | [closure_sup_closure_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-sup-closure-right.md) | 261 | `result-track:7b461b975df5ea29dcc93bb9494ae550e2862de26ee586681824e90c902e0034` |
| 31 | `theorem` | [closure_sup_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-sup-closure.md) | 265 | `result-track:48436a403453843cf49ecb38f3f38f5f52fa3c446bd5f212d2656c322f51342e` |
| 32 | `theorem` | [closure_iSup_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-isup-closure-source-edition-3.md) | 276 | `result-track:9d0a1b8130ec5e2625007ad06c2c8620ff2a86ade7d652b7a6d3234111aac11c` |
| 33 | `theorem` | [closure_iSup₂_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-isup-closure.md) | 282 | `result-track:16c5b563a48026f9f421ed098d89d702a9e2a1dff714aaa67846b403e036b92d` |
| 34 | `structure` | [LowerAdjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/loweradjoint.md) | 300 | `declaration-track:2ba021523f8578d245cf5e1ade396144957c114d267cb014861be741bdea91c2` |
| 35 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/id-source-edition-2.md) | 313 | `declaration-track:74791981e7baf5e09233e90f745800018bba8720e760026edd44fdd618549c7b` |
| 36 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/instance-source-edition-4.md) | 321 | `declaration-track:5fc22dd50d213b6b11bbdcea3fe68d98e272a7651c1c77a55ec20981ec3b753d` |
| 37 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/instance-source-edition-3.md) | 328 | `declaration-track:578e7c4ecde550ffa4571f16755087ccc14539e40f1d87c76751799e98f231a6` |
| 38 | `theorem` | [gc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/gc.md) | 330 | `result-track:9007a5aae5b0e05ec94eeaa248572527866f18d4978d53f01a1427775428829f` |
| 39 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/ext.md) | 335 | `result-track:66e02f7660f7006290ddd833d38a8aefd2aa6018798de7fab8d659cf87d83b0c` |
| 40 | `theorem` | [monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/monotone.md) | 341 | `result-track:7373e49a510042c367e4658014d364a0fdc93258dc128df605580bf193bd69c1` |
| 41 | `theorem` | [le_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/le-closure.md) | 347 | `result-track:78c58067e7d412d3fe9faba5efb93c0c21c5356fe67237bed49099edff798ac3` |
| 42 | `def` | [closureOperator](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closureoperator-source-edition-2.md) | 360 | `declaration-track:f2272afc97cd58c8c11cae7be38d0cc25869d54dc3031a1905880a1490f957b1` |
| 43 | `theorem` | [idempotent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/idempotent.md) | 368 | `result-track:3d39723865e743f4acf320248866b24a1b97001a25c1a8c6ff9909c0fdd6ccd3` |
| 44 | `theorem` | [le_closure_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/le-closure-iff-source-edition-2.md) | 372 | `result-track:ecb386bf46fb386143e8ef54e96f65f9bc15986024cb7a8aea16d54f8662cace` |
| 45 | `def` | [closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closed.md) | 383 | `declaration-track:bec9d59b9fe6e7a0082c18ca920dd7bfb15e595eac1ebdda862902eade905ff8` |
| 46 | `theorem` | [mem_closed_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/mem-closed-iff.md) | 386 | `result-track:463a591fd53ca03d6d8f257b672189ce89acc3c945ba4d83ac76c882b2d187a9` |
| 47 | `theorem` | [closure_eq_self_of_mem_closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-eq-self-of-mem-closed-source-edition-2.md) | 390 | `result-track:7d2a1905ee5cc72a604fae00b7f10efa9c8912c26a3ec26380a8f4f2d90216f5` |
| 48 | `theorem` | [mem_closed_iff_closure_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/mem-closed-iff-closure-le.md) | 400 | `result-track:c02a3b1e3e87a78c0e8c2184ad602fdc8a59d511e2f7b5bece49d93dd6e93a30` |
| 49 | `theorem` | [closure_is_closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-is-closed-source-edition-2.md) | 405 | `result-track:9d3fd637c096d2a9d0334026f0365bb71d68c7eac6d3f8d6521d8afef881eabb` |
| 50 | `theorem` | [closed_eq_range_close](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closed-eq-range-close.md) | 410 | `result-track:5ad6652eade871db5e9739809b123fa42274351425cee510df83a7d86edd5a8c` |
| 51 | `def` | [toClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/toclosed.md) | 415 | `declaration-track:59bca14e266e56332dabc62a11ed60ac85a40fd45dbd30b423f425f00d9cba47` |
| 52 | `theorem` | [closure_le_closed_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-le-closed-iff-le-source-edition-2.md) | 420 | `result-track:e0920a5fb6bc44340940199015fa71e36c8bd2b5b8f3657a1357bf5366db8fda` |
| 53 | `theorem` | [closure_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-top-source-edition-2.md) | 426 | `result-track:e21f84510d0ead217cf5fb82dad60c20c4a4bca58eaf2aa09adf0fcfafa7221f` |
| 54 | `theorem` | [closure_inf_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-inf-le.md) | 431 | `result-track:a78ba2b22afb6598a1475f88e162f9ec3a9869bf2498ac1e67461b9b402e6ee2` |
| 55 | `theorem` | [closure_sup_closure_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-sup-closure-le.md) | 440 | `result-track:10bd9aea44c8ddef3a865d1294d314506d9970de20bf0dbcb7b234a47e29b8b2` |
| 56 | `theorem` | [closure_sup_closure_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-sup-closure-left-source-edition-2.md) | 444 | `result-track:8a726e6919f7ea8593b829b2cbb17a18b823081975bcf71b2bbbc7732b985f92` |
| 57 | `theorem` | [closure_sup_closure_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-sup-closure-right-source-edition-2.md) | 448 | `result-track:b1daabe69995d074b94db7dcb3af0b8b2a2fc8323ed5168079a12084d2500323` |
| 58 | `theorem` | [closure_sup_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-sup-closure-source-edition-2.md) | 452 | `result-track:7e9d4336fde3b0f53c2bd72991738e27e6a2fc59e51a091d517ec486b1cce3ab` |
| 59 | `theorem` | [closure_iSup_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-isup-closure-source-edition-2.md) | 462 | `result-track:1ad2ee4d07e7f3a12b18651b89df2b8eb4ba8f372578e7d3d0eab0a0cbbc9f4b` |
| 60 | `theorem` | [closure_iSup₂_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-isup-closure-source-edition-4.md) | 466 | `result-track:c67535a0e5dbc34a69551a26f0a3ed7eb8aeb92524365c1f8809a1b421cf909c` |
| 61 | `theorem` | [subset_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/subset-closure.md) | 478 | `result-track:621e1934d1b9476ab29b7fb88672829b9956a15d7a18d7efb5c35ef63bcc7da8` |
| 62 | `theorem` | [not_mem_of_not_mem_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/not-mem-of-not-mem-closure.md) | 482 | `result-track:c1c2f7db30e4a20b99d6f1fac0c4d4a89387f07ea4b166622d0c957f911855e6` |
| 63 | `theorem` | [le_iff_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/le-iff-subset.md) | 486 | `result-track:155b77562437ae0788ca0b294efdf9bb9200d7ef47e0fcde086b5ec08878e4ab` |
| 64 | `theorem` | [mem_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/mem-iff.md) | 490 | `result-track:2daf6636d10928ab13daad636c47b6d629a6cd121608ee23e2524c9bba329ec3` |
| 65 | `theorem` | [eq_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/eq-of-le.md) | 495 | `result-track:1b7d92ca870dd975c2801c52b7b26c5fca33c9a4e6f2f0102898b3dfec279200` |
| 66 | `theorem` | [closure_union_closure_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-union-closure-subset.md) | 499 | `result-track:9889082e873929235557760ed7592566f7ec4e8d8f37f21fb49d9c700cbf0f8d` |
| 67 | `theorem` | [closure_union_closure_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-union-closure-left.md) | 504 | `result-track:63612bccfee1ad10232eca9f9d26199af1bb0fc66b8e1037989889c38d7518d9` |
| 68 | `theorem` | [closure_union_closure_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-union-closure-right.md) | 509 | `result-track:2d746a726ac4c1d430c0753d416996be779c234c762bd86588c8a125a8300063` |
| 69 | `theorem` | [closure_union_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-union-closure.md) | 513 | `result-track:e0b0aae2424944d88cf34232431d14e083e2af846d317c2ea5c1bb9bfcc7a3f1` |
| 70 | `theorem` | [closure_iUnion_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-iunion-closure.md) | 518 | `result-track:bc7b5ca8faa4b22f22afc0d2078331e25fa039a526a0023f009a67c7a6406aa6` |
| 71 | `theorem` | [closure_iUnion₂_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closure-iunion-closure-source-edition-2.md) | 525 | `result-track:d9977d4ce5bad09859fe981439646cae014ff7f7dc4bcc9731fd999049c905da` |
| 72 | `def` | [GaloisConnection.lowerAdjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/galoisconnection-loweradjoint.md) | 538 | `declaration-track:33c04009c3a0403307f77ae2516178562bb710b3b2affab3cdc26eeda4654049` |
| 73 | `def` | [GaloisConnection.closureOperator](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/galoisconnection-closureoperator.md) | 549 | `declaration-track:96b96a6ae4f5e46e1b32fe0b4f09f3ea5ce650771e10e497d63c43a8731cd33a` |
| 74 | `def` | [_root_.ClosureOperator.gi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/root-closureoperator-gi.md) | 556 | `declaration-track:769b61a3e994057e28d4fb4181b051212d55bb53e624a8a89940405029b15cb1` |
| 75 | `theorem` | [closureOperator_gi_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureMk.lean/declarations/closureoperator-gi-self.md) | 568 | `result-track:21167c4f81d9ad83c781d001b6c99bc5e1a7554eef2bbd2df14e1c7e1dd9c8b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9e1970e43906144417a1cd46e3d7385dd858ac8c408633a499591d68f47c15f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variant4e425fc6333627e617499146db5d6573144709fdd918e685ecc7200734266c39.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/Variant4e425fc6333627e617499146db5d6573144709fdd918e685ecc7200734266c39.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
