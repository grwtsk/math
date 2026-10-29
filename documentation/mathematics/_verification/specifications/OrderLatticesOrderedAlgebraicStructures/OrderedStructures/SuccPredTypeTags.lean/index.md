# Verification target: Succ Pred Type Tags

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ee0095a26d7c08a4b8c5b1020dd78dea10c8729",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/TypeTags/Variant368724301a8a7d0276610ed65df2eccf33ec985687fda848fd0c1ee321003ae4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SuccPredTypeTags.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SuccPredTypeTags.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ee0095a26d7c08a4b8c5b1020dd78dea10c8729`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/TypeTags/Variant368724301a8a7d0276610ed65df2eccf33ec985687fda848fd0c1ee321003ae4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/TypeTags/Variant368724301a8a7d0276610ed65df2eccf33ec985687fda848fd0c1ee321003ae4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.SuccPred.Archimedean` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.TypeTags` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SuccPredTypeTags.lean/declarations/instance-source-edition-6.md) | 18 | `declaration-track:8864f9e11c23f8a1faea84a6cd440e703beb9a5253a691bc810880801426141d` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SuccPredTypeTags.lean/declarations/instance-source-edition-2.md) | 19 | `declaration-track:2690ab5a38ecc3d8d70506eec52fbd2502f5bd7ebe4c497714106d9ce89ffd2b` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SuccPredTypeTags.lean/declarations/instance.md) | 21 | `declaration-track:0d6054ce9668a4088d2d45ea7413e1bbaf378f19195f7298c1957c529c447763` |
| 4 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SuccPredTypeTags.lean/declarations/instance-source-edition-4.md) | 22 | `declaration-track:4865f984a8c175d216cf9a362ddc0db27056fda1e7b722699a13ec5a9a210aba` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SuccPredTypeTags.lean/declarations/instance-source-edition-5.md) | 24 | `declaration-track:6778a722f4181f354859dc3c18149df4c6e2a89d3498e7d0a78e81a242b3176e` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SuccPredTypeTags.lean/declarations/instance-source-edition-3.md) | 26 | `declaration-track:306abb283fb1f8f0aefebca035e0ebf02b294d99b48d5f199a487b9edc8924de` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SuccPredTypeTags.lean/declarations/instance-source-edition-8.md) | 29 | `declaration-track:c999bfded9d516d4b3d845fe680b810a27ef44e5a9d836b82181d19853baf966` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SuccPredTypeTags.lean/declarations/instance-source-edition-7.md) | 31 | `declaration-track:8dcd66acd7f8ca3b55a54f5565400b24c59e042d4a7f0da5d1780fff2ee93265` |
| 9 | `lemma` | [succ_ofMul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SuccPredTypeTags.lean/declarations/succ-ofmul.md) | 38 | `result-track:11c0ac10fc9044ecaf568cc8a991c192cbd4c8620b397180180d2e9503d701ba` |
| 10 | `lemma` | [succ_toMul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SuccPredTypeTags.lean/declarations/succ-tomul.md) | 39 | `result-track:a22e6c3d9a40af3c02e5c2d8e43ff17915b121f91ffd8c0410d6bde4585d23c3` |
| 11 | `lemma` | [succ_ofAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SuccPredTypeTags.lean/declarations/succ-ofadd.md) | 42 | `result-track:79943b37b2c2a766f4e44c0db63a50d89941f5b3ed1fe80aa878ba47a314345c` |
| 12 | `lemma` | [succ_toAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SuccPredTypeTags.lean/declarations/succ-toadd.md) | 43 | `result-track:48467ef99f326156d4e1acbb312c78a703cafa04c42542f29a6485182487208d` |
| 13 | `lemma` | [pred_ofMul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SuccPredTypeTags.lean/declarations/pred-ofmul.md) | 46 | `result-track:35af51af6f84e1cf345435d76f6293b2e6a136761edaaf6bd4169e7ad63a4aa7` |
| 14 | `lemma` | [pred_toMul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SuccPredTypeTags.lean/declarations/pred-tomul.md) | 47 | `result-track:c74e73f9e4891f3d49d0cc83581c4aa5d4bf03d854ba173eeebebfc9dd1a45cf` |
| 15 | `lemma` | [pred_ofAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SuccPredTypeTags.lean/declarations/pred-ofadd.md) | 50 | `result-track:db01ec89870a1ce9264c93b806f9c2eb7c01cdcd5a04502ca713e055befb7361` |
| 16 | `lemma` | [pred_toAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SuccPredTypeTags.lean/declarations/pred-toadd.md) | 51 | `result-track:d1d1c75889f7d2972330d81caa0c7ab7ac97cd1fb8fdcf6774c6fd78f32fc2a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=840db80411dd1fce836ba81d75e7b61187e56aeabb11b9f2530276c2317cb262 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/TypeTags/Variant368724301a8a7d0276610ed65df2eccf33ec985687fda848fd0c1ee321003ae4.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/TypeTags/Variant368724301a8a7d0276610ed65df2eccf33ec985687fda848fd0c1ee321003ae4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
