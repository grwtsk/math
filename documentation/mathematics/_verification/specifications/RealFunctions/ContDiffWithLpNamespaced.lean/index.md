# Verification target: Cont Diff With Lp Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e986797f1151705301337eaaa0fcdc2f851313ff",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdad32dd101434b0d82f09cd5164c202c43a830c2912c21eebde887398e523480.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ContDiffWithLpNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/ContDiffWithLpNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e986797f1151705301337eaaa0fcdc2f851313ff`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdad32dd101434b0d82f09cd5164c202c43a830c2912c21eebde887398e523480.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdad32dd101434b0d82f09cd5164c202c43a830c2912c21eebde887398e523480.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Lp.PiLp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contDiffWithinAt_piLp](../../../../RealFunctions/ContDiffWithLpNamespaced.lean/declarations/contdiffwithinat-pilp-source-edition-2.md) | 30 | `result-track:9678ccb484d61c7e2642f57f5ae80dbadf0e627bf03ab7bb70e5e0236edbb17e` |
| 2 | `theorem` | [contDiffWithinAt_piLp'](../../../../RealFunctions/ContDiffWithLpNamespaced.lean/declarations/contdiffwithinat-pilp.md) | 36 | `result-track:7563973e6a25ccdca3ade8938804257050f7549f38e4317c8e7a2ce30ec48a78` |
| 3 | `theorem` | [contDiffWithinAt_piLp_apply](../../../../RealFunctions/ContDiffWithLpNamespaced.lean/declarations/contdiffwithinat-pilp-apply.md) | 41 | `result-track:019d84514120805724906541d39d1b32712223e60fc5742e190d447f03892cee` |
| 4 | `theorem` | [contDiffAt_piLp](../../../../RealFunctions/ContDiffWithLpNamespaced.lean/declarations/contdiffat-pilp.md) | 45 | `result-track:95875325386a4a95f2201c54502f72737bc8d9824f0ac78fd5b909881d150496` |
| 5 | `theorem` | [contDiffAt_piLp'](../../../../RealFunctions/ContDiffWithLpNamespaced.lean/declarations/contdiffat-pilp-source-edition-2.md) | 51 | `result-track:9ab69c0d3f6c11c01b98bc1454a6f9933fac67cd3cbf3eadb494788985f1d974` |
| 6 | `theorem` | [contDiffAt_piLp_apply](../../../../RealFunctions/ContDiffWithLpNamespaced.lean/declarations/contdiffat-pilp-apply.md) | 56 | `result-track:15555acd4ee0f3a7b868b1a3e8aa5801eb67ba118eb11459716d5b051883f4c6` |
| 7 | `theorem` | [contDiffOn_piLp](../../../../RealFunctions/ContDiffWithLpNamespaced.lean/declarations/contdiffon-pilp-source-edition-2.md) | 60 | `result-track:c01c99bc46d8215e8a6076c19d056a4fe572fb9cea7d9dda435072552f4f1a53` |
| 8 | `theorem` | [contDiffOn_piLp'](../../../../RealFunctions/ContDiffWithLpNamespaced.lean/declarations/contdiffon-pilp.md) | 66 | `result-track:8f8cfcc92546b5611f8e70a49a1c349911960a793fe72d940f31efdb22a63323` |
| 9 | `theorem` | [contDiffOn_piLp_apply](../../../../RealFunctions/ContDiffWithLpNamespaced.lean/declarations/contdiffon-pilp-apply.md) | 71 | `result-track:5b451586f53528a82099ecc53ede7e38225a207fddf38c9d223e0ee1d521e39a` |
| 10 | `theorem` | [contDiff_piLp](../../../../RealFunctions/ContDiffWithLpNamespaced.lean/declarations/contdiff-pilp-source-edition-2.md) | 75 | `result-track:b1e86ede8344e78539f8d9feea4e6e673f023da4e2eaf3ae9d5d093d55235dd1` |
| 11 | `theorem` | [contDiff_piLp'](../../../../RealFunctions/ContDiffWithLpNamespaced.lean/declarations/contdiff-pilp.md) | 80 | `result-track:4ef4c4cd546a274aa119b3e0a4d6dff3966b037909d08786a5593bcb05d3590b` |
| 12 | `theorem` | [contDiff_piLp_apply](../../../../RealFunctions/ContDiffWithLpNamespaced.lean/declarations/contdiff-pilp-apply.md) | 85 | `result-track:e8373835b60f0da03b264ff9cd1cc04045e4cde2ae34fe3bf3cac96c096d1c91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e53da3d99ec82f3295f94f973de4bd64e4e6f03e2ae30e5cb2e446b14a06e2ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdad32dd101434b0d82f09cd5164c202c43a830c2912c21eebde887398e523480.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdad32dd101434b0d82f09cd5164c202c43a830c2912c21eebde887398e523480.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
