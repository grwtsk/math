# Verification target: Bounded Continuous Function Char

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4347c6da611cf6886e8db342774a4e53785b32f6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../HarmonicAnalysisOnEuclideanSpaces/BoundedContinuousFunctionChar.lean/index.md) · [Full source](../../../../HarmonicAnalysisOnEuclideanSpaces/BoundedContinuousFunctionChar.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4347c6da611cf6886e8db342774a4e53785b32f6`.

Source path: `GRWTSK/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Circle` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Star` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [char](../../../../HarmonicAnalysisOnEuclideanSpaces/BoundedContinuousFunctionChar.lean/declarations/char.md) | 48 | `declaration-track:ccf15c777f741f497e0081ce707ef8a72a2641bbd936edbdce4f338a7a78228a` |
| 2 | `lemma` | [char_apply](../../../../HarmonicAnalysisOnEuclideanSpaces/BoundedContinuousFunctionChar.lean/declarations/char-apply.md) | 62 | `result-track:44409089ed4ee53bab1af14d2bf9b13d7b1e07a7e3971527215a433120cdbe88` |
| 3 | `lemma` | [char_zero_eq_one](../../../../HarmonicAnalysisOnEuclideanSpaces/BoundedContinuousFunctionChar.lean/declarations/char-zero-eq-one.md) | 66 | `result-track:6d86c94f03d3b472848f7683887e43930dae13cd04d0af6b54bad14687fb01c9` |
| 4 | `lemma` | [char_add_eq_mul](../../../../HarmonicAnalysisOnEuclideanSpaces/BoundedContinuousFunctionChar.lean/declarations/char-add-eq-mul.md) | 68 | `result-track:2d86999f55eeb33ec1d59c8e1215f7b2f66fd203e8b23959299c57536a5920a5` |
| 5 | `lemma` | [char_neg](../../../../HarmonicAnalysisOnEuclideanSpaces/BoundedContinuousFunctionChar.lean/declarations/char-neg.md) | 73 | `result-track:a2a3f4daa070556e572c1e0322ef1634d3b0a7fa5605c0012ed177a3a39997e9` |
| 6 | `theorem` | [ext_of_char_eq](../../../../HarmonicAnalysisOnEuclideanSpaces/BoundedContinuousFunctionChar.lean/declarations/ext-of-char-eq.md) | 77 | `result-track:9be82a0b437b654b9c5e6fceac1a9ca02b3e3a039242299c8c60ec60724b6ccf` |
| 7 | `def` | [charMonoidHom](../../../../HarmonicAnalysisOnEuclideanSpaces/BoundedContinuousFunctionChar.lean/declarations/charmonoidhom.md) | 103 | `declaration-track:176500ad6bc88b43f55db042343c841f187ce29ce0333996d4c9bf9ccd407682` |
| 8 | `lemma` | [charMonoidHom_apply](../../../../HarmonicAnalysisOnEuclideanSpaces/BoundedContinuousFunctionChar.lean/declarations/charmonoidhom-apply.md) | 110 | `result-track:8652875c9e7a8e52c09e55aae9e60c568fde95c819fbdf04fbaaecea7f499e10` |
| 9 | `def` | [charAlgHom](../../../../HarmonicAnalysisOnEuclideanSpaces/BoundedContinuousFunctionChar.lean/declarations/charalghom.md) | 115 | `declaration-track:11cbb1127a26001c6b08ec7bcb56b0a65fbf8f239a04c0960d7280cdf475640a` |
| 10 | `lemma` | [charAlgHom_apply](../../../../HarmonicAnalysisOnEuclideanSpaces/BoundedContinuousFunctionChar.lean/declarations/charalghom-apply.md) | 120 | `result-track:b4656c9feb00d8fe59c087fb875a1e25f7e41a6b2caaee00959a7122bfda2cb0` |
| 11 | `lemma` | [star_mem_range_charAlgHom](../../../../HarmonicAnalysisOnEuclideanSpaces/BoundedContinuousFunctionChar.lean/declarations/star-mem-range-charalghom.md) | 129 | `result-track:e6c5b5261ac73fc89360467d11b217441c6e5c5eba025e1563067907f31a16ef` |
| 12 | `def` | [charPoly](../../../../HarmonicAnalysisOnEuclideanSpaces/BoundedContinuousFunctionChar.lean/declarations/charpoly.md) | 145 | `declaration-track:57f241e7d35165cbd99d4b9c70516b89453389369338108612bdc70d65a67410` |
| 13 | `lemma` | [mem_charPoly](../../../../HarmonicAnalysisOnEuclideanSpaces/BoundedContinuousFunctionChar.lean/declarations/mem-charpoly.md) | 150 | `result-track:9e86aa3b67a06cedc195957027b82aae4fa009181bb432e61de1bf4aac3ec6eb` |
| 14 | `lemma` | [char_mem_charPoly](../../../../HarmonicAnalysisOnEuclideanSpaces/BoundedContinuousFunctionChar.lean/declarations/char-mem-charpoly.md) | 156 | `result-track:8d9e518840643e4dac405a680c583bdfa0c2837f1ebb1ddfdf7f8f7abf178ed1` |
| 15 | `lemma` | [separatesPoints_charPoly](../../../../HarmonicAnalysisOnEuclideanSpaces/BoundedContinuousFunctionChar.lean/declarations/separatespoints-charpoly.md) | 167 | `result-track:6e14a0ca1485e83f657bc1abc9849e7e4791f226c593c0103fa98fe490511b70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c85d5dcc5fdca11711bc24a61873ecfd8d711c99678959514533f0e5accb6854 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
