# Verification target: Tight Mult Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "817f9e0633ed337423073013b2beab91245bb73b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TightMult/Variant89b3cbdbeb70ffc8ba2216ebaba0e1680601fd75b34ad9245a9d51942af94a20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TightMultNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TightMultNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `817f9e0633ed337423073013b2beab91245bb73b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TightMult/Variant89b3cbdbeb70ffc8ba2216ebaba0e1680601fd75b34ad9245a9d51942af94a20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TightMult/Variant89b3cbdbeb70ffc8ba2216ebaba0e1680601fd75b34ad9245a9d51942af94a20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ZeroSide.RankTraceMult` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Diagonal` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [idx](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TightMultNamespaced.lean/declarations/idx.md) | 38 | `declaration-track:2d02dfd66ab14d10b379005168319fd55638b799f7aad0a27649b0ac29f5a94e` |
| 2 | `def` | [v](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TightMultNamespaced.lean/declarations/v.md) | 41 | `declaration-track:14f60b543b11662d676614caa6128f8cd2c077a9876abb62bb3ebcac999594f1` |
| 3 | `def` | [mR](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TightMultNamespaced.lean/declarations/mr.md) | 44 | `declaration-track:d752eb67904cb5de5c22ea1b30ce11336bbc529d7f083881d1f5cd63169a4f74` |
| 4 | `def` | [Q](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TightMultNamespaced.lean/declarations/q.md) | 47 | `declaration-track:e1e0300b687805f654ed3ca90691fe2b9cd4ed4e59a2eaa844d3625caa5941e2` |
| 5 | `lemma` | [xsq_v](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TightMultNamespaced.lean/declarations/xsq-v.md) | 49 | `result-track:b774d40d605fcf366aa3d48d43a336fbe501b6e6048ba0c8f806596e69cd3458` |
| 6 | `lemma` | [Pmat_eq_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TightMultNamespaced.lean/declarations/pmat-eq-diagonal.md) | 56 | `result-track:e42be4293c8e4f0a2808619f91ed4e657bb3e67916aed7b7894ec42d10fdb50e` |
| 7 | `lemma` | [Q_posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TightMultNamespaced.lean/declarations/q-possemidef.md) | 79 | `result-track:318d15d215d5dcd1b2ae9ac13b5480e352ebcaee549ec2e25f30457af9bd607c` |
| 8 | `lemma` | [Q_isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TightMultNamespaced.lean/declarations/q-ishermitian.md) | 83 | `result-track:ae6d77a812d7010c2c59039edb6692ebc47b5f4c3b7a48077dff1181a8877b38` |
| 9 | `lemma` | [posIndex_Q](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TightMultNamespaced.lean/declarations/posindex-q.md) | 85 | `result-track:ba0efe211d604b3abf33db279d71a2ad5bd68eb78212a68074fc4c7644194da2` |
| 10 | `lemma` | [rtrace_PQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TightMultNamespaced.lean/declarations/rtrace-pq.md) | 91 | `result-track:e99b0d804406cefc074db7936902af4a4ada9619f14950c3172ebb2b8da19f88` |
| 11 | `lemma` | [frobSq_PQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TightMultNamespaced.lean/declarations/frobsq-pq.md) | 95 | `result-track:e029a6d5c5a550c7a58ee2b653311f5792d310395134a27dd7c469cc10af37bf` |
| 12 | `theorem` | [lemmaR_tight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TightMultNamespaced.lean/declarations/lemmar-tight-source-edition-2.md) | 101 | `result-track:f3b3f82f3a81d7b79f374d2716e6078a80f333874dfe739cca9ff7e88bbbc5d5` |
| 13 | `theorem` | [lemmaR_tight'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TightMultNamespaced.lean/declarations/lemmar-tight.md) | 112 | `result-track:2d42fe253130da118040483fd7911390094124c16109cc8f7a02c0d5615d8bf3` |
| 14 | `theorem` | [lemmaR_tight_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TightMultNamespaced.lean/declarations/lemmar-tight-two.md) | 122 | `result-track:470879bdb6e0742607435c87aa6e3e80a8bc83b5a7ce0ca295b994402339d1ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=24486ce13d5f2bad6c202627b6ea7399a699963e0a265c5727df193bda9d225d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TightMult/Variant89b3cbdbeb70ffc8ba2216ebaba0e1680601fd75b34ad9245a9d51942af94a20.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TightMult/Variant89b3cbdbeb70ffc8ba2216ebaba0e1680601fd75b34ad9245a9d51942af94a20.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
