# Verification target: Nobeling Span

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03b178636906d390272c6dd63b9cdabca8718bf3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Span/Variant5657e31717d1e5e84ee57099924a6657fcb45bd90403d32416c1e2d1e4cebf56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/NobelingSpan.lean/index.md) · [Full source](../../../../GeneralTopology/NobelingSpan.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03b178636906d390272c6dd63b9cdabca8718bf3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Span/Variant5657e31717d1e5e84ee57099924a6657fcb45bd90403d32416c1e2d1e4cebf56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Span/Variant5657e31717d1e5e84ee57099924a6657fcb45bd90403d32416c1e2d1e4cebf56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Sort` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.CofilteredLimit` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Nobeling.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [πJ](../../../../GeneralTopology/NobelingSpan.lean/declarations/j.md) | 42 | `declaration-track:051eb740d995de19610aacc55cf6278bce49735edc7a00f830165287df8befd8` |
| 2 | `theorem` | [eval_eq_πJ](../../../../GeneralTopology/NobelingSpan.lean/declarations/eval-eq-j.md) | 45 | `result-track:f8743d37a9175c401bc0b7a3b692bc50a8c486e0e66eafd68eead4433f3c10eb` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/NobelingSpan.lean/declarations/instance.md) | 54 | `declaration-track:fbf5e99d9b0c280f34dc8813818ebf11d951b57205052131f065e28b0730456a` |
| 4 | `def` | [spanFinBasis](../../../../GeneralTopology/NobelingSpan.lean/declarations/spanfinbasis.md) | 66 | `declaration-track:e96fb78669fb91785f17da81c4dd4e5a11776455a052eeab93fd8ce577e049d5` |
| 5 | `theorem` | [spanFinBasis.span](../../../../GeneralTopology/NobelingSpan.lean/declarations/spanfinbasis-span.md) | 73 | `result-track:42a51649b8aa913c991a004910d10fa5d1ce80d10422e3643df51f320c80a555` |
| 6 | `def` | [factors](../../../../GeneralTopology/NobelingSpan.lean/declarations/factors.md) | 88 | `declaration-track:2b0b0a37c66d3a05f350b792f61f6fd770681cfdb5181e2ad4866d27c27af897` |
| 7 | `theorem` | [list_prod_apply](../../../../GeneralTopology/NobelingSpan.lean/declarations/list-prod-apply.md) | 92 | `result-track:674ab982817d5f58a1f8074f241be33bf2f7bfedd63d0172f4395f4c29fd4b8a` |
| 8 | `theorem` | [factors_prod_eq_basis_of_eq](../../../../GeneralTopology/NobelingSpan.lean/declarations/factors-prod-eq-basis-of-eq.md) | 96 | `result-track:6463654d9cb42ba4889f02097df984af98da40aca9ac3799b764e6f674c636ee` |
| 9 | `theorem` | [e_mem_of_eq_true](../../../../GeneralTopology/NobelingSpan.lean/declarations/e-mem-of-eq-true.md) | 108 | `result-track:e792f650ba44a179c87e9586367dbab04cfb71c704f497c6a030ebfe4d00f362` |
| 10 | `theorem` | [one_sub_e_mem_of_false](../../../../GeneralTopology/NobelingSpan.lean/declarations/one-sub-e-mem-of-false.md) | 115 | `result-track:c99b4914018accee42d661e06b14b922ea94b4ff98519f76862fde2387f1f628` |
| 11 | `theorem` | [factors_prod_eq_basis_of_ne](../../../../GeneralTopology/NobelingSpan.lean/declarations/factors-prod-eq-basis-of-ne.md) | 123 | `result-track:cf29e3192643c6ba08d9e2a5e6041bdb8759624ed13526bbd5a6aa17437da239` |
| 12 | `theorem` | [factors_prod_eq_basis](../../../../GeneralTopology/NobelingSpan.lean/declarations/factors-prod-eq-basis.md) | 140 | `result-track:5be153da1414b89adb45140ba1495edb7bba0335908983cb7b1f61b6e5d7f015` |
| 13 | `theorem` | [GoodProducts.finsuppSum_mem_span_eval](../../../../GeneralTopology/NobelingSpan.lean/declarations/goodproducts-finsuppsum-mem-span-eval.md) | 147 | `result-track:c8775696ad4cb362902b85e680185b478615fd888d38df3c8548275c232dfd29` |
| 14 | `theorem` | [GoodProducts.spanFin](../../../../GeneralTopology/NobelingSpan.lean/declarations/goodproducts-spanfin.md) | 169 | `result-track:dac2aa0e0aea5340d0b7a3b66844afddf726625e79fb606a509e99dce193d1cd` |
| 15 | `theorem` | [fin_comap_jointlySurjective](../../../../GeneralTopology/NobelingSpan.lean/declarations/fin-comap-jointlysurjective.md) | 223 | `result-track:35cc7f799732e6053cea970d723d571908a3432a7c6aa4517daacc26468b5471` |
| 16 | `theorem` | [GoodProducts.span](../../../../GeneralTopology/NobelingSpan.lean/declarations/goodproducts-span.md) | 234 | `result-track:d4439fff785f3358ac1a36c584c6b3a1ed6e6b4cc77071375ab06aecb84f841d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd23bbd5b5d7942ce6b16ac1c0e7bebf1127ba67f93adeae38472db51f6d6ded -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Span/Variant5657e31717d1e5e84ee57099924a6657fcb45bd90403d32416c1e2d1e4cebf56.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Span/Variant5657e31717d1e5e84ee57099924a6657fcb45bd90403d32416c1e2d1e4cebf56.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
