# Verification target: Set Infinite

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6d1cfbc032d3ba57c6a1c8ce55f56f6b96a8e68",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variantcb02145866ed3f914f137db6b0f456ff29f4925d63fee975be0949968ef7a510.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetInfinite.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetInfinite.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6d1cfbc032d3ba57c6a1c8ce55f56f6b96a8e68`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variantcb02145866ed3f914f137db6b0f456ff29f4925d63fee975be0949968ef7a510.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variantcb02145866ed3f914f137db6b0f456ff29f4925d63fee975be0949968ef7a510.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [NoMaxOrder.infinite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetInfinite.lean/declarations/nomaxorder-infinite.md) | 21 | `declaration-track:84c988ec98280ca52928cd21cde3818fa64c214dd6346a2a0419780820718307` |
| 2 | `instance` | [NoMinOrder.infinite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetInfinite.lean/declarations/nominorder-infinite.md) | 26 | `declaration-track:b9e50963e8b02b63cce7703433264fc024c11f5ddcccaad2dde808838afb2f6b` |
| 3 | `theorem` | [Ioo.infinite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetInfinite.lean/declarations/ioo-infinite-source-edition-2.md) | 36 | `result-track:c9f5666896a3aa9828a35cdf68143ffee3a9a901e98b14714a42c550cf03f06f` |
| 4 | `theorem` | [Ioo_infinite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetInfinite.lean/declarations/ioo-infinite.md) | 39 | `result-track:c39372cf5721e2e40dafa504d204df0e080e22a9a4f5163384b1f1a9434969e4` |
| 5 | `theorem` | [Ico_infinite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetInfinite.lean/declarations/ico-infinite.md) | 42 | `result-track:5eab3392fe94b6c8a93d6ba71d34ba0a454b428eed38c406917c4dc7ecdda5fb` |
| 6 | `theorem` | [Ico.infinite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetInfinite.lean/declarations/ico-infinite-source-edition-2.md) | 45 | `result-track:ea6b5466be5ec4007114cee7a8d01801f9179fd1f335ecf8d77cf6b4be54744a` |
| 7 | `theorem` | [Ioc_infinite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetInfinite.lean/declarations/ioc-infinite.md) | 48 | `result-track:22369707a5e065a9be55f5b880a78e9acf2e4d03619e52583e448539d5d14e6e` |
| 8 | `theorem` | [Ioc.infinite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetInfinite.lean/declarations/ioc-infinite-source-edition-2.md) | 51 | `result-track:375ecfb822b76f04158542483390d76ff2134413004c60da64ab3cfa577b88a3` |
| 9 | `theorem` | [Icc_infinite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetInfinite.lean/declarations/icc-infinite.md) | 54 | `result-track:11efa8324291ee76bdcb8f056f45aad1e52e1026d06fd066ca34d35d1d850964` |
| 10 | `theorem` | [Icc.infinite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetInfinite.lean/declarations/icc-infinite-source-edition-2.md) | 57 | `result-track:a5760c87b928970ffbd1016e86b111e63035c4c521c985cc5a8b9479ac705d84` |
| 11 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetInfinite.lean/declarations/instance-source-edition-3.md) | 62 | `declaration-track:9149551a55719d652ac732f75e6e22cec471d2b14f428de4b7f1b4a053315897` |
| 12 | `theorem` | [Iio_infinite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetInfinite.lean/declarations/iio-infinite.md) | 65 | `result-track:4c4f8555cba018dd3b9f7911dc1648461c64dda686ed04efc6b625118c906dda` |
| 13 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetInfinite.lean/declarations/instance.md) | 68 | `declaration-track:05faf7b85c9a2c090085f8e4321c306f8de4c1406e960f9805c40d7bc166fc86` |
| 14 | `theorem` | [Iic_infinite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetInfinite.lean/declarations/iic-infinite.md) | 71 | `result-track:429a7bde2d5a62d51486ff56aecc99f33aec7d6c2be165c6f6c3972793dbca30` |
| 15 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetInfinite.lean/declarations/instance-source-edition-4.md) | 74 | `declaration-track:acf7346afc02a6d8e395726ea86967d9e1db14138e34d521920e47fccd4cd4c9` |
| 16 | `theorem` | [Ioi_infinite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetInfinite.lean/declarations/ioi-infinite.md) | 77 | `result-track:4430512202fd9bd878df134191db4294799d6e4477922d02845edb476eb0c773` |
| 17 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetInfinite.lean/declarations/instance-source-edition-2.md) | 80 | `declaration-track:330959696106a94da06badf9bbea3418e0600d557df7184a57eaa97fec68c757` |
| 18 | `theorem` | [Ici_infinite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetInfinite.lean/declarations/ici-infinite.md) | 83 | `result-track:51ebf8b16e9c3356387e503a53c22c35c461dd135f3b18cb14e8eb8d5fce48f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c322bc3f49b40a874808503e4c67956787cca55cce980383fb799a06ffecd6e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variantcb02145866ed3f914f137db6b0f456ff29f4925d63fee975be0949968ef7a510.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Infinite/Variantcb02145866ed3f914f137db6b0f456ff29f4925d63fee975be0949968ef7a510.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
