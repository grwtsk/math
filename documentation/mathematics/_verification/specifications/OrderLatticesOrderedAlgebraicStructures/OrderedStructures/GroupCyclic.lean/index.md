# Verification target: Group Cyclic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07b6751258749b9e288217219e9eace06ea6f76c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variante6ee447c6abffb59a0d59ffe2b3be3060fc78393ffdab636e0ab6c34af764551.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupCyclic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupCyclic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07b6751258749b9e288217219e9eace06ea6f76c`.

Source path: `GRWTSK/Algebra/GroupTheory/Cyclic/Variante6ee447c6abffb59a0d59ffe2b3be3060fc78393ffdab636e0ab6c34af764551.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Cyclic/Variante6ee447c6abffb59a0d59ffe2b3be3060fc78393ffdab636e0ab6c34af764551.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.SpecificGroups.Cyclic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_generator_lt_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupCyclic.lean/declarations/exists-generator-lt-one.md) | 31 | `result-track:71d66adb9629fba2c1303dc97e2bc3d3a9fd7ad37140a646e9e4d2c02e3b419d` |
| 2 | `def` | [genLTOne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupCyclic.lean/declarations/genltone-source-edition-2.md) | 44 | `declaration-track:5259a6b2a219b361254653ea0e22f420f36a45e11e8155c384bc6490c1ef4d0e` |
| 3 | `lemma` | [genLTOne_lt_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupCyclic.lean/declarations/genltone-lt-one.md) | 47 | `result-track:07ed0318e1a91f36be7d2c5b2816b8cbfd9806f8dae640dd9ff08543e93a5a5c` |
| 4 | `lemma` | [genLTOne_zpowers_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupCyclic.lean/declarations/genltone-zpowers-eq-top.md) | 51 | `result-track:05daac3bd32de823912e533240dc95ef75923e092ed712959e1cb5d939f4101d` |
| 5 | `def` | [genLTOne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupCyclic.lean/declarations/genltone.md) | 61 | `declaration-track:2693e9c443d6b94cf5f59b9c63f1d59163a5b2db189dbee30a1292ba96987dba` |
| 6 | `lemma` | [genLTOne_eq_of_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupCyclic.lean/declarations/genltone-eq-of-top.md) | 64 | `result-track:a913c26426eaefbb62810e3355c238f9bec23d9511abc5296690a1e38b616115` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01fc071916664b66300d17463222c3c2d562a413a70aa2d40f21468f303a70d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Cyclic/Variante6ee447c6abffb59a0d59ffe2b3be3060fc78393ffdab636e0ab6c34af764551.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Cyclic/Variante6ee447c6abffb59a0d59ffe2b3be3060fc78393ffdab636e0ab6c34af764551.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
