# Verification target: Sum

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f50433c8192862306bcb2c801e8cc7fc3a7073d1",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Varianta074fac7f04dd3f248c63af20314fe8d0e3146025dada9aa2e4eae4ae70499e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/Sum.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/Sum.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f50433c8192862306bcb2c801e8cc7fc3a7073d1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Varianta074fac7f04dd3f248c63af20314fe8d0e3146025dada9aa2e4eae4ae70499e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Varianta074fac7f04dd3f248c63af20314fe8d0e3146025dada9aa2e4eae4ae70499e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Coloring` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Maps` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sum](../../../../../Combinatorics/GraphTheory/Sum.lean/declarations/sum.md) | 32 | `declaration-track:333fac75054c6d08965c3331f6de1fb31eba511a867a052cd16981247a672fae` |
| 2 | `def` | [Iso.sumComm](../../../../../Combinatorics/GraphTheory/Sum.lean/declarations/iso-sumcomm.md) | 49 | `declaration-track:2d6024560efbfd4a8d65d2398468149ba30aad9e98ddb8bc7b8bc459d5746130` |
| 3 | `def` | [Iso.sumAssoc](../../../../../Combinatorics/GraphTheory/Sum.lean/declarations/iso-sumassoc.md) | 54 | `declaration-track:a7fb4f65827a1a1ce3e502c987a9c1879bddd5c724a5790f53fbc0991aabc5c4` |
| 4 | `def` | [Embedding.sumInl](../../../../../Combinatorics/GraphTheory/Sum.lean/declarations/embedding-suminl.md) | 59 | `declaration-track:6b58b44475e3b6df8181a17217c7e099342465971ccd55dcbc0796b145e42a52` |
| 5 | `def` | [Embedding.sumInr](../../../../../Combinatorics/GraphTheory/Sum.lean/declarations/embedding-suminr.md) | 66 | `declaration-track:96de63a97b8c55e441e03faa28c5d39037e11b5c8432ad7c490996bface7bfea` |
| 6 | `def` | [Coloring.sum](../../../../../Combinatorics/GraphTheory/Sum.lean/declarations/coloring-sum.md) | 72 | `declaration-track:11dd8ca4d3a0a537d5a3578acb28a8102e6f51e9ac3e9182802ac1975281d24a` |
| 7 | `def` | [Coloring.sumLeft](../../../../../Combinatorics/GraphTheory/Sum.lean/declarations/coloring-sumleft.md) | 77 | `declaration-track:13a34cfde417838a67b5b1f2266abd853722a82300422c1a5a992d4cc9117326` |
| 8 | `def` | [Coloring.sumRight](../../../../../Combinatorics/GraphTheory/Sum.lean/declarations/coloring-sumright.md) | 80 | `declaration-track:382c3ae5e8673e5c1cb72ab6ab9a452bb615c74f910422ae5189644af3f24e27` |
| 9 | `theorem` | [Coloring.sumLeft_sum](../../../../../Combinatorics/GraphTheory/Sum.lean/declarations/coloring-sumleft-sum.md) | 83 | `result-track:5fb03ce244dd69b58b2c2096bc21ee80e1652041caaa5eec56779d7e9876b742` |
| 10 | `theorem` | [Coloring.sumRight_sum](../../../../../Combinatorics/GraphTheory/Sum.lean/declarations/coloring-sumright-sum.md) | 87 | `result-track:01d20960ed9bfdf8dc3e47ca994a4586cf5536570eba79376aa4f12daaa8caeb` |
| 11 | `theorem` | [Coloring.sum_sumLeft_sumRight](../../../../../Combinatorics/GraphTheory/Sum.lean/declarations/coloring-sum-sumleft-sumright.md) | 91 | `result-track:54891c334bdfbae461ec5df9e3392d86dce97be103bcee35ffd57a2c5db1c229` |
| 12 | `def` | [Coloring.sumEquiv](../../../../../Combinatorics/GraphTheory/Sum.lean/declarations/coloring-sumequiv.md) | 95 | `declaration-track:270a237eedc647ba13bb82dad1bc64db67a31d27a58fed8e4e13062c59329141` |
| 13 | `def` | [Coloring.sumFin](../../../../../Combinatorics/GraphTheory/Sum.lean/declarations/coloring-sumfin.md) | 103 | `declaration-track:2b3657faa82b1f24879e4a158615ea2431c97ed7f2980432be1fc6b1c16d929b` |
| 14 | `theorem` | [Colorable.sum_max](../../../../../Combinatorics/GraphTheory/Sum.lean/declarations/colorable-sum-max.md) | 108 | `result-track:ddd217356ff828c0342da6f3e0d5d10f5542a66839cecb749fb5609a9d057886` |
| 15 | `theorem` | [Colorable.of_sum_left](../../../../../Combinatorics/GraphTheory/Sum.lean/declarations/colorable-of-sum-left.md) | 111 | `result-track:3501886b9bbfa04c51ab14e762c920b1c18ae0c2a7df11f6783bd5212f83e41c` |
| 16 | `theorem` | [Colorable.of_sum_right](../../../../../Combinatorics/GraphTheory/Sum.lean/declarations/colorable-of-sum-right.md) | 114 | `result-track:38acabadb9e754da9d2d4e19d0412b2afd89ce240744f68815e4b38a024d811c` |
| 17 | `theorem` | [colorable_sum](../../../../../Combinatorics/GraphTheory/Sum.lean/declarations/colorable-sum.md) | 118 | `result-track:35b96b4213e4ece8a0144ce65cf582270569e7ca297899e45c30a252c3d0e11c` |
| 18 | `theorem` | [chromaticNumber_le_sum_left](../../../../../Combinatorics/GraphTheory/Sum.lean/declarations/chromaticnumber-le-sum-left.md) | 122 | `result-track:23a1ee1711c2aa5dbfcdb5be3bdea962b8d38fb45393bb2a878d45e718b9c6f7` |
| 19 | `theorem` | [chromaticNumber_le_sum_right](../../../../../Combinatorics/GraphTheory/Sum.lean/declarations/chromaticnumber-le-sum-right.md) | 125 | `result-track:94acbb3ef72ac77ca7fb0d02ceaeb81eb798c46d5f6b5a4d4c7838351af11f86` |
| 20 | `theorem` | [chromaticNumber_sum](../../../../../Combinatorics/GraphTheory/Sum.lean/declarations/chromaticnumber-sum.md) | 129 | `result-track:8a00884dd249e47647adb8892325d7888b0f9fdd0a40ed294b4701dd265d79cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d96617ba5a37e4236384b930c55cebccf6498cfe2cc1421ad9a01da522d81c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Varianta074fac7f04dd3f248c63af20314fe8d0e3146025dada9aa2e4eae4ae70499e0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Varianta074fac7f04dd3f248c63af20314fe8d0e3146025dada9aa2e4eae4ae70499e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
