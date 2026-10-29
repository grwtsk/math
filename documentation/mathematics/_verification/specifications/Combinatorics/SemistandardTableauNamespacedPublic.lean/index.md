# Verification target: Semistandard Tableau Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec69c80ba33fb445305ba44350249160433a2413",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant8985340a3dbd5e96985387505ac72d6af363511963101a9fbbe3d1c361a33728.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/SemistandardTableauNamespacedPublic.lean/index.md) · [Full source](../../../../Combinatorics/SemistandardTableauNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec69c80ba33fb445305ba44350249160433a2413`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant8985340a3dbd5e96985387505ac72d6af363511963101a9fbbe3d1c361a33728.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant8985340a3dbd5e96985387505ac72d6af363511963101a9fbbe3d1c361a33728.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SemistandardYoungTableau](../../../../Combinatorics/SemistandardTableauNamespacedPublic.lean/declarations/semistandardyoungtableau.md) | 64 | `declaration-track:9cc2635517a370808f30066c0fe3bb3b0df79cb248be6f6ef21ecb430833f913` |
| 2 | `instance` | [instFunLike](../../../../Combinatorics/SemistandardTableauNamespacedPublic.lean/declarations/instfunlike.md) | 77 | `declaration-track:9b8c310fbf8d9077c53d67d7f80bd4b5870b6c3cd2a02a77942e98bd90d22130` |
| 3 | `theorem` | [to_fun_eq_coe](../../../../Combinatorics/SemistandardTableauNamespacedPublic.lean/declarations/to-fun-eq-coe.md) | 85 | `result-track:56a5798b26530f488e1fd035b7c89ca0d29a1b5bc01fd35d414d108b15429012` |
| 4 | `theorem` | [ext](../../../../Combinatorics/SemistandardTableauNamespacedPublic.lean/declarations/ext.md) | 90 | `result-track:9e627230f52e4eef9332af1b38281884bd52f0947dcf5497a8f726e34bfb235c` |
| 5 | `def` | [copy](../../../../Combinatorics/SemistandardTableauNamespacedPublic.lean/declarations/copy.md) | 98 | `declaration-track:e19d161fad4bf54cda30b2ed99ce5498c2d63039fb5bb366a3f25d2f8eef3b09` |
| 6 | `theorem` | [coe_copy](../../../../Combinatorics/SemistandardTableauNamespacedPublic.lean/declarations/coe-copy.md) | 106 | `result-track:4e394ae28b8047f6634acc5459bb8fbb0cbc5c4af87851b4507f83ba6d893e9f` |
| 7 | `theorem` | [copy_eq](../../../../Combinatorics/SemistandardTableauNamespacedPublic.lean/declarations/copy-eq.md) | 110 | `result-track:87b7879871c170c3e085716edc3dd10262843fb80790d7f43127f88327508023` |
| 8 | `theorem` | [row_weak](../../../../Combinatorics/SemistandardTableauNamespacedPublic.lean/declarations/row-weak.md) | 114 | `result-track:9c3609542853adad722fa08e802dfed10411e5bc72aed50b7f70e0d745e0346e` |
| 9 | `theorem` | [col_strict](../../../../Combinatorics/SemistandardTableauNamespacedPublic.lean/declarations/col-strict.md) | 118 | `result-track:f779817d319a77b89823caaa4b6b136bf78ad2eccea17c38e27345409724752a` |
| 10 | `theorem` | [zeros](../../../../Combinatorics/SemistandardTableauNamespacedPublic.lean/declarations/zeros.md) | 122 | `result-track:ae5e56c8a5b2c56feda8dc6e9c713438ecaeb1f31c09db44881f656aca6d941b` |
| 11 | `theorem` | [row_weak_of_le](../../../../Combinatorics/SemistandardTableauNamespacedPublic.lean/declarations/row-weak-of-le.md) | 126 | `result-track:455889eb291d242074451a00ee89f2dd759cca7a8b8b9e4fb96614b23b3fcea3` |
| 12 | `theorem` | [col_weak](../../../../Combinatorics/SemistandardTableauNamespacedPublic.lean/declarations/col-weak.md) | 132 | `result-track:a0bb827b2bdc0a2ff3e723ce4f2699f6f5c8e1692a73f288e95f11e23b33408d` |
| 13 | `def` | [highestWeight](../../../../Combinatorics/SemistandardTableauNamespacedPublic.lean/declarations/highestweight.md) | 139 | `declaration-track:8a26e3fd28b02bbb0c72e0a20c1020ebab30d447d70da7b45f20daca9e0831ea` |
| 14 | `theorem` | [highestWeight_apply](../../../../Combinatorics/SemistandardTableauNamespacedPublic.lean/declarations/highestweight-apply.md) | 148 | `result-track:f8329d8ab92822fbe3663761c1ae61a4dc773a0478ffb0962f99c30ebf527376` |
| 15 | `instance` | [(anonymous)](../../../../Combinatorics/SemistandardTableauNamespacedPublic.lean/declarations/instance.md) | 152 | `declaration-track:f90c2a9921e9b718098702b35e3afce1cece0de28f2841384f8ac4c305baf97f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=818134ae90eea4685670f6f7ceaf6d4a95ad6b2cc8f97ef26281d33c1eea00ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant8985340a3dbd5e96985387505ac72d6af363511963101a9fbbe3d1c361a33728.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant8985340a3dbd5e96985387505ac72d6af363511963101a9fbbe3d1c361a33728.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
