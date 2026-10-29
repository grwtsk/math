# Verification target: Int Even Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ee729ca3bd041c97658dfefaf784e1a4382fa17",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Even/Variantfeb795803577eaa58b97149c45e39ee90364cd3834932af6e04e6c689877507c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/IntEvenNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/IntEvenNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ee729ca3bd041c97658dfefaf784e1a4382fa17`.

Source path: `GRWTSK/Algebra/GroupTheory/Even/Variantfeb795803577eaa58b97149c45e39ee90364cd3834932af6e04e6c689877507c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Even/Variantfeb795803577eaa58b97149c45e39ee90364cd3834932af6e04e6c689877507c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Int.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Even` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Sqrt` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [emod_two_ne_one](../../../../GroupTheoryAndGeneralizations/IntEvenNamespaced.lean/declarations/emod-two-ne-one.md) | 30 | `result-track:1bcd4c59aae9aa3c168ed3e19ecff72e1923c9b26f9ef6c278310b305ec94b69` |
| 2 | `lemma` | [one_emod_two](../../../../GroupTheoryAndGeneralizations/IntEvenNamespaced.lean/declarations/one-emod-two.md) | 33 | `result-track:f96e36a0032edf6c59beacdb7387d70921ad8f544dc0a9408450114c08dfd4d4` |
| 3 | `lemma` | [emod_two_ne_zero](../../../../GroupTheoryAndGeneralizations/IntEvenNamespaced.lean/declarations/emod-two-ne-zero.md) | 36 | `result-track:10be9ffa5b866a79019ef979a1b0ef090d3ea9e6f79e1c443125f1608016213f` |
| 4 | `lemma` | [even_iff](../../../../GroupTheoryAndGeneralizations/IntEvenNamespaced.lean/declarations/even-iff.md) | 39 | `result-track:eb1b5dfbd94ae689c257179d31524ef1aa107647b10460f8e0a95f9d1062bbb8` |
| 5 | `lemma` | [not_even_iff](../../../../GroupTheoryAndGeneralizations/IntEvenNamespaced.lean/declarations/not-even-iff.md) | 43 | `result-track:0731803907c4ec9fe5ac7fa30220d8a101c619705e244193f404bca7de27d501` |
| 6 | `lemma` | [two_dvd_ne_zero](../../../../GroupTheoryAndGeneralizations/IntEvenNamespaced.lean/declarations/two-dvd-ne-zero.md) | 45 | `result-track:9471f1107a2b4c1022417a07ac9019a4f971847bdac06396505711c1efb40407` |
| 7 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/IntEvenNamespaced.lean/declarations/instance.md) | 48 | `declaration-track:04fe3f48badaff18a1ce97904b2e8ed70a3782d60d135188a618090526d4427c` |
| 8 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/IntEvenNamespaced.lean/declarations/instance-source-edition-2.md) | 51 | `declaration-track:1fab4e8094e5131c174835cff2453372ffd3fa228ecbdfdff641abb7cb31088c` |
| 9 | `lemma` | [not_even_one](../../../../GroupTheoryAndGeneralizations/IntEvenNamespaced.lean/declarations/not-even-one.md) | 55 | `result-track:e6f5121ef841e6aaadc4cdc73dfbe161e1eeae4e55d66d73a52de07d60c441b4` |
| 10 | `lemma` | [even_add](../../../../GroupTheoryAndGeneralizations/IntEvenNamespaced.lean/declarations/even-add.md) | 57 | `result-track:f35a6a298879c33b66d4c875be20ce0c77d4f1a643dccd2dc7a72164fb162e37` |
| 11 | `lemma` | [two_not_dvd_two_mul_add_one](../../../../GroupTheoryAndGeneralizations/IntEvenNamespaced.lean/declarations/two-not-dvd-two-mul-add-one.md) | 62 | `result-track:3f3e5cc0003a99abe837a9f8daf1e2262a5adbf8279b4c444e46f7508e633ec0` |
| 12 | `lemma` | [even_sub](../../../../GroupTheoryAndGeneralizations/IntEvenNamespaced.lean/declarations/even-sub.md) | 65 | `result-track:e3e26d6f5632c8ff655ae3083975f71d26b0c658de1d3afe98ac49849ea32ae3` |
| 13 | `lemma` | [even_add_one](../../../../GroupTheoryAndGeneralizations/IntEvenNamespaced.lean/declarations/even-add-one.md) | 67 | `result-track:074df690714608c1cf6a469bc0b418da30df4d68f82cb9b3d00a0f61a88e3ad5` |
| 14 | `lemma` | [even_sub_one](../../../../GroupTheoryAndGeneralizations/IntEvenNamespaced.lean/declarations/even-sub-one.md) | 69 | `result-track:a0d375e85dc4b300f8ec92f9edd67bd31f0115b60cd0a4a39d42764afe7fb8a3` |
| 15 | `lemma` | [even_mul](../../../../GroupTheoryAndGeneralizations/IntEvenNamespaced.lean/declarations/even-mul.md) | 71 | `result-track:fdcdf0eab4ede4f476ddef0e54cd7a768662b2c11e48a5c2a46cc9331f8310d0` |
| 16 | `lemma` | [even_pow](../../../../GroupTheoryAndGeneralizations/IntEvenNamespaced.lean/declarations/even-pow-source-edition-2.md) | 76 | `result-track:b31b88bc5905ea3d0d7179c40b44c62053cbc209d417bd58bd5b5774eada58cb` |
| 17 | `lemma` | [even_pow'](../../../../GroupTheoryAndGeneralizations/IntEvenNamespaced.lean/declarations/even-pow.md) | 79 | `result-track:1a5c01ee5a1f4eefe74fcbec47a121009f8f0ee28b35ae5fe459f301710f945f` |
| 18 | `lemma` | [even_coe_nat](../../../../GroupTheoryAndGeneralizations/IntEvenNamespaced.lean/declarations/even-coe-nat.md) | 81 | `result-track:4d11321d4d6b212112e771702c8c35cdb09c78d1464816514fce1cb923ed2f7d` |
| 19 | `lemma` | [two_mul_ediv_two_of_even](../../../../GroupTheoryAndGeneralizations/IntEvenNamespaced.lean/declarations/two-mul-ediv-two-of-even.md) | 84 | `result-track:4d689bc2c891eb40cb0f7817e3314ff9baf8f94f516e80f6ce954a5cba905eb0` |
| 20 | `lemma` | [ediv_two_mul_two_of_even](../../../../GroupTheoryAndGeneralizations/IntEvenNamespaced.lean/declarations/ediv-two-mul-two-of-even.md) | 87 | `result-track:3b09e5531c2e98967c59a8025eb892142a3c7455ba91b98e1efadf3f006e9b09` |
| 21 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/IntEvenNamespaced.lean/declarations/example.md) | 91 | `declaration-track:729101bdd25be2fdcf14ab07518a9dda43c505e13730c2bdf246a0ecaef44478` |
| 22 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/IntEvenNamespaced.lean/declarations/example-source-edition-2.md) | 94 | `declaration-track:8fc87cf99409d909333c29abd1cfbc688c7ee566e264851195397ca0cab1fb2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=43bbe083af4088bff4b39b17319366cbbba62024e0ac0a7336092def2f63eb67 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Even/Variantfeb795803577eaa58b97149c45e39ee90364cd3834932af6e04e6c689877507c.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Even/Variantfeb795803577eaa58b97149c45e39ee90364cd3834932af6e04e6c689877507c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
