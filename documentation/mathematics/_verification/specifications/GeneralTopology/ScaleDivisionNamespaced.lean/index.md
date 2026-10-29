# Verification target: Scale Division Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0572bc86a0c154ce1c6eba3976a58548f0d5fe03",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScaleDivision/Variantb9e4a7bc8a9d93450834968e89dd68af95b427b2d4123c2e01c77020d7a5411c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ScaleDivisionNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/ScaleDivisionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0572bc86a0c154ce1c6eba3976a58548f0d5fe03`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScaleDivision/Variantb9e4a7bc8a9d93450834968e89dd68af95b427b2d4123c2e01c77020d7a5411c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScaleDivision/Variantb9e4a7bc8a9d93450834968e89dd68af95b427b2d4123c2e01c77020d7a5411c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Assembly` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [divided_continuation_meromorphic](../../../../GeneralTopology/ScaleDivisionNamespaced.lean/declarations/divided-continuation-meromorphic.md) | 31 | `result-track:51b84a158d6bfe3123cdbc9099856ffe5c37daf2f925b556ca58a3d34bdbad31` |
| 2 | `theorem` | [divided_continuation_analytic_positive_real](../../../../GeneralTopology/ScaleDivisionNamespaced.lean/declarations/divided-continuation-analytic-positive-real.md) | 37 | `result-track:0fd29649a58579857ec37f0aaeb16f691e25ee9e1784d4429fd611e357d81709` |
| 3 | `theorem` | [center_ne_zero](../../../../GeneralTopology/ScaleDivisionNamespaced.lean/declarations/center-ne-zero.md) | 42 | `result-track:ba169648b5541bfde65f320c7f790be4bdf444ac2c2bd73534875b04afe75592` |
| 4 | `theorem` | [divided_continuation_exact_order](../../../../GeneralTopology/ScaleDivisionNamespaced.lean/declarations/divided-continuation-exact-order.md) | 50 | `result-track:9cd8958fb9aa25b81d41fe8e16dcbe654b7370c49659f5fe6ab4351305393bfe` |
| 5 | `theorem` | [divided_continuation_principal_limit](../../../../GeneralTopology/ScaleDivisionNamespaced.lean/declarations/divided-continuation-principal-limit.md) | 64 | `result-track:f12ba5b28cb87d5d0fc173cadd24af4182b143c51e54c99823da2d032ec84cf6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f630ce26a2ad81df462a3e8eb8ca4ea0de51409635228217c1ffc6b303c87d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScaleDivision/Variantb9e4a7bc8a9d93450834968e89dd68af95b427b2d4123c2e01c77020d7a5411c.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScaleDivision/Variantb9e4a7bc8a9d93450834968e89dd68af95b427b2d4123c2e01c77020d7a5411c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
