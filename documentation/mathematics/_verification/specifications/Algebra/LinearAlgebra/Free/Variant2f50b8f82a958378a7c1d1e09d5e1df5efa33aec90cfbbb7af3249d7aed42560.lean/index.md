# Verification target: GRWTSK.Algebra.LinearAlgebra.Free.Variant2f50b8f82a958378a7c1d1e09d5e1df5efa33aec90cfbbb7af3249d7aed42560

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdcfc4711226205040aa732489916f7f5e7576b8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Free/Variant2f50b8f82a958378a7c1d1e09d5e1df5efa33aec90cfbbb7af3249d7aed42560.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/LinearAlgebra/Free/Variant2f50b8f82a958378a7c1d1e09d5e1df5efa33aec90cfbbb7af3249d7aed42560.lean/index.md) · [Full source](../../../../../../Algebra/LinearAlgebra/Free/Variant2f50b8f82a958378a7c1d1e09d5e1df5efa33aec90cfbbb7af3249d7aed42560.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdcfc4711226205040aa732489916f7f5e7576b8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Free/Variant2f50b8f82a958378a7c1d1e09d5e1df5efa33aec90cfbbb7af3249d7aed42560.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Free/Variant2f50b8f82a958378a7c1d1e09d5e1df5efa33aec90cfbbb7af3249d7aed42560.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.Free` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.ModuleCat` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [disjoint_span_sum](../../../../../../Algebra/LinearAlgebra/Free/Variant2f50b8f82a958378a7c1d1e09d5e1df5efa33aec90cfbbb7af3249d7aed42560.lean/declarations/disjoint-span-sum--63eb33a52aba6a1bad3df4c5.md) | 47 | `result-track:63eb33a52aba6a1bad3df4c50302a927507d39e8a3a78896c84ea2afe597d337` |
| 2 | `theorem` | [linearIndependent_leftExact](../../../../../../Algebra/LinearAlgebra/Free/Variant2f50b8f82a958378a7c1d1e09d5e1df5efa33aec90cfbbb7af3249d7aed42560.lean/declarations/linearindependent-leftexact--9a513b9736162d90236889fc.md) | 67 | `result-track:9a513b9736162d90236889fc892d8493311c18b6a3fdccac752424d2b880337a` |
| 3 | `theorem` | [linearIndependent_shortExact](../../../../../../Algebra/LinearAlgebra/Free/Variant2f50b8f82a958378a7c1d1e09d5e1df5efa33aec90cfbbb7af3249d7aed42560.lean/declarations/linearindependent-shortexact--e39b4357e6f52fdd9eecb542.md) | 80 | `result-track:e39b4357e6f52fdd9eecb54254c49c5fc31c612814637ad5ff0357365a862fe8` |
| 4 | `theorem` | [span_exact](../../../../../../Algebra/LinearAlgebra/Free/Variant2f50b8f82a958378a7c1d1e09d5e1df5efa33aec90cfbbb7af3249d7aed42560.lean/declarations/span-exact--a9c9a055d18336402951d6dd.md) | 103 | `result-track:a9c9a055d18336402951d6dd88f48867f34211208996f3be2f7680bb0fcd96db` |
| 5 | `theorem` | [span_rightExact](../../../../../../Algebra/LinearAlgebra/Free/Variant2f50b8f82a958378a7c1d1e09d5e1df5efa33aec90cfbbb7af3249d7aed42560.lean/declarations/span-rightexact--2126d4e9176ab95eca59e464.md) | 139 | `result-track:2126d4e9176ab95eca59e464859949ca9dfa8cc87b3f410931f5dbe240c27f34` |
| 6 | `def` | [Basis.ofShortExact](../../../../../../Algebra/LinearAlgebra/Free/Variant2f50b8f82a958378a7c1d1e09d5e1df5efa33aec90cfbbb7af3249d7aed42560.lean/declarations/basis-ofshortexact--59a9e3cf21aff5499c3a346b.md) | 155 | `declaration-track:59a9e3cf21aff5499c3a346b5a36f5ea523bd8d6e8c61163605114a30eb1a4e0` |
| 7 | `theorem` | [free_shortExact](../../../../../../Algebra/LinearAlgebra/Free/Variant2f50b8f82a958378a7c1d1e09d5e1df5efa33aec90cfbbb7af3249d7aed42560.lean/declarations/free-shortexact--5e6a526df288851fd0727bb1.md) | 164 | `result-track:5e6a526df288851fd0727bb15ce52d4ea91b35a35876872fe58f1862aab7a087` |
| 8 | `theorem` | [free_shortExact_rank_add](../../../../../../Algebra/LinearAlgebra/Free/Variant2f50b8f82a958378a7c1d1e09d5e1df5efa33aec90cfbbb7af3249d7aed42560.lean/declarations/free-shortexact-rank-add--340726d3cdd826e5ce6df136.md) | 169 | `result-track:340726d3cdd826e5ce6df13672bfc6ac5728088ac4e53fec6e463b47a524256d` |
| 9 | `theorem` | [free_shortExact_finrank_add](../../../../../../Algebra/LinearAlgebra/Free/Variant2f50b8f82a958378a7c1d1e09d5e1df5efa33aec90cfbbb7af3249d7aed42560.lean/declarations/free-shortexact-finrank-add--fbfd417eda74ea879faedf1b.md) | 178 | `result-track:fbfd417eda74ea879faedf1b139d52908ca12e324c38028767e9a2d4388541a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=694d4554786363575b133b5e58a686cb6e11692bee05c548e4a7b6570884257c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Free/Variant2f50b8f82a958378a7c1d1e09d5e1df5efa33aec90cfbbb7af3249d7aed42560.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Free/Variant2f50b8f82a958378a7c1d1e09d5e1df5efa33aec90cfbbb7af3249d7aed42560.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
