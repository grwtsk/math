# Verification target: Opposites Op Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a8c8aba9a6b0a78b8a952b44450519e923cd849",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposites/Variant8daa53296ecc8001e14bd75a50c77373b50e3e7ff2b3a8b9a040d47f644baf6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a8c8aba9a6b0a78b8a952b44450519e923cd849`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposites/Variant8daa53296ecc8001e14bd75a50c77373b50e3e7ff2b3a8b9a040d47f644baf6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposites/Variant8daa53296ecc8001e14bd75a50c77373b50e3e7ff2b3a8b9a040d47f644baf6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.IsEmpty` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PreOpposite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/preopposite.md) | 59 | `declaration-track:0dfab6b397c7b49635d8f3fec9f5862c4d9766018ba743be8b6e57717c5ec79c` |
| 2 | `def` | [MulOpposite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/mulopposite.md) | 68 | `declaration-track:84df944fdc5605cf844a43d3406a973f26c3136fc562f79622e68be2954b0685` |
| 3 | `def` | [op](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/op.md) | 86 | `declaration-track:f82f340c2b325a43dd852828f3cbc23d5819e8a9f7121c7a0e62b7d2b419fea1` |
| 4 | `def` | [unop](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/unop.md) | 93 | `declaration-track:859f012f65632cd9b7155abfcc58084e101cced43931112571d926ed6a35d335` |
| 5 | `theorem` | [unop_op](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/unop-op.md) | 99 | `result-track:df22af6ff5bdf5b934575c7f2fa84501cb392bb5f4045d025f64983152c4c9fb` |
| 6 | `theorem` | [op_unop](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/op-unop.md) | 104 | `result-track:91e9f47b165349cf21b19990a8243d12202404c1b0e1cfaf0b63ed3773599b8b` |
| 7 | `theorem` | [op_comp_unop](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/op-comp-unop.md) | 110 | `result-track:7d4580c36995357daea9269801b5a808ea3f38e78f023c7fbfb9284e36729017` |
| 8 | `theorem` | [unop_comp_op](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/unop-comp-op.md) | 116 | `result-track:a2a2cdfb655c1521a7f182d869c89694feeacc238d7b6cf0bb53ec84bc31de90` |
| 9 | `def` | [rec'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/rec.md) | 124 | `declaration-track:6fc555408a2159fb072416e08aa4fc54441db0f39821b2e7316b24e38540e686` |
| 10 | `def` | [opEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/opequiv.md) | 131 | `declaration-track:6548f632ff8af582bbd1f6f4a6164d63a1efaec27b156f6c42aa6fe60aac1829` |
| 11 | `theorem` | [op_bijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/op-bijective.md) | 139 | `result-track:1d700bfd17af76424c9ca0bc77ba354e68f65547db4af7dd3f70c9fe17166875` |
| 12 | `theorem` | [unop_bijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/unop-bijective.md) | 145 | `result-track:ea2a3bcf496134238cd7684a79df06d4f248db4f104af2f59aeda84372a1b443` |
| 13 | `theorem` | [op_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/op-injective.md) | 151 | `result-track:97eec5283bf9975a233fe1742437e04f0b087c6c1fe8e7ea5f0b3dcfab826481` |
| 14 | `theorem` | [op_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/op-surjective.md) | 157 | `result-track:6f041ef01ac4e6338aeb32ec54ec074b710cd6ca679a247b5bb0fe9eb61e3e82` |
| 15 | `theorem` | [unop_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/unop-injective.md) | 163 | `result-track:a0cc7b71185ce268528f1dca1e049247236b25ed43d4e01384ddbf0c58aa9567` |
| 16 | `theorem` | [unop_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/unop-surjective.md) | 169 | `result-track:89cd5ce9976889171e87d961921526b0662bb04aa7513ec19394021ec295233d` |
| 17 | `theorem` | [op_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/op-inj.md) | 175 | `result-track:04daed540a751d9ff651d983a916df560b623d27dfbfe9532c13048e5d8e1a0e` |
| 18 | `theorem` | [unop_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/unop-inj.md) | 180 | `result-track:752bd5f16cefe4ca60ca5c7551f83b216ec915c37cab6cec20149b9c8a63c72a` |
| 19 | `instance` | [nontrivial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/nontrivial.md) | 190 | `declaration-track:21c0cf7ee9a45841ef4c4f571747bf01dd68bab5993465da80e62a8d34d0357a` |
| 20 | `instance` | [inhabited](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/inhabited.md) | 194 | `declaration-track:f107fd2aa21a06bcf3189f32e227bc8571509801d76fcf80cb1d67570675a1c8` |
| 21 | `instance` | [subsingleton](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/subsingleton.md) | 198 | `declaration-track:09e99e9a3c1aa293cf23f00760ef9f768ba559c9dca8f6573d8b7b3f37574507` |
| 22 | `instance` | [unique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/unique.md) | 202 | `declaration-track:8d99f68ca3d37a134a34ba5c3c519375454abcab41153d7361b8d3912ffb0869` |
| 23 | `instance` | [isEmpty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/isempty.md) | 206 | `declaration-track:c94bee5b7c8ad3b065f8465d6d539b1636811682b22c6490c3ad30b486252568` |
| 24 | `instance` | [zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/zero.md) | 209 | `declaration-track:521eb4b3f48989169120230dffd2aab970ab559583f83d689bd8a72ebaf66730` |
| 25 | `instance` | [one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/one.md) | 212 | `declaration-track:042aac1a3bb08bcedc2174546a27405e56e11bcfbabbc2945bb86f260214652c` |
| 26 | `instance` | [add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/add.md) | 214 | `declaration-track:14ef391e53f20b618cee3cebdd222f31152693f0774d3da6b3c596fef910c1c8` |
| 27 | `instance` | [sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/sub.md) | 216 | `declaration-track:66d08274f95895ad2520d2470c88b610d3c2769b69d20fcecccedd26f7bf9f61` |
| 28 | `instance` | [neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/neg.md) | 218 | `declaration-track:3c9de124f3a26be04ef0c07f5c49258eeb10ff33cb1cbf0e38d16e3f0114e874` |
| 29 | `instance` | [involutiveNeg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/involutiveneg.md) | 220 | `declaration-track:2c96ef2820f55e153460f4f84989122e62714297262e7998c722e499e450be64` |
| 30 | `instance` | [mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/mul.md) | 224 | `declaration-track:92892b02a7b17522cb39aa0899bf261a5b379b1fede313fc5cba2d0180c713cd` |
| 31 | `instance` | [inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/inv.md) | 227 | `declaration-track:84479333a7359eaba4722dad244accae5885764e25a430adafa0fc089f6f7c33` |
| 32 | `instance` | [involutiveInv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/involutiveinv-source-edition-2.md) | 230 | `declaration-track:b233a1360a159b18152a2f88a9953638709f1a320a1711a9bf38c819f30e570a` |
| 33 | `instance` | [smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/smul.md) | 234 | `declaration-track:a0fb1a1313f5a5b7c7f25c5f9a232353f13495cb12d87b78e6b2add0ba925218` |
| 34 | `theorem` | [op_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/op-zero.md) | 239 | `result-track:518d7654a8f878dcd6728915986067e726f699b004a4d22378f1c2ec84c8c10c` |
| 35 | `theorem` | [unop_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/unop-zero.md) | 244 | `result-track:2773816119de4c7a616317036a36d01e731856173ce6e437dfda8015c905c732` |
| 36 | `theorem` | [op_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/op-one.md) | 249 | `result-track:1521e5e467fa4f3b8f712610c29f3d45fd21239e0e5feab7a1cf6db540c8d690` |
| 37 | `theorem` | [unop_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/unop-one-source-edition-2.md) | 255 | `result-track:b2f6e1d09fc7e804da863eb860019719a0fe9e7350f7d70c6c36347926950498` |
| 38 | `theorem` | [op_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/op-add.md) | 263 | `result-track:fbdaccbbbf94b4f18004a97fd2b67edca7a7a9464d5ab3a04b77a36a6d150ba8` |
| 39 | `theorem` | [unop_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/unop-add.md) | 268 | `result-track:f205562320810ced4fa33a674ee71ac10e39823a248de000844b8a997edf018a` |
| 40 | `theorem` | [op_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/op-neg.md) | 273 | `result-track:c644356bc540021414235336a7516224e7aa1c707d73f1adf8764cc0e4c2fc96` |
| 41 | `theorem` | [unop_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/unop-neg.md) | 278 | `result-track:3000e460e38c1d3abb08884ce4732c4da2d0578cd54685d4cd6c08c094cb7c7f` |
| 42 | `theorem` | [op_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/op-mul.md) | 283 | `result-track:777884f0705889df0f167dc6fc775256b6270cc943053a14b713dcb0e07d03b6` |
| 43 | `theorem` | [unop_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/unop-mul.md) | 289 | `result-track:441863016d764e18285ee0ba77f7269472915528560f41fb5c5c2cebc21b4104` |
| 44 | `theorem` | [op_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/op-inv.md) | 295 | `result-track:03228335972a5f63060534e9b86d0c16fb3ab3c347da9f5c21e782af68f463ea` |
| 45 | `theorem` | [unop_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/unop-inv.md) | 301 | `result-track:838fc69591c5f9d31354d551afe95f2ffc86f805392367f8261cbab4be2ec33d` |
| 46 | `theorem` | [op_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/op-sub.md) | 307 | `result-track:5ba8b04f77d8dbc3bb81d5c3a27eb031738f35058828ef8d067e743a22113652` |
| 47 | `theorem` | [unop_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/unop-sub.md) | 312 | `result-track:33a8529c008932631357237d2b1094d7d9eafde958030014d85e652fcc1b1b6a` |
| 48 | `theorem` | [op_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/op-smul.md) | 317 | `result-track:32438641aa2ea02387cc0a9375766f43b96c4274d6f0bb9ef9228457bafa24e3` |
| 49 | `theorem` | [unop_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/unop-smul.md) | 323 | `result-track:92f022a11361a347efe4ddc868c75388429934109013d1b35a4ee6a046801d3c` |
| 50 | `theorem` | [unop_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/unop-eq-zero-iff.md) | 333 | `result-track:8d2975cc7ad726677b7189d4d690c6379c228e20839ea0a95bcb86ab6290b953` |
| 51 | `theorem` | [op_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/op-eq-zero-iff.md) | 338 | `result-track:6dd4ea12bdefcc96135d1092015f37b43a95a87c1f7c997515acb03dbc02ff32` |
| 52 | `theorem` | [unop_ne_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/unop-ne-zero-iff.md) | 342 | `result-track:092dc48d72981532f93ff332907df125b975ff10907b3ab32975ee87712bc28e` |
| 53 | `theorem` | [op_ne_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/op-ne-zero-iff.md) | 346 | `result-track:f134f3ffb9ad90a7f7987c073d5e6521fee3457cb01979991ba91650a9277d82` |
| 54 | `theorem` | [unop_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/unop-eq-one-iff.md) | 351 | `result-track:66a3dac9fffac599e6e399413ff62c0d8463dda0144121357135618a05dfa01d` |
| 55 | `theorem` | [op_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/op-eq-one-iff.md) | 359 | `result-track:01c03668d3f803049c2a9baf944b00bcac461b8b2286562570ae0dacfee9d756` |
| 56 | `instance` | [one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/one-source-edition-2.md) | 368 | `declaration-track:6f5cd62a8f125ccee863992aa246ffaee287325b3c850d99b8acc4021262b191` |
| 57 | `theorem` | [op_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/op-one-source-edition-2.md) | 371 | `result-track:26c49a4c4972eb4ef01356c4a343831b661fbdf5e45f040d745c93ae77d76a6b` |
| 58 | `theorem` | [unop_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/unop-one.md) | 376 | `result-track:03f463ef9bd670c4babfc6b7de2f99bfc8fa3728504680052af2570703bc477f` |
| 59 | `theorem` | [op_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/op-eq-one-iff-source-edition-2.md) | 381 | `result-track:76f567b101957fe1b7466df149a5b1afd575196200f930f130537aa08384ca96` |
| 60 | `theorem` | [unop_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/unop-eq-one-iff-source-edition-2.md) | 386 | `result-track:ee768defd15a575a8f6e03eaf288f5f366d7e435f073f7d73ffd216e68ecc425` |
| 61 | `instance` | [mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/mul-source-edition-2.md) | 392 | `declaration-track:a2a6340e612a0363ea0d238eaf01110ef98e2775b9364f06a6b5fdd372ebf778` |
| 62 | `theorem` | [op_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/op-mul-source-edition-2.md) | 395 | `result-track:fe1fadd2d3f961611b5d23c8c0edfa6f201249334d2f497daac91a2a6c6f36f9` |
| 63 | `theorem` | [unop_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/unop-mul-source-edition-2.md) | 400 | `result-track:fd193e5aa63039b974d142057eadfa5466d09478fc6c2071902a5024d6ce2ae2` |
| 64 | `instance` | [inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/inv-source-edition-2.md) | 404 | `declaration-track:f258bc04fc282f89c3b1ebc946ed6ab427c6f1a431c2a843b8f8886ecb6425aa` |
| 65 | `instance` | [involutiveInv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/involutiveinv.md) | 406 | `declaration-track:a38708a31f22fbfe63f72eadf0f2f1d21cca5623cde95a450f4263436934bc0e` |
| 66 | `theorem` | [op_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/op-inv-source-edition-2.md) | 410 | `result-track:6933ce27b902d8b8fd2fa62deb32ef257dc9e8efc03cc0c51c431976cd857e94` |
| 67 | `theorem` | [unop_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/unop-inv-source-edition-2.md) | 415 | `result-track:ac08ece5a4b176524b3ccfa52b12af780dda4b9cd308c78acdcf9bd272596c57` |
| 68 | `instance` | [div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/div.md) | 419 | `declaration-track:5bc9d0fa59ac7c70f2a864b630980b8a12317f350d14f135bbb3752d34de8d54` |
| 69 | `theorem` | [op_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/op-div.md) | 422 | `result-track:a22d1e623802308cf7a15dbee5624ceba4b0c798cc8872be1b27bf96f1d2506e` |
| 70 | `theorem` | [unop_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesOpZero.lean/declarations/unop-div.md) | 427 | `result-track:6b41b0affc1a44418231c8e611213c868b70dbe115e9127f0813da32c8d1203b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2834dff46a2981934a7cce3e6d8751948e977bc66fd41e54665a4b8c38e7b91 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposites/Variant8daa53296ecc8001e14bd75a50c77373b50e3e7ff2b3a8b9a040d47f644baf6f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposites/Variant8daa53296ecc8001e14bd75a50c77373b50e3e7ff2b3a8b9a040d47f644baf6f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
