# Verification target: Canonically Ordered Comm Semiring Two Mul Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e151aa7aa22c5371a76d48edc6e8171b1b9e621",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/index.md) · [Full source](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e151aa7aa22c5371a76d48edc6e8171b1b9e621`.

Source path: `GRWTSK/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Subsemiring.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [K](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/k.md) | 39 | `declaration-track:97875dc028acfde14f8e2fc9ded715e0dc1acb24175732ba85f882d3c1926228` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/instance.md) | 44 | `declaration-track:2f9dc725b0d5cb5848d03e844295159aca512db068e2d93b1ccdf5d6f53dcbb8` |
| 3 | `instance` | [inhabitedK](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/inhabitedk.md) | 47 | `declaration-track:c891909be6fa01b444a70c81df0a3a18a390b8738cdc8195c6e0517c18579933` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/instance-source-edition-3.md) | 51 | `declaration-track:931db6a2e4d6349d2d9fcd8f7d93e63184d2bc3a13685881d90f26d63aeebef2` |
| 5 | `theorem` | [mem_zmod_2](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/mem-zmod-2.md) | 62 | `result-track:b97d46dcfc40047dd869d3a56562f572232b1548de1eb60d2f6f462d9d07c758` |
| 6 | `theorem` | [add_self_zmod_2](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/add-self-zmod-2.md) | 68 | `result-track:29456969f76e98f037296d17f8d0f63507d3e8c2da3884dc2220eb0ec05f6132` |
| 7 | `instance` | [preN2](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/pren2.md) | 79 | `declaration-track:0f1df68907554b2d25246d28e72200f764fae27e95f82aea4d922ec63d087568` |
| 8 | `instance` | [csrN2](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/csrn2.md) | 97 | `declaration-track:0c20fbda592623892a47584480746945a192f082bcd7d849bab8f51838a9dc55` |
| 9 | `instance` | [csrN21](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/csrn21.md) | 100 | `declaration-track:601955b524809200f24de5d840ac6e5036ff494a564bfe406630bab456217c43` |
| 10 | `theorem` | [lt_def](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/lt-def.md) | 106 | `result-track:a5a422960924ef68f6c747ce0ea1365b025e6b6a5cd2c834d58ee802139a58ed` |
| 11 | `theorem` | [add_left_cancel](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/add-left-cancel.md) | 116 | `result-track:4c49655ac8ec99422c1278b258bdf73925efb772701432a8a950725d112891f6` |
| 12 | `theorem` | [add_le_add_left](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/add-le-add-left.md) | 120 | `result-track:808d70672ff8db8a96872f20b63d6cd42a14a9ade2dbfad19207becc38e9f5b0` |
| 13 | `theorem` | [le_of_add_le_add_left](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/le-of-add-le-add-left.md) | 126 | `result-track:a205004df774482aa380f50828688086a550aa93b10462090aa100038f07ccf0` |
| 14 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/instance-source-edition-4.md) | 132 | `declaration-track:c17081257d647469d30f279ae15fd0cc335820a4df16ccaabf4c6e7c774f690c` |
| 15 | `theorem` | [mul_lt_mul_of_pos_left](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/mul-lt-mul-of-pos-left.md) | 135 | `result-track:04023910c9ddce90606496bf6dfc0ace70f1880d89920ea83cffd54d395cee5c` |
| 16 | `theorem` | [mul_lt_mul_of_pos_right](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/mul-lt-mul-of-pos-right.md) | 139 | `result-track:5bdfecf5ecbc6e22fcd32dc038a7264c38bc237e4cbec9642a416f4a930f3c75` |
| 17 | `instance` | [socsN2](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/socsn2.md) | 143 | `declaration-track:45633eeb1a7b02d7cdeac6011424112b2891d5138868e1270ad641ade6d4e5c6` |
| 18 | `def` | [L](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/l.md) | 162 | `declaration-track:2a1a8d5a5580b7c9423a3e20f19708f5987c68ad0bdef146acb1d5b1848e076f` |
| 19 | `theorem` | [add_L](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/add-l.md) | 166 | `result-track:68db8fb56e8ca77f6cf80601d754c488eeaf86d0275c37310636c5c28b2419d9` |
| 20 | `theorem` | [mul_L](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/mul-l.md) | 178 | `result-track:f5470ddabf81309591064c619d18db573aac3ca1ee216ea59c24e6715999ff36` |
| 21 | `def` | [lSubsemiring](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/lsubsemiring.md) | 195 | `declaration-track:696071cdb70854ac066c6d1810687757b989e65bcb82e95ef29dbf7e8a04da7c` |
| 22 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/instance-source-edition-2.md) | 203 | `declaration-track:77cc190447759d1118f775d57110a24512dac213565b5bfee666e741c628d87f` |
| 23 | `instance` | [inhabited](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/inhabited.md) | 206 | `declaration-track:6addd3f75bbf846871bc07235de70fd8842464a488f3353282e6e0985614440f` |
| 24 | `theorem` | [bot_le](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/bot-le.md) | 210 | `result-track:d2ff5b58500775d9a048e95810376afcd962e53aa2bb111cfffd6e00ad51310b` |
| 25 | `instance` | [orderBot](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/orderbot.md) | 220 | `declaration-track:edf36ee505957715dbd5393064d9d01abc61c6d5b1f869b3b91bbd13fb2ac0f6` |
| 26 | `theorem` | [exists_add_of_le](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/exists-add-of-le.md) | 225 | `result-track:5d73470117b4f7a5a7c662d3636f6a2a1500ad2173abb7e2c2435ccedea4706b` |
| 27 | `theorem` | [le_self_add](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/le-self-add.md) | 233 | `result-track:8d4a33f14f08cdf479c9c9e88d45cf09c0c054d9a369934bf68ecfc5a97d2436` |
| 28 | `theorem` | [eq_zero_or_eq_zero_of_mul_eq_zero](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/eq-zero-or-eq-zero-of-mul-eq-zero.md) | 242 | `result-track:75978f7d4671c1bf329f5ba689b7e8e83b02760ee23287f89c243940b0997799` |
| 29 | `instance` | [can](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/can.md) | 258 | `declaration-track:ccfca0a47a2a6ffbf7c32d5ac39b48625b1541c04985c837c95092023df2c470` |
| 30 | `example` | [(anonymous)](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition1.lean/declarations/example.md) | 269 | `declaration-track:bc2195c1296cb8964a1c8448d0177be737a730ff2f8d323085094f4e8b19dc8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=483045385e066df4406ab5237955d602980a661cf913766491dd693efe95910f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean","GRWTSK/_verification/specifications/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
