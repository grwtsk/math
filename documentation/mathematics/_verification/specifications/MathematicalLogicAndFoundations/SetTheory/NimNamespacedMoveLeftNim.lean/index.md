# Verification target: Nim Namespaced Move Left Nim

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b665e02e47979cb5543f833ef23e7cd9f5128c82",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant0e2d3542706cc19e32baed4f008c3dfb4dc7a83af84d8ba3a90c05c233f313b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b665e02e47979cb5543f833ef23e7cd9f5128c82`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant0e2d3542706cc19e32baed4f008c3dfb4dc7a83af84d8ba3a90c05c233f313b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant0e2d3542706cc19e32baed4f008c3dfb4dc7a83af84d8ba3a90c05c233f313b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Bitwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Game.Birthday` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Game.Impartial` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nim](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/nim.md) | 56 | `declaration-track:33a375d944d77a85c4332182b8a03866e6a1376eec5a4f6ccb021318cadbe008` |
| 2 | `theorem` | [nim_def](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/nim-def.md) | 67 | `result-track:95b011b5fa302f1b3330e134889c8b4e6fca635013f992da2e1a9cde10c4d275` |
| 3 | `theorem` | [leftMoves_nim](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/leftmoves-nim.md) | 75 | `result-track:1cf819cbc16731b9370cbb906214daa21e3ae93c532f48264c5b6767d7fb1f28` |
| 4 | `theorem` | [rightMoves_nim](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/rightmoves-nim.md) | 78 | `result-track:08b6e1f25ec5622159910d5aac4e91133ce77f42561610e3e413cbd0e4dcde9c` |
| 5 | `theorem` | [moveLeft_nim_hEq](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/moveleft-nim-heq.md) | 81 | `result-track:345e52b00d3e4c95b56bbab371f5d6f2ef0ae00b82ed2567b779fddd32c6b6ec` |
| 6 | `theorem` | [moveRight_nim_hEq](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/moveright-nim-heq.md) | 86 | `result-track:df6c39a36cd62ae141325c6af2bf709e2878bead9c91a8213608fe46194b5e15` |
| 7 | `def` | [toLeftMovesNim](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/toleftmovesnim.md) | 92 | `declaration-track:ba017d98d1cfed06ddd6a827ac18a51a0c9a7af01b078a0891bcee404f9ef906` |
| 8 | `def` | [toRightMovesNim](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/torightmovesnim.md) | 97 | `declaration-track:14f6fbed4c899d15b0e1ee8618165d6330aab0e3ba1121585e5174d8daa5726c` |
| 9 | `theorem` | [toLeftMovesNim_symm_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/toleftmovesnim-symm-lt.md) | 102 | `result-track:9984cd16ca1456fad5dae8105bc1ba5093d8a43ee11d7b6da758513c8b1ab34b` |
| 10 | `theorem` | [toRightMovesNim_symm_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/torightmovesnim-symm-lt.md) | 108 | `result-track:a16fb2735ac97cfd7b815eb8d905d40d30c1b30ba9623bf3b1ca68be2a313abe` |
| 11 | `theorem` | [moveLeft_nim'](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/moveleft-nim.md) | 114 | `result-track:4126b51aebee813323035d0980c6951f1bcb122522a9b6f0de547372773f9109` |
| 12 | `theorem` | [moveLeft_nim](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/moveleft-nim-source-edition-2.md) | 119 | `result-track:b40255311186190ecf1c1d113f217fa34bf3fe5ecb93701b47e0be14d6b25bed` |
| 13 | `theorem` | [moveRight_nim'](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/moveright-nim-source-edition-2.md) | 123 | `result-track:e24bf27a27ea91ac3c2d5e4682f58f512a4b359f030b107d071c6fc39fb38aa9` |
| 14 | `theorem` | [moveRight_nim](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/moveright-nim.md) | 127 | `result-track:8db9a963a4294516d6f9321004976da45c7259d5aedf8382e09020427025407a` |
| 15 | `def` | [leftMovesNimRecOn](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/leftmovesnimrecon.md) | 132 | `declaration-track:9110919bc5a78a3fb0be356f8c43ba35718e47df240e05de1118b0d099d23634` |
| 16 | `def` | [rightMovesNimRecOn](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/rightmovesnimrecon.md) | 139 | `declaration-track:e9e2bd7efaf5f0244ccc195db0e6d669501ce642c00c45e174f7044ce51a9adf` |
| 17 | `instance` | [isEmpty_nim_zero_leftMoves](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/isempty-nim-zero-leftmoves.md) | 144 | `declaration-track:82b42db181b8ceea81aa95e65dd4ec782b738308f3550a9eaa341536df5cede0` |
| 18 | `instance` | [isEmpty_nim_zero_rightMoves](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/isempty-nim-zero-rightmoves.md) | 149 | `declaration-track:6a61070bf27949304ff069030e56ff58f09affa4a402bf7613b2820c59d35757` |
| 19 | `def` | [nimZeroRelabelling](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/nimzerorelabelling.md) | 155 | `declaration-track:3efa629da5da14e104cbcd90b707fb1d197407ee41d6d301b0170e1e8e2d6983` |
| 20 | `theorem` | [nim_zero_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/nim-zero-equiv.md) | 159 | `result-track:b88dfb5d397840759c4435c0c51e08019d766948c3bfc6fe5ba6aaab2d454a3f` |
| 21 | `instance` | [uniqueNimOneLeftMoves](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/uniquenimoneleftmoves.md) | 163 | `declaration-track:2129038420d0fe8799da5d91bb114b3fd9e9441205524a6af8e5252193683ba5` |
| 22 | `instance` | [uniqueNimOneRightMoves](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/uniquenimonerightmoves.md) | 167 | `declaration-track:f2e7201307ede7927d8cc542eae0b7e4948e260b4e2d8b552b9cae27a917a0db` |
| 23 | `theorem` | [default_nim_one_leftMoves_eq](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/default-nim-one-leftmoves-eq.md) | 172 | `result-track:280916c5916e3798e502d563e7b2efab24154e32e8fb3e408f7cfba4c1db09c2` |
| 24 | `theorem` | [default_nim_one_rightMoves_eq](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/default-nim-one-rightmoves-eq.md) | 178 | `result-track:afe80a6b43715039d06141f8a697e75800389c9b7f345ebf02f4a77df827c481` |
| 25 | `theorem` | [toLeftMovesNim_one_symm](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/toleftmovesnim-one-symm.md) | 184 | `result-track:2ba253aba084958d1e2c5dc6529c383bfdb4419ef7d2eae7a85afe24e906ee4f` |
| 26 | `theorem` | [toRightMovesNim_one_symm](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/torightmovesnim-one-symm.md) | 189 | `result-track:2f0c2ffd8c9ec6a4be2dd6fd4ccedd068c171c7aba50b2b9208a00f9a7034eaa` |
| 27 | `theorem` | [nim_one_moveLeft](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/nim-one-moveleft.md) | 193 | `result-track:bc4e40453845340fcff9ff4cc2fc696fb0ee524da137986515b82f802a507c55` |
| 28 | `theorem` | [nim_one_moveRight](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/nim-one-moveright.md) | 196 | `result-track:af2afec9f619a86e99b1ef929fd2db2e0ef034db1537fb5e92d5b192cf937f9e` |
| 29 | `def` | [nimOneRelabelling](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/nimonerelabelling.md) | 200 | `declaration-track:67fe2be6b70206b1c43b4d56efb93c679e9fb83a74c7376a28419b880cd20845` |
| 30 | `theorem` | [nim_one_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/nim-one-equiv.md) | 207 | `result-track:5ab2711e74befda9ea25f6830cc76e39ba5c0f6364a212f2b2abad21b6f1931a` |
| 31 | `theorem` | [nim_birthday](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/nim-birthday.md) | 212 | `result-track:c3e8e7a532bce649d683276ebdd6bf177846cb91f5a4a3f58d22b12a2950f59f` |
| 32 | `theorem` | [neg_nim](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/neg-nim.md) | 222 | `result-track:abf02209271d2d9326aff19fd270541bfac0f241d571274ddfc270a5b7080b85` |
| 33 | `instance` | [nim_impartial](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/nim-impartial.md) | 227 | `declaration-track:1f8d6d5cf539a42fcf4210916971346eb6e1656cb157c72a1e322e71b6553239` |
| 34 | `theorem` | [nim_fuzzy_zero_of_ne_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/nim-fuzzy-zero-of-ne-zero.md) | 233 | `result-track:9871e4269e2ede4c7d9fc343e2b55deebe56da9fff72a5d45a5b0b0b6fab5299` |
| 35 | `theorem` | [nim_add_equiv_zero_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/nim-add-equiv-zero-iff.md) | 240 | `result-track:978311132e6ff50a9cf6700f35edb3e68993c3afa39b32317803ff868537af70` |
| 36 | `theorem` | [nim_add_fuzzy_zero_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/nim-add-fuzzy-zero-iff.md) | 256 | `result-track:3a7c7ecbc6d5b98b437aa9950bfe589d76c9455d53364713b2e1cfcce104ed71` |
| 37 | `theorem` | [nim_equiv_iff_eq](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/nim-equiv-iff-eq.md) | 261 | `result-track:67deaa4fcb1abbb4dc6c4759ea57f19501f31e5ae64b39765620ed7de7a5b724` |
| 38 | `def` | [grundyValue](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/grundyvalue.md) | 267 | `declaration-track:902eed6910226d7fd881dedf24d2911b583b6ca59a2bc2a0afa03004bd0e74e1` |
| 39 | `theorem` | [grundyValue_eq_mex_left](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/grundyvalue-eq-mex-left.md) | 273 | `result-track:af68e80557b6487caffff40951a6381cd07903bad5bf854981d6d0c7f01be2fe` |
| 40 | `theorem` | [equiv_nim_grundyValue](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/equiv-nim-grundyvalue.md) | 279 | `result-track:0724c716a4588a11163dca059c2bb2e288ae92707638b45d8d4d43daeb93364f` |
| 41 | `theorem` | [grundyValue_eq_iff_equiv_nim](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/grundyvalue-eq-iff-equiv-nim.md) | 318 | `result-track:85b4c8c627628b10da2edf6c379232f98c50219f033861e007d99ba325d4273f` |
| 42 | `theorem` | [nim_grundyValue](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/nim-grundyvalue.md) | 325 | `result-track:5bc24810fbd9f8d77ff424dfbf9740b8ec8ab004328fc39dea0037c9f740fb92` |
| 43 | `theorem` | [grundyValue_eq_iff_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/grundyvalue-eq-iff-equiv.md) | 329 | `result-track:ced839aff4034b7dc1cc61b784bcf80fb70f6befaccf67f6c35cde1e144b3514` |
| 44 | `theorem` | [grundyValue_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/grundyvalue-zero.md) | 335 | `result-track:983153a629b678fdfafacb8c6b6dc66d0408395f03b2cab60964d2f920585212` |
| 45 | `theorem` | [grundyValue_iff_equiv_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/grundyvalue-iff-equiv-zero.md) | 339 | `result-track:ed141e49540a579c88574145a3e99ca46b0947403c2427cb36f390ff328d9e61` |
| 46 | `theorem` | [grundyValue_star](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/grundyvalue-star.md) | 344 | `result-track:5817b8c89f18d826bd522a8b0e203b1def30a501652b1b61360544ee0f7791ac` |
| 47 | `theorem` | [grundyValue_neg](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/grundyvalue-neg.md) | 349 | `result-track:c753b90824e5391e4b4f1c36647e728668aad46382ea78acec2cb8002ea75c33` |
| 48 | `theorem` | [grundyValue_eq_mex_right](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/grundyvalue-eq-mex-right.md) | 353 | `result-track:d6dba9dcedd93b9bbca3ba24955d1b667017bdcc02caafe84ed0965c922d61ce` |
| 49 | `theorem` | [grundyValue_nim_add_nim](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/grundyvalue-nim-add-nim.md) | 369 | `result-track:5194efafec884d0ccd05b9785a9b456e2ffc67930e75dfc3f2c11fa34a634bf0` |
| 50 | `theorem` | [nim_add_nim_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/nim-add-nim-equiv.md) | 408 | `result-track:d9a2edab5039bc34c26ba39c8e400ed2089b02b09939384221ce8265000462ab` |
| 51 | `theorem` | [grundyValue_add](../../../../../MathematicalLogicAndFoundations/SetTheory/NimNamespacedMoveLeftNim.lean/declarations/grundyvalue-add.md) | 412 | `result-track:cf5f6df606941d65c198171a76992d0a3d612d86a9ead14e889dd6045672a32f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ebf17043c52df7d7868bb8c5b2bd8b3ff4a42b3c13037f680e508e04a7871f73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant0e2d3542706cc19e32baed4f008c3dfb4dc7a83af84d8ba3a90c05c233f313b5.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant0e2d3542706cc19e32baed4f008c3dfb4dc7a83af84d8ba3a90c05c233f313b5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
