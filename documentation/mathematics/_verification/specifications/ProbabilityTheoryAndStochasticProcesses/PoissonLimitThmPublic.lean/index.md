# Verification target: Poisson Limit Thm Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59c4cb1f2e972cc1b4cdc997586c844d1e04b2e2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PoissonLimitThm/Variantbece89d436ea3d25957b199974b94facf16aca870e2e99b232e6931cc8f97181.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/PoissonLimitThmPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/PoissonLimitThmPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59c4cb1f2e972cc1b4cdc997586c844d1e04b2e2`.

Source path: `GRWTSK/Topology/GeneralTopology/PoissonLimitThm/Variantbece89d436ea3d25957b199974b94facf16aca870e2e99b232e6931cc8f97181.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PoissonLimitThm/Variantbece89d436ea3d25957b199974b94facf16aca870e2e99b232e6931cc8f97181.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Choose` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tendsto_zero_of_tendsto_mul_atTop](../../../../ProbabilityTheoryAndStochasticProcesses/PoissonLimitThmPublic.lean/declarations/tendsto-zero-of-tendsto-mul-attop.md) | 47 | `result-track:733d5844f37d493047ef6a5f094f0206e58efb5308906d24ec498e1a5de1f1fd` |
| 2 | `lemma` | [tendsto_choose_mul_pow_atTop](../../../../ProbabilityTheoryAndStochasticProcesses/PoissonLimitThmPublic.lean/declarations/tendsto-choose-mul-pow-attop.md) | 55 | `result-track:1da4ab632a03e5c0a2cce79a368ca65abd87f89e649403504a26c1f336f62fa1` |
| 3 | `theorem` | [tendsto_choose_mul_pow_of_tendsto_mul_atTop](../../../../ProbabilityTheoryAndStochasticProcesses/PoissonLimitThmPublic.lean/declarations/tendsto-choose-mul-pow-of-tendsto-mul-attop.md) | 70 | `result-track:7845dd8a71965d6a6b1246af99effeedc7969f453be35ca2eaacd30c02c507ea` |
| 4 | `lemma` | [binomial_tendsto_poissonPMFReal_atTop](../../../../ProbabilityTheoryAndStochasticProcesses/PoissonLimitThmPublic.lean/declarations/binomial-tendsto-poissonpmfreal-attop.md) | 94 | `result-track:f97930bf7f990ad8735c5867b0e113607dd04a84a9607d69bea0af12b721936a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f3f238d42d0de87e55253a6c4ba836c79a2753e7266878d986750985438244ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PoissonLimitThm/Variantbece89d436ea3d25957b199974b94facf16aca870e2e99b232e6931cc8f97181.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/PoissonLimitThm/Variantbece89d436ea3d25957b199974b94facf16aca870e2e99b232e6931cc8f97181.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
