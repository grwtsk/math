# Verification target: Of Scientific Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f8ce97e722c2a9a7bd09dc24af98ca8c1f4400a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfScientific/Variant8c3a33e4bb26d064bcdd7b88a2c7ea8fd8ef6fbdc32fa83480282241a85ebb42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificNamespacedPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f8ce97e722c2a9a7bd09dc24af98ca8c1f4400a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfScientific/Variant8c3a33e4bb26d064bcdd7b88a2c7ea8fd8ef6fbdc32fa83480282241a85ebb42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfScientific/Variant8c3a33e4bb26d064bcdd7b88a2c7ea8fd8ef6fbdc32fa83480282241a85ebb42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Log2` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Meta` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lemmas` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Float.exactlyRepresentablePowersOfTen](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificNamespacedPublic.lean/declarations/float-exactlyrepresentablepowersoften.md) | 29 | `declaration-track:ef6da0a8acb0626db7740e39291ea9f8eb117eedc974759a2d2bfa63645db4d0` |
| 2 | `def` | [Float.ofScientific](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificNamespacedPublic.lean/declarations/float-ofscientific.md) | 43 | `declaration-track:4be48f4b941077be01d37bf86cda6845cc0301436fda44d8e872d18a07827859` |
| 3 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 68 | `declaration-track:4b19aea91727478ed04b0837cd5abb9922535f283980fd69a3b3305e55456ebf` |
| 4 | `def` | [Float.ofNat](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificNamespacedPublic.lean/declarations/float-ofnat.md) | 76 | `declaration-track:43df75c676e35dfce6f60bf1a68cd75b55fe03c9f5bd839f08d9a64bc662b79d` |
| 5 | `def` | [Float.ofInt](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificNamespacedPublic.lean/declarations/float-ofint.md) | 83 | `declaration-track:ff13e537f1d979684d514eb2455c0c777a30ce8b5add78e7ed9dc655810bd7cb` |
| 6 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificNamespacedPublic.lean/declarations/instance.md) | 87 | `declaration-track:347cf226d480cdff4f71179f469d53d85377aceb6361b2ac681ba4b3a27d4fdf` |
| 7 | `abbrev` | [Nat.toFloat](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificNamespacedPublic.lean/declarations/nat-tofloat.md) | 89 | `declaration-track:c3fef5661e14c1d2f6ffcaff3249f04a44fae6b3ac7bfe9d9755347b232ce388` |
| 8 | `def` | [Float32.exactlyRepresentablePowersOfTen](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificNamespacedPublic.lean/declarations/float32-exactlyrepresentablepowersoften.md) | 96 | `declaration-track:de941fe88b3e7e1f1bccaa87f89c39a157b7436f7d505d28b0c8222fc3f964c0` |
| 9 | `def` | [Float32.ofScientific](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificNamespacedPublic.lean/declarations/float32-ofscientific.md) | 102 | `declaration-track:01e13ffa7c4b0e31d2c476eb2f7f90074193decee55349580b307ddda5cf6ab9` |
| 10 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 115 | `declaration-track:d3c94cbd54d072a2973a4f26e28ace2cde4eb6e4b434a1e5f4608696b110a77f` |
| 11 | `def` | [Float32.ofNat](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificNamespacedPublic.lean/declarations/float32-ofnat.md) | 123 | `declaration-track:bfefcee48346ec6e5276e067424090a3c21524976287980a90dfc83fc454c5ef` |
| 12 | `def` | [Float32.ofInt](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificNamespacedPublic.lean/declarations/float32-ofint.md) | 130 | `declaration-track:bf4dd6df86b5ada51e2b5bb5a169729dcf961328eb710fb7a473c01c76b15447` |
| 13 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 134 | `declaration-track:cdb3f98d0b5538588e2508792f29febe89b91630320ebfb73df70ab721c73c99` |
| 14 | `abbrev` | [Nat.toFloat32](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificNamespacedPublic.lean/declarations/nat-tofloat32.md) | 136 | `declaration-track:5aaaf159d642f20bbfad8f27faedc6275d4428e011b9d93e14709318d76b3c6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da31a81e511ff7db325c2e9bd2ac6d47d6fd4fbfe7508106c399e685f1190458 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfScientific/Variant8c3a33e4bb26d064bcdd7b88a2c7ea8fd8ef6fbdc32fa83480282241a85ebb42.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfScientific/Variant8c3a33e4bb26d064bcdd7b88a2c7ea8fd8ef6fbdc32fa83480282241a85ebb42.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
