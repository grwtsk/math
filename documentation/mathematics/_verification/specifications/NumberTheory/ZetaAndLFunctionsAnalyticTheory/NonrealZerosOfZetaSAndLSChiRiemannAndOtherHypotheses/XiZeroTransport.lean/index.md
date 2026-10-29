# Verification target: Xi Zero Transport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d20fc0022c234671ad51998014332df35c50bf70",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587XiZeroTransport/Varianta001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiZeroTransport.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiZeroTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d20fc0022c234671ad51998014332df35c50bf70`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587XiZeroTransport/Varianta001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587XiZeroTransport/Varianta001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiTaylorTransport` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [xi_ne_zero_on_right](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiZeroTransport.lean/declarations/xi-ne-zero-on-right.md) | 20 | `result-track:d6a3fd71eb2bb0140b1139ab87ff169d02c6afad8586a18b7f3a7cf07c2b7653` |
| 2 | `theorem` | [xi_ne_zero_at_trivial](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiZeroTransport.lean/declarations/xi-ne-zero-at-trivial.md) | 35 | `result-track:f62650e685daf0758aa5934a33b79eb2af7a6a0add517f458fcbab0df213d926` |
| 3 | `theorem` | [xi_zero_iff_nontrivial](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiZeroTransport.lean/declarations/xi-zero-iff-nontrivial.md) | 45 | `result-track:dbec556ce38ca6cace22d55e9996c8355d055691d8a23ee7029751ee65428ce6` |
| 4 | `theorem` | [square_nonpositive_axis_iff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiZeroTransport.lean/declarations/square-nonpositive-axis-iff.md) | 64 | `result-track:23a29ce71c87b4047fadf8531960d6c4f82747839f3c31083f8a3c79c21a74a3` |
| 5 | `def` | [CenteredZerosNonpositive](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiZeroTransport.lean/declarations/centeredzerosnonpositive.md) | 81 | `declaration-track:40b1ad2547231eecb565478af047833c215bd8f0574e6bb4e5b5cc5f60421611` |
| 6 | `theorem` | [rh_iff_centeredZerosNonpositive](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiZeroTransport.lean/declarations/rh-iff-centeredzerosnonpositive.md) | 85 | `result-track:77210439554e605bff3ec898cd790cc69622ff74b2733608c6d5ad8db1ea568d` |
| 7 | `theorem` | [centeredZerosNonpositive_iff_rh](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiZeroTransport.lean/declarations/centeredzerosnonpositive-iff-rh.md) | 111 | `result-track:9e2e02d974b1cc6c6ea3b1175004a2b2f3888acb4f84370a6c19fd329922930f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb8b7a75fbc4839b7b43a76173f84690324f80979dae037ca6fb2171662cfe46 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587XiZeroTransport/Varianta001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587XiZeroTransport/Varianta001464a3f7c7bd191a39c2b4f58b81ed76107c12a501fba447623f813020587.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
