# Verification target: Adversary Invariant Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "947452e1d6ac21f618b8849cb5ccf67e1b0f15d7",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AdversaryInvariant/Variant81ade8ceaa333a999b856745096a45e209809297cf1f4a0c3e20bb1aef0eccff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdversaryInvariantNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdversaryInvariantNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `947452e1d6ac21f618b8849cb5ccf67e1b0f15d7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AdversaryInvariant/Variant81ade8ceaa333a999b856745096a45e209809297cf1f4a0c3e20bb1aef0eccff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AdversaryInvariant/Variant81ade8ceaa333a999b856745096a45e209809297cf1f4a0c3e20bb1aef0eccff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Permutation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.CryptographicProblem` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OracleProblem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdversaryInvariantNamespaced.lean/declarations/oracleproblem.md) | 25 | `declaration-track:d4b4b76f9765e88b7400e6aec8e325c890e7673f2f07bf31b777335ac4008197` |
| 2 | `def` | [coordinateMask](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdversaryInvariantNamespaced.lean/declarations/coordinatemask.md) | 37 | `declaration-track:da4e9b225bfa235064813a8ec5e2c933432703a242ce9442cb855fe86990e1b0` |
| 3 | `def` | [restrict](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdversaryInvariantNamespaced.lean/declarations/restrict.md) | 44 | `declaration-track:0e795a70676c9c6efd3c301c4fb4a7fcc1f2717bc25cc25b6574f446d119999d` |
| 4 | `structure` | [ValidAdversaryMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdversaryInvariantNamespaced.lean/declarations/validadversarymatrix.md) | 55 | `declaration-track:5017bfb2e735c0de38d213614bbcb3b3f10fae2442005c47a54428fa08cd9e36` |
| 5 | `structure` | [GeneralAdversaryWitness](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdversaryInvariantNamespaced.lean/declarations/generaladversarywitness.md) | 70 | `declaration-track:60819317eb5378593e7bf68489c6c2227615545c676e68e7564802c581c421f6` |
| 6 | `def` | [ratio](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdversaryInvariantNamespaced.lean/declarations/ratio.md) | 91 | `declaration-track:fb32f4b7da254ca66433a481c0108b3b08fff3600942391fbea38a15fbf2d481` |
| 7 | `theorem` | [coordinate_norm_le_denominator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdversaryInvariantNamespaced.lean/declarations/coordinate-norm-le-denominator.md) | 95 | `result-track:79ea6540e8586276af5475b47b6ea0806b8172ae6b834796caee13845827f3da` |
| 8 | `structure` | [GameAutomorphism](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdversaryInvariantNamespaced.lean/declarations/gameautomorphism.md) | 105 | `declaration-track:685461d35df1026253451ca76c4b79be978d5620fba73dde0eb36fc590c55b84` |
| 9 | `structure` | [AdversaryQueryLowerBound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdversaryInvariantNamespaced.lean/declarations/adversaryquerylowerbound.md) | 123 | `declaration-track:5bb0c36f6ecd727b7875ba12097629c2d4a6d6f3c3b1f10fbaad748370b0898c` |
| 10 | `constant` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdversaryInvariantNamespaced.lean/declarations/anonymous-constant.md) | 131 | `declaration-track:1c24c7b4281704de9c3ff5c3354305cb5d4f8be1916363da5626d8e297089553` |
| 11 | `constant` | [*](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdversaryInvariantNamespaced.lean/declarations/source-command-line-136.md) | 136 | `declaration-track:28d12c37cef91c7397e5e081cc887b5eb6542eeab2d88fa08d27bae2f69b48d7` |
| 12 | `theorem` | [adversary_query_lower_bound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdversaryInvariantNamespaced.lean/declarations/adversary-query-lower-bound.md) | 138 | `result-track:2be15ad0b4738a0d5d451828761d7b36aeaaef7ba7cc5c63fb817bbfd3f1dc0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d1d21ee129a2aa8961b537588e5c18802a65e7a4a5c736671b600805d9da184 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AdversaryInvariant/Variant81ade8ceaa333a999b856745096a45e209809297cf1f4a0c3e20bb1aef0eccff.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/AdversaryInvariant/Variant81ade8ceaa333a999b856745096a45e209809297cf1f4a0c3e20bb1aef0eccff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
