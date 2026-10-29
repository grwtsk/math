# Verification target: Semiconj Units Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c7ddfcd600156b7d459b312c17d5e4b1147a956",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variant282e3cf42a0c39c94b2a4ce9d55bb9a6de39216001029b3e2336ae90ae576105.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SemiconjUnitsNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SemiconjUnitsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c7ddfcd600156b7d459b312c17d5e4b1147a956`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variant282e3cf42a0c39c94b2a4ce9d55bb9a6de39216001029b3e2336ae90ae576105.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variant282e3cf42a0c39c94b2a4ce9d55bb9a6de39216001029b3e2336ae90ae576105.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Semiconj.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [units_inv_right](../../../../GroupTheoryAndGeneralizations/SemiconjUnitsNamespaced.lean/declarations/units-inv-right.md) | 53 | `result-track:61bfe47f5f5928fd40c6c896b18bfd07b5022f4c95fd637063de36f262aec693` |
| 2 | `theorem` | [units_inv_right_iff](../../../../GroupTheoryAndGeneralizations/SemiconjUnitsNamespaced.lean/declarations/units-inv-right-iff.md) | 59 | `result-track:3c531447cddd80a0ba1184c1481a2068759c7751cc0865a5daca3e493419da64` |
| 3 | `theorem` | [units_inv_symm_left](../../../../GroupTheoryAndGeneralizations/SemiconjUnitsNamespaced.lean/declarations/units-inv-symm-left.md) | 65 | `result-track:889a92029853bd808c5bd1ee48e8d185407cd8c58b7828c9150e95a6022c357d` |
| 4 | `theorem` | [units_inv_symm_left_iff](../../../../GroupTheoryAndGeneralizations/SemiconjUnitsNamespaced.lean/declarations/units-inv-symm-left-iff.md) | 71 | `result-track:c1b801ddb1fc177d98c6e5a2e506c1e0c12a15f013dfa39ae282957e452dda4c` |
| 5 | `theorem` | [units_val](../../../../GroupTheoryAndGeneralizations/SemiconjUnitsNamespaced.lean/declarations/units-val.md) | 75 | `result-track:f043c398583c14aeeccaa4e37dcb1fd0e978e0311557eb2b8aa5b1ed8abd1055` |
| 6 | `theorem` | [units_of_val](../../../../GroupTheoryAndGeneralizations/SemiconjUnitsNamespaced.lean/declarations/units-of-val.md) | 79 | `result-track:d5191554d304bbf21ae806c62cfcea65eb958df0998267902de4fe94cda2d272` |
| 7 | `theorem` | [units_val_iff](../../../../GroupTheoryAndGeneralizations/SemiconjUnitsNamespaced.lean/declarations/units-val-iff.md) | 83 | `result-track:7e25c0698bc5fb8327fd817f628cab5738b9b562af34476707d1d5d621e96af1` |
| 8 | `lemma` | [units_zpow_right](../../../../GroupTheoryAndGeneralizations/SemiconjUnitsNamespaced.lean/declarations/units-zpow-right.md) | 87 | `result-track:0dfbacce242f5697075bb5dfd45da83ce30cbd8938f635c5ca00a6ef69adecdf` |
| 9 | `lemma` | [mk_semiconjBy](../../../../GroupTheoryAndGeneralizations/SemiconjUnitsNamespaced.lean/declarations/mk-semiconjby.md) | 100 | `result-track:882cf2d1606187dfc77c957ff36ccf18dd66cce5763e6ba2105b239994ca8b2d` |
| 10 | `lemma` | [conj_pow](../../../../GroupTheoryAndGeneralizations/SemiconjUnitsNamespaced.lean/declarations/conj-pow.md) | 103 | `result-track:114c702eca0d2ddb97a27d9ab8961f3edd43b3518c3a06036b57a5b5f6340908` |
| 11 | `lemma` | [conj_pow'](../../../../GroupTheoryAndGeneralizations/SemiconjUnitsNamespaced.lean/declarations/conj-pow-source-edition-2.md) | 107 | `result-track:65f024be9baa9933295bf2eb40b09d413f46a34171237bd6d994178e4bfb5be0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd662158317f5358643c5e13692b3164ba4e138b3b8a426080a9661510d9b254 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Units/Variant282e3cf42a0c39c94b2a4ce9d55bb9a6de39216001029b3e2336ae90ae576105.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Units/Variant282e3cf42a0c39c94b2a4ce9d55bb9a6de39216001029b3e2336ae90ae576105.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
