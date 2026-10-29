# Verification target: Direct Sum Is Internal Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c65641d433f0a6a0f5b6d513290c30c4d2548ee",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DirectSumIsInternal/Variante456924d4fc8d02b8a71bdb6c25534c1f5338591d26821b7ffcb7684fb8fc21c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirectSumIsInternalSourceEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirectSumIsInternalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c65641d433f0a6a0f5b6d513290c30c4d2548ee`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DirectSumIsInternal/Variante456924d4fc8d02b8a71bdb6c25534c1f5338591d26821b7ffcb7684fb8fc21c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DirectSumIsInternal/Variante456924d4fc8d02b8a71bdb6c25534c1f5338591d26821b7ffcb7684fb8fc21c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Module` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.ConjFinite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Lattice` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [UnitsInt.one_ne_neg_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirectSumIsInternalSourceEdition2.lean/declarations/unitsint-one-ne-neg-one.md) | 25 | `result-track:ddd427b875a9f5073576e191cb0cfe8045e4c95563a3b7bca21e508951cd1af0` |
| 2 | `def` | [withSign](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirectSumIsInternalSourceEdition2.lean/declarations/withsign.md) | 28 | `declaration-track:4a60d3b507b2d64346bc367fd6d452cb0ca3ef32134edad11baf759cef21134a` |
| 3 | `theorem` | [mem_withSign_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirectSumIsInternalSourceEdition2.lean/declarations/mem-withsign-one.md) | 42 | `result-track:7f69a4f52a3812aae8893bae94fc2288b3bfef28867a7f0bcd89af8752b5c1bd` |
| 4 | `theorem` | [mem_withSign_neg_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirectSumIsInternalSourceEdition2.lean/declarations/mem-withsign-neg-one.md) | 45 | `result-track:874f3cbcce6d98df255d9a366c6b6903af03c72863fbdd14ebc20ef475a67b4d` |
| 5 | `theorem` | [withSign.isCompl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirectSumIsInternalSourceEdition2.lean/declarations/withsign-iscompl.md) | 49 | `result-track:bd752580f117633decb8073755c3189856f15428bdb71dfc6e49cc1333b7e198` |
| 6 | `def` | [withSign.independent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirectSumIsInternalSourceEdition2.lean/declarations/withsign-independent.md) | 60 | `declaration-track:8ffbe8334d4d27254a0a7c54a36efb39bb72c91fc754273fdff3c6f3742c991f` |
| 7 | `theorem` | [withSign.iSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirectSumIsInternalSourceEdition2.lean/declarations/withsign-isup.md) | 66 | `result-track:14be39ff145e58549a8a121020efbc6ce892dd9fce3f71f5bc2dbd4b3310a037` |
| 8 | `theorem` | [withSign.not_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirectSumIsInternalSourceEdition2.lean/declarations/withsign-not-injective.md) | 71 | `result-track:759329cbd1b1ae461e33345cb11baf68518801c5adb0eb3db602243a356bccde` |
| 9 | `theorem` | [withSign.not_internal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirectSumIsInternalSourceEdition2.lean/declarations/withsign-not-internal.md) | 91 | `result-track:3037017275e468e6427ce03769a0fea574412eb1f325631ffcd60cfcbd772d51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=87a3ad565a10b857c7041bd954431da82cd59dc38ee17c5e9278526b53544936 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/DirectSumIsInternal/Variante456924d4fc8d02b8a71bdb6c25534c1f5338591d26821b7ffcb7684fb8fc21c.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/DirectSumIsInternal/Variante456924d4fc8d02b8a71bdb6c25534c1f5338591d26821b7ffcb7684fb8fc21c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
