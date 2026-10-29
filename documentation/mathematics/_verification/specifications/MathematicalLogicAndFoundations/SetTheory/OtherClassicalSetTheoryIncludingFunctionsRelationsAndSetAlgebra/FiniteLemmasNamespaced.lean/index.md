# Verification target: Finite Lemmas Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc060d9b00f2031dbd22cc7a69738f94cb14bb68",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant6a2c8af95a20939a3c8f79159a106b885657840f0b83e30303ee1b7f90a23b9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLemmasNamespaced.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLemmasNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc060d9b00f2031dbd22cc7a69738f94cb14bb68`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant6a2c8af95a20939a3c8f79159a106b885657840f0b83e30303ee1b7f90a23b9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lemmas/Variant6a2c8af95a20939a3c8f79159a106b885657840f0b83e30303ee1b7f90a23b9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Max` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Powerset` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Embedding.Set` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Finite.fin_embedding](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLemmasNamespaced.lean/declarations/finite-fin-embedding.md) | 43 | `result-track:261a4c8a39093126a68714b85d7198bc5625da15b83e228a52921a37707d85ed` |
| 2 | `theorem` | [Finite.fin_param](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLemmasNamespaced.lean/declarations/finite-fin-param.md) | 48 | `result-track:06a1c13757122da3e056f74bbb9e22deb24995ac84e0a6edb31bbd688d3259a7` |
| 3 | `theorem` | [Finite.induction_to](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLemmasNamespaced.lean/declarations/finite-induction-to.md) | 54 | `result-track:a0ddf677764844ebce0c42b45035172220994282622081875361b9b5e6a71d4f` |
| 4 | `theorem` | [Finite.induction_to_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLemmasNamespaced.lean/declarations/finite-induction-to-univ.md) | 66 | `result-track:76f28f0544fd87e2a886b23581d5d44ae48b952078d3beed3bcf43e822903f8c` |
| 5 | `theorem` | [exists_min_image](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLemmasNamespaced.lean/declarations/exists-min-image.md) | 76 | `result-track:58858f09e600aeaf249c1999ea511d1c70709787e8530160f4f3b2fa756edebb` |
| 6 | `theorem` | [exists_max_image](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLemmasNamespaced.lean/declarations/exists-max-image.md) | 82 | `result-track:a3bc2ac8f6881782aca7ac4591d4d5ded3968c5142348480824b6df032744adb` |
| 7 | `theorem` | [exists_lower_bound_image](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLemmasNamespaced.lean/declarations/exists-lower-bound-image.md) | 88 | `result-track:f4e4c5b222c6a33c7fa56dde090b15f87d2262ec6710e8c3329df50b139121f5` |
| 8 | `theorem` | [exists_upper_bound_image](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLemmasNamespaced.lean/declarations/exists-upper-bound-image.md) | 95 | `result-track:b0ffa2028909d03fd2aa12079d61bb691ba2003c24cfc60d1a4f89fd69c1c48d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00a9bc7f0af75a767e0ec9c8f46c0cbf593c111b4944565aea2434545ef95c0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant6a2c8af95a20939a3c8f79159a106b885657840f0b83e30303ee1b7f90a23b9f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Lemmas/Variant6a2c8af95a20939a3c8f79159a106b885657840f0b83e30303ee1b7f90a23b9f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
