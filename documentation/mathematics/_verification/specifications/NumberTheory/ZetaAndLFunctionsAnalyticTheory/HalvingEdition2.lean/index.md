# Verification target: Halving Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3a8f429bde3e9038d31f492f3404b52e1c2f3a0",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Halving/Variantde1713457eee0763fdb1e02634939664d9ce000bb8e736f2c18b85425b7c5d30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalvingEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalvingEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3a8f429bde3e9038d31f492f3404b52e1c2f3a0`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Halving/Variantde1713457eee0763fdb1e02634939664d9ce000bb8e736f2c18b85425b7c5d30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Halving/Variantde1713457eee0763fdb1e02634939664d9ce000bb8e736f2c18b85425b7c5d30.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Defs.Counting` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [reflect_re](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalvingEdition2.lean/declarations/reflect-re.md) | 26 | `result-track:7b9d2c8d650938cfeb42d16d87ed1bb31f15e8ac4ce5fc5b57c9ef3d2c42a017` |
| 2 | `lemma` | [reflect_im](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalvingEdition2.lean/declarations/reflect-im.md) | 27 | `result-track:de7ff64adf962e76fd1ee45508f261fd92fdc4e02314bda776e0b2a724921f3c` |
| 3 | `lemma` | [reflect_reflect](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalvingEdition2.lean/declarations/reflect-reflect.md) | 29 | `result-track:657708dec4eecd713ea6ed9ba876e0bcff3e5c56c901c1ecb43006d88c230be0` |
| 4 | `lemma` | [reflect_injective](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalvingEdition2.lean/declarations/reflect-injective.md) | 32 | `result-track:c27730da18dfd10797c87cc854f7b6a00965f6c82c36e6628d4c1819c6fb3179` |
| 5 | `lemma` | [reflect_mem_window](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalvingEdition2.lean/declarations/reflect-mem-window.md) | 39 | `result-track:7f878cb9078418277c43a203ba4cc32957e5895fbd43700fdf933dffeb5e5370` |
| 6 | `theorem` | [N_le_two_mul_half](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalvingEdition2.lean/declarations/n-le-two-mul-half.md) | 43 | `result-track:52580e624fb459a802886a61eafe91641bde9baa06f4dec0d1865ec4e58d93af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e03772a69a170b888cbd98579ac7a5cbf3ca7a1d3e72c6586836e1941a4add62 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Halving/Variantde1713457eee0763fdb1e02634939664d9ce000bb8e736f2c18b85425b7c5d30.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Halving/Variantde1713457eee0763fdb1e02634939664d9ce000bb8e736f2c18b85425b7c5d30.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
