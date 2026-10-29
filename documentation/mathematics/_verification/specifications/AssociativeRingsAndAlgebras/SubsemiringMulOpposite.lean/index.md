# Verification target: Subsemiring Mul Opposite

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bfbfecdaae76ce1a862a23e8d5890abd13deeb2",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MulOpposite/Variant6335eae7e0e66ad30ff77de2329da7451ded1ffdfac30f9b41330d5e22cb6ef7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bfbfecdaae76ce1a862a23e8d5890abd13deeb2`.

Source path: `GRWTSK/Algebra/MulOpposite/Variant6335eae7e0e66ad30ff77de2329da7451ded1ffdfac30f9b41330d5e22cb6ef7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MulOpposite/Variant6335eae7e0e66ad30ff77de2329da7451ded1ffdfac30f9b41330d5e22cb6ef7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.MulOpposite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subsemiring.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [op](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/op.md) | 24 | `declaration-track:e9db08c1a9e49c51abc6724009965c5c468f036b5122a45f53290daffcda7bfb` |
| 2 | `theorem` | [mem_op](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/mem-op.md) | 32 | `result-track:da547bb072e6e0e956231a7101469188592d061472e224e4e22f45cbca459e9d` |
| 3 | `def` | [unop](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/unop.md) | 36 | `declaration-track:ca9967ea39d6cf97540b25d2a2157205e1ddbe3e8a68c4ec2944637ef880e22f` |
| 4 | `theorem` | [mem_unop](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/mem-unop.md) | 45 | `result-track:08c90962775436a68cb9a39db01aa0472881816df37ab596cf382fb0cc54baea` |
| 5 | `theorem` | [unop_op](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/unop-op.md) | 48 | `result-track:c746e57e05c8ac8c5af748f7704b19758e0923de834b0ee01d9eb78218ad3ce7` |
| 6 | `theorem` | [op_unop](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/op-unop.md) | 51 | `result-track:8fe65455086e5664bcef190c0e0666eecae1fad574614f71fcff14e3f2858648` |
| 7 | `theorem` | [op_le_iff](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/op-le-iff.md) | 55 | `result-track:5bfe656bfc91b55627caf1ed79162fa0ab53d37c5694e48a8ab7486464c2ee42` |
| 8 | `theorem` | [le_op_iff](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/le-op-iff.md) | 58 | `result-track:8b1c0d8a9477f6b2dc3a7141a543b059b341e7724f41ac092997e0ca75562d06` |
| 9 | `theorem` | [op_le_op_iff](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/op-le-op-iff.md) | 62 | `result-track:91b8f646e7f62a664302b5b43f58c64455dcc729fba1f3405afb17264839ef43` |
| 10 | `theorem` | [unop_le_unop_iff](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/unop-le-unop-iff.md) | 66 | `result-track:5d2699d80c50f201ead4e761b3b2524f5f6d7b31a5f039512d37a8ebd53d14a0` |
| 11 | `def` | [opEquiv](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/opequiv.md) | 71 | `declaration-track:b8178b70f03f987b2a8a7931ba6c1090b1e189cdc480273b98b29eb2b7bc60c6` |
| 12 | `theorem` | [op_injective](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/op-injective.md) | 78 | `result-track:9781d66d6628ec5114708b08e2d14d5defc02d01d868f39c834ef8c0c2587ebb` |
| 13 | `theorem` | [unop_injective](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/unop-injective.md) | 79 | `result-track:81685cf4c78050c2087ab6e75b0ed30f45d32f1e9d84cef4f12a220d5fc02eb3` |
| 14 | `theorem` | [op_inj](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/op-inj.md) | 81 | `result-track:fe932cb817bd8bae83f51dca0f45b0bd4facada49681d13c12eaa2bf94b0512f` |
| 15 | `theorem` | [unop_inj](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/unop-inj.md) | 84 | `result-track:ba1bc0dc79f13ac6b7c8712faf73f9161f57785f5ad9774ae2606d531693d595` |
| 16 | `theorem` | [op_bot](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/op-bot.md) | 87 | `result-track:7ed75c7bde4957c65e95429d1b76ddc07b8fe6594fb9a57ec8d3c9895ec94f25` |
| 17 | `theorem` | [op_eq_bot](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/op-eq-bot.md) | 90 | `result-track:2201bcc88c262a04683a73d9791604c5e4ec11c7e057151befb7b6ebcb7ed525` |
| 18 | `theorem` | [unop_bot](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/unop-bot.md) | 93 | `result-track:00aa4671fd56d317af3a125301beb0495d61207dd052f1d25f779a5071952b97` |
| 19 | `theorem` | [unop_eq_bot](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/unop-eq-bot.md) | 96 | `result-track:c3c366628d2533d153236fdd88bdc9ee1baaeb6efc842c1328d9a482a9ea0848` |
| 20 | `theorem` | [op_top](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/op-top.md) | 99 | `result-track:5bcc2cd0492716450ed7bb7b023aa774a26f46b50097624089206e1ee21ed768` |
| 21 | `theorem` | [op_eq_top](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/op-eq-top.md) | 102 | `result-track:941509f63e99a5751d0ed41ac4e294e7c4a38a30f1532025f9aa6fdaa9110492` |
| 22 | `theorem` | [unop_top](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/unop-top.md) | 105 | `result-track:e02081f18fa26539ea13e7f2fdd43f49e5896a2899f30690661f1a5050baca5c` |
| 23 | `theorem` | [unop_eq_top](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/unop-eq-top.md) | 108 | `result-track:8a00cafafed0b18711695bd5478c734f9bf025310eb8527682caf31cb7421e58` |
| 24 | `theorem` | [op_sup](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/op-sup.md) | 110 | `result-track:2ed4c60f3a51f2badf0509c67ffe71027d6674c74b0b0ee285d48481cdd67699` |
| 25 | `theorem` | [unop_sup](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/unop-sup.md) | 113 | `result-track:ec29ac54f1101e3ce4ca20bb356b550e2d85dde29727f217ded505285fcf11f6` |
| 26 | `theorem` | [op_inf](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/op-inf.md) | 116 | `result-track:59b7a8d88cad117aa16e613598615ac04253b68137a53052ec377f2e4d151dd4` |
| 27 | `theorem` | [unop_inf](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/unop-inf.md) | 118 | `result-track:d0680521035efdc519fdbb57e4c2b4d18e9e03c820a3ffea3af2f84bb0bfa3ba` |
| 28 | `theorem` | [op_sSup](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/op-ssup.md) | 120 | `result-track:249efe322cb60d2323aac94fbb44f4b2f1a5af55352ca668fd7e2824539f7684` |
| 29 | `theorem` | [unop_sSup](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/unop-ssup.md) | 123 | `result-track:cab5740b0aef44d6f22116d9123b361324cc007c88a87243e31f7881294ccb03` |
| 30 | `theorem` | [op_sInf](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/op-sinf.md) | 126 | `result-track:3d017c54804eaf796bbc2e675cf63851158b93220a08f2f50aa4a7235c5a897b` |
| 31 | `theorem` | [unop_sInf](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/unop-sinf.md) | 129 | `result-track:98cbc0580655a267d673c50d285c5de9c6eb0888b46041276727100ef2b2cff6` |
| 32 | `theorem` | [op_iSup](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/op-isup.md) | 132 | `result-track:5636a58812086754ea0fefdf85adaff73afc01507a82eea28253acd1c9e10a4a` |
| 33 | `theorem` | [unop_iSup](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/unop-isup.md) | 134 | `result-track:32fa1a51eae15337a89b4346c2f0d4d50cb37a40715a5bfa7dbb76105abd6765` |
| 34 | `theorem` | [op_iInf](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/op-iinf.md) | 137 | `result-track:b8bd45d612b1056a52689abe510d7859d06a1c8f42c1189e15f85ab8c88a369c` |
| 35 | `theorem` | [unop_iInf](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/unop-iinf.md) | 139 | `result-track:a0cbd7c584d4d4c42942cc14503fe1c51c33ec97a0e20a65819d87bbb64dfe62` |
| 36 | `theorem` | [op_closure](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/op-closure.md) | 142 | `result-track:2c5109b9556788e48a190b667f9e00916b203b1c5b6173c8897e02990097541e` |
| 37 | `theorem` | [unop_closure](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/unop-closure.md) | 147 | `result-track:9cdd490fff0a8b7eb2446cc4566c404cbece533366804cc3b86d0a13fc5d682a` |
| 38 | `def` | [addEquivOp](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/addequivop.md) | 153 | `declaration-track:d6a850745d648b51268e3b3aba6c5b6cd99d4e77105bff8806203ec9d9f4dbff` |
| 39 | `def` | [ringEquivOpMop](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/ringequivopmop.md) | 160 | `declaration-track:5111edea59903bab40c5228769637de3a96e0143799b5fbf1963eb6854fbe146` |
| 40 | `def` | [mopRingEquivOp](../../../../AssociativeRingsAndAlgebras/SubsemiringMulOpposite.lean/declarations/mopringequivop.md) | 167 | `declaration-track:cf5cdf6e574afeacdbb0cbe67a33dd3ae4efe0d1aa787e02e09db7928b101fe9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d418a341eeebc9c684384eab61f82658f876be36f54b84220ae86cc8086d802 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/MulOpposite/Variant6335eae7e0e66ad30ff77de2329da7451ded1ffdfac30f9b41330d5e22cb6ef7.lean","GRWTSK/_verification/specifications/Algebra/MulOpposite/Variant6335eae7e0e66ad30ff77de2329da7451ded1ffdfac30f9b41330d5e22cb6ef7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
