# Verification target: Nat Cast Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "064cc275209f146aa9600df25cfa63f10ce33dc8",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `064cc275209f146aa9600df25cfa63f10ce33dc8`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NeZero` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Nat.unaryCast](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/nat-unarycast.md) | 30 | `declaration-track:999e20d9dc989918ffe3e9bbf31865e5a0c96d33c6877e86930ec4a0e93114e2` |
| 2 | `class` | [Nat.AtLeastTwo](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/nat-atleasttwo.md) | 44 | `declaration-track:ffa36f8268d71856c55fd3a1ee5d8412722d7e520b258050f5aab39d87720b8e` |
| 3 | `instance` | [instNatAtLeastTwo](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/instnatatleasttwo.md) | 47 | `declaration-track:28bca441ff47a523427783cfe39abc43dd75d0d715e8de1b4684ebd2b76bf348` |
| 4 | `instance` | [instOfNat](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/instofnat.md) | 55 | `declaration-track:4b8dc9787f55268aa5e0de69f7fb3801d9073d0cd2d8e9d3a3ba5a0ff62eda7a` |
| 5 | `theorem` | [Nat.cast_ofNat](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/nat-cast-ofnat.md) | 58 | `result-track:a2e31d395912b9b03029fbeab69e7b1f06c378897a210e76eba093c6570cc689` |
| 6 | `theorem` | [Nat.cast_eq_ofNat](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/nat-cast-eq-ofnat.md) | 61 | `result-track:f3b019b08694d2ec1e7c40768f37ff9c285f29192db6fcf9aa5b4fbe9219ca1b` |
| 7 | `class` | [AddMonoidWithOne](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/addmonoidwithone.md) | 67 | `declaration-track:b0fa9b387b25d4cd01adb13dc3705960d59eece305e09ac331db880bf766c673` |
| 8 | `class` | [AddCommMonoidWithOne](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/addcommmonoidwithone.md) | 81 | `declaration-track:ea4033c1bf3f2ce86fc1d4b9e743e0e7ed0e293db04a9a05a0c14b33ac9f2e8b` |
| 9 | `theorem` | [cast_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/cast-zero.md) | 106 | `result-track:f7eecbf252147ae18322eaa01831afbcf68358f7f8065c9a6858783648987a7c` |
| 10 | `theorem` | [cast_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/cast-succ.md) | 114 | `result-track:d082f98a7c7d6577d39efe8fa2f67c8b0cb6255474cb572f8edd6261c80c1d60` |
| 11 | `theorem` | [cast_add_one](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/cast-add-one.md) | 118 | `result-track:21c288a2523a3e2215ca88880abb4f6cfe877a9cf4ba8ebd2904255854468199` |
| 12 | `theorem` | [cast_ite](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/cast-ite.md) | 123 | `result-track:faa6e4afdb4d0402d62944bf46dacf495d1fbe9aa52c36b6f8cd85b348831585` |
| 13 | `theorem` | [cast_one](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/cast-one.md) | 133 | `result-track:9c25a7ecd54920df18c83d8f6229f4fae3269d9bfd53ba04a64040fe23d33140` |
| 14 | `theorem` | [cast_add](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/cast-add.md) | 138 | `result-track:2bcf62b4f628203acb4865385b1e0bd003fafc8ac45454d2d4f070c636d0bc21` |
| 15 | `def` | [binCast](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/bincast.md) | 143 | `declaration-track:cb91546e232c2e7fc74ba11ee74bd6f6c6baee4a855928574dd60cd4f2943b67` |
| 16 | `theorem` | [binCast_eq](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/bincast-eq.md) | 152 | `result-track:990b9638ac082d277824a6ab8e0ab0937c7d403c3d0b5f724600fa4322b2b2c2` |
| 17 | `theorem` | [cast_bit0](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/cast-bit0.md) | 174 | `result-track:c8533ad744a56def2ebafc2ecbb6c314e7b06020736ccac66492460e9e163e9c` |
| 18 | `theorem` | [cast_bit1](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/cast-bit1.md) | 179 | `result-track:0030a367f8437d2e62a2f1b7781a541587119d148f63865293baaf54da6e42cc` |
| 19 | `theorem` | [cast_two](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/cast-two.md) | 185 | `result-track:91ddb296c3f94043adcbb86ec53cf177b7f01d01609e01f93e195ba11b5ffd42` |
| 20 | `def` | [AddMonoidWithOne.unary](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/addmonoidwithone-unary.md) | 194 | `declaration-track:8f65ac0a0c1c1750ded9512a91b59f6e599887341752498cf1c4f8e03baf4ec9` |
| 21 | `def` | [AddMonoidWithOne.binary](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/addmonoidwithone-binary.md) | 200 | `declaration-track:b1a72eee3a67353a29329344f6fb0cc5705aef16ceaad4c25f2cb2a4dab64317` |
| 22 | `lemma` | [natCast_ne](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/natcast-ne.md) | 212 | `result-track:2e8027160caaee222496b9088a7c79812f6257fe81da29aa25df1cfd5634920f` |
| 23 | `lemma` | [of_neZero_natCast](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/of-nezero-natcast.md) | 216 | `result-track:b77be35de8c3afaedb1984ad4a4775d7c02f3ecd4c6dd84847da89be47a07ebc` |
| 24 | `lemma` | [pos_of_neZero_natCast](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/pos-of-nezero-natcast.md) | 220 | `result-track:d085c5fb2af469a287c99501ef07a53421415538cd24dcbcd98f92ec9466a9b8` |
| 25 | `theorem` | [one_add_one_eq_two](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/one-add-one-eq-two.md) | 226 | `result-track:32d8b853335c632726110fe94e6a0e4e34ca66a4b4e66c683947871753c4f11e` |
| 26 | `theorem` | [two_add_one_eq_three](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/two-add-one-eq-three.md) | 232 | `result-track:151a953ae2abbf42df109d6dac6b1d73043557ce580bdef38d43d388cdaa1698` |
| 27 | `theorem` | [three_add_one_eq_four](../../../../../NumberTheory/ElementaryNumberTheory/NatCastDefs.lean/declarations/three-add-one-eq-four.md) | 237 | `result-track:a2f5d4b1ad95658acd3410d742b08eb7e76951363ee336e1fdd608a1be5d2c66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8223ee1c0371c8a50f748ed3750496d0c8cf40b38f31ba14c6ebdfae23467fa7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
