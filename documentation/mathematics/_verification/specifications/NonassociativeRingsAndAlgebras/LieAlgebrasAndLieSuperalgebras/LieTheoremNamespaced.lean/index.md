# Verification target: Lie Theorem Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff610a06736b8cf85acc6f37fe115355160e72f8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LieTheorem/Variantbc59808c99578f94058f2b4f79a12af53d135bf1f5e0ab74e91f69755936b1d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTheoremNamespaced.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTheoremNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff610a06736b8cf85acc6f37fe115355160e72f8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LieTheorem/Variantbc59808c99578f94058f2b4f79a12af53d135bf1f5e0ab74e91f69755936b1d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LieTheorem/Variantbc59808c99578f94058f2b4f79a12af53d135bf1f5e0ab74e91f69755936b1d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Weights.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Nilpotent` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [T](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTheoremNamespaced.lean/declarations/t.md) | 54 | `declaration-track:7b72c2ff8160c3235fb4f78e5e15f6037169a08e933ef99b7772b68b8c0f7b1c` |
| 2 | `lemma` | [weightSpaceOfIsLieTower_aux](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTheoremNamespaced.lean/declarations/weightspaceofislietower-aux.md) | 57 | `result-track:7a0a2d949ca91169bb0d0625e10df0bce98d49d8500b382187a24cf986f4a7b8` |
| 3 | `def` | [weightSpaceOfIsLieTower](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTheoremNamespaced.lean/declarations/weightspaceofislietower.md) | 154 | `declaration-track:b0655aad6c890c345a0716977886c356e94d96f8ecbc269ca8a96b8914a7d99f` |
| 4 | `theorem` | [exists_nontrivial_weightSpace_of_lieIdeal](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTheoremNamespaced.lean/declarations/exists-nontrivial-weightspace-of-lieideal.md) | 169 | `result-track:cdecd284526a1488ad1c650f7f1408469b95d258b7fc13aa6955b2e993faf6c9` |
| 5 | `lemma` | [exists_forall_lie_eq_smul_of_isSolvable_of_finite](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTheoremNamespaced.lean/declarations/exists-forall-lie-eq-smul-of-issolvable-of-finite.md) | 213 | `result-track:5f552a9fea4b860b8d9725f0e3622bcbe436a7691ab20daa0de322a7065fc389` |
| 6 | `theorem` | [exists_nontrivial_weightSpace_of_isSolvable](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTheoremNamespaced.lean/declarations/exists-nontrivial-weightspace-of-issolvable.md) | 241 | `result-track:65925056ea6ce2bbf46dd54879467ce8be612fc242ac7d6454c6c7c5c55a53d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cfed59a333d64dd1012e64fe4421dd0261ed5da7b27c86781ca71888d8b88855 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/LieTheorem/Variantbc59808c99578f94058f2b4f79a12af53d135bf1f5e0ab74e91f69755936b1d5.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/LieTheorem/Variantbc59808c99578f94058f2b4f79a12af53d135bf1f5e0ab74e91f69755936b1d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
