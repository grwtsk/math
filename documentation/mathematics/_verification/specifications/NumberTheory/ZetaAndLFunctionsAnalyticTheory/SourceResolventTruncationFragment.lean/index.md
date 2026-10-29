# Verification target: Source Resolvent Truncation Fragment

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd5bc3bf7a53facaaefa1686d1ad5a968b293191",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceResolventTruncationFragment/Variantf7fb379023928e72d12e7d74dc0ca237e3a60b11c4f51fa2ff45e9d3ea099719.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceResolventTruncationFragment.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceResolventTruncationFragment.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd5bc3bf7a53facaaefa1686d1ad5a968b293191`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceResolventTruncationFragment/Variantf7fb379023928e72d12e7d74dc0ca237e3a60b11c4f51fa2ff45e9d3ea099719.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceResolventTruncationFragment/Variantf7fb379023928e72d12e7d74dc0ca237e3a60b11c4f51fa2ff45e9d3ea099719.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.TimeKernelTruncation` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PositiveResolvent` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceMass](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceResolventTruncationFragment.lean/declarations/sourcemass.md) | 20 | `declaration-track:fd1e82159a8dd88bd407de8d9b379f4fb8c86b9dfd4e58b1fa733e5bfa9742b1` |
| 2 | `def` | [truncatedMass](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceResolventTruncationFragment.lean/declarations/truncatedmass.md) | 23 | `declaration-track:c2548b30a268f7b2f804d30e0b9f292d87400113e148fa2e3f1c8fe01f9aaf04` |
| 3 | `theorem` | [sourceShift_isUnit](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceResolventTruncationFragment.lean/declarations/sourceshift-isunit.md) | 26 | `result-track:4cf611a4cb0f860f6e58c1299e0d24b9535f06f1139ab5d200687af990628fa3` |
| 4 | `theorem` | [truncatedShift_isUnit](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceResolventTruncationFragment.lean/declarations/truncatedshift-isunit.md) | 31 | `result-track:093cbc431c42b73704a8f0cd729fd9fa44d60f4fbcab2a8d599f2894431829c1` |
| 5 | `theorem` | [sourceMass_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceResolventTruncationFragment.lean/declarations/sourcemass-nonneg.md) | 36 | `result-track:3e28d9ad93916e44d3e340345af468cb4b1ce0fd9b29fb271e00a39e76066ddf` |
| 6 | `theorem` | [truncatedMass_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceResolventTruncationFragment.lean/declarations/truncatedmass-nonneg.md) | 41 | `result-track:969348b84d03c5faacace2c43faaaa1386d497724574a9f6f1182f1543fb63af` |
| 7 | `theorem` | [regularizedMass_le_norm_sq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceResolventTruncationFragment.lean/declarations/regularizedmass-le-norm-sq.md) | 46 | `result-track:ce9df02c86c32251be107745b125ed35a5c18259aa3bd0992f9413005afe01d8` |
| 8 | `theorem` | [sourceMass_le_half](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceResolventTruncationFragment.lean/declarations/sourcemass-le-half.md) | 65 | `result-track:219c693328542abdc6b7cc9e72611783f4ee5df7ff212fa354bcc5709f676150` |
| 9 | `theorem` | [truncatedMass_le_half](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceResolventTruncationFragment.lean/declarations/truncatedmass-le-half.md) | 70 | `result-track:b2704b71bbfb4eb5103a86b33397bdb82329bdb0244633e31f620e0549ba20fe` |
| 10 | `theorem` | [mass_sub_abs_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceResolventTruncationFragment.lean/declarations/mass-sub-abs-le.md) | 76 | `result-track:2a0c1e43772731f8f9056af6f630fb81ed83dbb7560c3fbd5d3fb50ceca5a53c` |
| 11 | `theorem` | [diagonal_mass_sub_abs_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceResolventTruncationFragment.lean/declarations/diagonal-mass-sub-abs-le.md) | 88 | `result-track:c57b4ff64a22e2047c23421f36954717f8381b088458bfccf854f6aed7f52d93` |
| 12 | `theorem` | [diagonal_mass_sub_abs_tendsto_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceResolventTruncationFragment.lean/declarations/diagonal-mass-sub-abs-tendsto-zero.md) | 102 | `result-track:1605d155085b80579acca3fb249b7e5cce1bc7f9f366f25d2c5b43fa73001fde` |
| 13 | `theorem` | [diagonal_mass_sub_tendsto_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceResolventTruncationFragment.lean/declarations/diagonal-mass-sub-tendsto-zero.md) | 114 | `result-track:9c242df2810c50d7aa891ba9041ed104fcd7d26fd8543ed6a6db59909f75a309` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9da4f79ad2d3e42594b2485c07c3258e9281d476bc9c0af6ed20a635ccfa2622 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceResolventTruncationFragment/Variantf7fb379023928e72d12e7d74dc0ca237e3a60b11c4f51fa2ff45e9d3ea099719.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceResolventTruncationFragment/Variantf7fb379023928e72d12e7d74dc0ca237e3a60b11c4f51fa2ff45e9d3ea099719.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
