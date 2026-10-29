# Verification target: Line Deriv Measurable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d4ac9cbb734d520ca13a581a9aabd4d76a7fd22",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Measurable/Variant74b8af007b507a3c5658260455d00750c5ef2217bf0a8ec8b654e91d5dbd3b8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/LineDerivMeasurable.lean/index.md) · [Full source](../../../../RealFunctions/LineDerivMeasurable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d4ac9cbb734d520ca13a581a9aabd4d76a7fd22`.

Source path: `GRWTSK/Analysis/MeasureTheory/Measurable/Variant74b8af007b507a3c5658260455d00750c5ef2217bf0a8ec8b654e91d5dbd3b8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Measurable/Variant74b8af007b507a3c5658260455d00750c5ef2217bf0a8ec8b654e91d5dbd3b8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.LineDeriv.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Measurable` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurableSet_lineDifferentiableAt](../../../../RealFunctions/LineDerivMeasurable.lean/declarations/measurableset-linedifferentiableat.md) | 33 | `result-track:1d65b78f80567d4ff707b756bde4e45bcead35ece29dcb4c80d9f0345da94422` |
| 2 | `theorem` | [measurable_lineDeriv](../../../../RealFunctions/LineDerivMeasurable.lean/declarations/measurable-linederiv.md) | 40 | `result-track:cdb5e5e7cdb38ac09e425a3f1e8a309c179fadf6d06f3d5c6c0357e22eb1afa5` |
| 3 | `theorem` | [stronglyMeasurable_lineDeriv](../../../../RealFunctions/LineDerivMeasurable.lean/declarations/stronglymeasurable-linederiv.md) | 47 | `result-track:f907c8300c3878a36710dc65631b21e9e1bba7b713d75a0d9b457df457b4c68c` |
| 4 | `theorem` | [aemeasurable_lineDeriv](../../../../RealFunctions/LineDerivMeasurable.lean/declarations/aemeasurable-linederiv.md) | 54 | `result-track:cc20784bc6a875e8595ad995b7e6d33bdb9b82f1df9ca8eef9d5b1919a2d5f69` |
| 5 | `theorem` | [aestronglyMeasurable_lineDeriv](../../../../RealFunctions/LineDerivMeasurable.lean/declarations/aestronglymeasurable-linederiv.md) | 59 | `result-track:86f0c6bb168b981a25ef945a47bfde51813e5086ec3d6814b20703dadb0fcd56` |
| 6 | `theorem` | [measurableSet_lineDifferentiableAt_uncurry](../../../../RealFunctions/LineDerivMeasurable.lean/declarations/measurableset-linedifferentiableat-uncurry.md) | 72 | `result-track:9457fb65e1c414f3badddef10c19edd7ec957db2b7e90bd8e1f47e2e8a0ecb5f` |
| 7 | `theorem` | [measurable_lineDeriv_uncurry](../../../../RealFunctions/LineDerivMeasurable.lean/declarations/measurable-linederiv-uncurry.md) | 83 | `result-track:dd06abfbca3b6567c0e24387c4946d5c3bef7d9aad7e7d5d214d114fb4ace994` |
| 8 | `theorem` | [stronglyMeasurable_lineDeriv_uncurry](../../../../RealFunctions/LineDerivMeasurable.lean/declarations/stronglymeasurable-linederiv-uncurry.md) | 92 | `result-track:b938f1ae8c43db6ca243871e156734ca9aefbc72ccc06e1ab0f5d7b2ca901722` |
| 9 | `theorem` | [aemeasurable_lineDeriv_uncurry](../../../../RealFunctions/LineDerivMeasurable.lean/declarations/aemeasurable-linederiv-uncurry.md) | 101 | `result-track:d94808d7437cdb2948132aea65973c311ce564d9b9209c04e11717c141603aa9` |
| 10 | `theorem` | [aestronglyMeasurable_lineDeriv_uncurry](../../../../RealFunctions/LineDerivMeasurable.lean/declarations/aestronglymeasurable-linederiv-uncurry.md) | 106 | `result-track:f27c4cc15665d4c495d93a384fc00a66667ce08d38f150bcd1437422c2d517b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f04169ef5b6b75d2e24df76a895a41d7f5808854a8dfb8f1fb0938bcbad64d51 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Measurable/Variant74b8af007b507a3c5658260455d00750c5ef2217bf0a8ec8b654e91d5dbd3b8b.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Measurable/Variant74b8af007b507a3c5658260455d00750c5ef2217bf0a8ec8b654e91d5dbd3b8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
