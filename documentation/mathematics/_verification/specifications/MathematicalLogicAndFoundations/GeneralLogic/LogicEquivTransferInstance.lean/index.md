# Verification target: Logic Equiv Transfer Instance

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "318cd0b49bd63174a8e2d59b18cfef5d91001b18",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `318cd0b49bd63174a8e2d59b18cfef5d91001b18`.

Source path: `GRWTSK/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [one](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/one.md) | 45 | `declaration-track:deb53b27446af6950fa029800db1a2db61b2ff3fc8a15313c7ef4fcb96adc63e` |
| 2 | `theorem` | [one_def](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/one-def.md) | 51 | `result-track:d038ca4ac1af0587319f54ff688118f42351fc76d0b1f51eab69d1eb1fcd0db9` |
| 3 | `def` | [mul](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/mul.md) | 60 | `declaration-track:729f763ed58219e28959c766e46b6806f95c3728e979ad410fbcdb1192cf5b91` |
| 4 | `theorem` | [mul_def](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/mul-def.md) | 66 | `result-track:a437b6f1884be6a2500c0f5b130595e8d68c20c3052c3440604ac005258e63c8` |
| 5 | `def` | [div](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/div.md) | 75 | `declaration-track:30296f57b4fed533e98f329f72c0b318f5bd1d7f2ae598ed449498fa0a659cbe` |
| 6 | `theorem` | [div_def](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/div-def.md) | 81 | `result-track:6fdbb6aa58a7be218b3a13dc30648040225bd1bb2f06f99d7ed255f2473e5952` |
| 7 | `def` | [Inv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/inv.md) | 92 | `declaration-track:87394b28d0ce396e1ddec0556e8904a8726f9d6b8d0fd713b629de7e8026788a` |
| 8 | `theorem` | [inv_def](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/inv-def.md) | 98 | `result-track:6568af76cd80e0f94af06d67eb8532f81cb82c78789d6debee74f0fbf9c678bd` |
| 9 | `def` | [smul](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/smul.md) | 107 | `declaration-track:dc13617afe248276f89019bcd398cd772306b50993e725c92e8d131e0b6eca5e` |
| 10 | `theorem` | [smul_def](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/smul-def.md) | 111 | `result-track:85347590b6effc21cde7748c6cf88b193ce0e16594805eaccaf5255a82650304` |
| 11 | `def` | [pow](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/pow.md) | 119 | `declaration-track:e5fdf315d6e3a2dcc086a147cad5a05745684154f6796c1777f43d0048d019bf` |
| 12 | `theorem` | [pow_def](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/pow-def.md) | 123 | `result-track:04706e9eaa2c4770af75695d2c4d118c45336e90680004a546539cc41570ce4d` |
| 13 | `def` | [mulEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/mulequiv.md) | 135 | `declaration-track:52e9a650ebd0cd42862e190f9af2f8a3207442f96103daca256d410b84ba01fb` |
| 14 | `theorem` | [mulEquiv_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/mulequiv-apply.md) | 148 | `result-track:3747bfb3fa4d8445f7ccc0280af75f1c4385a48634b0ce329a1dddd09ccdd7d0` |
| 15 | `theorem` | [mulEquiv_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/mulequiv-symm-apply.md) | 154 | `result-track:85e638f5c6f69a2593aff56fc6d83bacd052cf67be8431119eecb62310200613` |
| 16 | `def` | [ringEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/ringequiv.md) | 165 | `declaration-track:95315f3b9577c2c56c09ff9d54a796016f9c82a0af0593e251e23893b7959ddb` |
| 17 | `theorem` | [ringEquiv_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/ringequiv-apply.md) | 181 | `result-track:e7978284c877275e6b7f6b986409e588609134a4af21eb8285dd940c9585a652` |
| 18 | `theorem` | [ringEquiv_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/ringequiv-symm-apply.md) | 185 | `result-track:7c4b749594cc25f65c5f15cee4dbc4d65acdeabcf4e395056026dc0eaca6622d` |
| 19 | `def` | [semigroup](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/semigroup.md) | 193 | `declaration-track:b8c220b0d355f6f47f8b2d470c2503a6fe4c247ba9f6ca6eaf09543519435a86` |
| 20 | `def` | [semigroupWithZero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/semigroupwithzero.md) | 201 | `declaration-track:e3dadb9c6541dcb2a6e1a2a501d2e88e33dea6ae70e3bbf41c798969191be178` |
| 21 | `def` | [commSemigroup](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/commsemigroup.md) | 209 | `declaration-track:67d180684546bf7a5fa1e079cea4f16aed309d155d3f1dbbf2fd30703d57fd96` |
| 22 | `def` | [mulZeroClass](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/mulzeroclass.md) | 217 | `declaration-track:3525f999cfe88dfc25cadfe59c52016ed33462618ad344378dee5f7d13b66615` |
| 23 | `def` | [mulOneClass](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/muloneclass.md) | 225 | `declaration-track:53d18b1c0f51ca0115b2ab9271a62fe4d01950303243b70970486b9888d7fdea` |
| 24 | `def` | [mulZeroOneClass](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/mulzerooneclass.md) | 234 | `declaration-track:c206929fdfe495593cee6b73c48866c3a2dbb0bd70592bf121e409f43d8e6190` |
| 25 | `def` | [monoid](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/monoid.md) | 243 | `declaration-track:3adc41c015d9ca9c9394f402d57ebe866a0d28b3a705eab0d37525056582d1d2` |
| 26 | `def` | [commMonoid](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/commmonoid.md) | 253 | `declaration-track:68b0d82b1fb5d95bca8ced42415bde413721ea5811b4bd499dc04692cb447da3` |
| 27 | `def` | [group](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/group.md) | 263 | `declaration-track:c44dbbb71ddeb18435e9a310c44d383ce66432e58a3410e750844a2a7ff8ffa1` |
| 28 | `def` | [commGroup](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/commgroup.md) | 276 | `declaration-track:6c7ba0e9895c6eb1d6b09857a83a14ad76638653926d4072b204677e0660e14c` |
| 29 | `def` | [nonUnitalNonAssocSemiring](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/nonunitalnonassocsemiring.md) | 289 | `declaration-track:7e92a7d10ac030495378021d0816cc5ea0d37c177332cdb124d65b520add6396` |
| 30 | `def` | [nonUnitalSemiring](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/nonunitalsemiring.md) | 300 | `declaration-track:2c48ba6dc24e4db7e549b646cef84f5ee6931f93778e65f04493478325126266` |
| 31 | `def` | [addMonoidWithOne](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/addmonoidwithone.md) | 310 | `declaration-track:c60b64d841a4e120384b514ece9bf2fa16916a4bc006ccff030281382ffc3476` |
| 32 | `def` | [addGroupWithOne](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/addgroupwithone.md) | 319 | `declaration-track:86ca40e4942a42b8cbeb433912c86d1653e39da9ef0014371b63f9bb9425130e` |
| 33 | `def` | [nonAssocSemiring](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/nonassocsemiring.md) | 330 | `declaration-track:bd423efd6a4c562bf368ff1730f1f36b0c4f791b6002c607667c5331d15fe496` |
| 34 | `def` | [semiring](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/semiring.md) | 338 | `declaration-track:6849f79e1cfceb31f475c3bf8ab06886f8e027085c64b37742c70ab2e46d5d2b` |
| 35 | `def` | [nonUnitalCommSemiring](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/nonunitalcommsemiring.md) | 347 | `declaration-track:58fb8ce6d5efd08df8fde2fc6cf38e1c254a48cb55498d2d1c1070c4f5a3fea1` |
| 36 | `def` | [commSemiring](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/commsemiring.md) | 357 | `declaration-track:32f88ad88f4d67f80bd9009bfb5c15da605016c66db0c90b1758d3af440cf88b` |
| 37 | `def` | [nonUnitalNonAssocRing](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/nonunitalnonassocring.md) | 366 | `declaration-track:df3d442ee7d30a38807c56cd1cf57cf7e770ece9bcc800c8db65fdeecdd27d71` |
| 38 | `def` | [nonUnitalRing](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/nonunitalring.md) | 379 | `declaration-track:05743a4acbf67dd40287df4bab5f0c7f6479cb2ec3b6819ad6b2c082b59baa64` |
| 39 | `def` | [nonAssocRing](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/nonassocring.md) | 392 | `declaration-track:5c20293bba3c89fa2a496a1b107642fe16eb64341ede1bbab2e520364e223a4e` |
| 40 | `def` | [ring](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/ring.md) | 400 | `declaration-track:a4f96b8609e3204a629745e617c3df61178bfa3b01a802a22954eac6ce259c1c` |
| 41 | `def` | [nonUnitalCommRing](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/nonunitalcommring.md) | 409 | `declaration-track:d1e934d6e032da40dd2280f8d45bcdc199d1f9deca108a7b532882d548e03369` |
| 42 | `def` | [commRing](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/commring.md) | 422 | `declaration-track:e88ff1d1143ec9758a6cdcdbe2736fb6f79b369439b4e66e5c4f4fb94912f686` |
| 43 | `theorem` | [nontrivial](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/nontrivial.md) | 431 | `result-track:a6ebc74436f9ad37e3a3e76a3c2e350050cf598a8c60f167f687c37d99362953` |
| 44 | `theorem` | [isDomain](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/isdomain.md) | 437 | `result-track:c9cae20eca3fcff32938651c99d509a505e0ec021af225dc47378e9ef80011ec` |
| 45 | `def` | [RatCast](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/ratcast.md) | 443 | `declaration-track:e30538e0645a23a06399ba991883171cafe7f90bdca0b5ae6ac001c4d4172793` |
| 46 | `def` | [divisionRing](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/divisionring.md) | 448 | `declaration-track:1f80712e735e3a5a6db3663c64cf51276b108aab32241b8c11dd21c509aa8f61` |
| 47 | `def` | [field](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/field.md) | 462 | `declaration-track:58ee7b48d97a7202782bed9eb2f46cc4fbaf1525d0686e885a706c4ed02b4193` |
| 48 | `def` | [mulAction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/mulaction.md) | 485 | `declaration-track:51b13d9ad45bfda5dcec616bad8cb409b0cb266d395c2b648c2205e9f6f0ad05` |
| 49 | `def` | [distribMulAction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/distribmulaction.md) | 493 | `declaration-track:ad322bd8c75cfc213d3ea1fc7bfac191ba703545e74640e012dbc46ceabef4f6` |
| 50 | `def` | [module](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/module.md) | 513 | `declaration-track:66579c5291ef2770ae2fe278f2ed1303edfd1bf34997cde4924edf7c33492694` |
| 51 | `def` | [linearEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/linearequiv.md) | 528 | `declaration-track:53da4798fbe8adea49c404e22a6ebf7b140f7287fcff48287c069262c0dd9d29` |
| 52 | `def` | [algebra](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/algebra.md) | 549 | `declaration-track:558b43915d22a21214773bfb32d47338f6ff419371e3c53af1cb42722497ad3e` |
| 53 | `def` | [algEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicEquivTransferInstance.lean/declarations/algequiv.md) | 570 | `declaration-track:e9b9346467a986b8cb7e23848b4c43c8194c6e0b791230b6329ead2ed040caa2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73e58a345253f4afcedb5d3c7614dcd539aa85ed679641c759702277478472b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean","GRWTSK/_verification/specifications/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
