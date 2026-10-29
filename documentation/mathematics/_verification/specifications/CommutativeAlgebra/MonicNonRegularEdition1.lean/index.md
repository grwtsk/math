# Verification target: Monic Non Regular Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e802c1288bf6c1ac65117de87ec8087961c94bf1",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/MonicNonRegular/Variant63cc318779160f0da88217fb4523fc294f320f41c89455bb74777fe634a80e3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/MonicNonRegularEdition1.lean/index.md) · [Full source](../../../../CommutativeAlgebra/MonicNonRegularEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e802c1288bf6c1ac65117de87ec8087961c94bf1`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/MonicNonRegular/Variant63cc318779160f0da88217fb4523fc294f320f41c89455bb74777fe634a80e3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/MonicNonRegular/Variant63cc318779160f0da88217fb4523fc294f320f41c89455bb74777fe634a80e3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Monic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [N₃](../../../../CommutativeAlgebra/MonicNonRegularEdition1.lean/declarations/n.md) | 31 | `declaration-track:bb8fa0966854e75e39131812a48cc1c96aa30432e60d968bf2a0604a387aafe6` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MonicNonRegularEdition1.lean/declarations/instance-source-edition-4.md) | 39 | `declaration-track:641adf55bd14f6ca6d448c2972aa62d7dd5a424815c55d18c94f7be604e31922` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MonicNonRegularEdition1.lean/declarations/instance-source-edition-2.md) | 40 | `declaration-track:4a1155baa15e900df9dd86cc433e31b9e475680e82cdffb3a3018585164de978` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MonicNonRegularEdition1.lean/declarations/instance-source-edition-3.md) | 43 | `declaration-track:56f835e540c0cf80355020f45721f91fe64fb4d1aab23eeba423446a9c93ad9b` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MonicNonRegularEdition1.lean/declarations/instance.md) | 51 | `declaration-track:47b0d985c8b835efcb86bd419557c64545797547d31b2dfd27f4985a34426199` |
| 6 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MonicNonRegularEdition1.lean/declarations/instance-source-edition-5.md) | 59 | `declaration-track:e0cc9812ab06dc2b04c8e402b3acf633179b9e7405d9370fa255182337fe9a06` |
| 7 | `theorem` | [X_add_two_mul_X_add_two](../../../../CommutativeAlgebra/MonicNonRegularEdition1.lean/declarations/x-add-two-mul-x-add-two.md) | 73 | `result-track:45cc5b041811545d3fc29e321be5df6e46ff296fbc3d94a8c3801bbba423c56f` |
| 8 | `theorem` | [monic_X_add_two](../../../../CommutativeAlgebra/MonicNonRegularEdition1.lean/declarations/monic-x-add-two.md) | 83 | `result-track:7532fb89cbd51bce0af56e4e74ca804380c4dc56568e58143def91c4aa805156` |
| 9 | `theorem` | [not_isLeftRegular_X_add_two](../../../../CommutativeAlgebra/MonicNonRegularEdition1.lean/declarations/not-isleftregular-x-add-two.md) | 89 | `result-track:35b51d42de68957ece395a963ad038e1ea6a583c98d7b8789a72778e20a50b5d` |
| 10 | `theorem` | [not_monic_implies_isLeftRegular](../../../../CommutativeAlgebra/MonicNonRegularEdition1.lean/declarations/not-monic-implies-isleftregular.md) | 97 | `result-track:d364674c5808a642f31a836acf65d127ce6355ba7643ba38df9daf4ced15411a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d2ca7cd192fb0f07a1d9841168b53449590b28ebae81e610a1e69fa9aa61cec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/MonicNonRegular/Variant63cc318779160f0da88217fb4523fc294f320f41c89455bb74777fe634a80e3e.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/MonicNonRegular/Variant63cc318779160f0da88217fb4523fc294f320f41c89455bb74777fe634a80e3e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
