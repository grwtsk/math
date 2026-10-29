# Verification target: Types Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f39a6d190cb3eed89e2c2715fe8e8e78f7d4a1b0",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantb337e1192998a0c5f839209535bed3c7c1e287d47f8ab13530c6afa2c0c8af18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f39a6d190cb3eed89e2c2715fe8e8e78f7d4a1b0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantb337e1192998a0c5f839209535bed3c7c1e287d47f8ab13530c6afa2c0c8af18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantb337e1192998a0c5f839209535bed3c7c1e287d47f8ab13530c6afa2c0c8af18.lean.json)

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
| 1 | `def` | [OrderType.instSetoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/ordertype-instsetoid.md) | 53 | `declaration-track:16be7fb32cc8c492964686380508db60b22e318a63c3cfe297f52bfe2f413662` |
| 2 | `def` | [OrderType](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/ordertype.md) | 59 | `declaration-track:0abc0ef66bad2002a39ec8d8b96213cef81c5959ae413d0f9ac7a957d8b65f5c` |
| 3 | `def` | [ToType](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/totype.md) | 66 | `declaration-track:e705d19b76c6a4a0dc2041f1fd67a62075671e84d5a171d8b47d85000d207167` |
| 4 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/instance.md) | 72 | `declaration-track:0d4d62155a214bab8b18fbc09f9914d8e9a40cc79eb604ed3f90a3838e2fc5ce` |
| 5 | `def` | [type](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/type.md) | 78 | `declaration-track:2c069c24c0bd0fe931d60472ecd596929fe5b4d57dd80216d905b756ef652f95` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/instance-source-edition-4.md) | 81 | `declaration-track:6f526eda5046a1722ecce64438a7b57d52a6f12e377edfeb092870362c8258aa` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/instance-source-edition-6.md) | 84 | `declaration-track:87959fef90a8720fcb5c2f29e55ea02e3f39ee371e8f9a6a9c13a42d2b51aa09` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/instance-source-edition-7.md) | 87 | `declaration-track:8ce37cfbe88b6358038782cbe1b677d817a7b5053eb3b08afbcb7bd2d8133b99` |
| 9 | `theorem` | [type_toType](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/type-totype.md) | 91 | `result-track:71fd9bcd38f3a60e74b29c9ab6d44a9caa88c802d1be82207595b1febf55fbf8` |
| 10 | `theorem` | [type_eq_type](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/type-eq-type.md) | 93 | `result-track:13ab3fa387d9f6ab42e0db7c77815b221f4f207b4760f7c088ab5bba5cfadf1b` |
| 11 | `theorem` | [type_congr](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/type-congr.md) | 96 | `result-track:cde6cac302e8da18450cd9aa3c9bd5b1ca381d3b398b768618b25ff5b7f4d9fe` |
| 12 | `theorem` | [type_of_isEmpty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/type-of-isempty.md) | 102 | `result-track:645cac6c010080dee8f95e1a51b82891c682319ec155c429199b92ac58fd7f2c` |
| 13 | `theorem` | [type_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/type-eq-zero.md) | 105 | `result-track:cccc48cef7a6aa12b8c54d2a83f19e5fe353f616f5698bc737877ca095230a81` |
| 14 | `theorem` | [type_ne_zero_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/type-ne-zero-iff.md) | 111 | `result-track:d8f6d9793ac8318254e740eafc439103f1a755224ec7609367cdce7892589e32` |
| 15 | `theorem` | [type_ne_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/type-ne-zero.md) | 114 | `result-track:682fd8a2dd00bc39d3ad475f3936793ff66ae4bf186000dfdf0f82acde31adbc` |
| 16 | `theorem` | [type_of_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/type-of-unique.md) | 118 | `result-track:ea538e726b01e785eabe04c15c33db51c3d595e50e1f9612a4549edb15ea955a` |
| 17 | `theorem` | [type_eq_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/type-eq-one.md) | 122 | `result-track:85be36d5df49a263dd01e3107ddd30476dbf24487a671297b207f9dc66ab3164` |
| 18 | `theorem` | [isEmpty_toType_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/isempty-totype-iff.md) | 127 | `result-track:2ef8d5ce4a77f664d41ff6a746f81fcb616b4bea94d247e10b47e77e1d650517` |
| 19 | `theorem` | [nonempty_toType_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/nonempty-totype-iff.md) | 131 | `result-track:3acb570faec2cc3bff07712a04d2bfc2c0e110700fbece2d7658b02e6236e10e` |
| 20 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/instance-source-edition-2.md) | 134 | `declaration-track:196de521f00cd16986f960094672883a40ef04d2161f1f4f0869b16ae5c26849` |
| 21 | `theorem` | [inductionOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/inductionon-source-edition-2.md) | 139 | `result-track:2b4b68febf5c39fccb034b3f38599f0330ede8b3959d0e4b8191f4fa0122fafc` |
| 22 | `theorem` | [inductionOn₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/inductionon-source-edition-3.md) | 145 | `result-track:5828df0667c0ab3d35816108225dea62d1c088feec5338c180e57d7cd99ebff4` |
| 23 | `theorem` | [inductionOn₃](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/inductionon.md) | 151 | `result-track:1f075aaa6357b4fa38fd02f15814f64292f74f6a879d0cf1b408ed8d6ef50095` |
| 24 | `def` | [liftOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/lifton.md) | 159 | `declaration-track:56e5b08c5a82f3c6943f0eddc46e217c76987a2ab16aa0caf07ad03b43abcfdb` |
| 25 | `def` | [liftOn₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/lifton-source-edition-2.md) | 166 | `declaration-track:7cf357fe22d68a03aa7f47a6c80eb786c5ec4864b6a5e777285417f256cdefc2` |
| 26 | `theorem` | [liftOn_type](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/lifton-type.md) | 173 | `result-track:396ac25bad3ddf9ef74cc0c93bfb0ab7c9a0f2b5c2913e9d604b5d967b7ebde1` |
| 27 | `theorem` | [liftOn₂_type](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/lifton-type-source-edition-2.md) | 179 | `result-track:78abadac6f736218e2e0cbc97b45481630d765a1b7732bf9ba60d665a624ae6d` |
| 28 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/instance-source-edition-3.md) | 191 | `declaration-track:538cb7cf2a43e45883d1bec934ef7c206aaffe4b5d9b9f59081426139d2c0949` |
| 29 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/instance-source-edition-5.md) | 200 | `declaration-track:7b2117dadb80e147b273665e6611af5c6297dfe5d3a07c8eb7fea2daf69b8eb8` |
| 30 | `theorem` | [type_le_type_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/type-le-type-iff.md) | 203 | `result-track:ac942ad872df47ea06610877b864d8ae931fa8d1c2e7ca4675c3debb2b71c28d` |
| 31 | `theorem` | [type_le_type](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/type-le-type.md) | 206 | `result-track:c1ea42f0e257ea87d7fe9e08730354c6216d9ce2d94b78ee4d2ac5743aa5ee43` |
| 32 | `theorem` | [type_lt_type](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/type-lt-type.md) | 209 | `result-track:301f22866be365a781148cb7d72ca63b175903cd3e33bca79557d38b035a0adc` |
| 33 | `theorem` | [zero_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/zero-le.md) | 215 | `result-track:9edcace29d44549da9b3f40d8d59c5a8af2eae423423286741e7e26e8d12b2f4` |
| 34 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/instance-source-edition-8.md) | 218 | `declaration-track:cb98c082f644529469a4abcbd4594acec0afcbe9904658cb0dda5f9e869a3bd3` |
| 35 | `theorem` | [bot_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/bot-eq-zero.md) | 223 | `result-track:26b1854e8aeb5ef8ee1d57970736349c7092b85be68b26dce9da6e35e9ab43be` |
| 36 | `theorem` | [not_lt_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/not-lt-zero.md) | 227 | `result-track:b7216d4b172dbe6d0c3636246547ce708c438379e66f7bd31b08286f5e9d6820` |
| 37 | `theorem` | [pos_iff_ne_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/pos-iff-ne-zero.md) | 231 | `result-track:9b610094c57dea87331f88ce182ffd47c03cc45ef1486e8ddc4b1519de4bd76a` |
| 38 | `def` | [lift](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/lift.md) | 241 | `declaration-track:58be8b0ae9766e9add023417eb27857c1138770e48dc216389e11fadeefc1ad4` |
| 39 | `theorem` | [type_ulift](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/type-ulift.md) | 246 | `result-track:b8e84f8099a930bd4b3cea88e4af78f0eb0a446682d3571223f64e91a475832c` |
| 40 | `theorem` | [lift_id'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/lift-id.md) | 249 | `result-track:bada918bdb4e457a4329279e53d1be9c502b5bf4afa0dc2981963cb0e6311b98` |
| 41 | `theorem` | [lift_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/lift-id-source-edition-2.md) | 254 | `result-track:dd8e0cb7389813b41cdc05216733faebda797eb0aaffedf78e0706f6b2e7c82b` |
| 42 | `theorem` | [lift_uzero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/lift-uzero.md) | 259 | `result-track:9ff4ae0bad792f030d5395d2cc9f4bb23ae639980ef2d6ae6646a2094322ec2b` |
| 43 | `theorem` | [lift_lift.](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/lift-lift.md) | 263 | `result-track:da9b60da33a5d3e26925c77b326120d20c580a9cdce3d733bf5e7d774bb5519b` |
| 44 | `theorem` | [lift_type_eq_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/lift-type-eq-iff.md) | 267 | `result-track:674c500421f3d71d1b75f14c67c96becac4b09c939637f8d19db85807e734461` |
| 45 | `theorem` | [lift_type_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/lift-type-le-iff.md) | 272 | `result-track:f3fdc5860bea748fe50bb840cd1e9633a4d5a866f3f4307562b70009015e65e8` |
| 46 | `def` | [omega0](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/omega0.md) | 280 | `declaration-track:6b40ba1e09369b70414ac26f37122e5f2b35dd4d942d4674529dcba42bf6b0e6` |
| 47 | `theorem` | [type_nat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/TypesDefsPublic.lean/declarations/type-nat.md) | 287 | `result-track:5e8798bd4e91ce5e0449b5ad4bbb09c066ea7dbd7c420c31989ae1eac30cd4d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca0f2f714890126614c2acee31555f2ace4f846e9562c3517129a00e9addab60 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantb337e1192998a0c5f839209535bed3c7c1e287d47f8ab13530c6afa2c0c8af18.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantb337e1192998a0c5f839209535bed3c7c1e287d47f8ab13530c6afa2c0c8af18.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
