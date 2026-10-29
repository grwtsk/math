# Verification target: Ideal Over Under

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b7a63415fa055c59c8a6c5cd5a0de0fc4d7e164",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Over/Variantc5dee92a17ac8d3b443e339b8bb04cca0f09c90129b1b809a42a2ea5faecefa1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b7a63415fa055c59c8a6c5cd5a0de0fc4d7e164`.

Source path: `GRWTSK/Algebra/Over/Variantc5dee92a17ac8d3b443e339b8bb04cca0f09c90129b1b809a42a2ea5faecefa1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Over/Variantc5dee92a17ac8d3b443e339b8bb04cca0f09c90129b1b809a42a2ea5faecefa1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Tower` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Actions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Pointwise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [comap_eq_of_scalar_tower_quotient](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/comap-eq-of-scalar-tower-quotient.md) | 48 | `result-track:6707221f30ea0893338c92181fbca8dc6ee4c68f3377b8d84b2a4fded5136422` |
| 2 | `instance` | [Quotient.algebraQuotientMapQuotient](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/quotient-algebraquotientmapquotient.md) | 63 | `declaration-track:4db5e9d0057367cbfaa9b2976d863117dbcb68bb480c6d6177582bf2ae4b3f83` |
| 3 | `theorem` | [Quotient.algebraMap_quotient_map_quotient](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/quotient-algebramap-quotient-map-quotient.md) | 67 | `result-track:5d3b669e0485ec78c6b131a0bac51a7c2b3e4f68930e8448aa44ec256d64909e` |
| 4 | `theorem` | [Quotient.mk_smul_mk_quotient_map_quotient](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/quotient-mk-smul-mk-quotient-map-quotient.md) | 74 | `result-track:61653460f77ab24e724e55d669f49042380ec1dafec1a596d38da7f45f4123fd` |
| 5 | `instance` | [Quotient.tower_quotient_map_quotient](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/quotient-tower-quotient-map-quotient.md) | 79 | `declaration-track:58bf7fa36e44c98a909e8130e2d7ed58d45f8970780a0193f464554830d552c9` |
| 6 | `abbrev` | [under](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/under.md) | 95 | `declaration-track:13b92436ab40dd8bdd118c71c617319baa3401fa06b73c5736f717523e069b56` |
| 7 | `theorem` | [under_def](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/under-def.md) | 97 | `result-track:4e45e33e60af53d2d7ca468be58822dfc39170627aeba2d1638baaac619cabaf` |
| 8 | `instance` | [IsPrime.under](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/isprime-under.md) | 99 | `declaration-track:6c4daa87b042f8ae1c7171e3fd4ee294aa7c2872ac4cebce0023d002b71bb9b2` |
| 9 | `lemma` | [under_smul](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/under-smul.md) | 103 | `result-track:4228f98aca80ff96eeb713e517709abab8eece1e1a5d9e80ae08b29e5795f7b2` |
| 10 | `theorem` | [under_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/under-top.md) | 109 | `result-track:20141e1917271c5ea831c2d8ceae30df2aac936570ad46b20276e5d8e9f87822` |
| 11 | `class` | [LiesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/liesover.md) | 114 | `declaration-track:1c93bbef0bfbdb39227d9a224bb60bbb4bba87f97aa9d25debedc51c5856eb06` |
| 12 | `instance` | [over_under](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/over-under.md) | 117 | `declaration-track:2b4c7054a34e61011b4c26db3b486634f603154fb3b04d34776448cc9146d045` |
| 13 | `theorem` | [over_def](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/over-def.md) | 119 | `result-track:b5028bccb765fd5a96862801ce960abc37d5a6b69a48f2e73734d49929173a73` |
| 14 | `theorem` | [mem_of_liesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/mem-of-liesover.md) | 121 | `result-track:ace030bd6ce3d56f7ce81c1a8319cadb19fdec9b73a448e46b792d9774bcc083` |
| 15 | `instance` | [top_liesOver_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/top-liesover-top.md) | 126 | `declaration-track:21ac8ba10008d70f7d580de5b2bee07a63450fddeea96534f24cf8624382b1e3` |
| 16 | `theorem` | [eq_top_iff_of_liesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/eq-top-iff-of-liesover.md) | 129 | `result-track:b2e5a9b744c100056cc7be86661890bc7ae2c17791ac5fac68561fb3e5b8006a` |
| 17 | `theorem` | [LiesOver.of_eq_comap](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/liesover-of-eq-comap.md) | 135 | `result-track:d9a57d6c7ae135dfa573ea91e204942a7ed89516b70cbc8270574f3e44dd8ea4` |
| 18 | `theorem` | [LiesOver.of_eq_map_equiv](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/liesover-of-eq-map-equiv.md) | 142 | `result-track:6427223f4b559f3fb79af7abba56d5cf1337b4ea363b74198cc149a982b55e61` |
| 19 | `instance` | [comap_liesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/comap-liesover.md) | 149 | `declaration-track:e07184aa5ce1fd13d74a0b93c94f21bfd369d67b3ea9f572d7755b3fe8ee1ed3` |
| 20 | `instance` | [map_equiv_liesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/map-equiv-liesover.md) | 153 | `declaration-track:3d564e5b9ce73bdd39b57789ca0deca7beb2733fd848d51f5d04b650fd7ecbb4` |
| 21 | `theorem` | [under_under](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/under-under.md) | 166 | `result-track:17075958cdb9ba61a1dbb187e3e5cce88f368b7633cc1d99118ed9ce08e76c60` |
| 22 | `theorem` | [LiesOver.trans](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/liesover-trans.md) | 169 | `result-track:efb6f64918bfedf31dd377a53273090f9b6df7dd9d41c374bcf2e81ef83c5b9d` |
| 23 | `theorem` | [LiesOver.tower_bot](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/liesover-tower-bot.md) | 172 | `result-track:1448158d6074fc71ae9792533318169e762014a7ae79f4ebb5dd3115e42f1e65` |
| 24 | `instance` | [under_liesOver_of_liesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/under-liesover-of-liesover.md) | 177 | `declaration-track:4528551f33901bd5206a258fafcd0acbba4f13152a80017459db04f19ea1c1a3` |
| 25 | `theorem` | [under_bot](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/under-bot.md) | 188 | `result-track:e3129d0746643a4eb7ed68b664032bb72ccf349b44c18d8c9fb6b16bd3a8a82c` |
| 26 | `instance` | [bot_liesOver_bot](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/bot-liesover-bot.md) | 191 | `declaration-track:be0d5be262940278a3eff59396be8f0c11a538b3adb633b79253752ccc42e525` |
| 27 | `theorem` | [ne_bot_of_liesOver_of_ne_bot](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/ne-bot-of-liesover-of-ne-bot.md) | 195 | `result-track:1e3ebb2d16ce7cdbb01c40c6f07693eb45619db797399e441580bd35caf7a35d` |
| 28 | `instance` | [algebraOfLiesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/algebraofliesover.md) | 209 | `declaration-track:f9d1616f3f2ae679cf30954fbc2e773ce69ae6f1d3b71ffe03770c75a0589db9` |
| 29 | `instance` | [isScalarTower_of_liesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/isscalartower-of-liesover.md) | 212 | `declaration-track:b82c62939bb66242e8044f86ffdd2c02d537c8fcf59341addf4eb2a3139163fb` |
| 30 | `instance` | [instFaithfulSMul](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/instfaithfulsmul.md) | 216 | `declaration-track:5b18c48fafe192ca21bf7bf147b97f3c3ac5f290363236a885d666894be78d6d` |
| 31 | `theorem` | [nontrivial_of_liesOver_of_ne_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/nontrivial-of-liesover-of-ne-top.md) | 227 | `result-track:4c443b2fc447e2185acae769d5acc70b1db6047a4a67b6ea348459946719ed31` |
| 32 | `theorem` | [nontrivial_of_liesOver_of_isPrime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/nontrivial-of-liesover-of-isprime.md) | 230 | `result-track:1dd719ca214f04c8f2c46d176b5ec11a3d59644329dd68e4ad80c2e760dc34b6` |
| 33 | `def` | [algEquivOfEqMap](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/algequivofeqmap.md) | 239 | `declaration-track:0de94e39b61c18afe920643353f14b90eaa7bf843c0fdce5ccb33a19624e9151` |
| 34 | `theorem` | [algEquivOfEqMap_apply](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/algequivofeqmap-apply.md) | 246 | `result-track:f8c6b146bdd8f49f5b6dce53cf587e6cd6bdbd81d518fdb838d67e22e2d39eb6` |
| 35 | `def` | [algEquivOfEqComap](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/algequivofeqcomap.md) | 251 | `declaration-track:9592362aa3300aae211263206ede6c683757ba6a119aeea7c5a4abddc9b11a2d` |
| 36 | `theorem` | [algEquivOfEqComap_apply](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/algequivofeqcomap-apply.md) | 255 | `result-track:213c5de5d7521370c3b465b54dec22df0bd5a5c6b527fe4b05c42956ed28918c` |
| 37 | `def` | [stabilizerHom](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/stabilizerhom.md) | 261 | `declaration-track:c34b046d1717396f40967ef7ff5111ab00da114df550cf9ea3065d2ad08f0c25` |
| 38 | `theorem` | [stabilizerHom_apply](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/stabilizerhom-apply.md) | 270 | `result-track:af99a52ac5ed8cf5d3995ac87e2606e95506eacb331db326fdc9feab078ab23e` |
| 39 | `def` | [primesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/primesover.md) | 283 | `declaration-track:f8d8f3608fca31f45399ff283084e645f6b48f15d4c71f01b6bff21a58e0b9a9` |
| 40 | `instance` | [primesOver.isPrime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/primesover-isprime.md) | 288 | `declaration-track:260869f1ba0d9de38610f272dd5fd4497b0e15f55c45ce74bc65a135cbfa021c` |
| 41 | `instance` | [primesOver.liesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/primesover-liesover.md) | 291 | `declaration-track:e22cf3da60d402cdeee2437988782fc3c3cf100c8c0a6cf0499d6b8d8946d5ef` |
| 42 | `abbrev` | [primesOver.mk](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverUnder.lean/declarations/primesover-mk.md) | 295 | `declaration-track:41e84320006edb8ca3ef293039ed7a0e7aa3844a70bd373f924ca319c53959a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=368db4f61b88e738bf60e6769feadef0795aec9a5424b467506f1b632e836e48 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Over/Variantc5dee92a17ac8d3b443e339b8bb04cca0f09c90129b1b809a42a2ea5faecefa1.lean","GRWTSK/_verification/specifications/Algebra/Over/Variantc5dee92a17ac8d3b443e339b8bb04cca0f09c90129b1b809a42a2ea5faecefa1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
