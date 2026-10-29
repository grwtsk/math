# Verification target: Invertible Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db5da0992d58ba48eae36e5c6a96d613f47a9c46",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant914367d9836549e8227f64a3eb3f04fba53c0376a31f82d51572cfcf21ad3d45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/InvertibleBasicNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/InvertibleBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db5da0992d58ba48eae36e5c6a96d613f47a9c46`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant914367d9836549e8227f64a3eb3f04fba53c0376a31f82d51572cfcf21ad3d45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant914367d9836549e8227f64a3eb3f04fba53c0376a31f82d51572cfcf21ad3d45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute.Units` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Invertible.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitOfInvertible](../../../../GroupTheoryAndGeneralizations/InvertibleBasicNamespaced.lean/declarations/unitofinvertible.md) | 31 | `declaration-track:b0dc676348858ab051a64929bde1e91ed9fe271deef1dc3b0c8bb7ce6761e67c` |
| 2 | `theorem` | [isUnit_of_invertible](../../../../GroupTheoryAndGeneralizations/InvertibleBasicNamespaced.lean/declarations/isunit-of-invertible.md) | 37 | `result-track:940995a8fc9e21042d8ca55fe1f57902a151dc43c1d73bf429c2816fd04c1e1a` |
| 3 | `def` | [Units.invertible](../../../../GroupTheoryAndGeneralizations/InvertibleBasicNamespaced.lean/declarations/units-invertible.md) | 41 | `declaration-track:0283bd5795501de984c0500403f4a30b2cde69a96f1af620119491ba6ea1eb20` |
| 4 | `theorem` | [invOf_units](../../../../GroupTheoryAndGeneralizations/InvertibleBasicNamespaced.lean/declarations/invof-units.md) | 48 | `result-track:c6feec0c73e15009622bad6af54101fe9092a9f4d18d2b95cdb1a8bd357a10b6` |
| 5 | `theorem` | [IsUnit.nonempty_invertible](../../../../GroupTheoryAndGeneralizations/InvertibleBasicNamespaced.lean/declarations/isunit-nonempty-invertible.md) | 51 | `result-track:6704f246fe387f8346595cd993e190025ba9ddc7db82e22c9c6ad6d56b295395` |
| 6 | `def` | [IsUnit.invertible](../../../../GroupTheoryAndGeneralizations/InvertibleBasicNamespaced.lean/declarations/isunit-invertible.md) | 58 | `declaration-track:9ed73ab4e7f5726577cbf8ceb1c6c006503e564de40b30d5cc860116c19ac80e` |
| 7 | `theorem` | [nonempty_invertible_iff_isUnit](../../../../GroupTheoryAndGeneralizations/InvertibleBasicNamespaced.lean/declarations/nonempty-invertible-iff-isunit.md) | 62 | `result-track:5ccb52c41b5fa2327eb78a069eea43948e0c79651c308042a50fdb8f49a826c6` |
| 8 | `theorem` | [Commute.invOf_right](../../../../GroupTheoryAndGeneralizations/InvertibleBasicNamespaced.lean/declarations/commute-invof-right.md) | 65 | `result-track:772635f0c617b32d7a4c4f8e9d33c9db5cdab03ee49efd6fca811591a4331b3a` |
| 9 | `theorem` | [Commute.invOf_left](../../../../GroupTheoryAndGeneralizations/InvertibleBasicNamespaced.lean/declarations/commute-invof-left.md) | 72 | `result-track:ad028cf8dc7e6c6cbb8fbad30bbe8ec079b2387aed4607958eb54701681386b1` |
| 10 | `theorem` | [commute_invOf](../../../../GroupTheoryAndGeneralizations/InvertibleBasicNamespaced.lean/declarations/commute-invof.md) | 79 | `result-track:339d95eb3733cf0fb14235165fd75f2b75f5b2f2929c5e82dbd04da7e16bc987` |
| 11 | `abbrev` | [invertibleOfInvertibleMul](../../../../GroupTheoryAndGeneralizations/InvertibleBasicNamespaced.lean/declarations/invertibleofinvertiblemul.md) | 89 | `declaration-track:08c1221403259f025c67867cbbd8382b1380299347c228d92f416fd94b338c3f` |
| 12 | `abbrev` | [invertibleOfMulInvertible](../../../../GroupTheoryAndGeneralizations/InvertibleBasicNamespaced.lean/declarations/invertibleofmulinvertible.md) | 97 | `declaration-track:3e42b7b106ab6b99e3d6274aff2c04197cbbe96c27c6ae50b8964c8ae3e3b746` |
| 13 | `def` | [Invertible.mulLeft](../../../../GroupTheoryAndGeneralizations/InvertibleBasicNamespaced.lean/declarations/invertible-mulleft.md) | 106 | `declaration-track:8130393bae909334e4d143100e11be61856b2b8092f708d23e9b9d4b26363b3c` |
| 14 | `def` | [Invertible.mulRight](../../../../GroupTheoryAndGeneralizations/InvertibleBasicNamespaced.lean/declarations/invertible-mulright.md) | 114 | `declaration-track:355971f6487747130eb25b5dbd8ed21b77709fba98b0d9d4a042a2290eca6a78` |
| 15 | `instance` | [invertiblePow](../../../../GroupTheoryAndGeneralizations/InvertibleBasicNamespaced.lean/declarations/invertiblepow.md) | 120 | `declaration-track:81af4100cadca4341666599022d722e05ba2e004d0ee647407ac2ff73d50f7d0` |
| 16 | `lemma` | [invOf_pow](../../../../GroupTheoryAndGeneralizations/InvertibleBasicNamespaced.lean/declarations/invof-pow.md) | 125 | `result-track:d2adbaf2ae80a92ace8502cabb63b8a871c06bac2fe3b5ba909d519a24aafdf9` |
| 17 | `def` | [invertibleOfPowEqOne](../../../../GroupTheoryAndGeneralizations/InvertibleBasicNamespaced.lean/declarations/invertibleofpoweqone.md) | 129 | `declaration-track:fb281d4d69822c2c3c19afa8106ee0dccb17d76a58556571359aa967f7cfdd69` |
| 18 | `def` | [Invertible.map](../../../../GroupTheoryAndGeneralizations/InvertibleBasicNamespaced.lean/declarations/invertible-map.md) | 136 | `declaration-track:2e28e17aaff171658a5ea2720f091e6337210e630c08ea6d674f0fb9cb607b1e` |
| 19 | `theorem` | [map_invOf](../../../../GroupTheoryAndGeneralizations/InvertibleBasicNamespaced.lean/declarations/map-invof.md) | 145 | `result-track:bc8fee62f369453fb86c8516221b5cc8d983d548a2f259d145e1d43cf88e6dd5` |
| 20 | `def` | [Invertible.ofLeftInverse](../../../../GroupTheoryAndGeneralizations/InvertibleBasicNamespaced.lean/declarations/invertible-ofleftinverse.md) | 157 | `declaration-track:61a7ac8d7fe441d3fb102af66e77a2a0634beeb72b808502c617f57f663c04a8` |
| 21 | `def` | [invertibleEquivOfLeftInverse](../../../../GroupTheoryAndGeneralizations/InvertibleBasicNamespaced.lean/declarations/invertibleequivofleftinverse.md) | 164 | `declaration-track:c7d7e7c06201de9d1863a21962dbab7e6d105b522182f208bd1835365830610b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c425cf7ca82ed41824ac06ed4639266fad38b5fea4bde8e6eedfb3140d6b672 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant914367d9836549e8227f64a3eb3f04fba53c0376a31f82d51572cfcf21ad3d45.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant914367d9836549e8227f64a3eb3f04fba53c0376a31f82d51572cfcf21ad3d45.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
