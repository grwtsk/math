# Verification target: Monoid Nat Cast

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1d107db41833cb939911200e6c37ec9cd14b70e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidNatCast.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidNatCast.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1d107db41833cb939911200e6c37ec9cd14b70e`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Unbundled.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.ZeroLEOne` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [lt_add_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidNatCast.lean/declarations/lt-add-one.md) | 18 | `result-track:fa453d8f5f475451b518e2f29f41374d66d1a5f7d23e5f5ee0a4d2683a617d1e` |
| 2 | `lemma` | [lt_one_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidNatCast.lean/declarations/lt-one-add.md) | 22 | `result-track:c1ba22720651827f118f0b6798a5826af42474cb62c011f460a9cd90a6689504` |
| 3 | `lemma` | [zero_le_two](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidNatCast.lean/declarations/zero-le-two.md) | 28 | `result-track:36336980c48db35a90a013149624d347bb1d9b48a634b16307b1ca828de6975f` |
| 4 | `lemma` | [zero_le_three](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidNatCast.lean/declarations/zero-le-three.md) | 33 | `result-track:44b480592288da40719046162b902829e5c3cd363d161dbddbee5035574844b2` |
| 5 | `lemma` | [zero_le_four](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidNatCast.lean/declarations/zero-le-four.md) | 38 | `result-track:de982753927f2bb1a4b204ade4b58c0d3106acef64c7af0b75474acdee4edbcf` |
| 6 | `lemma` | [one_le_two](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidNatCast.lean/declarations/one-le-two-source-edition-2.md) | 43 | `result-track:e0300ac382b64f5e472553616bb03b050e158dee01d7d897760fa79e5d43ccd8` |
| 7 | `lemma` | [one_le_two'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidNatCast.lean/declarations/one-le-two.md) | 49 | `result-track:ab962dddd592c8236ea90d155252fceea0945cd07af028efdd784f4a22d473f5` |
| 8 | `lemma` | [zero_lt_two](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidNatCast.lean/declarations/zero-lt-two.md) | 62 | `result-track:6f1fd9ec17fedd91585854ca2f01a56c76cb032bc9615636e009c2d9b95148f3` |
| 9 | `lemma` | [zero_lt_three](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidNatCast.lean/declarations/zero-lt-three.md) | 65 | `result-track:d7f517bcffecbdbd9f2f2a47cc3a02c2ac4c855b636a2f1f94131cd9594bba18` |
| 10 | `lemma` | [zero_lt_four](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidNatCast.lean/declarations/zero-lt-four-source-edition-2.md) | 70 | `result-track:9a8d8789223c7fe08bdaa91419ede18810591ce64706df332be1bb6813a81ee7` |
| 11 | `lemma` | [zero_lt_two'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidNatCast.lean/declarations/zero-lt-two-source-edition-2.md) | 77 | `result-track:af39d1e7479b2873c60862974262383b5ee90e9536b5d62c32cd65af431dc382` |
| 12 | `lemma` | [zero_lt_three'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidNatCast.lean/declarations/zero-lt-three-source-edition-2.md) | 80 | `result-track:fe7ee2874b51dcb64f8b32bbbe40299cfc0987a94280bf6d4e9305ce0727f582` |
| 13 | `lemma` | [zero_lt_four'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidNatCast.lean/declarations/zero-lt-four.md) | 83 | `result-track:6d5a739a6f8f10ae1ff4204c1a744a85df2c7165579cdc71a14ff7eb31e8ecfc` |
| 14 | `instance` | [ZeroLEOneClass.neZero.two](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidNatCast.lean/declarations/zeroleoneclass-nezero-two.md) | 85 | `declaration-track:5fda1e28e60b5906eedb302110ef72b01cb576b73ae38d72952ecd7ae7243a7f` |
| 15 | `instance` | [ZeroLEOneClass.neZero.three](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidNatCast.lean/declarations/zeroleoneclass-nezero-three.md) | 86 | `declaration-track:8a19700ba9b7a3a6c3954833ba3cae544366abc397275fd2aeab7b672505ffd7` |
| 16 | `instance` | [ZeroLEOneClass.neZero.four](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidNatCast.lean/declarations/zeroleoneclass-nezero-four.md) | 87 | `declaration-track:c8588031a81da51eb2e15ca82b17ddbd99da0d96dd81746ac5c54bb8e64d5a84` |
| 17 | `lemma` | [one_lt_two](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidNatCast.lean/declarations/one-lt-two.md) | 91 | `result-track:94bd45ed16b4b0edf45f079298f5a80ea61dca98a7c4dc10fa4cd155ed4c4988` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78ca7fc85471c453b199b7013cc811d2340cadda6ca984eb214364c2479858ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
