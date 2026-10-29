# Verification target: Pow Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b49f354c880381847d223ca3f5db0009985e58ab",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variant8cd43f883b048c55ffcb898442127308d1b62d28ba713b698d03fbbbd404a655.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/PowNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/PowNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b49f354c880381847d223ca3f5db0009985e58ab`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variant8cd43f883b048c55ffcb898442127308d1b62d28ba713b698d03fbbbd404a655.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variant8cd43f883b048c55ffcb898442127308d1b62d28ba713b698d03fbbbd404a655.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Comp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasStrictDerivAt_pow](../../../../RealFunctions/PowNamespaced.lean/declarations/hasstrictderivat-pow.md) | 39 | `result-track:7107c34c1abfcd9affc0012d43b737dd70931aeb6e01e67638aaf16b60eecf60` |
| 2 | `theorem` | [hasDerivAt_pow](../../../../RealFunctions/PowNamespaced.lean/declarations/hasderivat-pow-source-edition-2.md) | 47 | `result-track:aa9016e57ac76873375a0775d725d896f945c0e0d45b985db5f1fb407a36be33` |
| 3 | `theorem` | [hasDerivWithinAt_pow](../../../../RealFunctions/PowNamespaced.lean/declarations/hasderivwithinat-pow-source-edition-2.md) | 51 | `result-track:f1c514f6ffb2143b568e9451152e6917dffcdb92d312f444d7911cb1b3011de6` |
| 4 | `theorem` | [differentiableAt_pow](../../../../RealFunctions/PowNamespaced.lean/declarations/differentiableat-pow.md) | 55 | `result-track:6edc4db80df31a37b41ac13df4eb1383c815933cdc295d10fa8665beb1ff69bc` |
| 5 | `theorem` | [differentiableWithinAt_pow](../../../../RealFunctions/PowNamespaced.lean/declarations/differentiablewithinat-pow.md) | 58 | `result-track:5a149274522f35a2ae3bd1c830b7653e70336d71aabf1bef451d333d88d3a63a` |
| 6 | `theorem` | [differentiable_pow](../../../../RealFunctions/PowNamespaced.lean/declarations/differentiable-pow.md) | 62 | `result-track:9f477c6ce0c59b42fd7f444cbdde0080e14c2aef0662ed96e7398113ea7085cf` |
| 7 | `theorem` | [differentiableOn_pow](../../../../RealFunctions/PowNamespaced.lean/declarations/differentiableon-pow.md) | 64 | `result-track:80809b1d76add8209e003d7fa74bd4311b6c410fdeb973c7efaab1c35836d7c0` |
| 8 | `theorem` | [deriv_pow](../../../../RealFunctions/PowNamespaced.lean/declarations/deriv-pow.md) | 67 | `result-track:0734bffe4654dc06875508ad62e65cbfd2f40c47ac5f6b4726d52618adea3709` |
| 9 | `theorem` | [deriv_pow'](../../../../RealFunctions/PowNamespaced.lean/declarations/deriv-pow-source-edition-2.md) | 71 | `result-track:427fb2fc1db677e53a5077690c6e3d4d4f4b9164a3067df5244677fa7866c11b` |
| 10 | `theorem` | [derivWithin_pow](../../../../RealFunctions/PowNamespaced.lean/declarations/derivwithin-pow-source-edition-2.md) | 74 | `result-track:b5b13dce59e15bb8173868d2e2461620bf17cc255b52a2d0ffce155d666c48fe` |
| 11 | `theorem` | [HasDerivWithinAt.pow](../../../../RealFunctions/PowNamespaced.lean/declarations/hasderivwithinat-pow.md) | 78 | `result-track:1c075bdee28695b62c9ef842dc7e640c6d8b01aac40fe0414be6c9ab6b9f1457` |
| 12 | `theorem` | [HasDerivAt.pow](../../../../RealFunctions/PowNamespaced.lean/declarations/hasderivat-pow.md) | 82 | `result-track:83edc7dc809309cf3b9d8b4ef923d43024bfdda3154749cb730556dd52980594` |
| 13 | `theorem` | [derivWithin_pow'](../../../../RealFunctions/PowNamespaced.lean/declarations/derivwithin-pow.md) | 87 | `result-track:8d079fd94ea3c74a0c64d8811e27aa8fdcd2cf0765522f6df53e7207276d0647` |
| 14 | `theorem` | [deriv_pow''](../../../../RealFunctions/PowNamespaced.lean/declarations/deriv-pow-source-edition-3.md) | 94 | `result-track:ac5b7280bba11ded1c399d7518c0ba6c000b7f812543675ab3df275937fe38f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f79e27dcd0e8d45429c1a009576792c03f2ecdeb4d8467a6c85d09f1a147999 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variant8cd43f883b048c55ffcb898442127308d1b62d28ba713b698d03fbbbd404a655.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variant8cd43f883b048c55ffcb898442127308d1b62d28ba713b698d03fbbbd404a655.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
